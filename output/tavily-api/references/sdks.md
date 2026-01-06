# Tavily-Api - Sdks

**Pages:** 12

---

## Quickstart

**URL:** llms-txt#quickstart

**Contents:**
- Introduction
- Quickstart
  - Installation
  - Usage
- Features

Source: https://docs.tavily.com/sdk/python/quick-start

Integrate Tavily's powerful APIs natively in your Python apps.

<Tip>
  Looking for the Python SDK Reference? Head to our [Python SDK Reference](/sdk/python/reference) and learn how to use `tavily-python`.
</Tip>

The Python SDK allows for easy interaction with the Tavily API, offering the full range of our search functionality directly from your Python programs. Easily integrate smart search capabilities into your applications, harnessing Tavily's powerful search features.

<CardGroup>
  <Card title="GitHub" icon="github" href="https://github.com/tavily-ai/tavily-python">
    `/tavily-ai/tavily-python`

<img alt="GitHub Repo stars" />
  </Card>

<Card title="PyPI" icon="python" href="https://pypi.org/project/tavily-python">
    `tavily-python`

<img alt="PyPI downloads" />
  </Card>
</CardGroup>

Get started with our Python SDK in less than 5 minutes!

<Card icon="key" href="https://app.tavily.com" title="Get your free API key">
  You get 1,000 free API Credits every month. **No credit card required.**
</Card>

You can install the Tavily Python SDK using the following:

With Tavily's Python SDK, you can search the web in only 4 lines of code:

You can also easily extract content from URLs:

Tavily also allows you to perform a smart crawl starting at a given URL.

These examples are very simple, and you can do so much more with Tavily!

Our Python SDK supports the full feature range of our [REST API](/documentation/api-reference/introduction), and more. We offer both a synchronous and an asynchronous client, for increased flexibility.

* The `search` function lets you harness the full power of Tavily Search.
* The `extract` function allows you to easily retrieve web content with Tavily Extract.
* The `crawl` and `map`functions allow you to intelligently traverse websites and extract content.

For more details, head to the [Python SDK Reference](/sdk/python/reference).

**Examples:**

Example 1 (unknown):
```unknown
### Usage

With Tavily's Python SDK, you can search the web in only 4 lines of code:
```

Example 2 (unknown):
```unknown
You can also easily extract content from URLs:
```

Example 3 (unknown):
```unknown
Tavily also allows you to perform a smart crawl starting at a given URL.
```

---

## Ask the model again for the final grounded answer

**URL:** llms-txt#ask-the-model-again-for-the-final-grounded-answer

**Contents:**
- Using Tavily with OpenAI Responses API function calling

final = openai_client.chat.completions.create(
    model="gpt-4o-mini",
    messages=messages,
)

final_msg = final.choices[0].message
print("\nFINAL ANSWER:\n", final_msg.content or "(no content)")
python theme={null}
  import os
  import json
  from tavily import TavilyClient
  from openai import OpenAI

# --- setup ---
  tavily_client = TavilyClient(api_key=os.environ["TAVILY_API_KEY"])
  openai_client = OpenAI(api_key=os.environ["OPENAI_API_KEY"])

def tavily_search(**kwargs):
      # Pass ALL supported kwargs straight to Tavily
      results = tavily_client.search(**kwargs)
      return results

# --- define tools ---
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

# --- conversation ---
  messages = [
      {"role": "system", "content": "You are a helpful assistant that uses Tavily search when needed."},
      {"role": "user", "content": "What are the top trends in 2025 about AI agents?"}
  ]

#Ask the model; let it decide whether to call the tool
  response = openai_client.chat.completions.create(
      model="gpt-4o-mini",
      messages=messages,
      tools=tools,
  )

assistant_msg = response.choices[0].message
  messages.append(assistant_msg)  # keep the assistant msg that requested tool(s)

if getattr(assistant_msg, "tool_calls", None):
      for tc in assistant_msg.tool_calls:
          args = tc.function.arguments
          if isinstance(args, str):
              args = json.loads(args)
          elif not isinstance(args, dict):
              args = json.loads(str(args))

if tc.function.name == "tavily_search":
              # forward ALL args
              results = tavily_search(**args)

messages.append({
                  "role": "tool",
                  "tool_call_id": tc.id,
                  "name": "tavily_search",
                  "content": json.dumps(results),
              })
  else:
      print("\nNo tool call requested by the model.")

# Ask the model again for the final grounded answer
  final = openai_client.chat.completions.create(
      model="gpt-4o-mini",
      messages=messages,
  )

final_msg = final.choices[0].message
  print("\nFINAL ANSWER:\n", final_msg.content or "(no content)")
  python theme={null}
import os
import json
from tavily import TavilyClient
from openai import OpenAI

**Examples:**

Example 1 (unknown):
```unknown
<Accordion title="Full Code Example">
```

Example 2 (unknown):
```unknown
</Accordion>

## Using Tavily with OpenAI Responses API function calling
```

---

## Set your API keys

**URL:** llms-txt#set-your-api-keys

**Contents:**
- Using Tavily with OpenAI agents SDK
- Using Tavily with OpenAI Chat Completions API function calling

os.environ["OPENAI_API_KEY"] = "your-openai-api-key"
os.environ["TAVILY_API_KEY"] = "your-tavily-api-key"
bash theme={null}
pip install -U openai-agents
python theme={null}
import os
import asyncio
from agents import Agent, Runner, function_tool
from tavily import TavilyClient

tavily_client = TavilyClient(api_key=os.environ["TAVILY_API_KEY"])
python theme={null}
@function_tool
def tavily_search(query: str) -> str:
    """
    Perform a web search using Tavily and return a summarized result.
    """
    response = tavily_client.search(query,search_depth='advanced',max_results='5')
    results = response.get("results", [])
    return results or "No results found."
python theme={null}
async def main():
    agent = Agent(
        name="Web Research Agent",
        instructions="Use tavily_search when you need up-to-date info.",
        tools=[tavily_search],
    )
    out = await Runner.run(agent, "Latest developments about quantum computing from 2025")
    print(out.final_output)
python theme={null}
asyncio.run(main())
python theme={null}

import os
  import asyncio
  from agents import Agent, Runner, function_tool
  from tavily import TavilyClient

tavily_client = TavilyClient(api_key=os.environ["TAVILY_API_KEY"])

@function_tool
  def tavily_search(query: str) -> str:
      """
      Perform a web search using Tavily and return a summarized result.
      """
      response = tavily_client.search(query,search_depth='advanced',max_results='5')
      results = response.get("results", [])
      return results or "No results found."

async def main():
      agent = Agent(
          name="Web Research Agent",
          instructions="Use tavily_search when you need up-to-date info.",
          tools=[tavily_search],
      )
      out = await Runner.run(agent, "Latest developments about quantum computing from 2025")
      print(out.final_output)

asyncio.run(main())
  python theme={null}
import os
import json
from tavily import TavilyClient
from openai import OpenAI

**Examples:**

Example 1 (unknown):
```unknown
## Using Tavily with OpenAI agents SDK
```

Example 2 (unknown):
```unknown

```

Example 3 (unknown):
```unknown

```

Example 4 (unknown):
```unknown
> **Note:** You can enhance the function by adding more parameters like `topic="news"`, `include_domains=["example.com"]`, `time_range="week"`, etc. to customize your search results.

> You can set `auto_parameters=True` to have Tavily automatically configure search parameters based on the content and intent of your query. You can still set other parameters manually, and any explicit values you provide will override the automatic ones.
```

---

## --- setup ---

**URL:** llms-txt#----setup----

**Contents:**
  - Function definition

tavily_client = TavilyClient(api_key=os.environ["TAVILY_API_KEY"])
openai_client = OpenAI(api_key=os.environ["OPENAI_API_KEY"])
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
### Function definition

Define a function that OpenAI can call to perform searches:
```

---

## Product News Tracker

**URL:** llms-txt#product-news-tracker

**Contents:**
- What will you learn?
- How does it work?
  - Self-Reported News
  - Third-Party Coverage
- Getting Started

Source: https://docs.tavily.com/examples/quick-tutorials/product-news-tracker

Stay informed with real-time product news using Tavily's APIs.

## What will you learn?

In this use case, you'll discover how to gather a company's product news and updates using Tavily's Search API. This tutorial outlines how to get started with the Tavily Python SDK, how to properly configure search parameters for optimal results, and how to effectively interact with Tavily’s Search API to retrieve the latest product updates for a specified company.

### Self-Reported News

Our system gathers official updates including **blog posts**, **product announcements**, and **company news** by utilizing the `include_domain` parameter. This allows us to focus specifically on content from:

* A company's official website

This domain-filtered approach ensures efficient credit usage while maintaining search accuracy.

### Third-Party Coverage

To capture external perspectives, we employ specialized news search parameters:

* Set `topic = news` to focus on reputable news sources
* Utilize `time_range = month` for current coverage

<Tip>
  For the functionality discussed in this tutorial, `search_depth = basic` will
  be sufficient to acheive the intended results.
</Tip>

> We have prepared a [Jupyter Notebook](https://github.com/tavily-ai/tavily-cookbook/blob/main/search/product_news_tracker.ipynb) outlining the contents of this tutorial

First create an account and get your free API key.

<Card title="Get your Tavily API key" icon="key" href="https://app.tavily.com" />

Next, use the Tavily Python SDK to create the workflow.

<Steps>
  <Step title="Install the Tavily Python SDK">
    
  </Step>

<Step title="Import the necessary libraries">
    
  </Step>

<Step title="Instantiate the Tavily Client">
    
  </Step>

<Step title="Define the search parameters">
    
  </Step>

<Step title="Execute the search">
    
  </Step>

<Step title="Output">
    
  </Step>
</Steps>

**Examples:**

Example 1 (unknown):
```unknown
</Step>

  <Step title="Import the necessary libraries">
```

Example 2 (unknown):
```unknown
</Step>

  <Step title="Instantiate the Tavily Client">
```

Example 3 (unknown):
```unknown
</Step>

  <Step title="Define the search parameters">
```

Example 4 (unknown):
```unknown
</Step>

  <Step title="Execute the search">
```

---

## Step 1. Instantiating your TavilyClient

**URL:** llms-txt#step-1.-instantiating-your-tavilyclient

tavily_client = TavilyClient(api_key="tvly-YOUR_API_KEY")

---

## --- Display the final result ---

**URL:** llms-txt#----display-the-final-result----

**Contents:**
- Tavily endpoints schema for OpenAI Responses API tool definition

print("AI Response:")
print(response.output_text)
python theme={null}
  import os
  import json
  from tavily import TavilyClient
  from openai import OpenAI

# --- Setup: Initialize API clients ---
  tavily_client = TavilyClient(api_key=os.environ["TAVILY_API_KEY"])
  openai_client = OpenAI(api_key=os.environ["OPENAI_API_KEY"])

# --- Function that will be called when AI requests a search ---
  def tavily_search(**kwargs):
      """
      Execute a Tavily web search with the given parameters.
      This function is called by the AI when it needs to search the web.
      """
      results = tavily_client.search(**kwargs)
      return results

# --- Define the search tool for OpenAI to use ---
  # This tells the AI what function it can call and what parameters it needs
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

# --- Step 1: Create initial conversation ---
  # This sets up the conversation context for the AI
  input_list = [
      {"role": "system", "content": "You are a helpful assistant that uses Tavily search when needed."},
      {"role": "user", "content": "What are the top trends in 2025 about AI agents?"}
  ]

# --- Step 2: First API call - AI decides to search ---
  # The AI will analyze the user's question and decide if it needs to search the web
  response = openai_client.responses.create(
      model="gpt-4o-mini",
      tools=tools,
      input=input_list,
  )

# --- Step 3: Process the AI's response ---
  # Add the AI's response (including any function calls) to our conversation
  input_list += response.output

# --- Step 4: Execute any function calls the AI made ---
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

# --- Step 5: Second API call - AI provides final answer ---
  # Now the AI has the search results and can provide an informed response
  response = openai_client.responses.create(
      model="gpt-4o-mini",
      instructions="Based on the Tavily search results provided, give me a comprehensive summary with citations.",
      input=input_list,
  )

# --- Display the final result ---
  print("AI Response:")
  print(response.output_text)
  python theme={null}
    tools = [
        {
            "type": "function",
            "name": "tavily_search",
            "description": "A powerful web search tool that provides comprehensive, real-time results using Tavily's AI search engine. Returns relevant web content with customizable parameters for result count, content type, and domain filtering. Ideal for gathering current information, news, and detailed web content analysis.",
            "parameters": {
                "type": "object",
                "additionalProperties": False,
                "required": ["query"],
                "properties": {
                    "query": {
                        "type": "string",
                        "description": "Search query"
                    },
                    "auto_parameters": {
                        "type": "boolean",
                        "default": False,
                        "description": "Auto-tune parameters based on the query. Explicit values you pass still win."
                    },
                    "topic": {
                        "type": "string",
                        "enum": ["general", "news","finance"],
                        "default": "general",
                        "description": "The category of the search. This will determine which of our agents will be used for the search"
                    },
                    "search_depth": {
                        "type": "string",
                        "enum": ["basic", "advanced"],
                        "default": "basic",
                        "description": "The depth of the search. It can be 'basic' or 'advanced'"
                    },
                    "chunks_per_source": {
                        "type": "integer",
                        "minimum": 1,
                        "maximum": 3,
                        "default": 3,
                        "description": "Chunks are short content snippets (maximum 500 characters each) pulled directly from the source."
                    },
                    "max_results": {
                        "type": "integer",
                        "minimum": 0,
                        "maximum": 20,
                        "default": 5,
                        "description": "The maximum number of search results to return"
                    },
                    "time_range": {
                        "type": "string",
                        "enum": ["day", "week", "month", "year"],
                        "description": "The time range back from the current date to include in the search results. This feature is available for both 'general' and 'news' search topics"
                    },
                    "start_date": {
                        "type": "string",
                        "format": "date",
                        "description": "Will return all results after the specified start date. Required to be written in the format YYYY-MM-DD."
                    },
                    "end_date": {
                        "type": "string",
                        "format": "date",
                        "description": "Will return all results before the specified end date. Required to be written in the format YYYY-MM-DD"
                    },
                    "include_answer": {
                        "description": "Include an LLM-generated answer. 'basic' is brief; 'advanced' is more detailed.",
                        "oneOf": [
                            {"type": "boolean"},
                            {"type": "string", "enum": ["basic", "advanced"]}
                        ],
                        "default": False
                    },
                    "include_raw_content": {
                        "description": "Include the cleaned and parsed HTML content of each search result",
                        "oneOf": [
                            {"type": "boolean"},
                            {"type": "string", "enum": ["markdown", "text"]}
                        ],
                        "default": False
                    },
                    "include_images": {
                        "type": "boolean",
                        "default": False,
                        "description": "Include a list of query-related images in the response"
                    },
                    "include_image_descriptions": {
                        "type": "boolean",
                        "default": False,
                        "description": "Include a list of query-related images and their descriptions in the response"
                    },
                    "include_favicon": {
                        "type": "boolean",
                        "default": False,
                        "description": "Whether to include the favicon URL for each result"
                    },
                    "include_usage": {
                        "type": "boolean",
                        "default": False,
                        "description": "Whether to include credit usage information in the response"
                    },
                    "include_domains": {
                        "type": "array",
                        "items": {"type": "string"},
                        "maxItems": 300,
                        "description": "A list of domains to specifically include in the search results, if the user asks to search on specific sites set this to the domain of the site"
                    },
                    "exclude_domains": {
                        "type": "array",
                        "items": {"type": "string"},
                        "maxItems": 150,
                        "description": "List of domains to specifically exclude, if the user asks to exclude a domain set this to the domain of the site"
                    },
                    "country": {
                        "type": "string",
                        "enum": ["afghanistan", "albania", "algeria", "andorra", "angola", "argentina", "armenia", "australia", "austria", "azerbaijan", "bahamas", "bahrain", "bangladesh", "barbados", "belarus", "belgium", "belize", "benin", "bhutan", "bolivia", "bosnia and herzegovina", "botswana", "brazil", "brunei", "bulgaria", "burkina faso", "burundi", "cambodia", "cameroon", "canada", "cape verde", "central african republic", "chad", "chile", "china", "colombia", "comoros", "congo", "costa rica", "croatia", "cuba", "cyprus", "czech republic", "denmark", "djibouti", "dominican republic", "ecuador", "egypt", "el salvador", "equatorial guinea", "eritrea", "estonia", "ethiopia", "fiji", "finland", "france", "gabon", "gambia", "georgia", "germany", "ghana", "greece", "guatemala", "guinea", "haiti", "honduras", "hungary", "iceland", "india", "indonesia", "iran", "iraq", "ireland", "israel", "italy", "jamaica", "japan", "jordan", "kazakhstan", "kenya", "kuwait", "kyrgyzstan", "latvia", "lebanon", "lesotho", "liberia", "libya", "liechtenstein", "lithuania", "luxembourg", "madagascar", "malawi", "malaysia", "maldives", "mali", "malta", "mauritania", "mauritius", "mexico", "moldova", "monaco", "mongolia", "montenegro", "morocco", "mozambique", "myanmar", "namibia", "nepal", "netherlands", "new zealand", "nicaragua", "niger", "nigeria", "north korea", "north macedonia", "norway", "oman", "pakistan", "panama", "papua new guinea", "paraguay", "peru", "philippines", "poland", "portugal", "qatar", "romania", "russia", "rwanda", "saudi arabia", "senegal", "serbia", "singapore", "slovakia", "slovenia", "somalia", "south africa", "south korea", "south sudan", "spain", "sri lanka", "sudan", "sweden", "switzerland", "syria", "taiwan", "tajikistan", "tanzania", "thailand", "togo", "trinidad and tobago", "tunisia", "turkey", "turkmenistan", "uganda", "ukraine", "united arab emirates", "united kingdom", "united states", "uruguay", "uzbekistan", "venezuela", "vietnam", "yemen", "zambia", "zimbabwe"],
                        "description": "Boost search results from a specific country. This will prioritize content from the selected country in the search results. Available only if topic is general. Country names MUST be written in lowercase, plain English, with spaces and no underscores."
                    }
                }
            }
        }
    ]

python theme={null}
  tools = [
      {
          "type": "function",
          "name": "tavily_extract",
          "description": "A powerful web content extraction tool that retrieves and processes raw content from specified URLs, ideal for data collection, content analysis, and research tasks.",
          "parameters": {
              "type": "object",
              "additionalProperties": False,
              "required": ["urls"],
              "properties": {
                  "urls": {
                      "type": "string",
                      "description": "List of URLs to extract content from"
                  },
                  "include_images": {
                      "type": "boolean",
                      "default": False,
                      "description": "Include a list of images extracted from the urls in the response"
                  },
                  "include_favicon": {
                      "type": "boolean",
                      "default": False,
                      "description": "Whether to include the favicon URL for each result"
                  },
                  "include_usage": {
                      "type": "boolean",
                      "default": False,
                      "description": "Whether to include credit usage information in the response"
                  },
                  "extract_depth": {
                      "type": "string",
                      "enum": ["basic", "advanced"],
                      "default": "basic",
                      "description": "Depth of extraction - 'basic' or 'advanced', if urls are linkedin use 'advanced' or if explicitly told to use advanced"
                  },
                  "timeout": {
                      "type": "number",
                      "enum": ["basic", "advanced"],
                      "minimum": 0,
                      "maximum": 60,
                      "default": None,
                      "description": "Maximum time in seconds to wait for the URL extraction before timing out. Must be between 1.0 and 60.0 seconds. If not specified, default timeouts are applied based on extract_depth: 10 seconds for basic extraction and 30 seconds for advanced extraction"
                  },
                  "format": {
                      "type": "string",
                      "enum": ["markdown", "text"],
                      "default": "markdown",
                      "description": "The format of the extracted web page content. markdown returns content in markdown format. text returns plain text and may increase latency."
                  }
              }
          }
      }
  ]

tools = [
      {
          "type": "function",
          "name": "tavily_map",
          "description": "A powerful web mapping tool that creates a structured map of website URLs, allowing you to discover and analyze site structure, content organization, and navigation paths. Perfect for site audits, content discovery, and understanding website architecture.",
          "parameters": {
              "type": "object",
              "additionalProperties": False,
              "required": ["url"],
              "properties": {
                  "url": {
                      "type": "string",
                      "description": "The root URL to begin the mapping"
                  },
                  "instructions": {
                      "type": "string",
                      "description": "Natural language instructions for the crawler"
                  },
                  "max_depth": {
                      "type": "integer",
                      "minimum": 1,
                      "maximum": 5,
                      "default": 1,
                      "description": "Max depth of the mapping. Defines how far from the base URL the crawler can explore"
                  },
                  "max_breadth": {
                      "type": "integer",
                      "minimum": 1,
                      "default": 20,
                      "description": "Max number of links to follow per level of the tree (i.e., per page)"
                  },
                  "limit": {
                      "type": "integer",
                      "minimum": 1,
                      "default": 50,
                      "description": "Total number of links the crawler will process before stopping"
                  },
                  "select_paths": {
                      "type": "array",
                      "items": {"type": "string"},
                      "description": "Regex patterns to select only URLs with specific path patterns (e.g., /docs/.*, /api/v1.*)"
                  },
                  "select_domains": {
                      "type": "array",
                      "items": {"type": "string"},
                      "description": "Regex patterns to select crawling to specific domains or subdomains (e.g., ^docs\\.example\\.com$)"
                  },
                  "exclude_paths": {
                      "type": "array",
                      "items": {"type": "string"},
                      "description": "Regex patterns to exclude URLs with specific path patterns (e.g., /admin/.*)."
                  },
                  "exclude_domains": {
                      "type": "array",
                      "items": {"type": "string"},
                      "description": "Regex patterns to exclude specific domains or subdomains"
                  },
                  "allow_external": {
                      "type": "boolean",
                      "default": True,
                      "description": "Whether to allow following links that go to external domains"
                  },
                  "include_usage": {
                      "type": "boolean",
                      "default": False,
                      "description": "Whether to include credit usage information in the response"
                  }
              }
          }
      }
  ]

python theme={null}
  tools = [
      {
          "type": "function",
          "name": "tavily_crawl",
          "description": "A powerful web crawler that initiates a structured web crawl starting from a specified base URL. The crawler expands from that point like a tree, following internal links across pages. You can control how deep and wide it goes, and guide it to focus on specific sections of the site.",
          "parameters": {
              "type": "object",
              "additionalProperties": False,
              "required": ["url"],
              "properties": {
                  "url": {
                      "type": "string",
                      "description": "The root URL to begin the crawl"
                  },
                  "instructions": {
                      "type": "string",
                      "description": "Natural language instructions for the crawler"
                  },
                  "max_depth": {
                      "type": "integer",
                      "minimum": 1,
                      "maximum": 5,
                      "default": 1,
                      "description": "Max depth of the crawl. Defines how far from the base URL the crawler can explore."
                  },
                  "max_breadth": {
                      "type": "integer",
                      "minimum": 1,
                      "default": 20,
                      "description": "Max number of links to follow per level of the tree (i.e., per page)"
                  },
                  "limit": {
                      "type": "integer",
                      "minimum": 1,
                      "default": 50,
                      "description": "Total number of links the crawler will process before stopping"
                  },
                  "select_paths": {
                      "type": "array",
                      "items": {"type": "string"},
                      "description": "Regex patterns to select only URLs with specific path patterns (e.g., /docs/.*, /api/v1.*)"
                  },
                  "select_domains": {
                      "type": "array",
                      "items": {"type": "string"},
                      "description": "Regex patterns to select crawling to specific domains or subdomains (e.g., ^docs\\.example\\.com$)"
                  },
                  "exclude_paths": {
                      "type": "array",
                      "items": {"type": "string"},
                      "description": "Regex patterns to exclude paths (e.g., /private/.*, /admin/.*)"
                  },
                  "exclude_domains": {
                      "type": "array",
                      "items": {"type": "string"},
                      "description": "Regex patterns to exclude domains/subdomains (e.g., ^private\\.example\\.com$)"
                  },
                  "allow_external": {
                      "type": "boolean",
                      "default": True,
                      "description": "Whether to allow following links that go to external domains"
                  },
                  "include_images": {
                      "type": "boolean",
                      "default": False,
                      "description": "Include images discovered during the crawl"
                  },
                  "extract_depth": {
                      "type": "string",
                      "enum": ["basic", "advanced"],
                      "default": "basic",
                      "description": "Advanced extraction retrieves more data, including tables and embedded content, with higher success but may increase latency"
                  },
                  "format": {
                      "type": "string",
                      "enum": ["markdown", "text"],
                      "default": "markdown",
                      "description": "The format of the extracted web page content. markdown returns content in markdown format. text returns plain text and may increase latency."
                  },
                  "include_favicon": {
                      "type": "boolean",
                      "default": False,
                      "description": "Whether to include the favicon URL for each result"
                  },
                  "include_usage": {
                      "type": "boolean",
                      "default": False,
                      "description": "Whether to include credit usage information in the response"
                  }
              }
          }
      }
  ]

For more information about Tavily's capabilities, check out our [API documentation](/documentation/api-reference/introduction) and [best practices](/documentation/best-practices/best-practices-search).

**Examples:**

Example 1 (unknown):
```unknown
<Accordion title="Full Code Example">
```

Example 2 (unknown):
```unknown
</Accordion>

## Tavily endpoints schema for OpenAI Responses API tool definition

> **Note:** When using these schemas, you can customize which parameters are exposed to the model based on your specific use case. For example, if you are building a finance application, you might set `topic`: `"finance"` for all queries without exposing the `topic` parameter. This way, the LLM can focus on deciding other parameters, such as `time_range`, `country`, and so on, based on the user’s request. Feel free to modify these schemas as needed and only pass the parameters that are relevant to your application.

> **API Format:** The schemas below are for OpenAI Responses API. For Chat Completions API, wrap the parameters in a `"function"` object: `{"type": "function", "function": {"name": "...", "parameters": {...}}}`.

<div>
  <Accordion title="search schema">
```

Example 3 (unknown):
```unknown
</Accordion>
</div>

<Accordion title="extract schema">
```

Example 4 (unknown):
```unknown
</Accordion>

<Accordion title="map schema">
```

---

## Load your API keys from environment variables

**URL:** llms-txt#load-your-api-keys-from-environment-variables

**Contents:**
  - Function definition

tavily_client = TavilyClient(api_key=os.environ["TAVILY_API_KEY"])
openai_client = OpenAI(api_key=os.environ["OPENAI_API_KEY"])
python theme={null}
def tavily_search(**kwargs):
    # Pass ALL supported kwargs straight to Tavily
    results = tavily_client.search(**kwargs)
    return results
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
### Function definition

Define a function that OpenAI can call to perform searches:
```

Example 2 (unknown):
```unknown

```

---

## SDK Reference

**URL:** llms-txt#sdk-reference

**Contents:**
- Instantiating a client
  - Synchronous Client
  - Asynchronous Client
  - Proxies
- Tavily Search
  - Parameters
  - Response format
  - Results
  - Example
- Tavily Extract

Source: https://docs.tavily.com/sdk/python/reference

Integrate Tavily's powerful APIs natively in your Python apps.

## Instantiating a client

To interact with Tavily in Python, you must instatiate a client with your API key. For greater flexibility, we provide both a synchronous and an asynchronous client class.

Once you have instantiated a client, call one of our supported methods (detailed below) to access the API.

### Synchronous Client

### Asynchronous Client

If you would like to specify a proxy to be used when making requests, you can do so by passing in a proxy parameter on client instantiation.

Proxy configuration is available in both the synchronous and asynchronous clients.

Alternatively, you can specify which proxies to use by setting the `TAVILY_HTTP_PROXY` and `TAVILY_HTTPS_PROXY` variables in your environment file.

<Tip>
  **NEW!** Try our interactive [API
  Playground](https://app.tavily.com/playground) to see each parameter in
  action, and generate ready-to-use Python snippets.
</Tip>

You can access Tavily Search in Python through the client's `search` function.

| Parameter                    | Type            | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Default     |   |
| :--------------------------- | :-------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :---------- | - |
| `query` **(required)**       | `str`           | The query to run a search on.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | —           |   |
| `auto_parameters`            | `bool`          | When `auto_parameters` is enabled, Tavily automatically configures search parameters based on your query's content and intent. You can still set other parameters manually, and your explicit values will override the automatic ones. The parameters `include_answer`, `include_raw_content`, and `max_results` must always be set manually, as they directly affect response size. Note: `search_depth` may be automatically set to advanced when it's likely to improve results. This uses 2 API credits per request. To avoid the extra cost, you can explicitly set `search_depth` to `basic`. | `"false"`   |   |
| `search_depth`               | `str`           | The depth of the search. It can be `"basic"` or `"advanced"`. `"advanced"` search is tailored to retrieve the most relevant sources and `content` snippets for your query, while `"basic"` search provides generic content snippets from each source.                                                                                                                                                                                                                                                                                                                                               | `"basic"`   |   |
| `topic`                      | `str`           | The category of the search. Determines which agent will be used. Supported values are `"general"`, `"news"` and `"finance"`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | `"general"` |   |
| `time_range`                 | `str`           | The time range back from the current date based on publish date or last updated date. Accepted values include `"day"`, `"week"`, `"month"`, `"year"` or shorthand values `"d"`, `"w"`, `"m"`, `"y"`.                                                                                                                                                                                                                                                                                                                                                                                                | —           |   |
| `start_date`                 | `str`           | Will return all results after the specified start date based on publish date or last updated date. Required to be written in the format YYYY-MM-DD                                                                                                                                                                                                                                                                                                                                                                                                                                                  | —           |   |
| `end_date`                   | `str`           | Will return all results before the specified end date based on publish date or last updated date. Required to be written in the format YYYY-MM-DD.                                                                                                                                                                                                                                                                                                                                                                                                                                                  | —           |   |
| `max_results`                | `int`           | The maximum number of search results to return. It must be between `0` and `20`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | `5`         |   |
| `chunks_per_source`          | `int`           | Chunks are short content snippets (maximum 500 characters each) pulled directly from the source. Use `chunks_per_source` to define the maximum number of relevant chunks returned per source and to control the `content` length. Chunks will appear in the `content` field as: `<chunk 1> [...] <chunk 2> [...] <chunk 3>`. Available only when `search_depth` is `"advanced"`.                                                                                                                                                                                                                    | `3`         |   |
| `include_images`             | `bool`          | Include a list of query-related images in the response.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | `False`     |   |
| `include_image_descriptions` | `bool`          | Include a list of query-related images and their descriptions in the response.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | `False`     |   |
| `include_answer`             | `bool` or `str` | Include an answer to the query generated by an LLM based on search results. A `"basic"` (or `True`) answer is quick but less detailed; an `"advanced"` answer is more detailed.                                                                                                                                                                                                                                                                                                                                                                                                                     | `False`     |   |
| `include_raw_content`        | `bool` or `str` | Include the cleaned and parsed HTML content of each search result. `"markdown"` or `True` returns search result content in markdown format. `"text"` returns the plain text from the results and may increase latency.                                                                                                                                                                                                                                                                                                                                                                              | `False`     |   |
| `include_domains`            | `list[str]`     | A list of domains to specifically include in the search results. Maximum 300 domains.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | `[]`        |   |
| `exclude_domains`            | `list[str]`     | A list of domains to specifically exclude from the search results. Maximum 150 domains.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | `[]`        |   |
| `country`                    | `str`           | Boost search results from a specific country. This will prioritize content from the selected country in the search results. Available only if topic is `general`.                                                                                                                                                                                                                                                                                                                                                                                                                                   | —           |   |
| `timeout`                    | `float`         | A timeout to be used in requests to the Tavily API.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | `60`        |   |
| `include_favicon`            | `bool`          | Whether to include the favicon URL for each result.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | `False`     |   |
| `include_usage`              | `bool`          | Whether to include credit usage information in the response.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | `False`     |   |

The response object you receive will be in the following format:

| Key                 | Type                               | Description                                                                                                                                                                             |
| :------------------ | :--------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `results`           | `list[Result]`                     | A list of sorted search results ranked by relevancy.                                                                                                                                    |
| `query`             | `str`                              | Your search query.                                                                                                                                                                      |
| `response_time`     | `float`                            | Your search result response time.                                                                                                                                                       |
| `answer` (optional) | `str`                              | The answer to your search query, generated by an LLM based on Tavily's search results. This is only available if `include_answer` is set to `True`.                                     |
| `images` (optional) | `list[str]` or `list[ImageResult]` | This is only available if `include_images` is set to `True`. A list of query-related image URLs. If `include_image_descriptions` is set to `True`, each entry will be an `ImageResult`. |
| `request_id`        | `str`                              | A unique request identifier you can share with customer support to help resolve issues with specific requests.                                                                          |

| `Key`                       | `Type`  | Description                                                                                                                                             |
| :-------------------------- | :------ | :------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `title`                     | `str`   | The title of the search result.                                                                                                                         |
| `url`                       | `str`   | The URL of the search result.                                                                                                                           |
| `content`                   | `str`   | The most query-related content from the scraped URL. Tavily uses proprietary AI to extract the most relevant content based on context quality and size. |
| `score`                     | `float` | The relevance score of the search result.                                                                                                               |
| `raw_content` (optional)    | `str`   | The parsed and cleaned HTML content of the site. This is only available if `include_raw_content` is set to `True`.                                      |
| `published_date` (optional) | `str`   | The publication date of the source. This is only available if the search `topic` is set to `"news"`.                                                    |
| `favicon` (optional)        | `str`   | The favicon URL for the search result.                                                                                                                  |

If `includeImageDescriptions` is set to `true`, each image in the `images` list will be in the following `ImageResult` format:

| Key           | Type     | Description                                |
| :------------ | :------- | :----------------------------------------- |
| `url`         | `string` | The URL of the image.                      |
| `description` | `string` | An LLM-generated description of the image. |

<AccordionGroup>
  <Accordion title="Request">
    
  </Accordion>

<Accordion title="Response">
    
  </Accordion>
</AccordionGroup>

You can access Tavily Extract in Python through the client's `extract` function.

| Parameter             | Type                 | Description                                                                                                                                                                                                                                                                                                                                                                                            | Default      |   |
| :-------------------- | :------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :----------- | - |
| `urls` **(required)** | `str` or `list[str]` | The URL (or URLs) you want to extract. If a list is provided, it must not contain more than 20 URLs.                                                                                                                                                                                                                                                                                                   | —            |   |
| `include_images`      | `bool`               | Include a list of images extracted from the URLs in the response.                                                                                                                                                                                                                                                                                                                                      | `False`      |   |
| `extract_depth`       | `str`                | The depth of the extraction process. You may experience higher latency with `"advanced"` extraction, but it offers a higher success rate and retrieves more data from the URL (e.g., tables, embedded content). `"basic"` extraction costs 1 API Credit per 5 successful URL extractions, while `advanced` extraction costs 2 API Credits per 5 successful URL extractions.                            | `"basic"`    |   |
| `format`              | `str`                | The format of the extracted web page content. `"markdown"` returns content in markdown format. `"text"` returns plain text and may increase latency.                                                                                                                                                                                                                                                   | `"markdown"` |   |
| `timeout`             | `float`              | A timeout to be used in requests to the Tavily API.  Maximum time in seconds to wait for the URL extraction before timing out. Must be between 1.0 and 60.0 seconds. If not specified, default timeouts are applied based on extract\_depth: 10 seconds for basic extraction and 30 seconds for advanced extraction.                                                                                   | `None`       |   |
| `include_favicon`     | `bool`               | Whether to include the favicon URL for each result.                                                                                                                                                                                                                                                                                                                                                    | `False`      |   |
| `include_usage`       | `bool`               | Whether to include credit usage information in the response.`NOTE:`The value may be 0 if the total successful URL extractions has not yet reached 5 calls. See our [Credits & Pricing documentation](https://docs.tavily.com/documentation/api-credits) for details.                                                                                                                                   | `False`      |   |
| `query`               | `str`                | User intent for reranking extracted content chunks. When provided, chunks are reranked based on relevance to this query.                                                                                                                                                                                                                                                                               | `None`       |   |
| `chunks_per_source`   | `int`                | Chunks are short content snippets (maximum 500 characters each) pulled directly from the source. Use `chunks_per_source` to define the maximum number of relevant chunks returned per source and to control the `raw_content` length. Chunks will appear in the `raw_content` field as: `<chunk 1> [...] <chunk 2> [...] <chunk 3>`. Available only when `query` is provided. Must be between 1 and 5. | `3`          |   |

The response object you receive will be in the following format:

| Key              | Type                     | Description                                                                                                    |
| :--------------- | :----------------------- | :------------------------------------------------------------------------------------------------------------- |
| `results`        | `list[SuccessfulResult]` | A list of extracted content.                                                                                   |
| `failed_results` | `list[FailedResult]`     | A list of URLs that could not be processed.                                                                    |
| `response_time`  | `float`                  | The search result response time.                                                                               |
| `request_id`     | `str`                    | A unique request identifier you can share with customer support to help resolve issues with specific requests. |

#### Successful Results

Each successful result in the `results` list will be in the following `SuccessfulResult` format:

| Key                  | Type        | Description                                                                                                      |
| :------------------- | :---------- | :--------------------------------------------------------------------------------------------------------------- |
| `url`                | `str`       | The URL of the webpage.                                                                                          |
| `raw_content`        | `str`       | The raw content extracted. When `query` is provided, contains the top-ranked chunks joined by `[...]` separator. |
| `images` (optional)  | `list[str]` | This is only available if `include_images` is set to `True`. A list of extracted image URLs.                     |
| `favicon` (optional) | `str`       | The favicon URL for the search result.                                                                           |

Each failed result in the `results` list will be in the following `FailedResult` format:

| Key     | Type  | Description                                                |
| :------ | :---- | :--------------------------------------------------------- |
| `url`   | `str` | The URL that failed.                                       |
| `error` | `str` | An error message describing why it could not be processed. |

<AccordionGroup>
  <Accordion title="Request">
    
  </Accordion>

<Accordion title="Response">
    
  </Accordion>
</AccordionGroup>

You can access Tavily Crawl in Python through the `crawl` function.

| Parameter            | Type        | Description                                                                                                                                                                                                                                                                                                                                                   | Default      |
| :------------------- | :---------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | :----------- |
| `url` **(required)** | `str`       | The root URL to begin the crawl.                                                                                                                                                                                                                                                                                                                              | —            |
| `max_depth`          | `int`       | Max depth of the crawl. Defines how far from the base URL the crawler can explore.                                                                                                                                                                                                                                                                            | `1`          |
| `max_breadth`        | `int`       | Max number of links to follow **per level** of the tree (i.e., per page).                                                                                                                                                                                                                                                                                     | `20`         |
| `limit`              | `int`       | Total number of links the crawler will process before stopping.                                                                                                                                                                                                                                                                                               | `50`         |
| `instructions`       | `str`       | Natural language instructions for the crawler.                                                                                                                                                                                                                                                                                                                | —            |
| `select_paths`       | `list[str]` | **Regex patterns** to select only URLs with specific path patterns (e.g., `"/docs/.*"`, `"/api/v1.*"`).                                                                                                                                                                                                                                                       | `None`       |
| `select_domains`     | `list[str]` | **Regex patterns** to select crawling to specific domains or subdomains (e.g., `"^docs\.example\.com$"`).                                                                                                                                                                                                                                                     | `None`       |
| `exclude_paths`      | `list[str]` | **Regex patterns** to exclude URLs with specific path patterns (e.g., `"/private/.*"`, `"/admin/.*"`).                                                                                                                                                                                                                                                        | `None`       |
| `exclude_domains`    | `list[str]` | **Regex patterns** to exclude specific domains or subdomains from crawling (e.g., `"^private\.example\.com$"`).                                                                                                                                                                                                                                               | `None`       |
| `allow_external`     | `bool`      | Whether to allow following links that go to external domains.                                                                                                                                                                                                                                                                                                 | `True`       |
| `include_images`     | `bool`      | Whether to extract image URLs from the crawled pages.                                                                                                                                                                                                                                                                                                         | `False`      |
| `extract_depth`      | `str`       | Advanced extraction retrieves more data, including tables and embedded content, with higher success but may increase latency. Options: `"basic"` or `"advanced"`.                                                                                                                                                                                             | `"basic"`    |
| `format`             | `str`       | The format of the extracted web page content. `markdown` returns content in markdown format. `text` returns plain text and may increase latency.                                                                                                                                                                                                              | `"markdown"` |
| `include_favicon`    | `bool`      | Whether to include the favicon URL for each result.                                                                                                                                                                                                                                                                                                           | `False`      |
| `timeout`            | `float`     | Maximum time in seconds to wait for the crawl operation before timing out. Must be between 10 and 150 seconds.                                                                                                                                                                                                                                                | `150`        |
| `include_usage`      | `bool`      | Whether to include credit usage information in the response.`NOTE:`The value may be 0 if the total use of /extract and /map have not yet reached minimum requirements. See our [Credits & Pricing documentation](https://docs.tavily.com/documentation/api-credits) for details.                                                                              | `False`      |
| `chunks_per_source`  | `int`       | Chunks are short content snippets (maximum 500 characters each) pulled directly from the source. Use `chunks_per_source` to define the maximum number of relevant chunks returned per source and to control the `raw_content` length. Chunks will appear in the `raw_content` field as: `<chunk 1> [...] <chunk 2> [...] <chunk 3>`. Must be between 1 and 5. | `3`          |

The response object you receive will be in the following format:

| Key             | Type           | Description                                                                                                    |
| :-------------- | :------------- | :------------------------------------------------------------------------------------------------------------- |
| `base_url`      | `str`          | The URL you started the crawl from.                                                                            |
| `results`       | `list[Result]` | A list of crawled pages.                                                                                       |
| `response_time` | `float`        | The crawl response time.                                                                                       |
| `request_id`    | `str`          | A unique request identifier you can share with customer support to help resolve issues with specific requests. |

Each successful result in the `results` list will be in the following `Result` format:

| Key                  | Type        | Description                            |
| :------------------- | :---------- | :------------------------------------- |
| `url`                | `str`       | The URL of the webpage.                |
| `raw_content`        | `str`       | The raw content extracted.             |
| `images`             | `list[str]` | Image URLs extracted from the page.    |
| `favicon` (optional) | `str`       | The favicon URL for the search result. |

<AccordionGroup>
  <Accordion title="Request">
    
  </Accordion>

<Accordion title="Response">
    \npip install tavily-python\n\n\nfrom tavily import TavilyClient\n\ntavily_client = TavilyClient(api_key=\"tvly-YOUR_API_KEY\")\nresponse = tavily_client.search(\"Who is Leo Messi?\")\n\nprint(response)\n\n\nfrom tavily import TavilyClient\n\ntavily_client = TavilyClient(api_key=\"tvly-YOUR_API_KEY\")\nresponse = tavily_client.extract(\"https://en.wikipedia.org/wiki/Lionel_Messi\")\n\nprint(response)\n\n\nfrom tavily import TavilyClient\n\ntavily_client = TavilyClient(api_key=\"tvly-YOUR_API_KEY\")\nresponse = tavily_client.crawl(\"https://docs.tavily.com\", query=\"Python SDK\")\n\nprint(response)\n\n\n\n## [\u200b](#tavily-map) Tavily Map\n\nTavily Map allows you to obtain a sitemap starting from a base URL.\n\nYou can access Tavily Map in Python through the `map` function.\n\n### [\u200b](#parameters-4) Parameters\n\n| Parameter | Type | Description | Default |\n| --- | --- | --- | --- |\n| `url` **(required)** | `str` | The root URL to begin the mapping. | \u2014 |\n| `max_depth` | `int` | Max depth of the mapping. Defines how far from the base URL the crawler can explore. | `1` |\n| `max_breadth` | `int` | Max number of links to follow **per level** of the tree (i.e., per page). | `20` |\n| `limit` | `int` | Total number of links the crawler will process before stopping. | `50` |\n| `query` | `str` | Natural language instructions for the crawler | \u2014 |\n| `select_paths` | `list[str]` | **Regex patterns** to select only URLs with specific path patterns (e.g., `\"/docs/.*\"`, `\"/api/v1.*\"`). | `None` |\n| `select_domains` | `list[str]` | **Regex patterns** to select crawling to specific domains or subdomains (e.g., `\"^docs\\.example\\.com$\"`). | `None` |\n| `exclude_paths` | `list[str]` | **Regex patterns** to exclude URLs with specific path patterns (e.g., `\"/private/.*\"`, `\"/admin/.*\"`). | `None` |\n| `exclude_domains` | `list[str]` | **Regex patterns** to exclude specific domains or subdomains from crawling (e.g., `\"^private\\.example\\.com$\"`). | `None` |\n| `allow_external` | `bool` | Whether to allow following links that go to external domains. | `False` |\n\n### [\u200b](#response-format-4) Response format\n\nThe response object you receive will be in the following format:\n\n| Key | Type | Description |\n| --- | --- | --- |\n| `base_url` | `str` | The URL you started the mapping from. |\n| `results` | `list[str]` | A list of URLs that were discovered during the mapping. |\n| `response_time` | `float` | The mapping response time. |\n\n### [\u200b](#example-4) Example\n\nRequest\n\nCopy\n\n\n\nResponse\n\nCopy\n\n\n\n## [\u200b](#tavily-hybrid-rag) Tavily Hybrid RAG\n\nTavily Hybrid RAG is an extension of the Tavily Search API built to retrieve relevant data from both the web and an existing database collection. This way, a RAG agent can combine web sources and locally available data to perform its tasks. Additionally, data queried from the web that is not yet in the database can optionally be inserted into it. This will allow similar searches in the future to be answered faster, without the need to query the web again.\n\n### [\u200b](#parameters-5) Parameters\n\nThe TavilyHybridClient class is your gateway to Tavily Hybrid RAG. There are a few important parameters to keep in mind when you are instantiating a Tavily Hybrid Client.\n\n| Parameter | Type | Description | Default |\n| --- | --- | --- | --- |\n| `api_key` | `str` | Your Tavily API Key |  |\n| `db_provider` | `str` | Your database provider. Currently, only `\"mongodb\"` is supported. |  |\n| `collection` | `str` | A reference to the MongoDB collection that will be used for local search. |  |\n| `embeddings_field` (optional) | `str` | The name of the field that stores the embeddings in the specified collection. This field MUST be the same one used in the specified index. This will also be used when inserting web search results in the database using our default function. | `\"embeddings\"` |\n| `content_field` (optional) | `str` | The name of the field that stores the text content in the specified collection. This will also be used when inserting web search results in the database using our default function. | `\"content\"` |\n| `embedding_function` (optional) | `function` | A custom embedding function (if you want to use one). The function must take in a `list[str]` corresponding to the list of strings to be embedded, as well as an additional string defining the type of document. It must return a `list[list[float]]`, one embedding per input string. If no function is provided, defaults to Cohere\u2019s Embed. Keep in mind that you shouldn\u2019t mix different embeddings in the same database collection. |  |\n| `ranking_function` (optional) | `function` | A custom ranking function (if you want to use one). If no function is provided, defaults to Cohere\u2019s Rerank. It should return an ordered `list[dict]` where the documents are sorted by decreasing relevancy to your query. Each returned document will have two properties - `content`, which is a `str`, and `score`, which is a `float`. The function MUST accept the following parameters: `query`: `str` - This is the query you are executing. When your ranking function is called during Hybrid RAG, the query parameter of your search call (more details below) will be passed as query. `documents`:`List[Dict]`: - This is the list of documents that are returned by your Hybrid RAG call and that you want to sort. Each document will have two properties - `content`, which is a `str`, and `score`, which is a `float`. `top_n`: `int` - This is the number of results you want to return after ranking. When your ranking function is called during Hybrid RAG, the max\\_results value will be passed as `top_n`. |  |\n\n### [\u200b](#methods) Methods\n\n`search`(query, max\\_results=10, max\\_local=None, max\\_foreign=None, save\\_foreign=False, \\*\\*kwargs)\n\nPerforms a Tavily Hybrid RAG query and returns the retrieved documents as a `list[dict]` where the documents are sorted by decreasing relevancy to your query. Each returned document will have three properties - `content` (str), `score` (float), and `origin`, which is either `local` or `foreign`.\n\n| Parameter | Type | Description | Default |  |\n| --- | --- | --- | --- | --- |\n| `query` | `str` | The query you want to search for. |  |  |\n| `max_results` | `int` | The maximum number of total search results to return. | 10 |  |\n| `max_local` | `int` | The maximum number of local search results to return. | `None`, which defaults to `max_results`. |  |\n| `max_local` | `int` | The maximum number of local search results to return. | `None`, which defaults to `max_results`. |  |\n| `max_foreign` | `int` | The maximum number of web search results to return. | `None`, which defaults to `max_results`. |  |\n| `save_foreign` | `Union[bool, function]` | Save documents from the web search in the local database. If `True` is passed, our default saving function (which only saves the content `str` and the embedding `list[float]` will be used.) If `False` is passed, no web search result documents will be saved in the local database. If a function is passed, that function MUST take in a `dict` as a parameter, and return another `dict`. The input `dict` contains all properties of the returned Tavily result object. The output dict is the final document that will be inserted in the database. You are free to add to it any fields that are supported by the database, as well as remove any of the default ones. If this function returns `None`, the document will not be saved in the database. |  |  |\n\nAdditional parameters can be provided as keyword arguments (detailed below). The keyword arguments supported by this method are: `search_depth`, `topic`, `include_raw_content`, `include_domains`,`exclude_domains`.\n\n### [\u200b](#setup) Setup\n\n#### [\u200b](#mongodb-setup) MongoDB setup\n\nYou will need to have a MongoDB collection with a vector search index. You can follow the [MongoDB Documentation](https://www.mongodb.com/docs/atlas/atlas-vector-search/vector-search-type/) to learn how to set this up.\n\n#### [\u200b](#cohere-api-key) Cohere API Key\n\nBy default, embedding and ranking use the Cohere API, our recommended option. Unless you want to provide a custom embedding and ranking function, you\u2019ll need to get an API key from [Cohere](https://cohere.com/) and set it as an environment variable named `CO_API_KEY`\n\nIf you decide to stick with Cohere, please note that you\u2019ll need to install the Cohere Python package as well:\n\nCopy\n\n\n\n#### [\u200b](#tavily-hybrid-rag-client-setup) Tavily Hybrid RAG Client setup\n\nOnce you are done setting up your database, you\u2019ll need to create a MongoDB Client as well as a Tavily Hybrid RAG Client.\nA minimal setup would look like this:\n\nCopy\n\n\n\n### [\u200b](#usage) Usage\n\nOnce you create the proper clients, you can easily start searching. A few simple examples are shown below. They assume you\u2019ve followed earlier steps. You can use most of the Tavily Search parameters with Tavily Hybrid RAG as well.\n\n#### [\u200b](#simple-tavily-hybrid-rag-example) Simple Tavily Hybrid RAG example\n\nThis example will look for context about Leo Messi on the web and in the local database.\nHere, we get 5 sources, both from our database and from the web, but we want to exclude unwanted-domain.com from our web search results:\n\nCopy\n\n\n\nHere, we want to prioritize the number of local sources, so we will get 2 foreign (web) sources, and 5 sources from our database:\n\nCopy\n\n\n\nNote: The sum of `max_local` and `max_foreign` can exceed `max_results`, but only the top `max_results` results will be returned.\n\n#### [\u200b](#adding-retrieved-data-to-the-database) Adding retrieved data to the database\n\nIf you want to add the retrieved data to the database, you can do so by setting the save\\_foreign parameter to True:\n\nCopy\n\n\n\nThis will use our default saving function, which stores the content and its embedding.\n\n### [\u200b](#examples) Examples\n\n#### [\u200b](#sample-1%3A-using-a-custom-saving-function) Sample 1: Using a custom saving function\n\nYou might want to add some extra properties to documents you\u2019re inserting or even discard some of them based on custom criteria. This can be done by passing a function to the save\\_foreign parameter:\n\nCopy\n\n\n\n#### [\u200b](#sample-2%3A-using-a-custom-embedding-function) Sample 2: Using a custom embedding function\n\nBy default, we use [Cohere](https://cohere.com/) for our embeddings. If you want to use your own embeddings, can pass a custom embedding function to the TavilyHybridClient:\n\nCopy\n\n\n\n#### [\u200b](#sample-3%3A-using-a-custom-ranking-function) Sample 3: Using a custom ranking function\n\nCohere\u2019s [rerank](https://cohere.com/rerank) model is used by default, but you can pass your own function to the ranking\\_function parameter:\n\nCopy\n\n\n\n[Quickstart](/sdk/python/quick-start)[Quickstart](/sdk/javascript/quick-start)\n\n[x](https://x.com/tavilyai)[github](https://github.com/tavily-ai)[linkedin](https://linkedin.com/company/tavily)[website](https://tavily.com)\n\n[Powered by Mintlify](https://mintlify.com/preview-request?utm_campaign=poweredBy&utm_medium=docs&utm_source=docs.tavily.com)\n\nOn this page\n\n- [Instantiating a client](#instantiating-a-client)\n- [Synchronous Client](#synchronous-client)\n- [Asynchronous Client](#asynchronous-client)\n- [Proxies](#proxies)\n- [Tavily Search](#tavily-search)\n- [Parameters](#parameters)\n- [Response format](#response-format)\n- [Results](#results)\n- [Image Results](#image-results)\n- [Example](#example)\n- [Tavily Extract](#tavily-extract)\n- [Parameters](#parameters-2)\n- [Response format](#response-format-2)\n- [Successful Results](#successful-results)\n- [Failed Results](#failed-results)\n- [Example](#example-2)\n- [Tavily Crawl](#tavily-crawl)\n- [Parameters](#parameters-3)\n- [Response format](#response-format-3)\n- [Results](#results-2)\n- [Example](#example-3)\n- [Tavily Map](#tavily-map)\n- [Parameters](#parameters-4)\n- [Response format](#response-format-4)\n- [Example](#example-4)\n- [Tavily Hybrid RAG](#tavily-hybrid-rag)\n- [Parameters](#parameters-5)\n- [Methods](#methods)\n- [Setup](#setup)\n- [MongoDB setup](#mongodb-setup)\n- [Cohere API Key](#cohere-api-key)\n- [Tavily Hybrid RAG Client setup](#tavily-hybrid-rag-client-setup)\n- [Usage](#usage)\n- [Simple Tavily Hybrid RAG example](#simple-tavily-hybrid-rag-example)\n- [Adding retrieved data to the database](#adding-retrieved-data-to-the-database)\n- [Examples](#examples)\n- [Sample 1: Using a custom saving function](#sample-1%3A-using-a-custom-saving-function)\n- [Sample 2: Using a custom embedding function](#sample-2%3A-using-a-custom-embedding-function)\n- [Sample 3: Using a custom ranking function](#sample-3%3A-using-a-custom-ranking-function)",
                "images": [],
                "favicon": "https://mintlify.s3-us-west-1.amazonaws.com/tavilyai/_generated/favicon/apple-touch-icon.png?v=3"

}
        ],
        "response_time": 9.07,
        "request_id": "123e4567-e89b-12d3-a456-426614174111"
    }
    python theme={null}
    from tavily import TavilyClient

# Step 1. Instantiating your TavilyClient
    tavily_client = TavilyClient(api_key="tvly-YOUR_API_KEY")

# Step 2. Defining the starting URL of the mapping
    url = "https://docs.tavily.com"

# Step 3. Executing the mapping with some guidance parameters
    response = tavily_client.mapping(url, instructions="Find information on the JavaScript SDK")

# Step 4. Printing the results
    print(response)
    python theme={null}
    {
        'base_url': 'https://docs.tavily.com',
        'results': [
          'https://docs.tavily.com/sdk/javascript/quick-start',
          'https://docs.tavily.com/sdk/javascript/reference',
        ],
        'response_time': 8.43,
        "request_id": "123e4567-e89b-12d3-a456-426614174111"
    }
    bash theme={null}
pip install cohere
python theme={null}
from pymongo import MongoClient
from tavily import TavilyHybridClient

db = MongoClient("mongodb+srv://YOUR_MONGO_URI")["YOUR_DB"]

hybrid_rag = TavilyHybridClient(
    api_key="tvly-YOUR_API_KEY",
    db_provider="mongodb",
    collection=db.get_collection("YOUR_COLLECTION"),
    index="YOUR_VECTOR_SEARCH_INDEX",
    embeddings_field="YOUR_EMBEDDINGS_FIELD",
    content_field="YOUR_CONTENT_FIELD"
)
python theme={null}
results = hybrid_rag.search("Who is Leo Messi?", max_results=5, exclude_domains=['unwanted-domain.com'])
python theme={null}
results = hybrid_rag.search("Who is Leo Messi?",  max_local=5, max_foreign=2)
python theme={null}
results = hybrid_rag.search("Who is Leo Messi?", save_foreign=True)
python theme={null}
def save_document(document):
    if document['score'] < 0.5:
        return None # Do not save documents with low scores

return {
        'content': document['content'],

# Save the title and URL in the database
        'site_title': document['title'],
        'site_url': document['url'],

# Add a new field
        'added_at': datetime.now()
    }

results = hybrid_rag.search("Who is Leo Messi?", save_foreign=save_document)
python theme={null}
def my_embedding_function(texts, doc_type): # doc_type will be either 'search_query' or 'search_document'
    return my_embedding_model.encode(texts)

hybrid_rag = TavilyHybridClient(
    # ...
    embedding_function=my_embedding_function
)
```

**Examples:**

Example 1 (unknown):
```unknown
### Asynchronous Client
```

Example 2 (unknown):
```unknown
### Proxies

If you would like to specify a proxy to be used when making requests, you can do so by passing in a proxy parameter on client instantiation.

Proxy configuration is available in both the synchronous and asynchronous clients.
```

Example 3 (unknown):
```unknown
Alternatively, you can specify which proxies to use by setting the `TAVILY_HTTP_PROXY` and `TAVILY_HTTPS_PROXY` variables in your environment file.

## Tavily Search

<Tip>
  **NEW!** Try our interactive [API
  Playground](https://app.tavily.com/playground) to see each parameter in
  action, and generate ready-to-use Python snippets.
</Tip>

You can access Tavily Search in Python through the client's `search` function.

### Parameters

| Parameter                    | Type            | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Default     |   |
| :--------------------------- | :-------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :---------- | - |
| `query` **(required)**       | `str`           | The query to run a search on.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | —           |   |
| `auto_parameters`            | `bool`          | When `auto_parameters` is enabled, Tavily automatically configures search parameters based on your query's content and intent. You can still set other parameters manually, and your explicit values will override the automatic ones. The parameters `include_answer`, `include_raw_content`, and `max_results` must always be set manually, as they directly affect response size. Note: `search_depth` may be automatically set to advanced when it's likely to improve results. This uses 2 API credits per request. To avoid the extra cost, you can explicitly set `search_depth` to `basic`. | `"false"`   |   |
| `search_depth`               | `str`           | The depth of the search. It can be `"basic"` or `"advanced"`. `"advanced"` search is tailored to retrieve the most relevant sources and `content` snippets for your query, while `"basic"` search provides generic content snippets from each source.                                                                                                                                                                                                                                                                                                                                               | `"basic"`   |   |
| `topic`                      | `str`           | The category of the search. Determines which agent will be used. Supported values are `"general"`, `"news"` and `"finance"`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | `"general"` |   |
| `time_range`                 | `str`           | The time range back from the current date based on publish date or last updated date. Accepted values include `"day"`, `"week"`, `"month"`, `"year"` or shorthand values `"d"`, `"w"`, `"m"`, `"y"`.                                                                                                                                                                                                                                                                                                                                                                                                | —           |   |
| `start_date`                 | `str`           | Will return all results after the specified start date based on publish date or last updated date. Required to be written in the format YYYY-MM-DD                                                                                                                                                                                                                                                                                                                                                                                                                                                  | —           |   |
| `end_date`                   | `str`           | Will return all results before the specified end date based on publish date or last updated date. Required to be written in the format YYYY-MM-DD.                                                                                                                                                                                                                                                                                                                                                                                                                                                  | —           |   |
| `max_results`                | `int`           | The maximum number of search results to return. It must be between `0` and `20`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | `5`         |   |
| `chunks_per_source`          | `int`           | Chunks are short content snippets (maximum 500 characters each) pulled directly from the source. Use `chunks_per_source` to define the maximum number of relevant chunks returned per source and to control the `content` length. Chunks will appear in the `content` field as: `<chunk 1> [...] <chunk 2> [...] <chunk 3>`. Available only when `search_depth` is `"advanced"`.                                                                                                                                                                                                                    | `3`         |   |
| `include_images`             | `bool`          | Include a list of query-related images in the response.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | `False`     |   |
| `include_image_descriptions` | `bool`          | Include a list of query-related images and their descriptions in the response.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | `False`     |   |
| `include_answer`             | `bool` or `str` | Include an answer to the query generated by an LLM based on search results. A `"basic"` (or `True`) answer is quick but less detailed; an `"advanced"` answer is more detailed.                                                                                                                                                                                                                                                                                                                                                                                                                     | `False`     |   |
| `include_raw_content`        | `bool` or `str` | Include the cleaned and parsed HTML content of each search result. `"markdown"` or `True` returns search result content in markdown format. `"text"` returns the plain text from the results and may increase latency.                                                                                                                                                                                                                                                                                                                                                                              | `False`     |   |
| `include_domains`            | `list[str]`     | A list of domains to specifically include in the search results. Maximum 300 domains.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | `[]`        |   |
| `exclude_domains`            | `list[str]`     | A list of domains to specifically exclude from the search results. Maximum 150 domains.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | `[]`        |   |
| `country`                    | `str`           | Boost search results from a specific country. This will prioritize content from the selected country in the search results. Available only if topic is `general`.                                                                                                                                                                                                                                                                                                                                                                                                                                   | —           |   |
| `timeout`                    | `float`         | A timeout to be used in requests to the Tavily API.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | `60`        |   |
| `include_favicon`            | `bool`          | Whether to include the favicon URL for each result.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | `False`     |   |
| `include_usage`              | `bool`          | Whether to include credit usage information in the response.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | `False`     |   |

### Response format

The response object you receive will be in the following format:

| Key                 | Type                               | Description                                                                                                                                                                             |
| :------------------ | :--------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `results`           | `list[Result]`                     | A list of sorted search results ranked by relevancy.                                                                                                                                    |
| `query`             | `str`                              | Your search query.                                                                                                                                                                      |
| `response_time`     | `float`                            | Your search result response time.                                                                                                                                                       |
| `answer` (optional) | `str`                              | The answer to your search query, generated by an LLM based on Tavily's search results. This is only available if `include_answer` is set to `True`.                                     |
| `images` (optional) | `list[str]` or `list[ImageResult]` | This is only available if `include_images` is set to `True`. A list of query-related image URLs. If `include_image_descriptions` is set to `True`, each entry will be an `ImageResult`. |
| `request_id`        | `str`                              | A unique request identifier you can share with customer support to help resolve issues with specific requests.                                                                          |

### Results

| `Key`                       | `Type`  | Description                                                                                                                                             |
| :-------------------------- | :------ | :------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `title`                     | `str`   | The title of the search result.                                                                                                                         |
| `url`                       | `str`   | The URL of the search result.                                                                                                                           |
| `content`                   | `str`   | The most query-related content from the scraped URL. Tavily uses proprietary AI to extract the most relevant content based on context quality and size. |
| `score`                     | `float` | The relevance score of the search result.                                                                                                               |
| `raw_content` (optional)    | `str`   | The parsed and cleaned HTML content of the site. This is only available if `include_raw_content` is set to `True`.                                      |
| `published_date` (optional) | `str`   | The publication date of the source. This is only available if the search `topic` is set to `"news"`.                                                    |
| `favicon` (optional)        | `str`   | The favicon URL for the search result.                                                                                                                  |

#### Image Results

If `includeImageDescriptions` is set to `true`, each image in the `images` list will be in the following `ImageResult` format:

| Key           | Type     | Description                                |
| :------------ | :------- | :----------------------------------------- |
| `url`         | `string` | The URL of the image.                      |
| `description` | `string` | An LLM-generated description of the image. |

### Example

<AccordionGroup>
  <Accordion title="Request">
```

Example 4 (unknown):
```unknown
</Accordion>

  <Accordion title="Response">
```

---

## Initialize OpenAI client with API key

**URL:** llms-txt#initialize-openai-client-with-api-key

---

## --- conversation ---

**URL:** llms-txt#----conversation----

messages = [
    {"role": "system", "content": "You are a helpful assistant that uses Tavily search when needed."},
    {"role": "user", "content": "What are the top trends in 2025 about AI agents?"}
]
python theme={null}
#Ask the model; let it decide whether to call the tool
response = openai_client.chat.completions.create(
    model="gpt-4o-mini",
    messages=messages,
    tools=tools,
)
python theme={null}
assistant_msg = response.choices[0].message
 # keep the assistant msg that requested tool(s)
messages.append(assistant_msg) 
python theme={null}

if getattr(assistant_msg, "tool_calls", None):
    for tc in assistant_msg.tool_calls:
        args = tc.function.arguments
        if isinstance(args, str):
            args = json.loads(args)
        elif not isinstance(args, dict):
            args = json.loads(str(args))

if tc.function.name == "tavily_search":
            # forward ALL args
            results = tavily_search(**args)

messages.append({
                "role": "tool",
                "tool_call_id": tc.id,
                "name": "tavily_search",
                "content": json.dumps(results),
            })
else:
    print("\nNo tool call requested by the model.")

**Examples:**

Example 1 (unknown):
```unknown

```

Example 2 (unknown):
```unknown

```

Example 3 (unknown):
```unknown

```

Example 4 (unknown):
```unknown

```

---

## null

**URL:** llms-txt#null

Source: https://docs.tavily.com/welcome

<div>
  <div>
    <h1>
      Build with <span>Tavily</span>
    </h1>

<p>
      Your journey to state-of-the-art web search starts right here.
    </p>
  </div>

<div>
    <div>
      <div>
        Installation
      </div>

<Columns>
        <Card title="Python SDK" icon="python">
          
        </Card>

<Card title="JavaScript SDK" icon="node">
          
        </Card>
      </Columns>

<div>
        Try it now
      </div>

<Tabs>
        <Tab title="Search the web" icon="search">
          <CodeGroup>

<a href="/documentation/api-reference/endpoint/search">
            Learn more about the Search API →
          </a>
        </Tab>

<Tab title="Extract webpages" icon="file-code">
          <CodeGroup>

<a href="/documentation/api-reference/endpoint/extract">
            Learn more about the Extract API →
          </a>
        </Tab>

<Tab title="Crawl webpages" icon="spider">
          <CodeGroup>

<a href="/documentation/api-reference/endpoint/crawl">
            Learn more about the Crawl API →
          </a>
        </Tab>

<Tab title="Map webpages" icon="map">
          <CodeGroup>

<a href="/documentation/api-reference/endpoint/map">
            Learn more about the Map API →
          </a>
        </Tab>

<Tab title="Create Research Task" icon="book">
          <CodeGroup>

<a href="/documentation/api-reference/endpoint/research">
            Learn more about the Research API →
          </a>
        </Tab>
      </Tabs>
    </div>
  </div>

<h3>
      Developer Resources
    </h3>
  </div>

<div>
    <CardGroup>
      <Card title="API Credits Overview" icon="book-open" href="/documentation/api-credits">
        Learn how Tavily API credits work.
      </Card>

<Card title="Rate Limits" icon="gauge" href="/documentation/rate-limits">
        Understand Tavily's rate limits and policies.
      </Card>

<Card title="Playground" icon="play" href="https://app.tavily.com/playground">
        Try Tavily's APIs interactively.
      </Card>
    </CardGroup>
  </div>
</div>

<div>
  <div>
    <div>
      <Icon icon="circle-question" />

<span>
        <span>Question?</span>

<a href="mailto:support@tavily.com">
          Contact Us
        </a>
      </span>
    </div>

<div>
      <Icon icon="discourse" />

<span>
        <span>Integration issues?</span>

<a href="https://community.tavily.com/">
          Join Community
        </a>
      </span>
    </div>

<div>
      <Icon icon="sparkles" />

<span>
        <span>Using LLMs?</span>

<a href="/llms.txt">
          Read LLMs.txt
        </a>
      </span>
    </div>

<div>
      <Icon icon="circle-check" />

<span>
        <span>Something not right?</span>

<a href="https://status.tavily.com/">
          Check Status
        </a>
      </span>
    </div>
  </div>

<div>
    <div>
      <div>
        <div>
          <span>© Tavily</span>

<a href="https://www.tavily.com/privacy">
            Privacy Policy
          </a>
        </div>

<div>
          <a href="https://www.linkedin.com/company/tavily" aria-label="LinkedIn">
            <Icon icon="linkedin" />
          </a>

<a href="https://x.com/tavilyai" aria-label="Twitter">
            <Icon icon="twitter" />
          </a>

<a href="https://github.com/tavily-ai" aria-label="GitHub">
            <Icon icon="github" />
          </a>

<a href="https://www.youtube.com/@TavilyAI" aria-label="YouTube">
            <Icon icon="youtube" />
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

**Examples:**

Example 1 (unknown):
```unknown
</Card>

        <Card title="JavaScript SDK" icon="node">
```

Example 2 (unknown):
```unknown
</Card>
      </Columns>

      <div>
        Try it now
      </div>

      <Tabs>
        <Tab title="Search the web" icon="search">
          <CodeGroup>
```

Example 3 (unknown):
```unknown

```

Example 4 (unknown):
```unknown

```

---
