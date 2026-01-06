---
name: doubao-realtime-api
description: 豆包端到端实时语音大模型 API 文档 - 火山引擎提供的超拟人、低时延实时语音交互模型
---

# 豆包端到端实时语音大模型 (Doubao Realtime Voice API)

豆包实时语音大模型是火山引擎提供的语音理解和生成一体化模型，实现端到端语音对话。相比传统 ASR→LLM→TTS 级联模式，在语音表现力、控制力、情绪承接方面表现惊艳，并具备低时延、对话中可随时打断等特性。

## 何时使用此技能

- 需要接入豆包实时语音对话 API
- 开发 Android/iOS 实时语音交互应用
- 构建智能语音助手、客服、陪伴类应用
- 需要低延迟、支持打断的语音对话功能
- 实现声音克隆或人设一致性的语音应用

## 快速参考

### 核心配置

```
# WebSocket 连接配置
域名: wss://openspeech.bytedance.com
对话URI: /api/v3/realtime/dialogue
TTS URI: /api/v3/tts/bidirection

# Resource ID
对话模式: volc.speech.dialog
TTS模式: volc.service_type.10029

# SDK 依赖
Android: com.bytedance.speechengine:speechengine_tob:0.0.14.1-bugfix
iOS: pod 'SpeechEngineToB', '0.0.14.1-bugfix'

# Maven 仓库 (Android)
maven { url "https://artifact.bytedance.com/repository/Volcengine/" }
```

### Android 快速接入

```kotlin
// 1. 初始化环境
SpeechEngine.prepareEnvironment(context)

// 2. 创建引擎
val engine = SpeechEngine()

// 3. 配置参数
engine.setStringParam(ENGINE_NAME, "DIALOG_ENGINE")
engine.setStringParam(APP_ID, "your_app_id")
engine.setStringParam(APP_KEY, "your_app_key")
engine.setStringParam(TOKEN, "your_access_token")
engine.setStringParam(RESOURCE_ID, "volc.speech.dialog")

// 4. 初始化并设置回调
engine.initEngine()
engine.setListener(engineListener)

// 5. 启动对话
engine.sendDirective(DIRECTIVE_START_ENGINE, "")
engine.sendDirective(DIRECTIVE_EVENT_SAY_HELLO, "")  // 播报开场白

// 6. 发送文本查询
engine.sendDirective(DIRECTIVE_EVENT_CHAT_TEXT_QUERY, "你好")

// 7. 停止引擎
engine.sendDirective(DIRECTIVE_SYNC_STOP_ENGINE, "")
```

### iOS 快速接入

```swift
// 1. 初始化环境
SpeechEngine.prepareEnvironment()

// 2. 创建引擎
let engine = SpeechEngine()

// 3. 配置参数
engine.setStringParam("ENGINE_NAME", value: "SE_DIALOG_ENGINE")
engine.setStringParam("APP_ID", value: "your_app_id")
engine.setStringParam("APP_KEY", value: "your_app_key")
engine.setStringParam("TOKEN", value: "your_access_token")
engine.setStringParam("RESOURCE_ID", value: "volc.speech.dialog")

// 4. 初始化
engine.initEngine()
engine.delegate = self

// 5. 发送指令
engine.sendDirective(.startEngine, param: "")
engine.sendDirective(.eventSayHello, param: "")  // 开场白
engine.sendDirective(.eventChatTextQuery, param: "你好")  // 文本查询
engine.sendDirective(.syncStopEngine, param: "")  // 停止
```

### 主要指令 (Directives)

| 指令 | Android | iOS | 说明 |
|------|---------|-----|------|
| 启动引擎 | DIRECTIVE_START_ENGINE | SEDirectiveStartEngine | 启动语音对话引擎 |
| 开场白 | DIRECTIVE_EVENT_SAY_HELLO | SEDirectiveEventSayHello | 播报欢迎语 |
| 文本查询 | DIRECTIVE_EVENT_CHAT_TEXT_QUERY | SEDirectiveEventChatTextQuery | 发送文本消息 |
| RAG知识 | DIRECTIVE_EVENT_CHAT_RAG_TEXT | SEDirectiveEventChatRagText | 注入知识库内容 |
| 停止引擎 | DIRECTIVE_SYNC_STOP_ENGINE | SEDirectiveSyncStopEngine | 停止引擎 |

### 回调消息类型

| 消息类型 | 说明 |
|---------|------|
| ENGINE_START | 引擎启动完成 |
| ENGINE_STOP | 引擎停止完成 |
| ASR_RESULT | 语音识别结果 |
| CHAT_RESULT | 模型对话回复 |
| TTS_AUDIO | 合成的音频数据 |
| ERROR | 错误信息 |

## 产品概述

### 模型版本

1. **S2S-Omni 版本**: 低延时助手模型，覆盖闲聊、客服、车载等 ToB 场景
2. **S2S-Strong Character 版本**: 强人格版本，专注声音复刻和人设一致性

### 与传统级联方案对比

| 特性 | 豆包端到端模型 | 传统 ASR+LLM+TTS |
|-----|--------------|-----------------|
| 延迟 | 超低延迟 | 多步累积延迟 |
| 打断 | 支持自然打断 | 打断体验差 |
| 情绪理解 | 原生支持 | 信息丢失 |
| 声音控制 | 深度控制 | 受限 |
| 方言识别 | 支持 | 受限 |

### 应用场景

- 情感陪聊应用/硬件
- 儿童/老人陪伴
- 智能语音助手
- 智能客服与外呼
- 车载语音交互
- 声音克隆应用

## 计费说明

豆包端到端实时语音大模型按服务用量 Token 计费：

**Token 计算规则：**
- 输入音频: 每1秒 ≈ 6.25 Token
- 输出音频: 每1秒 ≈ 25 Token

**输入 Token 包含：**
- 本轮对话的输入音频
- 语音合成文本
- 上下文、System Prompt
- 克隆音频等

**输出 Token 包含：**
- 模型合成的播报音频
- 音频对应的文本内容
- 语音识别后返回的文本

## SDK 网络依赖

**v0.0.14 及以后版本变更：**
- 不再依赖 TTNet 网络库
- Android 改用 OkHttp
- iOS 改用 SocketRocket (默认 0.6.1)

## AEC 回声消除配置

```kotlin
// Android
engine.setBoolParam(ENABLE_AEC_BOOL, true)
engine.setStringParam(AEC_MODEL_PATH, "/path/to/aec_model")
```

```swift
// iOS
engine.setBoolParam("ENABLE_AEC_BOOL", value: true)
engine.setStringParam("AEC_MODEL_PATH", value: "/path/to/aec_model")
```

## 参考文档

详细信息请参阅火山引擎官方文档：

- [产品简介](https://www.volcengine.com/docs/6561/1594360?lang=zh)
- [快速入门](https://www.volcengine.com/docs/6561/1594356?lang=zh)
- [Android SDK 接口文档](https://www.volcengine.com/docs/6561/1597643?lang=zh)
- [iOS SDK 接口文档](https://www.volcengine.com/docs/6561/1597646?lang=zh)
- [计费说明](https://www.volcengine.com/docs/6561/1359370)
- [豆包大模型](https://www.volcengine.com/product/doubao)

## 环境变量

```bash
# 火山引擎凭证 (从控制台获取)
export VOLCENGINE_APP_ID=your_app_id
export VOLCENGINE_APP_KEY=your_app_key
export VOLCENGINE_ACCESS_TOKEN=your_access_token
```

## 注意事项

1. **Token 有效期**: Access Token 有有效期限制，需要定期刷新
2. **AEC 模型**: 启用回声消除时必须提供 AEC 模型文件路径
3. **网络环境**: 确保设备能够访问 `openspeech.bytedance.com`
4. **最低系统版本**: Android 4.4 (API 19) / iOS 对应版本
5. **架构支持**: Android 支持 armeabi-v7a、arm64-v8a

## 更新日志

- v0.0.14.1-bugfix: 最新稳定版本
- v0.0.14: 移除 TTNet 依赖，改用 OkHttp/SocketRocket
