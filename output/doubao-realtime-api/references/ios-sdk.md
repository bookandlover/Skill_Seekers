# iOS SDK 接口文档

豆包 Dialog 语音对话 SDK iOS 版接入指南。

## SDK 信息

- **最新版本**: 0.0.14.1-bugfix
- **包管理**: CocoaPods
- **网络依赖**: SocketRocket (v0.6.1)

## 依赖配置

### Podfile

```ruby
# Podfile
pod 'SpeechEngineToB', '0.0.14.1-bugfix'

# v0.0.14+ 使用 SocketRocket (取代 TTNet)
# 默认包含，无需额外配置
```

### 安装

```bash
pod install
```

## 完整接入流程

### 1. 导入头文件

```objc
// Objective-C
#import <SpeechEngineToB/SpeechEngine.h>
```

```swift
// Swift
import SpeechEngineToB
```

### 2. 初始化环境

```swift
SpeechEngine.prepareEnvironment()
```

### 3. 创建引擎实例

```swift
let engine = SpeechEngine()
```

### 4. 配置必需参数

```swift
// 引擎类型
engine.setStringParam("ENGINE_NAME", value: "SE_DIALOG_ENGINE")

// 身份验证 (从火山引擎控制台获取)
engine.setStringParam("APP_ID", value: "your_app_id")
engine.setStringParam("APP_KEY", value: "your_app_key")
engine.setStringParam("TOKEN", value: "your_access_token")

// 资源标识
engine.setStringParam("RESOURCE_ID", value: "volc.speech.dialog")

// WebSocket 服务地址
engine.setStringParam("DIALOG_SERVER_ADDRESS", value: "wss://openspeech.bytedance.com")
engine.setStringParam("DIALOG_SERVER_URI", value: "/api/v3/realtime/dialogue")
```

### 5. 配置 AEC 回声消除 (可选)

```swift
engine.setBoolParam("ENABLE_AEC_BOOL", value: true)
engine.setStringParam("AEC_MODEL_PATH", value: aecModelPath)
```

### 6. 初始化引擎并设置代理

```swift
engine.initEngine()
engine.delegate = self
```

### 7. 实现代理方法

```swift
extension ViewController: SpeechEngineDelegate {

    func speechEngine(_ engine: SpeechEngine, onMessage message: String) {
        // 处理回调消息
        handleMessage(message)
    }

    func speechEngine(_ engine: SpeechEngine, onError errorCode: Int, errorMsg: String) {
        // 处理错误
        print("Error: \(errorCode) - \(errorMsg)")
    }
}
```

### 8. 发送指令

```swift
// 启动引擎
engine.sendDirective(.startEngine, param: "")

// 播报开场白
engine.sendDirective(.eventSayHello, param: "")

// 发送文本查询
engine.sendDirective(.eventChatTextQuery, param: "你好，今天天气怎么样？")

// 注入 RAG 知识
engine.sendDirective(.eventChatRagText, param: ragContent)

// 停止引擎
engine.sendDirective(.syncStopEngine, param: "")
```

## 指令枚举

```swift
enum SEDirective {
    case startEngine           // 启动引擎
    case eventSayHello         // 播报开场白
    case eventChatTextQuery    // 文本查询
    case eventChatRagText      // RAG 知识注入
    case syncStopEngine        // 停止引擎
}
```

## 回调消息处理

```swift
private func handleMessage(_ message: String) {
    guard let data = message.data(using: .utf8),
          let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
          let type = json["type"] as? String else { return }

    switch type {
    case "ENGINE_START":
        // 引擎启动成功
        print("Engine started")

    case "ENGINE_STOP":
        // 引擎已停止
        print("Engine stopped")

    case "ASR_RESULT":
        // 语音识别结果
        if let text = json["text"] as? String,
           let isFinal = json["is_final"] as? Bool {
            print("ASR: \(text), final: \(isFinal)")
        }

    case "CHAT_RESULT":
        // AI 回复内容
        if let reply = json["text"] as? String {
            print("AI Reply: \(reply)")
        }

    case "TTS_AUDIO":
        // TTS 音频数据
        if let audioData = json["audio"] as? Data {
            playAudio(audioData)
        }

    case "ERROR":
        // 错误信息
        if let code = json["code"] as? Int,
           let msg = json["message"] as? String {
            print("Error \(code): \(msg)")
        }

    default:
        break
    }
}
```

## 生命周期管理

```swift
deinit {
    engine?.sendDirective(.syncStopEngine, param: "")
    engine?.destroyEngine()
    engine = nil
}
```

## 权限配置

### Info.plist

```xml
<key>NSMicrophoneUsageDescription</key>
<string>需要麦克风权限进行语音对话</string>
```

### 请求权限

```swift
import AVFoundation

func requestMicrophonePermission() {
    AVAudioSession.sharedInstance().requestRecordPermission { granted in
        if granted {
            // 权限已授予
        } else {
            // 权限被拒绝
        }
    }
}
```

## 音频会话配置

```swift
func configureAudioSession() {
    let session = AVAudioSession.sharedInstance()
    do {
        try session.setCategory(.playAndRecord, mode: .voiceChat, options: [.defaultToSpeaker, .allowBluetooth])
        try session.setActive(true)
    } catch {
        print("Audio session configuration failed: \(error)")
    }
}
```

## 高级功能

### 自定义音频输入

```swift
// 使用外部音频源
engine.setBoolParam("USE_EXTERNAL_AUDIO_INPUT", value: true)

// 推送音频数据
func pushAudioData(_ audioData: Data) {
    engine.pushAudioData(audioData)
}
```

### 自定义音频输出

```swift
// 禁用内置播放器
engine.setBoolParam("USE_INTERNAL_PLAYER", value: false)

// 在 TTS_AUDIO 回调中自行处理音频播放
```

## 常见问题

### Q: 如何处理后台运行？
A: 配置 Background Modes，启用 "Audio, AirPlay, and Picture in Picture"。

### Q: 如何优化耗电？
A: 不使用时及时调用 `syncStopEngine` 停止引擎。

### Q: 模拟器支持吗？
A: 模拟器不支持麦克风，请使用真机测试。

## 示例工程

官方提供了完整示例工程，请从火山引擎控制台下载。
