# Exa-Api - Sdk

**Pages:** 5

---

## Python and TS Cheat Sheets

**URL:** llms-txt#python-and-ts-cheat-sheets

Source: https://docs.exa.ai/sdks/cheat-sheet

Some common code you might want to use - don't miss the TypeScript tab below!

<Tabs>
  <Tab title="Python">
    
  </Tab>

<Tab title="typeScript">
    
  </Tab>
</Tabs>

**Examples:**

Example 1 (unknown):
```unknown
</Tab>

  <Tab title="typeScript">
```

---

## AI SDK by Vercel

**URL:** llms-txt#ai-sdk-by-vercel

Source: https://docs.exa.ai/reference/vercel

---

## Set up OpenAI' SDK

**URL:** llms-txt#set-up-openai'-sdk

from openai import OpenAI

openai_api_key = "YOUR_API_KEY_HERE"
openai_client = OpenAI(api_key=openai_api_key)
Python Python theme={null}

questions = [
    "How did bats evolve their wings?",
    "How did Rome defend Italy from Hannibal?",
]
Python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
Now, we just need some questions to answer!
```

Example 2 (unknown):
```unknown
While LLMs can answer some questions on their own, they have limitations:

* LLMs don't have knowledge past when their training was stopped, so they can't know about recent events
* If an LLM doesn't know the answer, it will often 'hallucinate' a correct-sounding response, and it can be difficult and inconvenient to distinguish these from correct answers
* Because of the opaque manner of generation and the problems mentioned above, it is difficult to trust an LLM's responses when accuracy is [important](https://www.forbes.com/sites/mollybohannon/2023/06/08/lawyer-used-chatgpt-in-court-and-cited-fake-cases-a-judge-is-considering-sanctions/?sh=27194eb67c7f)

Robust retrieval helps solve all of these issues by providing quality sources of ground truth for the LLM (and their human users) to leverage and cite. Let's use Exa to get some information to answer our questions:
```

---

## LangChain Docs

**URL:** llms-txt#langchain-docs

Source: https://docs.exa.ai/integrations/langchain-docs

Learn how to use Exa's search API with LangChain. LangChain has a dedicated Exa tool. This enables AI agents to perform web search.

For detailed instructions on using Exa with LangChain, visit the [LangChain documentation](https://python.langchain.com/v0.2/docs/integrations/tools/exa_search/#using-the-exa-sdk-as-langchain-agent-tools).

---

## OpenAI SDK Compatibility

**URL:** llms-txt#openai-sdk-compatibility

**Contents:**
- Overview
- Answer
- Research
- Research via Responses API
- Chat Wrapper

Source: https://docs.exa.ai/reference/openai-sdk

Use Exa's endpoints as a drop-in replacement for OpenAI - supporting both chat completions and responses APIs.

Exa provides OpenAI-compatible endpoints that work seamlessly with the OpenAI SDK:

| Endpoint            | OpenAI Interface     | Models Available                          | Use Case                     |
| ------------------- | -------------------- | ----------------------------------------- | ---------------------------- |
| `/chat/completions` | Chat Completions API | `exa`, `exa-research`, `exa-research-pro` | Traditional chat interface   |
| `/responses`        | Responses API        | `exa-research`, `exa-research-pro`        | Modern, simplified interface |

Exa will parse through your messages and send only the last message to `/answer`
  or `/research`.
</Info>

To use Exa's `/answer` endpoint via the chat completions interface:

1. Replace base URL with `https://api.exa.ai`
2. Replace API key with your Exa API key
3. Replace model name with `exa`.

See the full `/answer` endpoint reference [here](/reference/answer).{" "}
</Info>

Need custom behavior when routing through `/answer`? Contact us at [hello@exa.ai](mailto:hello@exa.ai) and we can help tailor the integration.{" "}
</Info>

To use Exa's research models via the chat completions interface:

1. Replace base URL with `https://api.exa.ai`
2. Replace API key with your Exa API key
3. Replace model name with `exa-research` or `exa-research-pro`

See the full `/research` endpoint reference [here](/reference/research/create-a-task).{" "}
</Info>

## Research via Responses API

You can also access Exa's research models using OpenAI's newer Responses API format:

<Note>
  The Responses API provides a simpler interface for single-turn research tasks.
  For more details on using Exa with OpenAI's Responses API, including web
  search tool integration, see the [OpenAI Responses API
  guide](/reference/openai-responses-api-with-exa).
</Note>

Exa provides a Python wrapper that automatically enhances any OpenAI chat completion with RAG capabilities. With one line of code, you can turn any OpenAI chat completion into an Exa-powered RAG system that handles search, chunking, and prompting automatically.

<CodeGroup>
  
</CodeGroup>

The wrapped client works exactly like the native OpenAI client, except it automatically improves your completions with relevant search results when needed.

The wrapper supports any parameters from the `exa.search()` function.

**Examples:**

Example 1 (unknown):
```unknown

```

Example 2 (unknown):
```unknown

```

Example 3 (unknown):
```unknown
</CodeGroup>

## Research

To use Exa's research models via the chat completions interface:

1. Replace base URL with `https://api.exa.ai`
2. Replace API key with your Exa API key
3. Replace model name with `exa-research` or `exa-research-pro`

<Info>
  {" "}

  See the full `/research` endpoint reference [here](/reference/research/create-a-task).{" "}
</Info>

<CodeGroup>
```

Example 4 (unknown):
```unknown

```

---
