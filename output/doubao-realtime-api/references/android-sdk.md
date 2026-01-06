# Android SDK 接口文档

豆包 Dialog 语音对话 SDK Android 版接入指南。

## SDK 信息

- **最新版本**: 0.0.14.1-bugfix
- **最低系统要求**: Android 4.4 (API Level 19)
- **支持架构**: armeabi-v7a, arm64-v8a

## 依赖配置

### Maven 仓库

```groovy
// build.gradle (project level)
allprojects {
    repositories {
        maven { url "https://artifact.bytedance.com/repository/Volcengine/" }
    }
}
```

### SDK 依赖

```groovy
// build.gradle (app level)
dependencies {
    implementation 'com.bytedance.speechengine:speechengine_tob:0.0.14.1-bugfix'

    // v0.0.14+ 需要 OkHttp (取代 TTNet)
    implementation 'com.squareup.okhttp3:okhttp:4.x.x'
}
```

## 完整接入流程

### 1. 初始化环境

```java
// Application 或 Activity 中调用
SpeechEngine.prepareEnvironment(context);
```

### 2. 创建引擎实例

```java
SpeechEngine engine = new SpeechEngine();
```

### 3. 配置必需参数

```java
// 引擎类型
engine.setStringParam(ParamKey.ENGINE_NAME, "DIALOG_ENGINE");

// 身份验证 (从火山引擎控制台获取)
engine.setStringParam(ParamKey.APP_ID, "your_app_id");
engine.setStringParam(ParamKey.APP_KEY, "your_app_key");
engine.setStringParam(ParamKey.TOKEN, "your_access_token");

// 资源标识
engine.setStringParam(ParamKey.RESOURCE_ID, "volc.speech.dialog");
```

### 4. 配置 AEC 回声消除 (可选)

```java
engine.setBoolParam(ParamKey.ENABLE_AEC_BOOL, true);
engine.setStringParam(ParamKey.AEC_MODEL_PATH, "/path/to/aec_model_file");
```

### 5. 初始化引擎并设置监听器

```java
engine.initEngine();

engine.setListener(new SpeechEngineListener() {
    @Override
    public void onMessage(String message) {
        // 处理回调消息
        handleMessage(message);
    }

    @Override
    public void onError(int errorCode, String errorMsg) {
        // 处理错误
        Log.e(TAG, "Error: " + errorCode + " - " + errorMsg);
    }
});
```

### 6. 发送指令

```java
// 启动引擎
engine.sendDirective(Directive.DIRECTIVE_START_ENGINE, "");

// 播报开场白
engine.sendDirective(Directive.DIRECTIVE_EVENT_SAY_HELLO, "");

// 发送文本查询
engine.sendDirective(Directive.DIRECTIVE_EVENT_CHAT_TEXT_QUERY, "你好，今天天气怎么样？");

// 注入 RAG 知识
engine.sendDirective(Directive.DIRECTIVE_EVENT_CHAT_RAG_TEXT, ragContent);

// 停止引擎
engine.sendDirective(Directive.DIRECTIVE_SYNC_STOP_ENGINE, "");
```

## 指令详解

| 常量名 | 功能说明 |
|-------|---------|
| DIRECTIVE_START_ENGINE | 启动对话引擎，开始录音和语音处理 |
| DIRECTIVE_EVENT_SAY_HELLO | 触发 AI 主动播报开场白 |
| DIRECTIVE_EVENT_CHAT_TEXT_QUERY | 以文本形式发送用户查询 |
| DIRECTIVE_EVENT_CHAT_RAG_TEXT | 注入外部知识库内容用于回答 |
| DIRECTIVE_SYNC_STOP_ENGINE | 同步停止引擎，释放资源 |

## 回调消息处理

```java
private void handleMessage(String message) {
    JSONObject json = new JSONObject(message);
    String type = json.getString("type");

    switch (type) {
        case "ENGINE_START":
            // 引擎启动成功
            break;
        case "ENGINE_STOP":
            // 引擎已停止
            break;
        case "ASR_RESULT":
            // 语音识别结果
            String asrText = json.getString("text");
            boolean isFinal = json.getBoolean("is_final");
            break;
        case "CHAT_RESULT":
            // AI 回复内容
            String reply = json.getString("text");
            break;
        case "TTS_AUDIO":
            // TTS 音频数据
            byte[] audio = json.getBytes("audio");
            break;
        case "ERROR":
            // 错误信息
            int code = json.getInt("code");
            String msg = json.getString("message");
            break;
    }
}
```

## 生命周期管理

```java
@Override
protected void onDestroy() {
    super.onDestroy();
    if (engine != null) {
        engine.sendDirective(Directive.DIRECTIVE_SYNC_STOP_ENGINE, "");
        engine.destroyEngine();
        engine = null;
    }
}
```

## 权限要求

```xml
<!-- AndroidManifest.xml -->
<uses-permission android:name="android.permission.RECORD_AUDIO" />
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
```

## 常见问题

### Q: 如何处理网络断开？
A: 监听 ERROR 回调中的网络错误码，实现自动重连逻辑。

### Q: 如何实现打断功能？
A: SDK 原生支持打断，用户说话时会自动停止 AI 播报。

### Q: Token 过期怎么办？
A: 在 ERROR 回调中检测 Token 过期错误，刷新 Token 后重新初始化。

## 示例工程

官方提供了完整示例工程 `SpeechDemoAndroid.zip`，请从火山引擎控制台下载。
