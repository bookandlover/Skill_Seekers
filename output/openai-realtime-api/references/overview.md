# OpenAI Realtime API Overview

## General Description and Capabilities
The OpenAI Realtime API is a WebSocket-based interface designed for low-latency, multimodal interactions. It allows developers to build applications that support seamless speech-to-speech and text-to-speech conversations.
- **Capabilities**: Full-duplex streaming, multimodal input/output (text and audio), low latency, and stateful conversation management.
- **Models**: Primarily `gpt-4o-realtime-preview` versions (e.g., `gpt-4o-realtime-preview-2024-10-01`).

## Connection Details
- **URL**: `wss://api.openai.com/v1/realtime?model=gpt-4o-realtime-preview-2024-10-01`
- **Headers (Node.js/Server-side)**:
  - `Authorization: Bearer <API_KEY>`
  - `OpenAI-Beta: realtime=v1`
- **Protocols (Browser-side workaround)**:
  - `['realtime', 'openai-insecure-api-key.<API_KEY>', 'openai-beta.realtime-v1']`

## Sessions and Configuration
A **Session** represents a single WebSocket connection and its settings.
- **Configuration**: Updated via the `session.update` client event.
- **Key Parameters**:
  - `modalities`: `["text", "audio"]`
  - `instructions`: System prompt for the model.
  - `voice`: Choose from `alloy`, `echo`, `shimmer`, etc.
  - `input_audio_format`: e.g., `pcm16`.
  - `output_audio_format`: e.g., `pcm16`.
  - `turn_detection`: Configuration for Voice Activity Detection (VAD).
  - `tools`: Array of function definitions for function calling.

## Conversations
A **Conversation** is a stateful buffer of items (messages, function calls, etc.) maintained by the server.
- **Items**: Can be `message` (user/assistant) or `function_call` / `function_call_output`.
- **Management**: Use `conversation.item.create` to add new content or `conversation.item.delete` to remove items.

## Integration using WebSockets
The API uses WebSockets for bi-directional communication.
- **Client to Server**: JSON-encoded events.
- **Server to Client**: JSON-encoded events, with audio data included as base64-encoded strings within the JSON structure.

## Audio Handling
- **Format**: 16-bit PCM, 24kHz, mono, little-endian.
- **Encoding**: Sent/received as Base64 strings.
- **Input**: Stream chunks using `input_audio_buffer.append`.
- **Output**: Received via `response.audio.delta` events.

## Function Calling
- Define tools in the `session.update` event.
- When the model calls a tool, the server sends a `response.output_item.added` event with type `function_call`.
- The client executes the function and sends the result via `conversation.item.create` with type `function_call_output`.
- Trigger a new response using `response.create`.

## Key Events
**Client Events (Requests):**
- `session.update`: Configure session.
- `input_audio_buffer.append`: Send audio data.
- `input_audio_buffer.commit`: Finalize audio input.
- `conversation.item.create`: Add a message or tool result.
- `response.create`: Request the model to generate a response.
- `response.cancel`: Interrupt a generation.

**Server Events (Responses):**
- `session.created` / `session.updated`: Session status.
- `conversation.item.created`: New item confirmation.
- `input_audio_buffer.speech_started` / `speech_stopped`: VAD events.
- `response.text.delta` / `response.audio.delta`: Streaming content.
- `response.done`: Generation finished.
- `error`: Error notifications.

## Code Examples

### Python (Using WebSockets library)
```python
import asyncio
import websockets
import json

async def realtime_chat():
    url = "wss://api.openai.com/v1/realtime?model=gpt-4o-realtime-preview-2024-10-01"
    headers = {
        "Authorization": "Bearer " + "YOUR_API_KEY",
        "OpenAI-Beta": "realtime=v1"
    }
    async with websockets.connect(url, extra_headers=headers) as ws:
        # Update session
        await ws.send(json.dumps({
            "type": "session.update",
            "session": {"modalities": ["text"]}
        }))
        
        # Send text message
        await ws.send(json.dumps({
            "type": "conversation.item.create",
            "item": {
                "type": "message",
                "role": "user",
                "content": [{"type": "input_text", "text": "Hello!"}]
            }
        }))
        await ws.send(json.dumps({"type": "response.create"}))

        async for message in ws:
            event = json.loads(message)
            print(event["type"])
```

### JavaScript (Using Reference Client)
```javascript
import { RealtimeClient } from '@openai/realtime-api-beta';

const client = new RealtimeClient({ apiKey: process.env.OPENAI_API_KEY });

client.updateSession({ instructions: 'You are a helpful assistant.' });
client.on('conversation.updated', ({ item, delta }) => {
  if (delta?.text) console.log('Assistant:', delta.text);
});

await client.connect();
client.sendUserMessageContent([{ type: 'input_text', text: 'How are you?' }]);
```
