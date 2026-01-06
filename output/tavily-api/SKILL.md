---
name: tavily-api
description: Tavily Search API documentation for AI-powered web search, content extraction, and research capabilities. Use this skill when implementing Tavily API endpoints (search, extract, crawl, map, research) or integrating with Python/JavaScript SDKs.
---

# Tavily API Skill

Tavily is an AI-native search engine and API designed specifically for AI agents and LLM applications. It provides real-time web search, content extraction, website crawling/mapping, and comprehensive research capabilities.

## When to Use This Skill

Trigger this skill when:
- Implementing web search for AI agents or RAG applications
- Extracting content from URLs for data processing
- Crawling websites for knowledge base building
- Performing comprehensive research on topics
- Integrating real-time web data into AI workflows
- Building chatbots with web search capabilities

## Quick Reference

### API Endpoints Overview

| Endpoint | Method | Purpose |
|----------|--------|---------|
| `/search` | POST | AI-optimized web search |
| `/extract` | POST | Extract content from URLs |
| `/crawl` | POST | Crawl websites and extract content |
| `/map` | POST | Generate site maps |
| `/research` | POST | Comprehensive topic research |
| `/usage` | GET | Account usage statistics |

### Python SDK Quick Start

```python
# Installation
pip install tavily-python

# Basic Search
from tavily import TavilyClient
client = TavilyClient(api_key="your-api-key")
results = client.search("your query")

# Extract Content
results = client.extract(urls=["https://example.com"])

# Crawl Website
results = client.crawl(url="https://docs.example.com", max_depth=2)

# Map Website
results = client.map(url="https://docs.example.com")
```

### JavaScript SDK Quick Start

```javascript
// Installation
npm install @tavily/core

// Basic Search
import { tavily } from "@tavily/core";
const client = tavily({ apiKey: "your-api-key" });
const results = await client.search("your query");

// Extract Content
const extracted = await client.extract(["https://example.com"]);
```

### REST API Examples

```bash
# Search
curl -X POST "https://api.tavily.com/search" \
  -H "Content-Type: application/json" \
  -d '{"api_key": "your-api-key", "query": "AI trends 2025"}'

# Extract
curl -X POST "https://api.tavily.com/extract" \
  -H "Content-Type: application/json" \
  -d '{"api_key": "your-api-key", "urls": ["https://example.com"]}'
```

## Key Concepts

### Search Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `query` | string | Search query (required) |
| `search_depth` | string | "basic" or "advanced" |
| `max_results` | int | Number of results (1-20) |
| `include_domains` | list | Limit to specific domains |
| `exclude_domains` | list | Exclude specific domains |
| `include_answer` | bool | Include AI-generated answer |
| `include_raw_content` | bool | Include full page content |

### Extract Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `urls` | list | URLs to extract (required) |
| `include_images` | bool | Include images |
| `extract_depth` | string | "basic" or "advanced" |

### Crawl Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `url` | string | Starting URL (required) |
| `max_depth` | int | Crawl depth (1-10) |
| `max_pages` | int | Maximum pages to crawl |
| `instructions` | string | Natural language guidance |

## Common Patterns

### OpenAI Function Calling Integration

```python
from tavily import TavilyClient
from openai import OpenAI

tavily_client = TavilyClient(api_key="TAVILY_API_KEY")
openai_client = OpenAI(api_key="OPENAI_API_KEY")

tools = [{
    "type": "function",
    "function": {
        "name": "tavily_search",
        "description": "Search the web with Tavily",
        "parameters": {
            "type": "object",
            "properties": {
                "query": {"type": "string", "description": "Search query"},
                "max_results": {"type": "integer", "default": 5}
            },
            "required": ["query"]
        }
    }
}]

def tavily_search(**kwargs):
    return tavily_client.search(**kwargs)
```

### LangChain Integration

```python
from langchain_tavily import TavilySearch, TavilyExtract

# Search tool
search_tool = TavilySearch(max_results=5)
results = search_tool.invoke({"query": "latest AI news"})

# Extract tool
extract_tool = TavilyExtract()
content = extract_tool.invoke({"urls": ["https://example.com"]})
```

### RAG with Crawl

```python
# Crawl documentation for RAG
results = client.crawl(
    url="https://docs.example.com",
    max_depth=3,
    max_pages=100,
    instructions="Focus on API reference and tutorials"
)

# Process for vector store
documents = [
    {"content": page["raw_content"], "metadata": {"url": page["url"]}}
    for page in results["results"]
]
```

## Supported Integrations

- **LLM Frameworks**: LangChain, LlamaIndex, CrewAI, Pydantic AI
- **AI Platforms**: OpenAI, Anthropic, Vercel AI SDK, Google ADK
- **No-Code Tools**: Zapier, Make, n8n, Dify, FlowiseAI, Langflow
- **Enterprise**: IBM, Snowflake, Tines, StackAI
- **MCP**: Tavily MCP Server for Claude and compatible clients

## Reference Files

Detailed documentation in `references/`:

- **api_reference.md** - Complete API endpoint documentation (167KB)
- **sdks.md** - Python and JavaScript SDK guides (112KB)
- **integrations.md** - Framework integration tutorials
- **introduction.md** - Getting started guide
- **examples.md** - Use case examples
- **llms-full.md** - Complete llms.txt documentation (493KB)

## Best Practices

### Search Optimization
- Use specific, detailed queries for better results
- Set appropriate `search_depth` ("basic" for speed, "advanced" for depth)
- Use `include_domains`/`exclude_domains` to focus results
- Enable `include_answer` for AI-generated summaries

### Extract Optimization
- Batch multiple URLs in single request
- Use "advanced" depth for complex pages
- Handle rate limits with exponential backoff

### Crawl Optimization
- Start with lower `max_depth` and increase as needed
- Use `instructions` parameter for guided crawling
- Set reasonable `max_pages` to control costs

## Rate Limits & Pricing

- **Free Tier**: 1,000 API credits/month
- **Rate Limits**: Vary by plan (see docs for details)
- **Credits**: Search (1 credit), Extract (varies), Crawl (varies)

## Resources

- [API Playground](https://app.tavily.com/playground)
- [Community Forum](https://community.tavily.com)
- [GitHub - Python SDK](https://github.com/tavily-ai/tavily-python)
- [GitHub - JavaScript SDK](https://github.com/tavily-ai/tavily-js)

## Notes

- This skill was generated from official Tavily documentation
- llms.txt format detected - optimized for AI consumption
- 127 documentation pages indexed
- Last updated: January 2025
