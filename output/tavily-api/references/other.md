# Tavily-Api - Other

**Pages:** 38

---

## FlowiseAI

**URL:** llms-txt#flowiseai

**Contents:**
- Introduction
- How to set up Tavily with Flowise
- Using Tavily in Flowise
  - Chatflow Applications
  - Agent Applications

Source: https://docs.tavily.com/documentation/integrations/flowise

Tavily is now available for integration through Flowise.

Integrate [Tavily with FlowiseAI](https://docs.flowiseai.com/integrations/langchain/tools/tavily-ai) to enhance your AI workflows with powerful web search capabilities. Flowise provides a no-code platform for building AI applications, and the Tavily integration offers real-time, accurate search results tailored for LLMs and RAG (Retrieval-Augmented Generation) systems.

Set up Tavily in Flowise to create chatflows or agent flows that can automate research, track news, or feed relevant data into your connected applications.

## How to set up Tavily with Flowise

Follow these steps to integrate Tavily with Flowise:

<AccordionGroup>
  <Accordion title="Step 1: Log in to Flowise">
    <div>[Login](https://flowiseai.com/) to your Flowise account.</div>
  </Accordion>

<Accordion title="Step 2: Create a New Flow">
    <div>
      <p>Create a new flow in Flowise:</p>

<ol>
        <li>Click "Create New Flow"</li>
        <li>Select either "Chat Flow" or "Agent Flow" as the type</li>
        <li>Name your flow (e.g., "Research Assistant")</li>
      </ol>
    </div>
  </Accordion>

<Accordion title="Step 3: Add Tavily Node">
    <div>
      <p>Add the Tavily node to your flow:</p>

<p><strong>For Chat Flow:</strong></p>

<ol>
        <li>Click on the (+) button</li>
        <li>Navigate to <strong>LangChain > Tools > Tavily API</strong></li>
        <li>Drag the Tavily node into your flow</li>
      </ol>

<p><strong>For Agent Flow:</strong></p>

<ol>
        <li>Click on the (+) button</li>
        <li>Navigate to <strong>Tools > Tavily API</strong></li>
        <li>Drag the Tavily node into your flow</li>
      </ol>
    </div>
  </Accordion>

<Accordion title="Step 4: Configure Tavily Node">
    <div>
      <p>Configure the Tavily node with your credentials and parameters:</p>

<ol>
        <li>Enter your Tavily API key in the credentials section</li>

<li>
          Configure additional parameters, for example:

<ul>
            <li><strong>Search Depth:</strong> Choose between 'basic' or 'advanced'</li>
            <li><strong>Max Results:</strong> Set the number of results to return</li>
            <li><strong>Include Domains:</strong> Specify domains to include in search</li>
            <li><strong>Exclude Domains:</strong> Specify domains to exclude from search</li>
          </ul>
        </li>
      </ol>
    </div>
  </Accordion>

<Accordion title="Step 5: Connect Nodes">
    <div>
      <p>Connect the Tavily node to other nodes in your flow:</p>

<ol>
        <li>Connect to any node that accepts tool inputs</li>
        <li>Connect to an LLM node for query processing</li>
        <li>Connect to a Response node to format results</li>
      </ol>
    </div>
  </Accordion>
</AccordionGroup>

## Using Tavily in Flowise

Tavily can be utilized in various Flowise application types:

### Chatflow Applications

Flowise's Chatflow applications support Tavily tool node. This node allows you to automate tasks such as research, content curation, and real-time data integration into your workflows.

### Agent Applications

In Agent applications, you can integrate the Tavily tool to access web data in real time. Use this to:

* Retrieve structured and relevant search results
* Extract raw content for further processing
* Provide accurate, context-aware answers to user queries

<img alt="Flowise Tavily Integration" />

---

## --- Step 3: Process the AI's response ---

**URL:** llms-txt#----step-3:-process-the-ai's-response----

---

## Get the Tavily tool with all available parameters

**URL:** llms-txt#get-the-tavily-tool-with-all-available-parameters

tools = composio.tools.get(user_id,
    toolkits=['TAVILY']
)

---

## Learn More

**URL:** llms-txt#learn-more

Want to dive deeper into web-based RAG evaluation? Check out these resources:

<CardGroup>
  <Card title="Blog Post" icon="newspaper" href="https://blog.tavily.com/effortless-web-based-rag-evaluation-using-tavily-and-langgraph/">
    Read our detailed blog post about generating dynamic RAG evaluation datasets
  </Card>

<Card title="GitHub" icon="github" href="https://github.com/Eyalbenba/tavily-web-eval-generator">
    `/Eyalbenba/tavily-web-eval-generator`

<img alt="GitHub Repo stars" />
  </Card>
</CardGroup>

---

## How does it work?

**URL:** llms-txt#how-does-it-work?

<Frame>
  <img alt="Web Evaluation Graph" />
</Frame>

The Real-Time Dataset Generator follows a systematic workflow to create high-quality evaluation datasets:

<Steps>
  <Step title="Input">
    The workflow begins with user-provided inputs.
  </Step>

<Step title="Domain-Specific Search Query Generation">
    If a subject is provided (e.g., “NBA Basketball”), the system **generates a
    set of search queries**. This ensures queries are tailored to gather
    high-quality, recent, and subject-specific information.
  </Step>

<Step title="Web Search with Tavily">
    This step guarantees that the dataset reflects **current and relevant
    information**, particularly for web search RAG evaluation, where up-to-date
    data is crucial.This is the **heart of the RAG Dataset Generator**,
    transforming queries into actionable, high-quality data that forms the
    foundation of the evaluation set.
  </Step>

<Step title="Q&A Pair Generation">
    For each website returned by Tavily, the system generates question-answer pair
    using a **map-reduce paradigm** to ensure efficient processing across multiple
    sources. This step is implemented using LangGraph’s Send API.
  </Step>

<Step title="Saving the Evaluation Set">
    Finally, the generated dataset is saved either **locally** or to
    **Langsmith**, based on the input configuration.
  </Step>

<Step title="Output">
    The result is a well-structured, subject-specific evaluation dataset, ready for use in advanced evaluation methods like **LLM-as-a-Judge**.
  </Step>
</Steps>

---

## Define a task for the agent

**URL:** llms-txt#define-a-task-for-the-agent

extract_task = Task(
    description='Extract the main content from the URL https://en.wikipedia.org/wiki/Lionel_Messi .',
    expected_output='A JSON string containing the extracted content from the URL.',
    agent=extractor_agent
)
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown

```

---

## --- Step 5: Second API call - AI provides final answer ---

**URL:** llms-txt#----step-5:-second-api-call---ai-provides-final-answer----

---

## Create and run the crew

**URL:** llms-txt#create-and-run-the-crew

**Contents:**
  - Customizing extract tool parameters

crew = Crew(
    agents=[extractor_agent],
    tasks=[extract_task],
    verbose=False
)

result = crew.kickoff()
print(result)
python theme={null}
from crewai_tools import TavilyExtractorTool

**Examples:**

Example 1 (unknown):
```unknown
### Customizing extract tool parameters

**Example:**
```

---

## Use composio managed auth

**URL:** llms-txt#use-composio-managed-auth

**Contents:**
  - Step 4: Example Use Case

auth_config = composio.auth_configs.create(
    toolkit="tavily",
    options={
        "type": "use_custom_auth",
        "auth_scheme": "API_KEY",
        "credentials": {}
    }
)
print(auth_config)
auth_config_id = auth_config.id

user_id = "your-user-id"
connection_request = composio.connected_accounts.link(user_id, auth_config_id)
print(connection_request.redirect_url)
python theme={null}
from composio import Composio
from composio_openai import OpenAIProvider
from openai import OpenAI
import os
from dotenv import load_dotenv

**Examples:**

Example 1 (unknown):
```unknown
### Step 4: Example Use Case
```

---

## Langflow

**URL:** llms-txt#langflow

**Contents:**
- Introduction
- Installation

Source: https://docs.tavily.com/documentation/integrations/langflow

Integrate Tavily with Langflow, an open-source visual framework for building multi-agent and RAG applications.

Integrate [Tavily with Langflow](https://blog.langflow.org/web-search-in-your-ai-agents-a-langflow-tutorial/) to create powerful AI workflows using a visual interface. Langflow is an open-source tool that provides a visual builder for creating AI agents and workflows, making it easy to incorporate Tavily's search and extraction capabilities into your applications.

Langflow works with Python 3.10 to 3.13. You can install it using either UV (recommended) or pip:

---

## --- define tools ---

**URL:** llms-txt#----define-tools----

tools = [
    {
        "type": "function",
        "function": {
            "name": "tavily_search",
            "description": "Search the web with Tavily for up-to-date information",
            "parameters": {
                "type": "object",
                "properties": {
                    "query": {"type": "string", "description": "The search query"},
                    "max_results": {"type": "integer", "default": 5},
                },
                "required": ["query"],
            },
        },
    }
]
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
<a href="#schemas">Scroll to the bottom to find the full json schema for search, extract, map and crawl</a>
```

---

## This tells the AI what function it can call and what parameters it needs

**URL:** llms-txt#this-tells-the-ai-what-function-it-can-call-and-what-parameters-it-needs

tools = [{
    "type": "function",
    "name": "tavily_search",
    "description": "Search the web using Tavily. Provide relevant links in your answer.",
    "parameters": {
        "type": "object",
        "properties": {
            "query": {
                "type": "string",
                "description": "Search query for Tavily."
            },
            "max_results": {
                "type": "integer",
                "description": "Max number of results to return",
                "default": 5
            }
        },
        "required": ["query", "max_results"], 
        "additionalProperties": False
    },
    "strict": True
}]
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
<a href="#schemas">Scroll to the bottom to find the full json schema for search, extract, map and crawl</a>
```

---

## Rate Limits

**URL:** llms-txt#rate-limits

**Contents:**
- Crawl Endpoint Rate Limits

Source: https://docs.tavily.com/documentation/rate-limits

Learn about Tavily's API rate limits for both  development and production environments.

We offer two types of rate limits based on the environment associated with your API key.

<Card icon="key" href="https://app.tavily.com" title="Get your API key">
  Create your Development or Production API keys.
</Card>

<table>
  <thead>
    <tr>
      <th>Environment</th>
      <th>Requests per minute (RPM)</th>
    </tr>
  </thead>

<tbody>
    <tr>
      <td><code>Development</code></td>
      <td>100</td>
    </tr>

<tr>
      <td><code>Production</code></td>
      <td>1,000</td>
    </tr>
  </tbody>
</table>

## Crawl Endpoint Rate Limits

The crawl endpoint has a separate rate limit that applies to both development and production keys:

<table>
  <thead>
    <tr>
      <th>Environment</th>
      <th>Requests per minute (RPM)</th>
    </tr>
  </thead>

<tbody>
    <tr>
      <td><code>Development</code></td>
      <td>100</td>
    </tr>

<tr>
      <td><code>Production</code></td>
      <td>100</td>
    </tr>
  </tbody>
</table>

<Tip>
  1. Access to production keys requires either an active **Paid Plan** or **PAYGO** enabled. More information can be found [here](/guides/api-credits).
  2. When using the REST API, ensure you include your API key in the header to apply the correct rate limits.
</Tip>

---

## Projects

**URL:** llms-txt#projects

Source: https://docs.tavily.com/examples/open-sources/projects

Explore our collection of popular open source projects that showcase Tavily's use cases and capabilities.

---

## --- Step 1: Create initial conversation ---

**URL:** llms-txt#----step-1:-create-initial-conversation----

---

## Initialize Composio toolset

**URL:** llms-txt#initialize-composio-toolset

composio = Composio(
    api_key=os.getenv("COMPOSIO_API_KEY"),
    provider=OpenAIProvider()
)

user_id = "your-user-id"

---

## You can configure the tool with specific parameters

**URL:** llms-txt#you-can-configure-the-tool-with-specific-parameters

tavily_extract_tool = TavilyExtractorTool(
    extract_depth="advanced",
    include_images=True,
    timeout=45
)
python theme={null}
  import os
  from crewai import Agent, Task, Crew
  from crewai_tools import TavilyExtractorTool

# Set up environment variables
  os.environ["OPENAI_API_KEY"] = "your-openai-api-key"
  os.environ["TAVILY_API_KEY"] = "your-tavily-api-key"

# Initialize the Tavily extractor tool
  tavily_tool = TavilyExtractorTool()

# Create an agent that uses the tool
  extractor_agent = Agent(
      role='Web Page Content Extractor',
      goal='Extract key information from the given web pages',
      backstory='You are an expert at extracting relevant content from websites using the Tavily Extract.',
      tools=[tavily_tool],
      verbose=True
  )

# Define a task for the agent
  extract_task = Task(
      description='Extract the main content from the URL https://en.wikipedia.org/wiki/Lionel_Messi .',
      expected_output='A JSON string containing the extracted content from the URL.',
      agent=extractor_agent
  )

# Create and execute the crew
  crew = Crew(
      agents=[extractor_agent],
      tasks=[extract_task],
      verbose=True
  )

# Run the extraction
  result = crew.kickoff()
  print("Extraction Results:")
  print(result)
  ```
</Accordion>

For more information about Tavily's capabilities, check out our [API documentation](/documentation/api-reference/introduction) and [best practices](/documentation/best-practices/best-practices-search).

**Examples:**

Example 1 (unknown):
```unknown
You can customize the extract tool by passing parameters to configure its behavior. Below are available parameters in crewai integration:

**Available Parameters:**

* `urls` (Union\[List\[str], str]): Required. A single URL string or a list of URL strings to extract data from.
* `include_images` (Optional\[bool]): Whether to include images in the extraction results. Defaults to False.
* `extract_depth` (Literal\["basic", "advanced"]): The depth of extraction. Use "basic" for faster, surface-level extraction or "advanced" for more comprehensive extraction. Defaults to "basic".
* `timeout` (int): The maximum time in seconds to wait for the extraction request to complete. Defaults to 60.

> **Explore More Parameters**: For a complete list of available parameters and their descriptions, visit our [API documentation](/documentation/api-reference/endpoint/extract) to discover all the customization options available for extract operations.

<Accordion title="Full Code Example - Extract">
```

---

## This sets up the conversation context for the AI

**URL:** llms-txt#this-sets-up-the-conversation-context-for-the-ai

input_list = [
    {"role": "system", "content": "You are a helpful assistant that uses Tavily search when needed."},
    {"role": "user", "content": "What are the top trends in 2025 about AI agents?"}
]

---

## Get API key from environment

**URL:** llms-txt#get-api-key-from-environment

api_key = os.getenv('TAVILY_API_KEY')
assert api_key is not None

---

## --- Step 4: Execute any function calls the AI made ---

**URL:** llms-txt#----step-4:-execute-any-function-calls-the-ai-made----

for item in response.output:
    if item.type == "function_call":
        if item.name == "tavily_search":
            # Parse the arguments the AI provided for the search
            parsed_args = json.loads(item.arguments)
            
            # Execute the actual Tavily search
            results = tavily_search(**parsed_args)
            
            # Add the search results back to the conversation
            # This tells the AI what it found when it searched
            function_output = {
                "type": "function_call_output",
                "call_id": item.call_id,
                "output": json.dumps({
                  "results": results
                })
            }
            input_list.append(function_output)

**Examples:**

Example 1 (unknown):
```unknown

```

---

## Filter results with score > 0.7

**URL:** llms-txt#filter-results-with-score->-0.7

**Contents:**
  - Regex extraction

filtered = [r for r in results if r['score'] > 0.7]
python theme={null}
import re

**Examples:**

Example 1 (unknown):
```unknown
### Regex extraction

Extract structured data from `raw_content`:
```

---

## API Key Management

**URL:** llms-txt#api-key-management

**Contents:**
- What to do if your API key leaks
- Rotating your API keys
  - How to rotate your keys safely

Source: https://docs.tavily.com/documentation/best-practices/api-key-management

Learn how to handle API key leaks and best practices for key rotation.

## What to do if your API key leaks

If you suspect or know that your API key has been leaked (e.g., committed to a public repository, shared in a screenshot, or exposed in client-side code), **immediate action is required** to protect your account and quota.

Follow these steps immediately:

1. **Log in to your account**: Go to the [Tavily Dashboard](https://app.tavily.com).
2. **Revoke the leaked key**: Navigate to the API Keys section. Identify the compromised key and delete or revoke it immediately. This will stop any unauthorized usage.
3. **Generate a new key**: Create a new API key to replace the compromised one.
4. **Update your applications**: Replace the old key with the new one in your environment variables, secrets management systems, and application code.

If you notice any unusual activity or usage spikes associated with the leaked key before you revoked it, please contact [support@tavily.com](mailto:support@tavily.com) for assistance.

## Rotating your API keys

As a general security best practice, we recommend rotating your API keys periodically (e.g., every 90 days). This minimizes the impact if a key is ever compromised without your knowledge.

### How to rotate your keys safely

To rotate your keys without downtime:

1. **Generate a new key**: Create a new API key in the [Tavily Dashboard](https://app.tavily.com) while keeping the old one active.
2. **Update your application**: Deploy your application with the new API key.
3. **Verify functionality**: Ensure your application is working correctly with the new key.
4. **Revoke the old key**: Once you are confirmed that the new key is in use and everything is functioning as expected, delete the old API key from the dashboard.

<Note>
  Never hardcode API keys in your source code. Always use environment variables or a secure secrets manager to store your credentials.
</Note>

---

## Handle tool call via Composio

**URL:** llms-txt#handle-tool-call-via-composio

**Contents:**
- Additional Use Cases

execution_result = None
response_message = response.choices[0].message

if response_message.tool_calls:
    execution_result = composio.provider.handle_tool_calls(user_id,response)
    print("Execution Result:", execution_result)
    messages.append(response_message)
    
    # Add tool response messages
    for tool_call, result in zip(response_message.tool_calls, execution_result):
        messages.append({
            "role": "tool",
            "content": str(result["data"]),
            "tool_call_id": tool_call.id
        })
    
    # Get final response from LLM
    final_response = client.chat.completions.create(
        model="gpt-4.1",
        messages=messages
    )
    print("\nMarket Research Summary:")
    print(final_response.choices[0].message.content)
else:
    print("LLM responded directly (no tool used):", response_message.content)
```

## Additional Use Cases

1. **Research Automation**: Automate the collection and summarization of research data
2. **Content Curation**: Gather and organize information from multiple sources
3. **Real-time Data Integration**: Keeping your AI models up-to-date with the latest information.

---

## !pip install -qU langchain langchain-openai langchain-tavily

**URL:** llms-txt#!pip-install--qu-langchain-langchain-openai-langchain-tavily

from langchain.agents import create_agent
from langchain_openai import ChatOpenAI
from langchain_tavily import TavilySearch

---

## Help Center

**URL:** llms-txt#help-center

Source: https://docs.tavily.com/documentation/help

---

## Send request to LLM

**URL:** llms-txt#send-request-to-llm

messages = [{"role": "user", "content": str(task)}]

response = client.chat.completions.create(
    model="gpt-4.1",
    messages=messages,
    tools=tools,
    tool_choice="auto"
)

---

## OpenAI

**URL:** llms-txt#openai

**Contents:**
- Introduction
- Prerequisites
- Installation
- Setup

Source: https://docs.tavily.com/documentation/integrations/openai

Integrate Tavily with OpenAI to enhance your AI applications with real-time web search capabilities.

This guide shows you how to integrate Tavily with OpenAI to create more powerful and informed AI applications. By combining OpenAI's language models with Tavily's real-time web search capabilities, you can build AI systems and agentic AI applications that access current information and provide up-to-date responses.

Before you begin, make sure you have:

* An OpenAI API key from [OpenAI Platform](https://platform.openai.com/)
* A Tavily API key from [Tavily Dashboard](https://app.tavily.com/sign-in)

Install the required packages:

Set up your API keys:

```python theme={null}
import os

**Examples:**

Example 1 (unknown):
```unknown
## Setup

Set up your API keys:
```

---

## Anthropic

**URL:** llms-txt#anthropic

**Contents:**
- Installation
- Setup

Source: https://docs.tavily.com/documentation/integrations/anthropic

Integrate Tavily with Anthropic Claude to enhance your AI applications with real-time web search capabilities.

Install the required packages:

Set up your API keys:

```python theme={null}
import os

**Examples:**

Example 1 (unknown):
```unknown
## Setup

Set up your API keys:
```

---

## Using pip

**URL:** llms-txt#using-pip

**Contents:**
- Setting Up Tavily Components in Langflow
  - Step 1: Launch Langflow
  - Step 2: Using Tavily Components
  - Step 3: Configure Your Tavily API Key
- Example Workflows
  - Basic Search Workflow
  - Content Extraction Workflow
- Example Use Cases
- Additional Resources

pip install langflow
bash theme={null}
langflow run
```

This will start the Langflow server locally at `http://localhost:7860`.

### Step 2: Using Tavily Components

Langflow provides two main Tavily components in the **Tools** section of the components library:

1. **Tavily Search API**: Perform web searches and retrieve relevant information
   * Located under Tools > Tavily Search API
   * **Configuration Options**: Select the component and go to "Controls" to access all available settings. Here are some key examples:
     * Max Results: Number of results to return
     * Search Depth: "basic" or "advanced"
     * *Note: Additional parameters are available in the Controls panel*

2. **Tavily Extract API**: Extract content from web pages
   * Located under Tools > Tavily Extract API
   * **Configuration Options**: Select the component and go to "Controls" to access all available settings. Here are some key examples:
     * Extract Depth: "basic" or "advanced"
     * *Note: Additional parameters are available in the Controls panel*

### Step 3: Configure Your Tavily API Key

To use Tavily components, you need to enter your [Tavily API key](https://app.tavily.com/home) under "Tavily API Key"

### Basic Search Workflow

1. Add a Tavily Search component to your flow
2. Connect it to a prompt template
3. Configure the search parameters
4. Add an LLM component to process the results
5. Connect to an output component

### Content Extraction Workflow

1. Add a Tavily Extract component
2. Connect it to a URL input
3. Configure extraction parameters
4. Add processing components as needed
5. Connect to your desired output

1. **Research Assistant**
   * Combine Tavily Search with LLMs for comprehensive research
   * Extract and summarize information from multiple sources

2. **Content Aggregation**
   * Use Tavily Extract to gather content from specific websites
   * Process and format the extracted content

3. **Market Intelligence**
   * Create workflows for competitive analysis
   * Monitor industry trends and news

4. **Documentation Search**
   * Build custom documentation search interfaces
   * Extract and format technical documentation

## Additional Resources

* [Langflow GitHub Repository](https://github.com/langflow-ai/langflow)
* [Langflow Documentation](https://docs.langflow.org)

**Examples:**

Example 1 (unknown):
```unknown
## Setting Up Tavily Components in Langflow

### Step 1: Launch Langflow

After installation, start Langflow:
```

---

## Add the AI's response (including any function calls) to our conversation

**URL:** llms-txt#add-the-ai's-response-(including-any-function-calls)-to-our-conversation

input_list += response.output
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown

```

---

## Create an agent that uses the tool

**URL:** llms-txt#create-an-agent-that-uses-the-tool

extractor_agent = Agent(
    role='Web Page Content Extractor',
    goal='Extract key information from the given web pages',
    backstory='You are an expert at extracting relevant content from websites using the Tavily Extract.',
    tools=[tavily_tool],
    verbose=True
)
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown

```

---

## Initialize the agent with Tavily tools

**URL:** llms-txt#initialize-the-agent-with-tavily-tools

**Contents:**
  - Step 4: Example Use Cases

agent = Agent(
    'openai:o3-mini',
    tools=[tavily_search_tool(api_key)],
    system_prompt='Search Tavily for the given query and return the results.'
)
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
### Step 4: Example Use Cases
```

---

## StackAI

**URL:** llms-txt#stackai

**Contents:**
- Introduction
- How to set up Tavily with StackAI
- Use cases for Tavily in StackAI
- Detailed example - AI News Summary
- Best practices

Source: https://docs.tavily.com/documentation/integrations/stackai

Using Tavily in StackAI to enhance your AI workflows with real-time web data.

Integrate [Tavily with StackAI](https://www.stack-ai.com/integrations/tavily) to enhance your AI workflows with real-time web data. With this integration, you can easily fetch and utilize live web content in your StackAI workflows.

<Frame>
  <img alt="stackai" />
</Frame>

## How to set up Tavily with StackAI

<AccordionGroup>
  <Accordion title="Step 1: Log in to StackAI">
    <p>
      <a href="https://stack-ai.com/">Log in</a> to your StackAI account or
      self-hosted instance.
    </p>
  </Accordion>

<Accordion title="Step 2: Create a New Workflow">
    <p>Create a new workflow or choose one of the available templates.</p>
  </Accordion>

<Accordion title="Step 3: Add Tavily to Your Workflow">
    <p>**Option 1: Add Tavily as a Node**</p>

<ul>
      <li>
        Search for "Tavily" under the **Apps** section in the left sidebar.
      </li>

<li>Drag and drop the "Tavily" app into your canvas.</li>
    </ul>

<p>**Option 2: Add Tavily as a Tool to an AI Agent**</p>

<ul>
      <li>
        Choose between "Search", "Crawl", "Extract" or "Map" tool based on your
        needs.
      </li>
    </ul>

**Configure the Tavily Node or Tool:**

<ul>
      <li>
        In the Connect Tavily section, create a new connection by entering a
        connection name and your [Tavily API key](https://app.tavily.com/home).
      </li>
    </ul>

**Configuring parameters:**
    <p>**For Search:**</p>

<ul>
      <li>
        Enter your search <code>query</code> (can be manually entered or
        populated from another node's output)
      </li>

<li>
        Select a <code>topic</code> ("general" or "news")
      </li>

<li>Choose whether to include raw content or generate an answer</li>
      <li>Specify Maximum Search Results to return</li>
      <li>Set search depth and other optional parameters</li>
    </ul>

<p>**For Extract:**</p>

<ul>
      <li>
        Enter the URL(s) to extract content from (can be a single URL or
        multiple URLs from another node's output)
      </li>

<li>Choose Extract Depth ("basic" or "advanced")</li>
      <li>Specify the output format ("markdown" or "text")</li>
    </ul>

<p>**For Crawl:**</p>

<ul>
      <li>Enter the **Root URL** to crawl</li>
      <li>Set the crawl instructions to guide the crawler</li>
      <li>Set the Limit on the number of pages to crawl</li>
    </ul>

<ul>
      <li>Enter the **Root URL** to begin the mapping</li>
      <li>Set the map instructions to guide the mapping process</li>
      <li>Set the mapping depth to control how deep the mapping goes</li>
    </ul>

<p>**Test:** Run the node to verify your configuration.</p>
  </Accordion>

<Accordion title="Step 4: Process and Use Tavily Results">
    <p>Utilize the search, crawl, extract, or map results in your workflow:</p>

<ul>
      <li>Process data through additional nodes</li>
      <li>Send information to your CRM, database, or email</li>
      <li>Generate reports or notifications</li>
      <li>Feed data into AI models for further processing</li>
    </ul>
  </Accordion>
</AccordionGroup>

## Use cases for Tavily in StackAI

Leverage Tavily's capabilities to create powerful automated workflows:

* **Job Search Automation**: Find and summarize new job postings, then send results to your inbox
* **Competitive Intelligence**: Automatically gather and analyze competitor information
* **Market Research**: Track industry trends and market developments
* **Content Curation**: Collect and organize relevant content for your business
* **Lead Enrichment**: Enhance lead data with real-time information
* **News Monitoring**: Stay updated with the latest developments in your field

## Detailed example - AI News Summary

Here's an example workflow that uses Tavily to search for the latest articles on "AI advancements" and sends a summary to your email:

<AccordionGroup>
  <Accordion title="Workflow Steps">
    <ol>
      <li>**Trigger:** Schedule the workflow to run daily</li>
      <li>**AI Agent:** Add an AI agent node to your workflow</li>

<li>
        **Search:** The AI agent uses Tavily to find recent articles on “AI
        advancements”
      </li>

<li>
        **Summarize:** The AI agent summarizes the most important news and
        trends
      </li>

<li>
        **Delivery:** Send the summarized briefing via Email, Slack, or another
        integration
      </li>
    </ol>
  </Accordion>
</AccordionGroup>

To optimize your Tavily integration in StackAI:

* Tightly constrain Tavily queries to specific intent, time range, and domains to avoid noisy retrieval.
* Force concise, structured outputs (bullets/JSON with only required fields) to reduce tokens and parsing errors.

---

## Privacy Policy

**URL:** llms-txt#privacy-policy

Source: https://docs.tavily.com/documentation/privacy

---

## Credits & Pricing

**URL:** llms-txt#credits-&-pricing

**Contents:**
- Free API Credits
- Pricing Overview
- API Credits Costs
  - Tavily Search
  - Tavily Extract
  - Tavily Map
  - Tavily Crawl
  - Tavily Research (beta)

Source: https://docs.tavily.com/documentation/api-credits

Learn how to get and manage your Tavily API Credits.

<Card icon="key" href="https://app.tavily.com" title="Get your free API key">
  You get 1,000 free API Credits every month. **No credit card required.**
</Card>

Tavily operates on a simple, credit-based model:

* **Free**: 1,000 credits/month
* **Pay-as-you-go**: \$0.008 per credit (allows you to be charged per credit once your plan’s credit limit is reached).
* **Monthly plans**: \$0.0075 - \$0.005 per credit
* **Enterprise**: Custom pricing and volume

| <div>**Plan**</div> | **Credits per month** | **Monthly price** | **Price per credit** |
| ------------------- | --------------------- | ----------------- | -------------------- |
| **Researcher**      | 1,000                 | Free              | -                    |
| **Project**         | 4,000                 | \$30              | \$0.0075             |
| **Bootstrap**       | 15,000                | \$100             | \$0.0067             |
| **Startup**         | 38,000                | \$220             | \$0.0058             |
| **Growth**          | 100,000               | \$500             | \$0.005              |
| **Pay as you go**   | Per usage             | \$0.008 / Credit  | \$0.008              |
| **Enterprise**      | Custom                | Custom            | Custom               |

Head to [billing](https://app.tavily.com/billing) to explore our different options and manage your plan.

Your [search depth](/api-reference/endpoint/search#body-search-depth) determines the cost of your request.

* **Basic Search (`basic`):**
  Each request costs **1 API credit**.

* **Advanced Search (`advanced`):**
  Each request costs **2 API credits**.

The number of successful URL extractions and your [extraction depth](/api-reference/endpoint/extract#body-extract-depth) determines the cost of your request. You never get charged if a URL extraction fails.

* **Basic Extract (`basic`):**
  Every 5 successful URL extractions cost **1 API credit**

* **Advanced Extract (`advanced`):**
  Every 5 successful URL extractions cost **2 API credits**

The number of pages mapped and whether or not natural-language [instructions](/documentation/api-reference/endpoint/map#instructions) are specified determines the cost of your request. You never get charged if a map request fails.

* **Regular Mapping:**
  Every 10 successful pages returned cost **1 API credit**

* **Map with (`instructions`):**
  Every 10 successful pages returned cost **2 API credits**

Tavily Crawl combines both mapping and extraction operations, so the cost is the sum of both:

* **Crawl Cost = Mapping Cost + Extraction Cost**

* If you crawl 10 pages with basic extraction depth, you'll be charged **1 credit for mapping** (10 pages) + **2 credits for extraction** (10 successful extractions ÷ 5) = **3 total credits**
* If you crawl 10 pages with advanced extraction depth, you'll be charged **1 credit for mapping** + **4 credits for extraction** = **5 total credits**

### Tavily Research (beta)

Tavily Research follows a dynamic
pricing model with minimum and maximum credit consumption boundaries associated
with each request. The minimum and maximum boundaries differ based on if the
request uses `model=mini` or `model=pro`.

| Request Cost Boundaries | model=pro   | model=mini  |
| ----------------------- | ----------- | ----------- |
| Per-request minimum     | 15 credits  | 4 credits   |
| Per-request maximum     | 250 credits | 110 credits |

---

## Using UV (recommended)

**URL:** llms-txt#using-uv-(recommended)

uv pip install langflow

---

## Security & Compliance

**URL:** llms-txt#security-&-compliance

Source: https://docs.tavily.com/documentation/trust

---

## Use the agent

**URL:** llms-txt#use-the-agent

**Contents:**
- Tavily Extract
  - Available Parameters
  - Instantiation
  - Invoke directly with args
  - Direct Tool Invocation

response = agent.invoke({
    "messages": [{"role": "user", "content": "What is the most popular sport in the world? Include only Wikipedia sources."}]
})
python theme={null}
from langchain_tavily import TavilyExtract

tool = TavilyExtract(
    extract_depth="basic",
    # include_images=False
)
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
> **Tip**: For more relevant and time-aware results, inject today's date into your system prompt. This helps the agent understand the current context when searching for recent information. For example: `f"You are a helpful research assistant. Today's date is {datetime.today().strftime('%B %d, %Y')}. Use web search to find accurate, up-to-date information."`

## Tavily Extract

Here we show how to instantiate the Tavily extract tool. This tool allows you to extract content from URLs using Tavily's Extract API endpoint.

### Available Parameters

The Tavily Extract API accepts various parameters:

* `extract_depth` (optional, str): The depth of the extraction, either "basic" or "advanced". Default is "basic".
* `include_images` (optional, bool): Whether to include images in the extraction. Default is False.

For a comprehensive overview of the available parameters, refer to the [Tavily Extract API documentation](https://docs.tavily.com/documentation/api-reference/endpoint/extract)

### Instantiation
```

Example 2 (unknown):
```unknown
### Invoke directly with args

The Tavily extract tool accepts the following arguments during invocation:

* `urls` (required): A list of URLs to extract content from.
* Both `extract_depth` and `include_images` can also be set during invocation

NOTE: The optional arguments are available for agents to dynamically set. If you set an argument during instantiation and then invoke the tool with a different value, the tool will use the value you passed during invocation.

### Direct Tool Invocation
```

---
