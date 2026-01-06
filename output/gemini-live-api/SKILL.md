---
name: gemini-live-api
description: Gemini Live API documentation for real-time multimodal AI interactions including voice, video, and screen sharing capabilities
---

# Gemini Live API Skill

The Gemini Live API enables low-latency, real-time voice and video interactions with Gemini models. It processes continuous streams of audio, video, or text to deliver immediate, human-like spoken responses.

## When to Use This Skill

This skill should be triggered when:
- Building real-time voice/video AI applications
- Implementing WebSocket connections to Gemini
- Setting up audio/video streaming with Gemini models
- Using function calling in real-time conversations
- Managing Live API sessions and resumption
- Implementing ephemeral tokens for secure client authentication

## Quick Reference

### Supported Models

- `gemini-2.5-flash-native-audio-preview-12-2025` - Native audio model

### Basic Connection (Python)

```python
import asyncio
from google import genai

client = genai.Client()
MODEL = "gemini-2.5-flash-native-audio-preview-12-2025"
CONFIG = {"response_modalities": ["AUDIO"]}

async with client.aio.live.connect(model=MODEL, config=CONFIG) as session:
    # Send and receive audio
    pass
```

### Basic Connection (JavaScript)

```javascript
import { GoogleGenAI, Modality } from '@google/genai';

const ai = new GoogleGenAI({ apiKey: 'YOUR_API_KEY' });
const session = await ai.live.connect({
    model: 'gemini-2.5-flash-native-audio-preview-12-2025',
    config: { responseModalities: [Modality.AUDIO] }
});
```

### Audio Configuration

- **Input format:** 16-bit PCM, 16kHz, mono
- **Output format:** 24kHz sample rate

### Ephemeral Tokens (Secure Client Auth)

```python
token = client.auth_tokens.create(
    config={
        'uses': 1,
        'expire_time': now + datetime.timedelta(minutes=30),
        'new_session_expire_time': now + datetime.timedelta(minutes=1)
    }
)
```

## Key Features

1. **Voice Activity Detection (VAD)** - Automatic speech detection
2. **Tool Use & Function Calling** - Real-time function execution
3. **Session Management** - Long-running conversation support
4. **Session Resumption** - Reconnect to existing sessions
5. **Ephemeral Tokens** - Secure client-side authentication
6. **Multimodal Input** - Audio, video, and text streams

## Reference Files

This skill includes comprehensive documentation in `references/`:

- **overview.md** - Getting started, capabilities guide, tools, and session management
- **ephemeral-tokens.md** - Secure token authentication for client connections

## Partner Integrations

- **Pipecat** - Real-time AI chatbot framework
- **LiveKit Agents** - LiveKit integration
- **Fishjam** - Video/audio streaming by Software Mansion
- **Agent Development Kit (ADK)** - Google's agent framework
- **Vision Agents by Stream** - Vision AI applications
- **Voximplant** - Inbound/outbound call integration

## Resources

### references/
Organized documentation including:
- Getting started guides
- Capabilities and features
- Tool use and function calling
- Session management
- Ephemeral token authentication

### scripts/
Add helper scripts here for common automation tasks.

### assets/
Add templates, boilerplate, or example projects here.

## Notes

- This skill was generated from official Google AI documentation
- Live API requires WebSocket connections
- Ephemeral tokens are currently only compatible with Live API
- Audio format must match specified input/output requirements
