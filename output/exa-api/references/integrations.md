# Exa-Api - Integrations

**Pages:** 11

---

## LlamaIndex Docs

**URL:** llms-txt#llamaindex-docs

Source: https://docs.exa.ai/integrations/llamaIndex-docs

Learn how to use Exa's search API with LlamaIndex. LlamaIndex has a dedicated Exa tool. This enables AI agents to perform web search.

For detailed instructions on using Exa with LlamaIndex, visit the [LlamaIndex documentation](https://docs.llamaindex.ai/en/stable/api_reference/tools/exa/).

---

## Exa MCP

**URL:** llms-txt#exa-mcp

**Contents:**
  - exa-code: fast and efficient web context for coding agents
- Remote Exa MCP
  - Claude Desktop Configuration for Remote MCP
  - Cursor and Claude Code Configuration for Remote MCP
- Available Tools
- Usage Examples
  - Code Search Examples
  - Other Search Examples
- Local Installation
  - Using Claude Code

Source: https://docs.exa.ai/reference/exa-mcp

[![Install in Cursor](https://img.shields.io/badge/Install_in-Cursor-000000?style=flat-square\&logoColor=white)](https://cursor.com/en/install-mcp?name=exa\&config=eyJuYW1lIjoiZXhhIiwidHlwZSI6Imh0dHAiLCJ1cmwiOiJodHRwczovL21jcC5leGEuYWkvbWNwIn0=)
[![Install in VS Code](https://img.shields.io/badge/Install_in-VS_Code-0098FF?style=flat-square\&logo=visualstudiocode\&logoColor=white)](https://vscode.dev/redirect/mcp/install?name=exa\&config=%7B%22type%22%3A%22http%22%2C%22url%22%3A%22https%3A%2F%2Fmcp.exa.ai%2Fmcp%22%7D)

### exa-code: fast and efficient web context for coding agents

Vibe coding should never have a bad vibe. `exa-code` is a huge step towards coding agents that never hallucinate.

When your coding agent makes a search query, `exa-code` searches over billions of GitHub repos, docs pages, StackOverflow posts, and more to find the perfect, token-efficient context that the agent needs to code correctly. It's powered by the Exa search engine.

Examples of queries you can make with `exa-code`:

* use Exa search in python and request content with `livecrawl="preferred"` and a 12s `livecrawlTimeout`
* use correct syntax for vercel ai sdk to call gpt-5 nano asking it how are you

**Works with Cursor and Claude Code!** Use the HTTP-based configuration format:

Installing Exa MCP like below will install Exa web search as well as `exa-code`. To maximize performance, be sure to leave *only* `exa-code` turned on in your MCP client.

Exa MCP Server enables AI assistants like Claude to perform real-time web searches through the Exa Search API, allowing them to access up-to-date information from the internet. It is open-source, check out [GitHub](https://github.com/exa-labs/exa-mcp-server/).

Connect directly to Exa's hosted MCP server using this URL:

You can enable specific tool(s) using the `tools` parameter (if multiple, then with a comma-separated list):

You may include your exa api key in the url like this:

**Note:** By default, only `web_search_exa` and `get_code_context_exa` are enabled. Add other tools as needed using the `tools` parameter.

### Claude Desktop Configuration for Remote MCP

Add this to your Claude Desktop configuration file:

### Cursor and Claude Code Configuration for Remote MCP

For Cursor and Claude Code, use this HTTP-based configuration format:

Replace the above link to this to enable all tools:

**Note:** By default, only `web_search_exa` and `get_code_context_exa` are enabled. You can enable additional tools using the `tools` parameter (see examples below).

Exa MCP includes several specialized search tools:

| Tool                       | Description                                                                                                                                                                                                                                                                                     |
| -------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **`get_code_context_exa`** | **NEW!** Search and get relevant code snippets, examples, and documentation from open source libraries, GitHub repositories, and programming frameworks. Perfect for finding up-to-date code documentation, implementation examples, API usage patterns, and best practices from real codebases |
| `web_search_exa`           | Performs real-time web searches with optimized results and content extraction                                                                                                                                                                                                                   |
| `deep_researcher_start`    | Start a smart AI researcher for complex questions. The AI will search the web, read many sources, and think deeply about your question to create a detailed research report                                                                                                                     |
| `deep_researcher_check`    | Check if your research is ready and get the results. Use this after starting a research task to see if it's done and get your comprehensive report                                                                                                                                              |
| `company_research`         | Comprehensive company research tool that crawls company websites to gather detailed information about businesses                                                                                                                                                                                |
| `crawling`                 | Extracts content from specific URLs, useful for reading articles, PDFs, or any web page when you have the exact URL                                                                                                                                                                             |
| `linkedin_search`          | Search LinkedIn for companies and people using Exa AI. Simply include company names, person names, or specific LinkedIn URLs in your query                                                                                                                                                      |

Once configured, you can ask Claude to perform searches:

### Code Search Examples

* "Show me how to use React hooks with TypeScript"
* "Find examples of how to implement authentication with NextJS"
* "Get documentation and examples for the pandas library"

### Other Search Examples

* "Research the company exa.ai and find information about their pricing"
* "Start a deep research project on the impact of artificial intelligence on healthcare, then check when it's complete to get a comprehensive report"

## Local Installation

### Using Claude Code

The quickest way to set up Exa MCP is using Claude Code:

Replace `YOUR_API_KEY` with your Exa API key from above.

## Configuring Claude Desktop

To configure Claude Desktop to use Exa MCP:

1. **Enable Developer Mode in Claude Desktop**
   * Open Claude Desktop
   * Click on the top-left menu
   * Enable Developer Mode

2. **Open the Configuration File**

* After enabling Developer Mode, go to Settings
   * Navigate to the Developer Option
   * Click "Edit Config" to open the configuration file

Alternatively, you can open it directly:

3. **Add Exa MCP Configuration**

Add the following to your configuration:

Replace `your-api-key-here` with your actual Exa API key.

4. **Enabling Specific Tools**

To enable only code search (recommended for developers):

To enable code search and web search together:

The simplest way to install and run Exa MCP is via NPX:

```bash  theme={null}

**Examples:**

Example 1 (unknown):
```unknown
Installing Exa MCP like below will install Exa web search as well as `exa-code`. To maximize performance, be sure to leave *only* `exa-code` turned on in your MCP client.

***

Exa MCP Server enables AI assistants like Claude to perform real-time web searches through the Exa Search API, allowing them to access up-to-date information from the internet. It is open-source, check out [GitHub](https://github.com/exa-labs/exa-mcp-server/).

## Remote Exa MCP

Connect directly to Exa's hosted MCP server using this URL:
```

Example 2 (unknown):
```unknown
You can enable specific tool(s) using the `tools` parameter (if multiple, then with a comma-separated list):
```

Example 3 (unknown):
```unknown
Or enable all tools:
```

Example 4 (unknown):
```unknown
You may include your exa api key in the url like this:
```

---

## Anthropic Tool Calling

**URL:** llms-txt#anthropic-tool-calling

**Contents:**
- Get Started

Source: https://docs.exa.ai/reference/anthropic-tool-calling

Using Claude's Tool Use Feature with Exa Search Integration.

This guide will show you how to properly set up and use Anthropic's and Exa's API client, and utilise Claude's function calling or tool use feature to perform Exa search integration. Here are the steps:

1. Install the prerequisite packages and set up API keys as environment variables
2. Understand how Claude's tool use feature works
3. Use Exa within the tool use feature

<Steps>
  <Step title="Prerequisites and installation">
    Before you can use this guide you will need to have [python3](https://www.python.org/doc/) and [pip](https://pip.pypa.io/en/stable/installation/) installed on your machine.

For the purpose of this guide we will need to install:

* `anthropic` library to perform Claude API calls and completions
    * `exa_py` library to perform Exa search
    * `rich` library to make the output more readable

Install the libraries.

To successfully use the Exa search client and Anthropic client you will need to have your `ANTHROPIC_API_KEY` and `EXA_API_KEY`\
    set as environment variables.

To get an Anthropic API key, you will first need an Anthropic account, visit the [Anthropic console](https://console.anthropic.com/settings/keys) to generate your API key.

Similarly, to get the Exa API key, you will first need an Exa account, visit the Exa dashboard to generate your API key.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

> Be safe with your API keys. Make sure they are not hardcoded in your code or added to a git repository to prevent leaking them to the public.

You can create an `.env` file in the root of your project and add the following to it:

Make sure to add your `.env` file to your `.gitignore` file if you have one.
  </Step>

<Step title="Understanding Claude's Tool Use Feature">
    Claude LLMs can call a function you have defined in your code; this is called [tool use](https://docs.anthropic.com/en/docs/build-with-claude/tool-use). To do this, you first need to describe the function you want to call to Claude's LLM. You can do this by defining a description object of the format:

When this description is sent to Claude's LLM, it returns an object with a string, which is the function name defined in *your* code, and the arguments that the function takes. This does not execute or *call* functions on Anthropic's side; it only returns the function name and arguments which you will have to parse and call yourself in your code.

We will use the object of this format to call the `exa_search` function we define.
  </Step>

<Step title="Use Exa Search as Claude tool">
    First, we import and initialise the Anthropic and Exa libraries and load the stored API keys.

Next, we define the function and the function schema so that Claude knows how to use it and what arguments our local function takes:

Finally, we'll define the primer `SYSTEM_MESSAGE`, which explains to Claude what it is supposed to do:

We can now start writing the code needed to perform the LLM calls and the search. We'll create the `exa_search` function that will call Exa's `search_and_contents` function with the query:

Next, we create a function to process the tool use:

Lastly, we'll create a `main` function to bring it all together, and handle the user input and interaction with Claude:

The implementation creates a loop that continually prompts the user for search queries, uses Claude's tool use feature to determine when to perform a search, and then uses the Exa search results to provide an informed response to the user's query.

We also use the rich library to provide a more visually appealing console interface, including coloured output and markdown rendering for the responses.
  </Step>

<Step title="Full code">

We have now written an advanced search tool that combines the power of Claude's language models with Exa's semantic search capabilities, providing users with informative and context-aware responses to their queries.
  </Step>

<Step title="Running the code">
    Save the code in a file, e.g. `claude_search.py`, and make sure the `.env` file containing the API keys we previously created is in the same directory as the script.

Then run the script using the following command from your terminal:

You should see a prompt:

That's it, enjoy your search agent!
  </Step>
</Steps>

**Examples:**

Example 1 (unknown):
```unknown
To successfully use the Exa search client and Anthropic client you will need to have your `ANTHROPIC_API_KEY` and `EXA_API_KEY`\
    set as environment variables.

    To get an Anthropic API key, you will first need an Anthropic account, visit the [Anthropic console](https://console.anthropic.com/settings/keys) to generate your API key.

    Similarly, to get the Exa API key, you will first need an Exa account, visit the Exa dashboard to generate your API key.

    <Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

    > Be safe with your API keys. Make sure they are not hardcoded in your code or added to a git repository to prevent leaking them to the public.

    You can create an `.env` file in the root of your project and add the following to it:
```

Example 2 (unknown):
```unknown
Make sure to add your `.env` file to your `.gitignore` file if you have one.
  </Step>

  <Step title="Understanding Claude's Tool Use Feature">
    Claude LLMs can call a function you have defined in your code; this is called [tool use](https://docs.anthropic.com/en/docs/build-with-claude/tool-use). To do this, you first need to describe the function you want to call to Claude's LLM. You can do this by defining a description object of the format:
```

Example 3 (unknown):
```unknown
When this description is sent to Claude's LLM, it returns an object with a string, which is the function name defined in *your* code, and the arguments that the function takes. This does not execute or *call* functions on Anthropic's side; it only returns the function name and arguments which you will have to parse and call yourself in your code.
```

Example 4 (unknown):
```unknown
We will use the object of this format to call the `exa_search` function we define.
  </Step>

  <Step title="Use Exa Search as Claude tool">
    First, we import and initialise the Anthropic and Exa libraries and load the stored API keys.
```

---

## create the openai client

**URL:** llms-txt#create-the-openai-client

openai = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

---

## LangChain

**URL:** llms-txt#langchain

**Contents:**
- Get Started

Source: https://docs.exa.ai/reference/langchain

How to use Exa's integration with LangChain to perform RAG.

LangChain is a framework for building applications that combine LLMs with data, APIs and other tools. In this guide, we'll go over how to use Exa's LangChain integration to perform RAG with the following steps:

1. Set up Exa's LangChain integration and use Exa to retrieve relevant content
2. Connect this content to a toolchain that uses OpenAI's LLM for generation

<Info> See a YouTube tutorial of a very similar setup by the LangChain team [here](https://www.youtube.com/watch?v=dA1cHGACXCo). </Info>

<Info> See the full reference from LangChain [here](https://python.langchain.com/docs/integrations/providers/exa%5Fsearch/). </Info>

<Steps>
  <Step title="Pre-requisites and installation">
    Install the core OpenAI and Exa LangChain libraries

<Note> Ensure API keys are initialized properly. For LangChain libraries, the environment variable names are `OPENAI_API_KEY` and `EXA_API_KEY` for OpenAI and Exa keys respectively. </Note>

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />
  </Step>

<Step title="Use Exa Search to power a LangChain Tool">
    Set up a Retriever tool using `ExaSearchRetriever`. This is a retriever that connects to Exa Search to find relevant documents via semantic search. First import the relevant libraries and instantiate the ExaSearchRetriever.

<Step title="Create a prompt template (optional)">
    We use a LangChain [PromptTemplate](https://python.langchain.com/v0.1/docs/modules/model%5Fio/prompts/quick%5Fstart/#prompttemplate) to define a template of placeholder to parse out URLs and Highlights from the Exa retriever.

<Step title="Parse the URL and content from Exa results">
    We use a [Runnable Lambda](https://api.python.langchain.com/en/latest/runnables/langchain%5Fcore.runnables.base.RunnableLambda.html) to parse out the URL and Highlights attributes from the Exa Search results then pass this to the prompt template above

<Step title="Join Exa results and content for retrieval">
    Complete the retrieval chain by stitching together the Exa retriever, the parser and a short lambda function - this is crucial for passing the result as a single string as context for the LLM in the next step.

<Step title="Set up the rest of the toolchain including OpenAI for generation">
    In this step, we define the system prompt with Query and Context template inputs to be grabbed from the user and Exa Search respectively. First, once again import the relevant libraries and components from LangChains libraries

Then we define a generation prompt - the prompt template that is used with context from Exa to perform RAG.

We set the generation [LLM to OpenAI](https://python.langchain.com/v0.1/docs/integrations/chat/openai/), then connect everything with a [RunnableParallel](https://python.langchain.com/v0.1/docs/expression%5Flanguage/primitives/parallel/) parallel connection. The generation prompt, containing the query and context, is then passed to the LLM and [parsed for better output representation](https://api.python.langchain.com/en/latest/output%5Fparsers/langchain%5Fcore.output%5Fparsers.string.StrOutputParser.html).

<Step title="Running the full RAG toolchain">
    Let's [invoke](https://python.langchain.com/v0.1/docs/expression%5Flanguage/interface/#invoke) the chain:

And have a look at the output (newlines parsed):

<Step title="Optionally, stream the output of the chain">
    Optionally, you may

Outputs, in a stream - [click here](https://python.langchain.com/v0.1/docs/expression%5Flanguage/streaming/) to learn more about the .stream method and other options, including handling of chunks and how to think about further parsing outputs:

As you can see, the output generation is enriched with the context of our Exa Search query result!
  </Step>
</Steps>

**Examples:**

Example 1 (unknown):
```unknown
<Note> Ensure API keys are initialized properly. For LangChain libraries, the environment variable names are `OPENAI_API_KEY` and `EXA_API_KEY` for OpenAI and Exa keys respectively. </Note>

    <Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />
  </Step>

  <Step title="Use Exa Search to power a LangChain Tool">
    Set up a Retriever tool using `ExaSearchRetriever`. This is a retriever that connects to Exa Search to find relevant documents via semantic search. First import the relevant libraries and instantiate the ExaSearchRetriever.
```

Example 2 (unknown):
```unknown
</Step>

  <Step title="Create a prompt template (optional)">
    We use a LangChain [PromptTemplate](https://python.langchain.com/v0.1/docs/modules/model%5Fio/prompts/quick%5Fstart/#prompttemplate) to define a template of placeholder to parse out URLs and Highlights from the Exa retriever.
```

Example 3 (unknown):
```unknown
</Step>

  <Step title="Parse the URL and content from Exa results">
    We use a [Runnable Lambda](https://api.python.langchain.com/en/latest/runnables/langchain%5Fcore.runnables.base.RunnableLambda.html) to parse out the URL and Highlights attributes from the Exa Search results then pass this to the prompt template above
```

Example 4 (unknown):
```unknown
</Step>

  <Step title="Join Exa results and content for retrieval">
    Complete the retrieval chain by stitching together the Exa retriever, the parser and a short lambda function - this is crucial for passing the result as a single string as context for the LLM in the next step.
```

---

## OpenAI Tool Calling

**URL:** llms-txt#openai-tool-calling

**Contents:**
- Get Started
- Full code

Source: https://docs.exa.ai/reference/openai-tool-calling

Learn to use OpenAI's tool call feature with Exa's Search Integration

<Info>
  OpenAI recommends using the Responses API for all new projects. [See the guide](./openai-responses-api-with-exa).
</Info>

OpenAI's [tool calling](https://platform.openai.com/docs/guides/function-calling?lang=python) allows LLMs to call functions that are defined in your code. This guide will show you how to utilise tool calling to call Exa's search, with the following steps:

1. Install prerequisite packages and set up the environment
2. Overview of how OpenAI's tool calling feature works
3. Use Exa within an OpenAI tool call

<Steps>
  <Step title="Pre-requisites and installation">
    Install the:

* `openai` library to perform OpenAI API calls and completions
    * `exa_py` library to perform Exa search
    * `rich` library to make the output more readable

<Step title="Set up the environment variables">
    Create an `.env` file in the root of your project and set the `EXA_API_KEY` and `OPENAI_API_KEY` environment variable to your API keys respectively. Visit the [OpenAI playground](https://platform.openai.com/api-keys) and the [Exa dashboard](https://dashboard.exa.ai/api-keys) to generate your API keys.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

<Step title="What is OpenAI tool calling?">
    OpenAI LLMs can call a function you have defined in your code, this is called [tool calling](https://platform.openai.com/docs/guides/function-calling?lang=python). To do this you first need to describe the function you want to call to OpenAI's LLM. You can do this by defining a description object of the format:

When this description is sent to OpenAI's LLM, it returns an object with a string, which is the function name defined in *your* code, and the arguments that the function takes. This does not execute or *call* functions on OpenAI's side; it only returns the function name and arguments which you will have to parse and call yourself in your code.

We will use this object to - in this case - call the `exa_search` function we define with the arguments provided.
  </Step>

<Step title="Use Exa Search as an OpenAI tool">
    First, we import and initialise the OpenAI and Exa libraries and load the stored API keys.

Next, we define the function and the function schema so that OpenAI knows how to use it and what arguments our local function takes:

Finally, we'll define the primer `SYSTEM_MESSAGE`, which explains to OpenAI what it is supposed to do:

We can now start writing the code needed to perform the LLM calls and the search. We'll create the `exa_search` function that will call Exa's `search_and_contents` function with the query:

Next, we create a function to process the tool calls:

Lastly, we'll create a `main` function to bring it all together, and handle the user input and interaction with OpenAI:

The implementation creates a loop that continually prompts the user for search queries, uses OpenAI's tool calling feature to determine when to perform a search, and then uses the Exa search results to provide an informed response to the user's query.

We also use the rich library to provide a more visually appealing console interface, including coloured output and markdown rendering for the responses.
  </Step>

<Step title="Running the code">
    Save the code in a file, e.g. `openai_search.py`, and make sure the `.env` file containing the API keys we previously created is in the same directory as the script.

Then run the script using the following command from your terminal:

You should see a prompt:

That's it, enjoy your search agent!
  </Step>
</Steps>

```python Python theme={null}
import json
import os

from dotenv import load_dotenv
from typing import Any, Dict
from exa_py import Exa
from openai import OpenAI
from rich.console import Console
from rich.markdown import Markdown
from rich.prompt import Prompt

**Examples:**

Example 1 (unknown):
```unknown
</Step>

  <Step title="Set up the environment variables">
    Create an `.env` file in the root of your project and set the `EXA_API_KEY` and `OPENAI_API_KEY` environment variable to your API keys respectively. Visit the [OpenAI playground](https://platform.openai.com/api-keys) and the [Exa dashboard](https://dashboard.exa.ai/api-keys) to generate your API keys.

    <br />

    <Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />
```

Example 2 (unknown):
```unknown
</Step>

  <Step title="What is OpenAI tool calling?">
    OpenAI LLMs can call a function you have defined in your code, this is called [tool calling](https://platform.openai.com/docs/guides/function-calling?lang=python). To do this you first need to describe the function you want to call to OpenAI's LLM. You can do this by defining a description object of the format:
```

Example 3 (unknown):
```unknown
When this description is sent to OpenAI's LLM, it returns an object with a string, which is the function name defined in *your* code, and the arguments that the function takes. This does not execute or *call* functions on OpenAI's side; it only returns the function name and arguments which you will have to parse and call yourself in your code.
```

Example 4 (unknown):
```unknown
We will use this object to - in this case - call the `exa_search` function we define with the arguments provided.
  </Step>

  <Step title="Use Exa Search as an OpenAI tool">
    First, we import and initialise the OpenAI and Exa libraries and load the stored API keys.
```

---

## CrewAI

**URL:** llms-txt#crewai

**Contents:**
- Get Started

Source: https://docs.exa.ai/reference/crewai

Learn how to add Exa retrieval capabilities to your CrewAI agents.

[CrewAI](https://crewai.com/) is a framework for orchestrating AI agents that work together to accomplish complex tasks.
In this guide, we'll create a crew of two agents that generate a newsletter based on Exa's search results. We'll go over how to:

1. Create a custom Exa-powered CrewAI tool
2. Set up agents and assign them specific roles that use the Exa-powered search tool
3. Organize the agents into a crew that will write a newsletter

<Steps>
  <Step title="Pre-requisites and installation">
    Install the crewAI core, crewAI tools and Exa Python SDK libraries.

<Step title="Defining a custom Exa-based tool in crewAI">
    We set up a [custom tool](https://docs.crewai.com/concepts/tools) using the crewAI [@tool decorator ](https://docs.crewai.com/concepts/tools#utilizing-the-tool-decorator). Within the tool, we can initialize the Exa class from the [Exa Python SDK](https://github.com/exa-labs/exa-py), make a request, and return a parsed out result.

<Note> Make sure your API keys are initialized properly. For this demonstration, the environment variable names are `OPENAI_API_KEY` and `EXA_API_KEY` for OpenAI and Exa keys respectively. </Note>

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />
  </Step>

<Step title="Setting up CrewAI agent">
    Import the relevant crewAI modules. Then, define `exa_tools` to reference the custom search method we defined above.

We then set up[ two agents](https://docs.crewai.com/concepts/Agents/) and place them in a [crew together](https://docs.crewai.com/concepts/Crews/):

* One to research with Exa (providing the custom tool defined above)
    * Another to write a newsletter as an output (using an LLM)

<Step title="Defining tasks for the agents">
    Next, we'll define [tasks](https://docs.crewai.com/concepts/Tasks/) for each agent and create the crew overall using all of the components we've set up above.

<Step title="Kicking off the crew">
    Finally, we kick off the crew by providing a research topic as our input query.

<Step title="Output">
    As you can see, Exa's search results enriched the output generation!

**Examples:**

Example 1 (unknown):
```unknown
</Step>

  <Step title="Defining a custom Exa-based tool in crewAI">
    We set up a [custom tool](https://docs.crewai.com/concepts/tools) using the crewAI [@tool decorator ](https://docs.crewai.com/concepts/tools#utilizing-the-tool-decorator). Within the tool, we can initialize the Exa class from the [Exa Python SDK](https://github.com/exa-labs/exa-py), make a request, and return a parsed out result.
```

Example 2 (unknown):
```unknown
<Note> Make sure your API keys are initialized properly. For this demonstration, the environment variable names are `OPENAI_API_KEY` and `EXA_API_KEY` for OpenAI and Exa keys respectively. </Note>

    <Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />
  </Step>

  <Step title="Setting up CrewAI agent">
    Import the relevant crewAI modules. Then, define `exa_tools` to reference the custom search method we defined above.
```

Example 3 (unknown):
```unknown
We then set up[ two agents](https://docs.crewai.com/concepts/Agents/) and place them in a [crew together](https://docs.crewai.com/concepts/Crews/):

    * One to research with Exa (providing the custom tool defined above)
    * Another to write a newsletter as an output (using an LLM)
```

Example 4 (unknown):
```unknown
</Step>

  <Step title="Defining tasks for the agents">
    Next, we'll define [tasks](https://docs.crewai.com/concepts/Tasks/) for each agent and create the crew overall using all of the components we've set up above.
```

---

## LlamaIndex

**URL:** llms-txt#llamaindex

**Contents:**
- Get Started

Source: https://docs.exa.ai/reference/llamaindex

A quick-start guide on how to add Exa retrieval to a LlamaIndex Agent Application.

LlamaIndex is a framework for building LLM applications powered by structured data. In this guide, we'll use Exa's LlamaIndex integration to:

1. Specify Exa's Search and Retrieve Highlight Tool as a LlamaIndex retriever
2. Set up an OpenAI Agent that uses this tool in its response generation

<Steps>
  <Step title="Pre-requisites and installation">
    Install the llama-index, llama-index core, llama-index-tools-exa libraries. OpenAI dependencies are within the core library, so we don't need to specify that.

Also ensure API keys are initialized properly. The following code uses the `EXA_API_KEY` as the relevant environment variable name.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />
  </Step>

<Step title="Instantiate Exa tool">
    Import the relevant Exa integration library and instantiate LlamaIndex's `ExaToolSpec`.

<Step title="Choose the Exa method to use">
    For this example, we are only interested in passing the [search\_and\_retrieve\_highlights](./search) method to our agent, so we specify this using the `.to_tool_list`LlamaIndex method. We also pass `current_date`, a simple utility so our agent knows the current date.

<Step title="Set up an OpenAI Agent and make Exa-powered requests">
    Set up the [OpenAIAgent](https://docs.llamaindex.ai/en/stable/examples/agent/Chatbot%5FSEC/), passing the filtered down toolset from above.

We can then use the chat method to interact with the agent.

<Step title="Sample outputs">
    Output 1: Verbose output of agent operation

Output 2: Agent response

As you can see, the output generation is enriched with the context of our Exa Search query result!
  </Step>
</Steps>

**Examples:**

Example 1 (unknown):
```unknown
Also ensure API keys are initialized properly. The following code uses the `EXA_API_KEY` as the relevant environment variable name.

    <Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />
  </Step>

  <Step title="Instantiate Exa tool">
    Import the relevant Exa integration library and instantiate LlamaIndex's `ExaToolSpec`.
```

Example 2 (unknown):
```unknown
</Step>

  <Step title="Choose the Exa method to use">
    For this example, we are only interested in passing the [search\_and\_retrieve\_highlights](./search) method to our agent, so we specify this using the `.to_tool_list`LlamaIndex method. We also pass `current_date`, a simple utility so our agent knows the current date.
```

Example 3 (unknown):
```unknown
</Step>

  <Step title="Set up an OpenAI Agent and make Exa-powered requests">
    Set up the [OpenAIAgent](https://docs.llamaindex.ai/en/stable/examples/agent/Chatbot%5FSEC/), passing the filtered down toolset from above.
```

Example 4 (unknown):
```unknown
We can then use the chat method to interact with the agent.
```

---

## Websets MCP

**URL:** llms-txt#websets-mcp

**Contents:**
  - Websets MCP: Build and enrich collections of web entities with AI
- Remote Websets MCP
  - Claude Desktop Configuration for Remote MCP
  - Cursor and Claude Code Configuration for Remote MCP
- Available Tools
  - Webset Management
  - Item Management
  - Search Operations
  - Enrichment Operations
  - Monitor Operations

Source: https://docs.exa.ai/reference/websets-mcp

[![Install in Cursor](https://img.shields.io/badge/Install_in-Cursor-000000?style=flat-square\&logoColor=white)](https://cursor.com/en/install-mcp?name=websets\&config=eyJuYW1lIjoid2Vic2V0cyIsInR5cGUiOiJodHRwIiwidXJsIjoiaHR0cHM6Ly93ZWJzZXRzbWNwLmV4YS5haS9tY3AifQ==)
[![Install in VS Code](https://img.shields.io/badge/Install_in-VS_Code-0098FF?style=flat-square\&logo=visualstudiocode\&logoColor=white)](https://vscode.dev/redirect/mcp/install?name=websets\&config=%7B%22type%22%3A%22http%22%2C%22url%22%3A%22https%3A%2F%2Fwebsetsmcp.exa.ai%2Fmcp%22%7D)

### Websets MCP: Build and enrich collections of web entities with AI

Websets MCP Server enables AI assistants like Claude to create, search, and enrich collections of web entities (companies, people, research papers, articles) through the Exa Websets API. Automatically discover entities, verify them against criteria, and extract custom data with AI-powered enrichments.

Examples of what you can do with Websets MCP:

* Find and verify AI startups in San Francisco with funding over \$10M
* Create a list of research papers on quantum computing and extract key findings
* Build a database of companies in specific industries and enrich with CEO names, revenue, and employee counts
* Monitor industries for new companies matching your criteria

**Works with Cursor and Claude Code!** Use the HTTP-based configuration format below.

Websets MCP provides powerful tools for entity search, verification, and data enrichment, making it easy to build custom datasets for research, sales, recruiting, and more.

## Remote Websets MCP

Connect directly to Exa's hosted Websets MCP server using this URL:

You **must** include your Exa API key in the URL:

**Note:** Unlike the standard Exa MCP, the Websets MCP does not require a separate Websets/Smithery key when using the custom domain. Only your Exa API key is required.

### Claude Desktop Configuration for Remote MCP

Add this to your Claude Desktop configuration file:

Replace `YOUR_EXA_API_KEY` with your actual Exa API key.

### Cursor and Claude Code Configuration for Remote MCP

For Cursor and Claude Code, use this HTTP-based configuration format:

Replace `YOUR_EXA_API_KEY` with your actual Exa API key.

Websets MCP includes 14 specialized tools for managing websets, searches, enrichments, and monitors:

### Webset Management

| Tool                | Description                                                                                                                                                          |
| ------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **`create_webset`** | Create a new webset collection with automatic search and optional enrichments. Specify your search query, criteria for filtering results, and data fields to extract |
| `list_websets`      | List all websets in your account with pagination support                                                                                                             |
| `get_webset`        | Get detailed information about a specific webset including its status, searches, enrichments, and items                                                              |
| `update_webset`     | Update a webset's metadata with custom key-value pairs                                                                                                               |

| Tool                | Description                                                                     |
| ------------------- | ------------------------------------------------------------------------------- |
| `list_webset_items` | List all items (entities) in a webset with their properties and enrichment data |
| `get_item`          | Get detailed information about a specific item in a webset                      |

### Search Operations

| Tool                | Description                                                                                                                                           |
| ------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| **`create_search`** | Create a new search to find and add entities to a webset. Specify entity type (company, person, paper, article), search query, and filtering criteria |
| `get_search`        | Check the status and results of a search operation                                                                                                    |
| `cancel_search`     | Cancel a running search operation                                                                                                                     |

### Enrichment Operations

| Tool                    | Description                                                                                                                           |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| **`create_enrichment`** | Create a new enrichment to extract custom data from webset items. Supports text, number, date, email, phone, URL, and options formats |
| `get_enrichment`        | Get details about a specific enrichment including its progress and status                                                             |
| `delete_enrichment`     | Delete an enrichment and all its extracted data                                                                                       |
| `cancel_enrichment`     | Cancel a running enrichment operation                                                                                                 |

### Monitor Operations

| Tool                 | Description                                                                                                                                     |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| **`create_monitor`** | Create a monitor to automatically update a webset on a schedule using cron expressions. Monitors run searches periodically to find new entities |

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

Once configured, you can ask your AI assistant to perform webset operations:

### Creating a Webset

This will use `create_webset` to:

* Search for AI startups in San Francisco
* Filter for companies founded after 2020
* Automatically enrich each company with CEO name and funding amount

### Searching for Entities

This will use `create_search` to add more companies matching specific criteria.

### Creating Enrichments

This will use `create_enrichment` to extract employee counts.

### Setting Up Monitors

This will use `create_monitor` to automatically update your webset weekly.

### Listing and Viewing Results

This will use `list_webset_items` to display the collected entities with their enrichment data.

Websets support multiple entity types:

* **Companies** - Search and enrich company data
* **People** - Find and verify individuals with specific criteria
* **Research Papers** - Discover academic papers and extract key information
* **Articles** - Find articles and blog posts on specific topics
* **Custom** - Define your own entity type

### Enrichment Formats

Extract data in multiple formats:

* **text** - Free-form text (e.g., company description, CEO name)
* **number** - Numeric values (e.g., employee count, revenue)
* **date** - Dates (e.g., founding date, last funding round)
* **email** - Email addresses
* **phone** - Phone numbers
* **url** - Website URLs
* **options** - Multiple choice selection from predefined options (e.g., company stage: Seed, Series A, Series B)

Use natural language criteria to filter search results:

* "Founded after 2020"
* "Has raised more than \$10M in funding"
* "Located in the United States"
* "Has more than 50 employees"

The AI will evaluate each potential entity against your criteria and only include matches.

### Automated Monitoring

Set up monitors with cron expressions to keep your websets up-to-date:

* `0 9 * * 1` - Every Monday at 9:00 AM
* `0 0 * * *` - Every day at midnight
* `0 */6 * * *` - Every 6 hours

Monitors automatically run searches and add new matching entities to your webset.

### Building a Company Database

### Research Paper Collection

### People Search for Recruiting

Websets MCP provides a seamless interface to the Websets API. For more detailed information about the underlying API, visit:

* [Websets API Documentation](/websets/api/overview)
* [Websets Dashboard Guide](/websets/dashboard/get-started)
* [Websets Overview](/websets/overview)

## Configuration Details

### Claude Desktop (macOS)

Configuration file location:

### Claude Desktop (Windows)

Configuration file location:

### Required Parameters

When using the hosted MCP server at `https://websetsmcp.exa.ai/mcp`, you **must** include your Exa API key:

### Parameter Formats

When creating websets, searches, enrichments, and monitors through natural language with your AI assistant, the following formats are automatically used:

**Search Criteria Format:**

**Enrichment Format:**

**Entity Type Format:**

**Cron Expression Format (for Monitors):**

## Tips for Best Results

1. **Be specific with search queries** - The more specific your query, the better the results
2. **Use clear criteria** - Write criteria in simple, declarative sentences
3. **Choose appropriate enrichment formats** - Use "options" format when you want to categorize data
4. **Start small** - Begin with a small search count (5-10 items) to test your query and criteria
5. **Monitor long-running operations** - Use `get_search` and `get_enrichment` to check progress
6. **Use external IDs** - Provide your own IDs to websets for easier reference in your application

**Issue: Enrichment not extracting the right data**

* Solution: Make your enrichment description more specific and include example formats

**Issue: Search returning no results**

* Solution: Try broadening your search criteria or making your query less specific

**Issue: Monitor not running**

* Solution: Verify your cron expression format (5 fields: minute hour day month weekday)

* Check the [Websets FAQ](/websets/faq)
* Visit the [Websets API Documentation](/websets/api/overview)
* Join our [Discord community](https://discord.com/invite/HCShtBqbfV)

## Additional Resources

* [Websets Dashboard](https://websets.exa.ai/) - Visual interface for managing websets
* [Websets API Reference](/websets/api/overview) - Complete API documentation
* [Websets Examples](/websets/dashboard/websets-example-queries) - Example queries and use cases
* [Exa Search API](/reference/search) - The underlying search technology

**Examples:**

Example 1 (unknown):
```unknown
https://websetsmcp.exa.ai/mcp
```

Example 2 (unknown):
```unknown
https://websetsmcp.exa.ai/mcp?exaApiKey=YOUR_EXA_API_KEY
```

Example 3 (unknown):
```unknown
Replace `YOUR_EXA_API_KEY` with your actual Exa API key.

### Cursor and Claude Code Configuration for Remote MCP

For Cursor and Claude Code, use this HTTP-based configuration format:
```

Example 4 (unknown):
```unknown
Replace `YOUR_EXA_API_KEY` with your actual Exa API key.

## Available Tools

Websets MCP includes 14 specialized tools for managing websets, searches, enrichments, and monitors:

### Webset Management

| Tool                | Description                                                                                                                                                          |
| ------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **`create_webset`** | Create a new webset collection with automatic search and optional enrichments. Specify your search query, criteria for filtering results, and data fields to extract |
| `list_websets`      | List all websets in your account with pagination support                                                                                                             |
| `get_webset`        | Get detailed information about a specific webset including its status, searches, enrichments, and items                                                              |
| `update_webset`     | Update a webset's metadata with custom key-value pairs                                                                                                               |

### Item Management

| Tool                | Description                                                                     |
| ------------------- | ------------------------------------------------------------------------------- |
| `list_webset_items` | List all items (entities) in a webset with their properties and enrichment data |
| `get_item`          | Get detailed information about a specific item in a webset                      |

### Search Operations

| Tool                | Description                                                                                                                                           |
| ------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| **`create_search`** | Create a new search to find and add entities to a webset. Specify entity type (company, person, paper, article), search query, and filtering criteria |
| `get_search`        | Check the status and results of a search operation                                                                                                    |
| `cancel_search`     | Cancel a running search operation                                                                                                                     |

### Enrichment Operations

| Tool                    | Description                                                                                                                           |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| **`create_enrichment`** | Create a new enrichment to extract custom data from webset items. Supports text, number, date, email, phone, URL, and options formats |
| `get_enrichment`        | Get details about a specific enrichment including its progress and status                                                             |
| `delete_enrichment`     | Delete an enrichment and all its extracted data                                                                                       |
| `cancel_enrichment`     | Cancel a running enrichment operation                                                                                                 |

### Monitor Operations

| Tool                 | Description                                                                                                                                     |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| **`create_monitor`** | Create a monitor to automatically update a webset on a schedule using cron expressions. Monitors run searches periodically to find new entities |

## Getting Started

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

## Usage Examples

Once configured, you can ask your AI assistant to perform webset operations:

### Creating a Webset
```

---

## OpenAI Exa Wrapper

**URL:** llms-txt#openai-exa-wrapper

**Contents:**
- Get Started
- Further configuration options and advanced usage
- Option to include Exa results
- Number of results
- Maximum result length
- Search parameters

Source: https://docs.exa.ai/reference/openai

Enhance your OpenAI chat completetions with a simple Exa wrapper that handles search, chunking and prompting.

Exa is designed from the ground up to enable seamless, accurate, and performant RAG (Retrieval-Augmented Generation). Exa provides factual, up to date information needed to ground LLM generations.

But good RAG requires more than just great search. The client needs to decide *when* to use RAG, with *what* queries. They need to handle chunking, prompting, and chaining LLM calls. We provide the Exa OpenAI wrapper that, **with one line of code**, does all that and turns any OpenAI chat completion into an Exa-powered RAG system.

First, create an account and grab a free API key.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

<Steps>
  <Step title="Install the Exa and OpenAI python libraries">
    
  </Step>

<Step title="Instantiate Clients">
    Import and instantiate the Exa and OpenAI clients.

<Note> Make sure to obtain your API keys from OpenAI and Exa and replace `OPENAI_API_KEY` and `EXA_API_KEY` with your actual keys.</Note>

<Step title="Wrap the OpenAI client">
    The `Exa.wrap` method takes your existing OpenAI client and wraps it with Exa-powered RAG capabilities.

<Step title="Call the wrapped client">
    The wrapped client works exactly like the native OpenAI client, except that it automatically improves your completions with relevant search results.

<Info> The Exa OpenAI wrapper supports any model that [supports function calling](https://platform.openai.com/docs/guides/function-calling). </Info>

<Step title="Example output">
    
  </Step>

<Step title="End-to-end code example">
    Below is a code block that puts together all of the above. You can copy it into any Python script or Jupyter notebook to test out a complete RAG example.

<Step title="Example with multiple questions">
    Here is a slightly more advanced example that shows how to use the wrapper to answer multiple questions.

## Further configuration options and advanced usage

While the default settings work well for most use cases, the Exa OpenAI wrapper's `chat.completions.create()` method allows you to fine-tune the following parameters.

## Option to include Exa results

`use_exa` specifies whether to include Exa results for a given request:

* `auto` Exa will intelligently determine whether to include results
* `required` Exa results will always be included
* `none` Exa results will never be included

`num_results` specifies how many search results Exa should retrieve (defaults to 3 results). Limits vary by search type: with "neural": max 100. If you want to increase the num results, contact sales ([hello@exa.ai](mailto:hello@exa.ai))

## Maximum result length

`result_max_len` specifies the maximum length of each Exa result (defaults to 2048 characters).

<Note> This is measured in characters, not tokens. </Note>

The Exa OpenAI wrapper supports any parameters that the `exa.search()` function accepts. You can find a list of all the parameters [here](./search).

**Examples:**

Example 1 (unknown):
```unknown
</Step>

  <Step title="Instantiate Clients">
    Import and instantiate the Exa and OpenAI clients.

    <Note> Make sure to obtain your API keys from OpenAI and Exa and replace `OPENAI_API_KEY` and `EXA_API_KEY` with your actual keys.</Note>
```

Example 2 (unknown):
```unknown
</Step>

  <Step title="Wrap the OpenAI client">
    The `Exa.wrap` method takes your existing OpenAI client and wraps it with Exa-powered RAG capabilities.
```

Example 3 (unknown):
```unknown
</Step>

  <Step title="Call the wrapped client">
    The wrapped client works exactly like the native OpenAI client, except that it automatically improves your completions with relevant search results.

    <Info> The Exa OpenAI wrapper supports any model that [supports function calling](https://platform.openai.com/docs/guides/function-calling). </Info>
```

Example 4 (unknown):
```unknown
</Step>

  <Step title="Example output">
```

---

## CrewAI Docs

**URL:** llms-txt#crewai-docs

Source: https://docs.exa.ai/integrations/crew-ai-docs

Learn how to use Exa's search API with CrewAI. CrewAI have a dedicated Exa tool. This enables AI agents to perform web search.

For detailed instructions on using Exa with CrewAI, visit the [CrewAI documentation](https://docs.crewai.com/tools/exasearchtool).

---
