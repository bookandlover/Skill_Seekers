---
name: exa-api
description: Exa AI search API documentation. Use for web search, content retrieval, similarity search, RAG applications, and AI-powered web research with Exa's neural search capabilities.
---

# Exa API Skill

Exa is a powerful web search API built on embeddings-based neural search technology. It provides intelligent web search, content extraction, similarity search, and AI-powered research capabilities for building RAG applications, AI agents, and web-enabled tools.

## When to Use This Skill

This skill should be triggered when:
- Building RAG (Retrieval-Augmented Generation) applications
- Adding web search capabilities to AI agents or LLMs
- Performing semantic/neural web search
- Extracting clean content from web pages (livecrawling)
- Finding similar pages to a given URL
- Building research or fact-checking tools
- Integrating web data into AI workflows
- Using Exa with LangChain, LlamaIndex, or other AI frameworks

## Quick Reference

### Installation

```bash
# Python
pip install exa_py

# JavaScript/TypeScript
npm install exa-js
```

### Basic Setup

```python
from exa_py import Exa
import os

exa = Exa(api_key=os.environ["EXA_API_KEY"])
```

```javascript
import Exa from 'exa-js';

const exa = new Exa(process.env.EXA_API_KEY);
```

### Core Endpoints

| Endpoint | Description |
|----------|-------------|
| `/search` | Search the web using neural search |
| `/contents` | Get clean, parsed content from URLs |
| `/find_similar` | Find pages similar to a given URL |
| `/answer` | Get direct answers with citations |
| `/research` | Automate in-depth web research |

## Common Patterns

### 1. Search and Get Contents (Most Common)

```python
# Search and get full text content in one call
result = exa.search_and_contents(
    "latest AI research papers on transformers",
    type="auto",  # auto, neural, fast, or deep
    num_results=10,
    text=True  # Get full text content
)

for r in result.results:
    print(f"Title: {r.title}")
    print(f"URL: {r.url}")
    print(f"Text: {r.text[:500]}...")
```

```javascript
const result = await exa.searchAndContents(
    "latest AI research papers on transformers",
    {
        type: "auto",
        numResults: 10,
        text: true
    }
);
```

### 2. Search with Highlights

```python
# Get relevant excerpts instead of full text
result = exa.search_and_contents(
    "climate change solutions",
    highlights={
        "num_sentences": 3,
        "highlights_per_url": 2
    },
    num_results=5
)

for r in result.results:
    print(f"URL: {r.url}")
    for highlight in r.highlights:
        print(f"  - {highlight}")
```

### 3. Find Similar Pages

```python
# Find pages similar to a given URL
similar = exa.find_similar_and_contents(
    "https://openai.com/research",
    num_results=10,
    text=True
)
```

### 4. Answer API (RAG Made Simple)

```python
# Get direct answers with citations
response = exa.answer(
    "What are the main features of GPT-4?",
    text=True  # Include full citation text
)

print(f"Answer: {response.answer}")
for citation in response.citations:
    print(f"Source: {citation.url}")
```

### 5. Domain Filtering

```python
# Search only specific domains
result = exa.search_and_contents(
    "machine learning tutorials",
    include_domains=["arxiv.org", "github.com"],
    num_results=10
)

# Exclude certain domains
result = exa.search_and_contents(
    "python programming",
    exclude_domains=["stackoverflow.com"],
    num_results=10
)
```

### 6. Date Filtering

```python
# Search within date range
result = exa.search_and_contents(
    "AI news",
    start_published_date="2024-01-01",
    end_published_date="2024-12-31",
    num_results=10
)
```

### 7. Category Search

```python
# Search specific categories
# Available: company, research_paper, news, tweet, people, etc.
result = exa.search_and_contents(
    "AI startups",
    category="company",
    num_results=10
)
```

### 8. Livecrawl Options

```python
# Get fresh content from live web
result = exa.search_and_contents(
    "latest news",
    livecrawl="always",  # always, fallback, preferred, never
    num_results=5
)
```

| Option | Behavior |
|--------|----------|
| `never` | Use cached content only (fastest) |
| `fallback` | Use cache first, crawl if needed |
| `preferred` | Try crawl first, fallback to cache |
| `always` | Always crawl fresh (may fail) |

## Search Types

| Type | Description | Best For |
|------|-------------|----------|
| `auto` | Intelligently combines methods | General use (default) |
| `neural` | Embeddings-based semantic search | Complex queries |
| `fast` | Optimized for speed (<425ms) | Real-time applications |
| `deep` | Query expansion + summaries | Comprehensive research |

## Framework Integrations

### LangChain

```python
from langchain_exa import ExaSearchRetriever

retriever = ExaSearchRetriever(
    k=5,
    highlights=True
)
docs = retriever.invoke("climate change research")
```

### OpenAI Tool Calling

```python
tools = [{
    "type": "function",
    "function": {
        "name": "exa_search",
        "description": "Search the web using Exa",
        "parameters": {
            "type": "object",
            "properties": {
                "query": {"type": "string"}
            }
        }
    }
}]
```

### Anthropic/Claude Tool Use

```python
tools = [{
    "name": "web_search",
    "description": "Search the web for current information",
    "input_schema": {
        "type": "object",
        "properties": {
            "query": {"type": "string"}
        },
        "required": ["query"]
    }
}]
```

## Websets API

For large-scale web data collection with monitoring:

```python
# Create a Webset for ongoing data collection
webset = exa.websets.create({
    "search": {
        "query": "AI startups funding rounds",
        "criteria": [
            {"description": "Article about startup raising funding"},
            {"description": "Published in last 24 hours"}
        ],
        "count": 25
    }
})

# Create a monitor for daily updates
monitor = exa.websets.monitors.create({
    "webset_id": webset.id,
    "cadence": {"cron": "0 0 * * *"}  # Daily
})
```

## Key Concepts

- **Neural Search**: Semantic search using embeddings (understands meaning, not just keywords)
- **Highlights**: Relevant excerpts extracted from pages
- **Livecrawl**: Fresh content fetching from live web
- **Categories**: Filter by content type (company, news, paper, etc.)
- **Websets**: Collections of web data with monitoring capabilities

## Reference Files

Detailed documentation in `references/`:

- **getting_started.md** - Quickstart and setup guide
- **search.md** - Search endpoint parameters and options
- **contents.md** - Content extraction and livecrawling
- **similarity.md** - Find similar pages functionality
- **answer.md** - Answer API for RAG
- **sdk.md** - Python and TypeScript SDK reference
- **integrations.md** - LangChain, LlamaIndex, CrewAI integration
- **websets.md** - Websets API for data collection

## Resources

- [API Dashboard](https://dashboard.exa.ai) - Get API keys and test searches
- [API Playground](https://dashboard.exa.ai/playground) - Interactive testing
- [Python SDK](https://github.com/exa-labs/exa-py)
- [JavaScript SDK](https://github.com/exa-labs/exa-js)
- [Official Documentation](https://docs.exa.ai)

## Pricing Notes

- 1000 free searches/month on signup
- Pay per search and content retrieval
- Livecrawl costs more than cached content
- Check dashboard for current pricing
