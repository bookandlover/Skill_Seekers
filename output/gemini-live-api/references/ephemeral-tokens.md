# Ephemeral Tokens for Gemini Live API

**URL:** https://ai.google.dev/gemini-api/docs/ephemeral-tokens

---

## Overview

Ephemeral tokens are "short-lived authentication tokens for accessing the Gemini API through WebSockets." They're designed to enhance security for client-to-server implementations where applications connect directly from user devices to the API.

## Key Advantages

Unlike standard API keys, ephemeral tokens:
- Expire quickly, reducing security risks if extracted
- Can be restricted to specific configurations
- Support direct client connections without backend proxying
- Improve latency for real-time applications

## How They Work

The authentication flow involves five steps:
1. Client authenticates with backend
2. Backend requests token from Gemini API provisioning service
3. Gemini API issues short-lived token
4. Backend sends token to client for WebSocket connections
5. Client uses token like an API key

## Creating Ephemeral Tokens

### Python Example

```python
client = genai.Client(http_options={'api_version': 'v1alpha'})
token = client.auth_tokens.create(
    config={
        'uses': 1,
        'expire_time': now + datetime.timedelta(minutes=30),
        'new_session_expire_time': now + datetime.timedelta(minutes=1)
    }
)
```

### JavaScript Example

```javascript
const client = new GoogleGenAI({});
const expireTime = new Date(Date.now() + 30 * 60 * 1000).toISOString();
const token = await client.authTokens.create({
    config: { uses: 1, expireTime: expireTime }
});
```

## Configuration Constraints

Tokens can be locked to specific configurations:
- Model selection
- Temperature settings
- Response modalities
- Session resumption settings

## Usage with Live API

```javascript
const ai = new GoogleGenAI({ apiKey: token.name });
const session = await ai.live.connect({
    model: 'gemini-2.5-flash-native-audio-preview-12-2025',
    config: { responseModalities: [Modality.AUDIO] }
});
```

## Default Parameters

- **Session expiration:** 1 minute to start new sessions
- **Message window:** 30 minutes to send messages
- **Session resumption:** Required every 10 minutes within expiration window

## Best Practices

- Set short expiration durations
- Verify secure backend authentication
- Use ephemeral tokens only for client-to-server connections
- Avoid using for backend-to-Gemini connections

## Current Limitations

Ephemeral tokens are only compatible with Live API at this time.
