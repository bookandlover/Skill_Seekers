# Exa-Api - Getting Started

**Pages:** 4

---

## Quickstart

**URL:** llms-txt#quickstart

**Contents:**
- Create and setup your API key
- Create a .env file
- Make an API request

Source: https://docs.exa.ai/reference/quickstart

Make your first request to one of Exa's API endpoints

## Create and setup your API key

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

## Create a .env file

Create a file called `.env` in the root of your project and add the following line.

## Make an API request

Use our python or javascript SDKs, or call the API directly with cURL.

<Tabs>
  <Tab title="Python">
    Install the python SDKs with pip.  If you want to store your API key in a `.env` file, make sure to install the dotenv library.

Once you've installed the SDKs, create a file called `exa.py` and add the code below.

<Tabs>
      <Tab title="Search and crawl">
        Get a list of results and their full text content.

<Tab title="Answer">
        Get an answer to a question, grounded by citations from exa.

<Tab title="Chat Completions">
        Get a chat completion from exa.

<Tab title="Find similar links and get full text">
        Find similar links to a given URL and get the full text for each link.

</Tab>
    </Tabs>
  </Tab>

<Tab title="JavaScript">
    Install the javascript SDK with npm. If you want to store your API key in a `.env` file, make sure to install the dotenv library.

Once you've installed the SDK, create a file called `exa.ts` and add the code below.

<Tabs>
      <Tab title="Search and crawl">
        Get a list of results and their full text content.

<Tab title="Answer">
        Get an answer to a question, grounded by citations from exa.

<Tab title="Chat Completions">
        Get a chat completion from exa.

<Tab title="Find similar links and get full text">
        Find similar links to a given URL and get the full text for each link.

</Tab>
    </Tabs>
  </Tab>

<Tab title="cURL">
    Pass one of the following commands to your terminal to make an API request.

<Tabs>
      <Tab title="Search and crawl">
        Get a list of results and their full text content.

<Tab title="Answer">
        Get an answer to a question, grounded by citations from exa.

<Tab title="Chat Completions">
        Get a chat completion from exa.

</Tab>
    </Tabs>
  </Tab>
</Tabs>

**Examples:**

Example 1 (unknown):
```unknown
<br />

{" "}

## Make an API request

Use our python or javascript SDKs, or call the API directly with cURL.

<Tabs>
  <Tab title="Python">
    Install the python SDKs with pip.  If you want to store your API key in a `.env` file, make sure to install the dotenv library.
```

Example 2 (unknown):
```unknown
Once you've installed the SDKs, create a file called `exa.py` and add the code below.

    <Tabs>
      <Tab title="Search and crawl">
        Get a list of results and their full text content.
```

Example 3 (unknown):
```unknown
</Tab>

      <Tab title="Answer">
        Get an answer to a question, grounded by citations from exa.
```

Example 4 (unknown):
```unknown
</Tab>

      <Tab title="Chat Completions">
        Get a chat completion from exa.
```

---

## Introducing Exa People Search

**URL:** llms-txt#introducing-exa-people-search

**Contents:**
- What's New
- What Changed
  - Before

Source: https://docs.exa.ai/changelog/people-search-launch

We're launching state-of-the-art people search with 1B+ indexed profiles. The 'linkedin' category is now replaced with 'people' for better results.

**Date: December 19, 2025**

We're launching **Exa People Search**, a new way to find and discover people on the web, designed for real production use across sales, recruiting, research, and more.

<Info>
  Try People Search in our API Playground with `category = "people"`. [Try People Search in the dashboard →](https://dashboard.exa.ai/playground/search?q=product%20managers%20at%20microsoft\&c=people\&filters=%7B%22text%22%3A%22true%22%2C%22type%22%3A%22auto%22%7D)
</Info>

**State-of-the-art people search**: Exa indexed 1B+ public profiles and trained a hybrid retrieval system (fine-tuned embeddings + Exa Search) to deliver highly accurate role, skill, and company based people search at web scale.

**Usecase focused**: Customers can run queries like "VP of Product at Microsoft" or "enterprise sales reps from Microsoft in EMEA" and programmatically enrich results with profiles for sales, recruiting, and market research workflows.

We're replacing the `linkedin` category with the new `people` category to provide better, more comprehensive people search results.

```python  theme={null}

---

## Build a Retrieval Agent with LangGraph

**URL:** llms-txt#build-a-retrieval-agent-with-langgraph

**Contents:**
- What this doc covers
- Guide
- Brief Intro to LangGraph
- Our Research Assistant Workflow
- Let's break down what's happening in this simple workflow:
- 1. Prerequisites and Installation
- 2. Set Up Exa Search as a LangChain Tool
- 3. Creating a Toolchain with LangGraph

Source: https://docs.exa.ai/examples/getting-started-with-rag-in-langgraph

## What this doc covers

* Brief intro to LangGraph
* How to set up an agent in LangGraph with Exa search as a tool

This guide will show you how you can define and use Exa search within the LangGraph framework. This framework provides a straightforward way for you to define an AI agent and for it to retrieve high-quality, semantically matched content via Exa search.

## Brief Intro to LangGraph

Before we dive into our implementation, a quick primer on the LangGraph framework.

LangGraph is a powerful tool for building complex LLM-based agents. It allows for cyclical workflows, gives you granular control, and offers built-in persistence. This means you can create reliable agents with intricate logic, pause and resume execution, and even incorporate human oversight.

Read more about [LangGraph here](https://langchain-ai.github.io/langgraph/)

## Our Research Assistant Workflow

For our AI-powered research assistant, we're leveraging LangGraph's capabilities to create a workflow that combines an AI model (Claude) with a web search retrieval tool powered by Exa's API, to fetch, find and analyze any documents (in this case research on climate tech). Here's a visual representation of our workflow:

![Alt text](https://files.readme.io/a2674bdce9b576860cd8eeec735ebd8959e8a8b41d4e5fab829dbbdcae37d6b0-Screenshot_2024-08-22_at_11.50.08.png)

This diagram illustrates how our workflow takes advantage of LangGraph's cycle support, allowing the agent to repeatedly use tools and make decisions until it has gathered sufficient information to provide a final response.

## Let's break down what's happening in this simple workflow:

1. We start at the Entry Point with a user query (e.g., "Latest research papers on climate technology").
2. The Agent (our AI model) receives the query and decides what to do next.
3. If the Agent needs more information, it uses the Web Search Retriever Tool to search for relevant documents.
4. The Web Search Retriever Tool fetches information using Exa's semantic search capabilities.
5. The Agent receives the fetched information and analyzes it.
6. This process repeats until the Agent has enough information to provide a final response.

In the following sections, we'll explore the code implementation in detail, showing how we leverage LangGraph's features to create this advanced research assistant.

## 1. Prerequisites and Installation

Before starting, ensure you have the required packages installed:

Make sure to set up your API keys. For LangChain libraries, the environment variables should be named `ANTHROPIC_API_KEY` and `EXA_API_KEY` for Anthropic and Exa keys respectively.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

## 2. Set Up Exa Search as a LangChain Tool

After setting env variables, we can start configuring a search tool using `ExaSearchRetriever`. This tool ([read more here](https://api.python.langchain.com/en/latest/retrievers/langchain_exa.retrievers.ExaSearchRetriever.html)) will help retrieve relevant documents based on a query.

First we need to import the required libraries:

After we have imported the necessary libraries, we need to define and register a tool so that the agent know what tools it can use.

We use LangGraph `tool` decorator which you can read more about [here](https://python.langchain.com/v0.1/docs/modules/tools/custom_tools/#tool-decorator). The decorator uses the function name as the tool name. The docstring provides the agent with a tool description.

The `retriever` is where we initialize the Exa search retriever and configure it with parameters such as `highlights=True`. You can read more about all the available parameters [here](https://docs.exa.ai/reference/python-sdk-specification#input-parameters-1).

Here, `ExaSearchRetriever` is set to fetch 3 documents.

Then we use LangChain's `PromptTemplate` to structure the results from Exa in a more AI friendly way. Creating and using this template is optional, but recommended. Read more about PromptTemplate ([here](https://python.langchain.com/v0.1/docs/modules/model_io/prompts/quick_start/#).

We also use a RunnableLambda to extract necessary metadata (like URL and highlights) from the search results and format it using the prompt template.

After all of this we start the retrieval and processing chain and store the results in the `documents` variable which is returned.

## 3. Creating a Toolchain with LangGraph

Now let's set up the complete toolchain using LangGraph.

```python  theme={null}
from typing import Literal
from langchain_anthropic import ChatAnthropic
from langchain_core.messages import HumanMessage
from langgraph.checkpoint.memory import MemorySaver
from langgraph.graph import END, MessagesState, StateGraph
from langgraph.prebuilt import ToolNode

**Examples:**

Example 1 (unknown):
```unknown
Make sure to set up your API keys. For LangChain libraries, the environment variables should be named `ANTHROPIC_API_KEY` and `EXA_API_KEY` for Anthropic and Exa keys respectively.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />
```

Example 2 (unknown):
```unknown
## 2. Set Up Exa Search as a LangChain Tool

After setting env variables, we can start configuring a search tool using `ExaSearchRetriever`. This tool ([read more here](https://api.python.langchain.com/en/latest/retrievers/langchain_exa.retrievers.ExaSearchRetriever.html)) will help retrieve relevant documents based on a query.

First we need to import the required libraries:
```

Example 3 (unknown):
```unknown
After we have imported the necessary libraries, we need to define and register a tool so that the agent know what tools it can use.

We use LangGraph `tool` decorator which you can read more about [here](https://python.langchain.com/v0.1/docs/modules/tools/custom_tools/#tool-decorator). The decorator uses the function name as the tool name. The docstring provides the agent with a tool description.

The `retriever` is where we initialize the Exa search retriever and configure it with parameters such as `highlights=True`. You can read more about all the available parameters [here](https://docs.exa.ai/reference/python-sdk-specification#input-parameters-1).
```

Example 4 (unknown):
```unknown
Here, `ExaSearchRetriever` is set to fetch 3 documents.

Then we use LangChain's `PromptTemplate` to structure the results from Exa in a more AI friendly way. Creating and using this template is optional, but recommended. Read more about PromptTemplate ([here](https://python.langchain.com/v0.1/docs/modules/model_io/prompts/quick_start/#).

We also use a RunnableLambda to extract necessary metadata (like URL and highlights) from the search results and format it using the prompt template.

After all of this we start the retrieval and processing chain and store the results in the `documents` variable which is returned.

## 3. Creating a Toolchain with LangGraph

Now let's set up the complete toolchain using LangGraph.
```

---

## Overview

**URL:** llms-txt#overview

**Contents:**
- Key Features
- Core Objects
- Next Steps

Source: https://docs.exa.ai/websets/api/overview

The Websets API helps you find, verify, and process web data at scale to build your unique collection of web content.

The Websets API helps you create your own unique slice of the web by organizing content in containers (`Webset`). These containers store structured results (`WebsetItem`) which are discovered by search agents (`WebsetSearch`) that find web pages matching your specific criteria. Once these items are added to your Webset, they can be further processed with enrichment agents to extract additional data.

Whether you're looking for companies, people, or research papers, each result becomes a structured Item with source content, verification status, and type-specific fields. These Items can be further enriched with enrichments.

At its core, the API is:

* **Asynchronous**: It's an async-first API. Searches (`Webset Search`) can take from seconds to minutes, depending on the complexity.

* **Structured**: Every result (`Webset Item`) includes structured properties, webpage content, and verification against your criteria, with reasoning and references explaining why it matches.

* **Event-Driven**: Events are published and delivered through webhooks to notify when items are found and when enrichments complete, allowing you to process data as it arrives.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/api/core.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=265cc07c934104d780743b8a5d7bb17e" alt="Core concepts diagram showing relationships between Webset, Search, Item and Enrichment objects" data-og-width="1178" width="1178" data-og-height="324" height="324" data-path="images/websets/api/core.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/api/core.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=4b97e35beadbc0a94efe7213ee1c5983 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/api/core.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=1af211849acd9d2f782e61b838e40fe6 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/api/core.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=e75ecf072cd81585e14fcce486b19289 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/api/core.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=341874ad3c08788afe8f972f17134f39 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/api/core.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=60373085f9f70ff2dc0e5d319c1fb405 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/api/core.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=5ea7a3540b5358338b1ea676fddc26b4 2500w" />

* **Webset**: Container that organizes your unique collection of web content and its related searches
* **Search**: An agent that searches and crawls the web to find precise entities matching your criteria, adding them to your Webset as structured WebsetItems
* **Item**: A structured result with source content, verification status, and type-specific fields (company, person, research paper, etc.)
* **Enrichment**: An agent that searches the web to enhance existing WebsetItems with additional structured data

* Follow our [quickstart guide](/websets/api/get-started)
* Learn more about [how it works](/websets/api/how-it-works)
* Browse the [API reference](/websets/api/websets/create-a-webset)

---
