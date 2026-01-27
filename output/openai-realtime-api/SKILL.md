---
name: openai-realtime-api
description: OpenAI Realtime API documentation for low-latency, multimodal AI interactions (speech-to-speech)
---

# OpenAI Realtime API Skill

The OpenAI Realtime API enables low-latency, multimodal interactions with GPT-4o. It supports seamless speech-to-speech conversations, function calling, and real-time audio/text streaming via WebSockets.

## When to Use This Skill

This skill should be triggered when:
- Building real-time voice assistants or chatbots.
- Implementing low-latency speech-to-speech applications.
- Using WebSocket connections for bi-directional AI communication.
- Implementing function calling in a real-time conversational flow.
- Handling audio streaming input and output with OpenAI models.

## Quick Reference

### Supported Models

- `gpt-4o-realtime-preview-2024-10-01`
- `gpt-4o-realtime-preview`

### Basic Connection (Python)

```python
import asyncio
import websockets
import json

async def connect():
    url = "wss://api.openai.com/v1/realtime?model=gpt-4o-realtime-preview-2024-10-01"
    headers = {
        "Authorization": "Bearer YOUR_API_KEY",
        "OpenAI-Beta": "realtime=v1"
    }
    async with websockets.connect(url, extra_headers=headers) as ws:
        print("Connected to OpenAI Realtime API")
        # Interaction logic here
```

### Basic Connection (JavaScript)

```javascript
import { RealtimeClient } from '@openai/realtime-api-beta';

const client = new RealtimeClient({ apiKey: process.env.OPENAI_API_KEY });
await client.connect();
client.sendUserMessageContent([{ type: 'input_text', text: 'Hello!' }]);
```

### Audio Configuration

- **Input Format**: 16-bit PCM, 24kHz, mono, little-endian (sent as Base64).
- **Output Format**: 16-bit PCM, 24kHz, mono, little-endian (received as Base64).

## Key Features

1.  **Low Latency**: Optimized for real-time conversations.
2.  **Multimodal**: Handles text and audio natively.
3.  **Function Calling**: Execute tools dynamically during conversation.
4.  **VAD (Voice Activity Detection)**: Server-side or client-side control.
5.  **Allocated Sessions**: Stateful interaction management.

## Reference Files

This skill includes comprehensive documentation in `references/`:

- **overview.md** - Detailed guide on connection, sessions, events, and audio handling.

## Resources

### references/
- `overview.md`: Comprehensive documentation summary.

## Notes

- Requires `OpenAI-Beta: realtime=v1` header.
- Uses WebSockets for persistent connection.
- Audio data is transferred as Base64 encoded strings within JSON schemas.
