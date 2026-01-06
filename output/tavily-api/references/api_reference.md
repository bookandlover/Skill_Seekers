# Tavily-Api - Api Reference

**Pages:** 60

---

## Tines

**URL:** llms-txt#tines

**Contents:**
- Introduction
- How to set up Tavily with Tines
- Use cases for Tavily in Tines
- Example Use Cases

Source: https://docs.tavily.com/documentation/integrations/tines

Integrate Tavily with Tines for automated, no-code intelligence workflows.

Integrate [Tavily with Tines](https://www.tines.com/docs/credentials/connect-flows/tavily/) to enhance your automation workflows with powerful web search and content extraction capabilities. Tines' no-code platform makes it easy to incorporate Tavily's real-time search and data extraction features into your stories, enabling you to build powerful automation workflows without writing code.

## How to set up Tavily with Tines

<AccordionGroup>
  <Accordion title="Step 1: Log in to Tines">
    <p><a href="https://www.tines.com/">Log in</a> to your Tines account.</p>
  </Accordion>

<Accordion title="Step 2: Create or Open a Story">
    <p>Create a new story or open an existing one where you want to add Tavily.</p>
  </Accordion>

<Accordion title="Step 3: Add a Tavily Action">
    <div>
      <p>Follow these steps to add a Tavily action to your story:</p>

<ol>
        <li>Navigate to the Templates section.</li>
        <li>Search for "Tavily" in the search bar.</li>
        <li>Drag the Tavily action into your story.</li>
        <li>Select a template between "Extract Web Content" and "Search the Web" based on your use case.</li>
        <li>Click on the Tavily connection to set up new credentials.</li>
        <li>Enter your Tavily API key in the provided field.</li>
      </ol>
    </div>
  </Accordion>

<Accordion title="Step 4: Process and Use Tavily Results">
    <div>
      <p>Use Tines built-in actions to process Tavily's response:</p>

<ul>
        <li>Parse and filter search results</li>
        <li>Enrich alerts or tickets with real-time intelligence</li>
        <li>Trigger notifications or follow-up actions based on findings</li>
      </ul>
    </div>
  </Accordion>
</AccordionGroup>

## Use cases for Tavily in Tines

* **Workbench Integration**: Connect Tavily to Tines Workbench (AI-powered chat interface) to enable real-time web search and content extraction directly in your conversations
* **Market & News Monitoring**: Track industry trends or breaking news relevant to your organization
* **Lead & Entity Enrichment**: Pull real-time data on companies, people, or technologies
* **Content Extraction**: Extract and analyze web content for deeper investigations

<AccordionGroup>
  <Accordion title="Enrich new Airtable company records using Tavily search">
    <p>
      Enrich a company when it is added to an Airtable database. Receive a webhook notification when a new record is added and fill out the remaining fields with web searches powered by Tavily.<br />
      See the <a href="https://www.tines.com/library/stories/1312477/?name=enrich-new-airtable-company-records-using-tavily-searches">full story</a> on Tines' library.
    </p>
  </Accordion>

<Accordion title="Search the internet with Tavily via Slack">
    <p>
      Search the internet using Tavily in response to a Slack slash command. Summarize the results and post them in a Slack thread, including source links. Users can click on the links to access more detailed information from the original sources.<br />
      See the <a href="https://www.tines.com/library/stories/1312847/?name=search-the-internet-with-tavily-via-slack">full story</a> on Tines' library.
    </p>
  </Accordion>
</AccordionGroup>

---

## Meeting Prep

**URL:** llms-txt#meeting-prep

**Contents:**
- Introduction
- Try Our Meeting Prep Agent
  - Step 1: Get Your API Key
  - Step 2: Read The Open Source Code and Clone the App
- System Diagram
- Features

Source: https://docs.tavily.com/examples/use-cases/meeting-prep

Build an intelligent meeting preparation agent with real-time web research capabilities using Tavily's API and Google Calendar integration

This repository demonstrates how to build a meeting preparation agent with real-time web access, leveraging Tavily's advanced search capabilities. This agent will connect to your Google Calendar via MCP, extract meeting information, and use Tavily search for profile research on the meeting attendees and general information on the companies you are meeting with.

<img alt="Meeting Prep Agent Demo" />

## Try Our Meeting Prep Agent

### Step 1: Get Your API Key

<Card title="Get your Tavily API key" icon="key" href="https://app.tavily.com" />

### Step 2: Read The Open Source Code and Clone the App

<Card title="View Github Repository" icon="github" href="https://github.com/tavily-ai/meeting-prep-agent" />

<img alt="Meeting Prep Agent Diagram" />

1. **Real-time Web Search**: Instantly fetches up-to-date information using Tavily's search API.
2. **Agentic Reasoning**: Combines MCP and ReAct agent flows for smarter, context-aware responses.
3. **Streaming Substeps**: See agentic reasoning and substeps streamed live for transparency.
4. **Citations**: All web search results are cited for easy verification.
5. **Google Calendar Integration**: (via mcp-use) Access and analyze your meeting data.
6. **Async FastAPI Backend**: High-performance, async-ready backend for fast responses.
7. **Modern React Frontend**: Interactive UI for dynamic user interactions.

---

## Create Research Task

**URL:** llms-txt#create-research-task

Source: https://docs.tavily.com/documentation/api-reference/endpoint/research

POST /research
Tavily Research performs comprehensive research on a given topic by conducting multiple searches, analyzing sources, and generating a detailed research report.

---

## Extract content from a URL

**URL:** llms-txt#extract-content-from-a-url

**Contents:**
- Tavily Map/Crawl
  - Tavily Map

result = tavily_extract.invoke({
    "urls": ["https://en.wikipedia.org/wiki/Lionel_Messi"]
})
python theme={null}
{
    'results': [{
        'url': 'https://en.wikipedia.org/wiki/Lionel_Messi',
        'raw_content': 'Lionel Messi\nLionel Andrés "Leo" Messi...',
        'images': []
    }],
    'failed_results': [],
    'response_time': 0.79
}
python theme={null}
from langchain_tavily import TavilyMap

tool = TavilyMap()
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
Example output:
```

Example 2 (unknown):
```unknown
## Tavily Map/Crawl

Tavily provides two complementary tools for website exploration: **Map** and **Crawl**. The `map` tool discovers and lists URLs from a website, providing a structural overview without extracting content. The `crawl` tool then extracts the full content from these discovered URLs, making it ideal for data extraction, documentation indexing, and building knowledge bases.

### Tavily Map

The Map tool discovers all internal links starting from a base URL, perfect for understanding site structure or planning content extraction.

#### Available Parameters

* `url` (required, str): The root URL to begin mapping.
* `instructions` (optional, str): Natural language instructions guiding the mapping process.

For a comprehensive overview, refer to the [Tavily Map API documentation](https://docs.tavily.com/documentation/api-reference/endpoint/map)

#### Instantiation
```

Example 3 (unknown):
```unknown
#### Direct Tool Invocation
```

---

## Changelog

**URL:** llms-txt#changelog

Source: https://docs.tavily.com/changelog/changelog

<AccordionGroup>
  <Accordion title="New search_depth options fast and ultra-fast (BETA)" icon="rocket" description="December 2025">
    <b><br /><a href="/documentation/api-reference/endpoint/search#body-search-depth"><code>search\_depth</code> parameter</a> - New options: <code>fast</code> and <code>ultra-fast</code></b><br />

<ul>
      <li>
        <b><code>fast</code> (BETA)</b><br />

<ul>
          <li>Optimized for low latency while maintaining high relevance to the user query</li>
          <li><b>Cost:</b> 1 API Credit</li>
        </ul>
      </li>

<li>
        <b><code>ultra-fast</code> (BETA)</b><br />

<ul>
          <li>Optimized strictly for latency</li>
          <li><b>Cost:</b> 1 API Credit</li>
        </ul>
      </li>
    </ul>
  </Accordion>

<Accordion title="Intent Based Extraction" icon="rocket" description="December 2025">
    <b><br /><a href="/documentation/api-reference/endpoint/extract#body-query"><code>query</code></a> and <a href="/documentation/api-reference/endpoint/extract#body-chunks-per-source"><code>chunks\_per\_source</code></a> parameters for Extract and Crawl</b><br />

<ul>
      <li>
        <b><code>query</code> (Extract)</b><br />

<ul>
          <li><b>Type:</b> <code>string</code></li>
          <li>User intent for reranking extracted content chunks. When provided, chunks are reranked based on relevance to this query.</li>
        </ul>
      </li>

<li>
        <b><code>chunks\_per\_source</code> (Extract & Crawl)</b><br />

<ul>
          <li><b>Type:</b> <code>integer</code></li>
          <li><b>Range:</b> 1 to 5</li>
          <li><b>Default:</b> 3</li>
          <li>Chunks are short content snippets (maximum 500 characters each) pulled directly from the source.</li>
          <li>Use <code>chunks\_per\_source</code> to define the maximum number of relevant chunks returned per source and to control the <code>raw\_content</code> length.</li>
          <li>Chunks will appear in the <code>raw\_content</code> field as: <code>\<chunk 1> \[...] \<chunk 2> \[...] \<chunk 3></code>.</li>
          <li>Available only when <code>query</code> is provided (Extract) or <code>instructions</code> are provided (Crawl).</li>
        </ul>
      </li>
    </ul>
  </Accordion>

<Accordion title="Include usage parameter" icon="rocket" description="December 2025">
    <b><br /><a href="/documentation/api-reference/endpoint/search#body-include-usage"><code>include\_usage</code> parameter</a></b><br />

<ul>
      <li>
        You can now include credit usage information in the API response for the <a href="/documentation/api-reference/endpoint/search#body-include-usage">Search</a>, <a href="/documentation/api-reference/endpoint/extract#body-include-usage">Extract</a>, <a href="/documentation/api-reference/endpoint/crawl#body-include-usage">Crawl</a>, and <a href="/documentation/api-reference/endpoint/map#body-include-usage">Map</a> endpoints.
      </li>

<li>
        Set the <code>include\_usage</code> parameter to <code>true</code> to receive credit usage information in the API response.
      </li>

<li>
        <b>Type:</b> <code>boolean</code>
      </li>

<li>
        <b>Default:</b> <code>false</code>
      </li>

<li>
        When enabled, the response includes a <code>usage</code> object with <code>credits</code> information, making it easy to track API credit consumption for each request.
      </li>

<li>
        <b>Note:</b> The value may be 0 if the total successful calls have not yet reached the minimum threshold. See our <a href="/documentation/api-credits">Credits & Pricing documentation</a> for details.
      </li>
    </ul>
  </Accordion>

<Accordion title="Vercel AI SDK v5 integration" icon="rocket" description="November 2025">
    <b><br /><a href="/documentation/integrations/vercel">Tavily is now integrated with Vercel AI SDK v5</a></b><br />

<ul>
      <li>
        We've released a new <a href="https://www.npmjs.com/package/@tavily/ai-sdk"><code>@tavily/ai-sdk</code></a> package that provides pre-built AI SDK tools for Vercel's AI SDK v5.
      </li>

<li>
        Easily add real-time web search, content extraction, intelligent crawling, and site mapping to your AI SDK project with ready-to-use tools.
      </li>

<li>
        <b>Available Tools:</b> <code>tavilySearch</code>, <code>tavilyExtract</code>, <code>tavilyCrawl</code>, and <code>tavilyMap</code>
      </li>

<li>
        Full TypeScript support with proper type definitions and seamless integration with Vercel AI SDK v5.
      </li>

<li>
        Check out our <a href="/documentation/integrations/vercel"> integration guide</a> to get started.
      </li>
    </ul>
  </Accordion>

<Accordion title="Crawl & Map timeout parameter" icon="rocket" description="November 2025">
    <b><br /><a href="/documentation/api-reference/endpoint/crawl#body-timeout"><code>timeout</code> parameter for Crawl</a> and <a href="/documentation/api-reference/endpoint/map#body-timeout"><code>timeout</code> parameter for Map</a></b><br />

<ul>
      <li>
        You can now specify a custom timeout for the <a href="/documentation/api-reference/endpoint/crawl">Crawl</a> and <a href="/documentation/api-reference/endpoint/map">Map</a> endpoints to control how long to wait for the operation before timing out.
      </li>

<li>
        <b>Type:</b> <code>float</code>
      </li>

<li>
        <b>Range:</b> Between 10 and 150 seconds
      </li>

<li>
        <b>Default:</b> 150 seconds
      </li>

<li>
        This gives you fine-grained control over crawl and map operation timeouts, allowing you to balance between reliability and speed based on your specific use case.
      </li>
    </ul>
  </Accordion>

<Accordion title="New team roles & permissions" icon="rocket" description="August 2025">
    <p /><b>Role options: Owner, Admin, Member</b>
    <p />You can now assign roles to team members, giving you more control over access and permissions. Each team has one owner, while there can be multiple admins and multiple members.
    The key distinction between roles is in their permissions for Billing and Settings:<p />

<ul>
      <li>
        <b>Owner</b><br />

<ul>
          <li>Full access to all Settings</li>
          <li>Access and ownership of the Billing account</li>
        </ul>
      </li>

<li>
        <b>Admin</b><br />

<ul>
          <li>Full access to Settings except ownership transfer</li>
          <li>No access to Billing</li>
        </ul>
      </li>

<li>
        <b>Member</b><br />

<ul>
          <li>Limited Settings access (view members only)</li>
          <li>No access to Billing</li>
        </ul>
      </li>
    </ul>
  </Accordion>

<Accordion title="Extract timeout parameter" icon="rocket" description="August 2025">
    <b><br /><a href="/documentation/api-reference/endpoint/extract#body-timeout"><code>timeout</code> parameter</a></b><br />

<ul>
      <li>
        You can now specify a custom timeout for the <a href="/documentation/api-reference/endpoint/extract">Extract</a> endpoint to control how long to wait for URL extraction before timing out.
      </li>

<li>
        <b>Type:</b> <code>number</code> (float)
      </li>

<li>
        <b>Range:</b> Between 1.0 and 60.0 seconds
      </li>

<li>
        <b>Default behavior:</b> If not specified, automatic timeouts are applied based on <code>extract\_depth</code>: 10 seconds for basic extraction and 30 seconds for advanced extraction.
      </li>

<li>
        This gives you fine-grained control over extraction timeouts, allowing you to balance between reliability and speed based on your specific use case.
      </li>
    </ul>
  </Accordion>

<Accordion title="Start date & end date Parameters" icon="rocket" description="July 2025">
    <b><br /><a href="/documentation/api-reference/endpoint/search#body-start_date"><code>start\_date</code> parameter</a>,<a href="/documentation/api-reference/endpoint/search#body-end-date"><code>end\_date</code> parameter</a></b><br />

<ul>
      <li>
        You can now use both the <code>start\_date</code> and <code>end\_date</code> parameters in the <a href="/documentation/api-reference/endpoint/search">Search</a> endpoints.
      </li>

<li>
        <code>start\_date</code> will return all results after the specified start date. Required to be written in the format YYYY-MM-DD.
      </li>

<li>
        <code>end\_date</code> will return all results before the specified end date. Required to be written in the format YYYY-MM-DD.
      </li>

<li>
        Set <code>start\_date</code> to <code>2025-01-01</code> and <code>end\_date</code> to <code>2025-04-01</code> to reiceive results strictly from this time range.
      </li>
    </ul>
  </Accordion>

<Accordion title="Usage dashboard" icon="rocket" description="July 2025">
    <b><br /><a href="https://www.tavily.com/">Login to your account to view the usage dashboard</a></b><br />
    <br />The usage dashboard provides the following features to paid users/teams:<br />

<ul>
      <li>
        The Usage Graph offers a breakdown of daily usage across all Tavily endpoints with historical data to enable month over month usage and spend comparison.
      </li>

<li>
        The Logs Table offers granular insight into each API request to ensure visibility and traceability with every Tavily interaction.
      </li>
    </ul>
  </Accordion>

<Accordion title="Include favicon parameter" icon="rocket" description="June 2025">
    <b><br /><a href="/documentation/api-reference/endpoint/search#body-include-favicon"><code>include\_favicon</code> parameter</a></b><br />

<ul>
      <li>
        You can now include the favicon URL for each result in the <a href="/documentation/api-reference/endpoint/search">Search</a>, <a href="/documentation/api-reference/endpoint/extract">Extract</a>, and <a href="/documentation/api-reference/endpoint/crawl">Crawl</a> endpoints.
      </li>

<li>
        Set the <code>include\_favicon</code> parameter to <code>true</code> to receive the favicon URL (if available) for each result in the API response.
      </li>

<li>
        This makes it easy to display website icons alongside your search, extraction, or crawl results, improving the visual context and user experience in your application.
      </li>
    </ul>
  </Accordion>

<Accordion title="Auto parameters (BETA)" icon="rocket" description="June 2025">
    <b>Tavily Search<br /><a href="/documentation/api-reference/endpoint/search#body-auto-parameters"><code>auto\_parameters</code> (BETA)</a></b><br />

<ul>
      <li><b>Boolean default:</b> <code>false</code></li>
      <li>When <code>auto\_parameters</code> is enabled, Tavily automatically configures search parameters based on your query's content and intent. You can still set other parameters manually, and your explicit values will override the automatic ones.</li>
      <li>The parameters <code>include\_answer</code>, <code>include\_raw\_content</code>, and <code>max\_results</code> must always be set manually, as they directly affect response size.</li>
      <li><b>Note:</b> <code>search\_depth</code> may be automatically set to <code>advanced</code> when it's likely to improve results. This uses <b>2 API credits per request</b>. To avoid the extra cost, you can explicitly set <code>search\_depth</code> to <code>basic</code>.</li>
      <li>Currently in <b>BETA</b>.</li>
    </ul>
  </Accordion>

<Accordion title="Usage endpoint" icon="rocket" description="May 2025">
    <b><a href="/documentation/api-reference/endpoint/usage"><code>/usage</code> endpoint</a></b><br />

<ul>
      <b>Easily check your API usage and plan limits.</b><br />Just <code>GET [https://api.tavily.com/usage](https://api.tavily.com/usage)</code> with your API key to monitor your account in real time.
    </ul>
  </Accordion>

<Accordion title="Country parameter" icon="rocket" description="May 2025">
    <b>Tavily Search<br /><a href="/documentation/api-reference/endpoint/search#body-country"><code>country</code> parameter</a><br /><p>Boost search results from a specific country.</p></b>

<ul>
      This will prioritize content from the selected country in the search results. Available only if <code>topic</code> is <code>general</code>.
    </ul>
  </Accordion>

<Accordion title="Make & n8n integrations" icon="rocket" description="May 2025">
    <b>Make & n8n Integrations</b><br />

<ul>
      <li>
        <b><a href="/documentation/integrations/n8n">Tavily is now available for no-code integration through n8n.</a></b><br />
        <p>Integrate Tavily with n8n to enhance your workflows with real-time web search and content extraction—without writing code. With Tavily's powerful search and extraction capabilities, you can seamlessly integrate up-to-date online information into your n8n automations.</p>
      </li>

<li>
        <b><a href="/documentation/integrations/make">Integrate Tavily with Make without writing a single line of code.</a></b><br />
        <p>With Tavily's powerful search and content extraction capabilities, you can seamlessly integrate real-time online information into your Make workflows and automations.</p>
      </li>
    </ul>
  </Accordion>

<Accordion title="Markdown format" icon="rocket" description="May 2025">
    <b>Tavily Extract<br /><a href="/documentation/api-reference/endpoint/extract#body-format"><code>format</code> parameter</a></b>

<ul>
      <li><b>Type:</b> <code>enum\<string></code></li>
      <li><b>Default:</b> <code>markdown</code></li>
      <li>The format of the extracted web page content. <code>markdown</code> returns content in markdown format. <code>text</code> returns plain text and may increase latency.</li>
      <li><b>Available options:</b> <code>markdown</code>, <code>text</code></li>
    </ul>
  </Accordion>

<Accordion title="Advanced search & chunks per source" icon="rocket" description="April 2025">
    <b>Tavily Search<br /><a href="/documentation/api-reference/endpoint/search#body-search-depth"><code>search\_depth</code></a> and <a href="/documentation/api-reference/endpoint/search#body-chunks-per-source"><code>chunks\_per\_source</code></a>parameters</b>

<ul>
      <li>
        <b><code>search\_depth</code></b><br />

<div>
          <ul>
            <li><b>Type:</b> <code>enum\<string></code></li>
            <li><b>Default:</b> <code>basic</code></li>
            <li>The depth of the search. <code>advanced</code> search is tailored to retrieve the most relevant sources and content snippets for your query, while <code>basic</code> search provides generic content snippets from each source.</li>
            <li>A <code>basic</code> search costs 1 API Credit, while an <code>advanced</code> search costs 2 API Credits.</li>
            <li><b>Available options:</b> <code>basic</code>, <code>advanced</code></li>
          </ul>
        </div>
      </li>

<li>
        <b><code>chunks\_per\_source</code></b><br />

<div>
          <ul>
            <li>Chunks are short content snippets (maximum 500 characters each) pulled directly from the source.</li>
            <li>Use <code>chunks\_per\_source</code> to define the maximum number of relevant chunks returned per source and to control the content length.</li>
            <li>Chunks will appear in the content field as: <code>\<chunk 1> \[...] \<chunk 2> \[...] \<chunk 3></code>.</li>
            <li>Available only when <code>search\_depth</code> is <code>advanced</code>.</li>
            <li><b>Required range:</b> <code>1 \< x \< 3</code></li>
          </ul>
        </div>
      </li>
    </ul>
  </Accordion>

<Accordion title="Tavily crawl (BETA)" icon="rocket" description="April 2025">
    <a href="https://docs.tavily.com/documentation/api-reference/endpoint/crawl">Tavily Crawl</a><br />

<ul>
      <li>
        Tavily Crawl enables you to traverse a website like a graph, starting from a base URL and automatically discovering and extracting content from multiple linked pages. With Tavily Crawl, you can:

<ul>
          <li>Specify the starting URL and let the crawler intelligently follow links to map out the site structure.</li>
          <li>Control the depth and breadth of the crawl, allowing you to focus on specific sections or perform comprehensive site-wide analysis.</li>
          <li>Apply filters and custom instructions to target only the most relevant pages or content types.</li>
          <li>Aggregate extracted content for further analysis, reporting, or integration into your workflows.</li>
          <li>Seamlessly integrate with your automation tools or use the API directly for flexible, programmatic access.</li>
        </ul>

Tavily Crawl is ideal for use cases such as large-scale content aggregation, competitive research, knowledge base creation, and more.<br />
        For full details and API usage examples, see the <a href="https://docs.tavily.com/documentation/api-reference/endpoint/crawl">Tavily Crawl API reference</a>.
      </li>
    </ul>
  </Accordion>
</AccordionGroup>

---

## Company Research

**URL:** llms-txt#company-research

**Contents:**
- Try Our Company Researcher
  - Step 1: Get Your API Key
  - Step 2: Try the Company Researcher
  - Step 3: Read The Open Source Code
- Why Use Tavily for company research?

Source: https://docs.tavily.com/examples/use-cases/company-research

Perform in-depth company research with Tavily Search and Extract.

<img alt="Company Research Demo" />

## Try Our Company Researcher

### Step 1: Get Your API Key

<Card title="Get your Tavily API key" icon="key" href="https://app.tavily.com" />

### Step 2: Try the Company Researcher

<Card title="Launch the application" icon="message-bot" href="https://companyresearcher.tavily.com/" />

### Step 3: Read The Open Source Code

<Card title="View Github Repository" icon="github" href="https://github.com/pogjester/company-research-agent" />

## Why Use Tavily for company research?

<Tip>
  This is one of the most popular use cases for Tavily. Our powerful APIs can easily be integrated with agentic workflows to perform in-depth, accurate company research.
</Tip>

Tavily offers several advantages for conducting in-depth company research:

1. **Comprehensive Data Gathering**: Tavily's advanced search algorithms pull relevant information from a wide range of online sources, providing a robust foundation for in-depth company research.

2. **Flexible Agentic Search**: When Tavily is integrated into agentic workflows, such as those powered by frameworks like LangGraph, it allows AI agents to dynamically tailor their search strategies. The agents can decide to perform either a news or general search depending on the context, retrieve raw content for more in-depth analysis, or simply pull summaries when high-level insights are sufficient. This adaptability ensures that the research process is optimized according to the specific requirements of the task and the nature of the data available, bringing a new level of autonomy and intelligence to the research process.

3. **Real-time Data Retrieval**: Tavily ensures that the data used for research is up-to-date by querying live sources. This is crucial for company research where timely information can impact the accuracy and relevance of the analysis.

4. **Efficient and Scalable**: Tavily handles multiple queries simultaneously, making it capable of processing large datasets quickly. This efficiency reduces the time needed for comprehensive research, allowing for faster decision-making.

---

## Define the market research task with specific parameters

**URL:** llms-txt#define-the-market-research-task-with-specific-parameters

task = {
    "query": "Analyze the competitive landscape of AI-powered customer service solutions in 2024",
    "search_depth": "advanced",  
    "include_answer": True,      
    "max_results": 10,  
    # Focus on relevant industry sources         
    "include_domains": [        
        "techcrunch.com",
        "venturebeat.com",
        "forbes.com",
        "gartner.com",
        "marketsandmarkets.com"
    ],
}

---

## Initialize the Tavily extractor tool

**URL:** llms-txt#initialize-the-tavily-extractor-tool

tavily_tool = TavilyExtractorTool()
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown

```

---

## Retrieve results for a completed research task

**URL:** llms-txt#retrieve-results-for-a-completed-research-task

result = tavily_get_research.invoke({
    "request_id": "test-request-123"
})
python theme={null}
{
    "request_id": "test-request-123",
    "created_at": "2024-01-01T00:00:00Z",
    "completed_at": "2024-01-01T00:05:00Z",
    "status": "completed",
    "content": "This is a comprehensive research report on AI developments...",
    "sources": [
        {
            "title": "AI Research Paper",
            "url": "https://example.com/ai-paper",
        }
    ]
}
```

**Examples:**

Example 1 (unknown):
```unknown
Example response:
```

---

## Tavily Search

**URL:** llms-txt#tavily-search

Source: https://docs.tavily.com/documentation/api-reference/endpoint/search

POST /search
Execute a search query using Tavily Search.

---

## Market Researcher

**URL:** llms-txt#market-researcher

**Contents:**
- Try Our Market Researcher
  - Step 1: Get Your API Key
  - Step 2: Try the Market Researcher
  - Step 3: Read The Open Source Code
- Features
- How Does It Work?

Source: https://docs.tavily.com/examples/use-cases/market-researcher

Get comprehensive market insights and analysis for stocks in your portfolio

<img alt="Tavily Market Researcher" />

## Try Our Market Researcher

### Step 1: Get Your API Key

<Card title="Get your Tavily API key" icon="key" href="https://app.tavily.com" />

### Step 2: Try the Market Researcher

<Card title="Launch the application" icon="message-bot" href="https://market-researcher.tavily.com/" />

### Step 3: Read The Open Source Code

<Card title="View Github Repository" icon="github" href="https://github.com/tavily-ai/market-researcher" />

1. **Real-time Financial Research**: Real‑time financial news and market data aggregation performed in real-time.
2. **Full Portfolio Coverage**: Input all your the stocks in your portfolio and get an analysis with comparative insights.
3. **Report Generation**: Automated report generation with source citations, so all news and claims are backed by sources.
4. **Efficient and Scalable**: Tavily handles multiple queries simultaneously, making it capable of processing large datasets quickly. This efficiency reduces the time needed for comprehensive research, allowing for faster decision-making.

We use the Tavily 'news' and Tavily 'finance' parameters to make two separate search calls for each ticker retrieving the most relevant and up to date financial news data and metrics. All the searches are parallelized to maximize speed.

---

## Initialize the agent with the search tool

**URL:** llms-txt#initialize-the-agent-with-the-search-tool

agent = create_agent(
    model=ChatOpenAI(model="gpt-5"),
    tools=[tavily_search],
    system_prompt="You are a helpful research assistant. Use web search to find accurate, up-to-date information."
)

---

## Basic usage

**URL:** llms-txt#basic-usage

**Contents:**
  - Use with Agent

result = tavily_search.invoke({"query": "What happened at the last wimbledon"})
python theme={null}
{
 'query': 'What happened at the last wimbledon',
 'follow_up_questions': None,
 'answer': None,
 'images': [],
 'results': [
   {'url': 'https://en.wikipedia.org/wiki/Wimbledon_Championships',
    'title': 'Wimbledon Championships - Wikipedia',
    'content': 'Due to the COVID-19 pandemic, Wimbledon 2020 was cancelled ...',
    'score': 0.62365627198,
    'raw_content': None},
   {'url': 'https://www.cbsnews.com/news/wimbledon-men-final-carlos-alcaraz-novak-djokovic/',
    'title': "Carlos Alcaraz beats Novak Djokovic at Wimbledon men's final to ...",
    'content': 'In attendance on Sunday was Catherine, the Princess of Wales ...',
    'score': 0.5154731446,
    'raw_content': None}
 ],
 'response_time': 2.3
}
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
Example output:
```

Example 2 (unknown):
```unknown
### Use with Agent
```

---

## Crawl and extract content

**URL:** llms-txt#crawl-and-extract-content

**Contents:**
- Tavily Research
  - Available Parameters
  - Instantiation
  - Invoke directly with args
  - Direct Tool Invocation

result = tavily_crawl.invoke({
    "url": "https://docs.example.com",
    "instructions": "Extract API documentation and code examples"
})
python theme={null}
{
    'base_url': 'https://docs.example.com',
    'results': [
        {
            'url': 'https://docs.example.com',
            'raw_content': '# Documentation\nWelcome to our API documentation...'
        },
        {
            'url': 'https://docs.example.com/api',
            'raw_content': '# API Reference\nComplete API reference guide...'
        }
    ],
    'response_time': 4.5,
    'request_id': 'req_abc123'
}
python theme={null}
from langchain_tavily import TavilyResearch

tavily_research = TavilyResearch(
    # model="auto",
    # citation_format="numbered",
    # stream=False,
)
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
Example output:
```

Example 2 (unknown):
```unknown
## Tavily Research

Here we show how to instantiate the Tavily research tool. This tool allows you to create comprehensive research tasks using Tavily's Research API endpoint, with optional structured output.

### Available Parameters

* `input` (required, str): The research task or question to investigate.
* `model` (optional, str): The research model to use, one of `"mini"`, `"pro"`, or `"auto"`. Default is `"auto"`.
* `output_schema` (optional, dict): A JSON Schema object that defines the structure of the research output. Must include a `properties` field and may optionally include a `required` field.
* `stream` (optional, bool): Whether to stream the research results as they are generated. When `True`, returns a streaming response. Default is `False`.
* `citation_format` (optional, str): The format for citations in the research report, one of `"numbered"`, `"mla"`, `"apa"`, or `"chicago"`. Default is `"numbered"`.

### Instantiation
```

Example 3 (unknown):
```unknown
### Invoke directly with args

The Tavily research tool accepts the following arguments during invocation:

* `input` (required): A natural language research task or question.
* The following arguments can also be set during invocation: `model`, `output_schema`, `stream`, and `citation_format`.

NOTE: The optional arguments are available for agents to dynamically set. If you set an argument during instantiation and then invoke the tool with a different value, the tool will use the value you passed during invocation.

### Direct Tool Invocation
```

---

## Usage

**URL:** llms-txt#usage

Source: https://docs.tavily.com/documentation/api-reference/endpoint/usage

GET /usage
Get API key and account usage details

---

## Streaming

**URL:** llms-txt#streaming

**Contents:**
- Overview
- Enabling Streaming
- Event Structure
  - Core Fields
- Event Types
  - 1. Tool Call Events
  - 2. Tool Response Events
  - 3. Content Events
  - 4. Sources Event
  - 5. Done Event

Source: https://docs.tavily.com/documentation/api-reference/endpoint/research-streaming

Stream real-time research progress and results from Tavily Research API

When using the Tavily Research API, you can stream responses in real-time by setting `stream: true` in your request. This allows you to receive research progress updates, tool calls, and final results as they're generated, providing a better user experience for long-running research tasks.

Streaming is particularly useful for:

* Displaying research progress to users in real-time
* Monitoring tool calls and search queries as they execute
* Receiving incremental updates during lengthy research operations
* Building interactive research interfaces

## Enabling Streaming

To enable streaming, set the `stream` parameter to `true` when making a request to the Research endpoint:

The API will respond with a `text/event-stream` content type, sending Server-Sent Events (SSE) as the research progresses.

Each streaming event follows a consistent structure compatible with the OpenAI chat completions format:

| Field     | Type    | Description                                           |
| --------- | ------- | ----------------------------------------------------- |
| `id`      | string  | Unique identifier for the stream event                |
| `object`  | string  | Always `"chat.completion.chunk"` for streaming events |
| `model`   | string  | The research model being used (`"mini"` or `"pro"`)   |
| `created` | integer | Unix timestamp when the event was created             |
| `choices` | array   | Array containing the delta with event details         |

The streaming response includes different types of events in the `delta` object. Here are the main event types you'll encounter:

### 1. Tool Call Events

When the research agent performs actions like web searches, you'll receive tool call events:

**Tool Call Delta Fields:**

| Field                 | Type   | Description                                                        |
| --------------------- | ------ | ------------------------------------------------------------------ |
| `type`                | string | Either `"tool_call"` or `"tool_response"`                          |
| `tool_call`           | array  | Details about the tool being invoked                               |
| `name`                | string | Name of the tool (see [Tool Types](#tool-types) below)             |
| `id`                  | string | Unique identifier for the tool call                                |
| `arguments`           | string | Description of the action being performed                          |
| `queries`             | array  | *(WebSearch only)* The search queries being executed               |
| `parent_tool_call_id` | string | *(Pro mode only)* ID of the parent tool call for nested operations |

### 2. Tool Response Events

After a tool executes, you'll receive response events with discovered sources:

**Tool Response Fields:**

| Field                 | Type   | Description                                                     |
| --------------------- | ------ | --------------------------------------------------------------- |
| `name`                | string | Name of the tool that completed                                 |
| `id`                  | string | Unique identifier matching the original tool call               |
| `arguments`           | string | Completion status message                                       |
| `sources`             | array  | Sources discovered by the tool (with `url`, `title`, `favicon`) |
| `parent_tool_call_id` | string | *(Pro mode only)* ID of the parent tool call                    |

### 3. Content Events

The final research report is streamed as content chunks:

* Can be a **string** (markdown-formatted report chunks) when no `output_schema` is provided
* Can be an **object** (structured data) when an `output_schema` is specified

After the content is streamed, a sources event is emitted containing all sources used in the research:

**Source Object Fields:**

| Field     | Type   | Description                  |
| --------- | ------ | ---------------------------- |
| `url`     | string | The URL of the source        |
| `title`   | string | The title of the source page |
| `favicon` | string | URL to the source's favicon  |

Signals the completion of the streaming response:

During research, you'll encounter the following tool types in streaming events:

| Tool Name          | Description                                                    | Model    |
| ------------------ | -------------------------------------------------------------- | -------- |
| `Planning`         | Initializes the research plan based on the input query         | Both     |
| `Generating`       | Generates the final research report from collected information | Both     |
| `WebSearch`        | Executes web searches to gather information                    | Both     |
| `ResearchSubtopic` | Conducts deep research on specific subtopics                   | Pro only |

### Research Flow Example

A typical streaming session follows this sequence:

1. **Planning** tool\_call → Initializing research plan
2. **Planning** tool\_response → Research plan initialized
3. **WebSearch** tool\_call → Executing search queries (with `queries` array)
4. **WebSearch** tool\_response → Search completed (with `sources` array)
5. *(Pro mode)* **ResearchSubtopic** tool\_call/response cycles for deeper research
6. **Generating** tool\_call → Generating final report
7. **Generating** tool\_response → Report generated
8. **Content** events → Streamed report chunks
9. **Sources** event → Complete list of all sources used
10. **Done** event → Stream complete

## Handling Streaming Responses

```python theme={null}
from tavily import TavilyClient

**Examples:**

Example 1 (unknown):
```unknown
The API will respond with a `text/event-stream` content type, sending Server-Sent Events (SSE) as the research progresses.

## Event Structure

Each streaming event follows a consistent structure compatible with the OpenAI chat completions format:
```

Example 2 (unknown):
```unknown
### Core Fields

| Field     | Type    | Description                                           |
| --------- | ------- | ----------------------------------------------------- |
| `id`      | string  | Unique identifier for the stream event                |
| `object`  | string  | Always `"chat.completion.chunk"` for streaming events |
| `model`   | string  | The research model being used (`"mini"` or `"pro"`)   |
| `created` | integer | Unix timestamp when the event was created             |
| `choices` | array   | Array containing the delta with event details         |

## Event Types

The streaming response includes different types of events in the `delta` object. Here are the main event types you'll encounter:

### 1. Tool Call Events

When the research agent performs actions like web searches, you'll receive tool call events:
```

Example 3 (unknown):
```unknown
**Tool Call Delta Fields:**

| Field                 | Type   | Description                                                        |
| --------------------- | ------ | ------------------------------------------------------------------ |
| `type`                | string | Either `"tool_call"` or `"tool_response"`                          |
| `tool_call`           | array  | Details about the tool being invoked                               |
| `name`                | string | Name of the tool (see [Tool Types](#tool-types) below)             |
| `id`                  | string | Unique identifier for the tool call                                |
| `arguments`           | string | Description of the action being performed                          |
| `queries`             | array  | *(WebSearch only)* The search queries being executed               |
| `parent_tool_call_id` | string | *(Pro mode only)* ID of the parent tool call for nested operations |

### 2. Tool Response Events

After a tool executes, you'll receive response events with discovered sources:
```

Example 4 (unknown):
```unknown
**Tool Response Fields:**

| Field                 | Type   | Description                                                     |
| --------------------- | ------ | --------------------------------------------------------------- |
| `name`                | string | Name of the tool that completed                                 |
| `id`                  | string | Unique identifier matching the original tool call               |
| `arguments`           | string | Completion status message                                       |
| `sources`             | array  | Sources discovered by the tool (with `url`, `title`, `favicon`) |
| `parent_tool_call_id` | string | *(Pro mode only)* ID of the parent tool call                    |

### 3. Content Events

The final research report is streamed as content chunks:
```

---

## --- Function that will be called when AI requests a search ---

**URL:** llms-txt#----function-that-will-be-called-when-ai-requests-a-search----

def tavily_search(**kwargs):
    """
    Execute a Tavily web search with the given parameters.
    This function is called by the AI when it needs to search the web.
    """
    results = tavily_client.search(**kwargs)
    return results
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown

```

---

## Step 2. Creating a streaming research task

**URL:** llms-txt#step-2.-creating-a-streaming-research-task

**Contents:**
  - JavaScript Example
- Structured Output with Streaming
- Error Handling
- Non-Streaming Alternative

stream = tavily_client.research(
    input="Research the latest developments in AI",
    model="pro",
    stream=True
)

for chunk in stream:
    print(chunk.decode('utf-8'))
javascript theme={null}
const { tavily } = require("@tavily/core");

const tvly = tavily({ apiKey: "tvly-YOUR_API_KEY" });

const stream = await tvly.research("Research the latest developments in AI", {
  model: "pro",
  stream: true,
});

for await (const chunk of result as AsyncGenerator<Buffer, void, unknown>) {
    console.log(chunk.toString('utf-8'));
}
json theme={null}
{
  "delta": {
    "role": "assistant",
    "content": {
      "company": "Acme Corp",
      "key_metrics": ["Revenue: $1M", "Growth: 50%"],
      "summary": "Company showing strong growth..."
    }
  }
}
json theme={null}
{
  "id": "1d77bdf5-38a4-46c1-87a6-663dbc4528ec",
  "object": "error",
  "error": "An error occurred while streaming the research task"
}
json theme={null}
{
  "request_id": "123e4567-e89b-12d3-a456-426614174111",
  "created_at": "2025-01-15T10:30:00Z",
  "status": "pending",
  "input": "What are the latest developments in AI?",
  "model": "mini",
  "response_time": 1.23
}
```

You can then poll the status endpoint to check when the research is complete.

**Examples:**

Example 1 (unknown):
```unknown
### JavaScript Example
```

Example 2 (unknown):
```unknown
## Structured Output with Streaming

When using `output_schema` to request structured data, the `content` field will contain an object instead of a string:
```

Example 3 (unknown):
```unknown
## Error Handling

If an error occurs during streaming, you may receive an error event:
```

Example 4 (unknown):
```unknown
Always implement proper error handling in your streaming client to gracefully handle these cases.

## Non-Streaming Alternative

If you don't need real-time updates, set `stream: false` (or omit the parameter) to receive a single complete response:
```

---

## Form the crew and execute the task

**URL:** llms-txt#form-the-crew-and-execute-the-task

**Contents:**
  - Customizing search tool parameters

crew = Crew(
    agents=[researcher],
    tasks=[research_task],
    verbose=True
)

result = crew.kickoff()
print(result)
python theme={null}
from crewai_tools import TavilySearchTool

**Examples:**

Example 1 (unknown):
```unknown
### Customizing search tool parameters

**Example:**
```

---

## Crawl to RAG

**URL:** llms-txt#crawl-to-rag

**Contents:**
- The system operates through a two-step process:
  - 1. Website Crawling & Vectorization:
  - 2. Intelligent Q\&A Interface:
- Try Our Crawl to RAG Use Case
  - Step 1: Get Your API Key
  - Step 2: Chat with Tavily
  - Step 3: Read The Open Source Code
- Features

Source: https://docs.tavily.com/examples/use-cases/crawl-to-rag

Turn Any Website into a Searchable Knowledge Base using Tavily and MongoDB.

## The system operates through a two-step process:

### 1. Website Crawling & Vectorization:

Use Tavily's crawling endpoint to extract and sitemap content from a webpage URL, then embed it into a MongoDB Atlas vector index for retrieval.

<img alt="Vectorize" />

### 2. Intelligent Q\&A Interface:

Query your crawled data through a conversational agent that provides citation-backed answers while maintaining conversation history and context. The agent intelligently distinguishes between informational questions (requiring vector search) and conversational queries (using general knowledge).

<img alt="Chat with vector" />

## Try Our Crawl to RAG Use Case

### Step 1: Get Your API Key

<Card title="Get your Tavily API key" icon="key" href="https://app.tavily.com" />

### Step 2: Chat with Tavily

<Card title="Launch the application" icon="message-bot" href="https://crawl-to-rag.tavily.com/" />

### Step 3: Read The Open Source Code

<Card title="View Github Repository" icon="github" href="https://github.com/tavily-ai/crawl2rag" />

1. **Advanced Web Crawling**: Deep website content extraction using Tavily's crawling API
2. **Vector Search**: MongoDB Atlas vector search with OpenAI embeddings for semantic content retrieval
3. **Smart Question Routing**: Automatic detection of informational vs. conversational queries
4. **Persistent Memory**: Conversation history and context preservation using LangGraph-MongoDB checkpointing
5. **Session Management**: Thread-based conversational persistance and vector store management

---

## Agno

**URL:** llms-txt#agno

**Contents:**
- Introduction
- Step-by-Step Integration Guide
  - Step 1: Install Required Packages
  - Step 2: Set Up API Keys
  - Step 3: Initialize Agno Agent with Tavily Tools

Source: https://docs.tavily.com/documentation/integrations/agno

Tavily is now available for integration through Agno.

Integrate [Tavily with Agno](https://docs.agno.com/tools/toolkits/search/tavily#tavily) to enhance your AI agents with powerful web search capabilities. Agno provides a lightweight library for building agents with memory, knowledge, tools, and reasoning, making it easy to incorporate real-time web search and data extraction into your AI applications.

## Step-by-Step Integration Guide

### Step 1: Install Required Packages

Install the necessary Python packages:

### Step 2: Set Up API Keys

* **Tavily API Key:** [Get your Tavily API key here](https://app.tavily.com/home)
* **OpenAI API Key:** [Get your OpenAI API key here](https://platform.openai.com/account/api-keys)

Set these as environment variables in your terminal or add them to your environment configuration file:

### Step 3: Initialize Agno Agent with Tavily Tools

```python theme={null}
from agno.agent import Agent
from agno.tools.tavily import TavilyTools
import os

**Examples:**

Example 1 (unknown):
```unknown
### Step 2: Set Up API Keys

* **Tavily API Key:** [Get your Tavily API key here](https://app.tavily.com/home)
* **OpenAI API Key:** [Get your OpenAI API key here](https://platform.openai.com/account/api-keys)

Set these as environment variables in your terminal or add them to your environment configuration file:
```

Example 2 (unknown):
```unknown
### Step 3: Initialize Agno Agent with Tavily Tools
```

---

## Now the AI has the search results and can provide an informed response

**URL:** llms-txt#now-the-ai-has-the-search-results-and-can-provide-an-informed-response

response = openai_client.responses.create(
    model="gpt-4o-mini",
    instructions="Based on the Tavily search results provided, give me a comprehensive summary with citations.",
    input=input_list,
)

---

## Google ADK

**URL:** llms-txt#google-adk

**Contents:**
- Introduction
- Prerequisites
- Installation
- Building Your Agent
  - Step 1: Create an Agent Project
  - Step 2: Update Your Agent Code
  - Step 3: Set Your API Keys
  - Step 4: Run Your Agent
- Example Usage
- Available Tools

Source: https://docs.tavily.com/documentation/integrations/google-adk

Connect your Google ADK agent to Tavily's AI-focused search, extraction, and crawling platform for real-time web intelligence.

The Tavily MCP Server connects your ADK agent to Tavily's AI-focused search, extraction, and crawling platform. This gives your agent the ability to perform real-time web searches, intelligently extract specific data from web pages, and crawl or create structured maps of websites.

Before you begin, make sure you have:

* Python 3.9 or later
* pip for installing packages
* A [Tavily API key](https://app.tavily.com/home) (sign up for free if you don't have one)
* A [Gemini API key](https://aistudio.google.com/app/apikey) for Google AI Studio

Install ADK by running:

## Building Your Agent

### Step 1: Create an Agent Project

Run the `adk create` command to start a new agent project:

This creates a new directory with the following structure:

### Step 2: Update Your Agent Code

Edit the `my_agent/agent.py` file to integrate Tavily. Choose either **Remote MCP Server** or **Local MCP Server**:

### Step 3: Set Your API Keys

Update the `my_agent/.env` file with your API keys:

Or manually edit the `.env` file:

### Step 4: Run Your Agent

You can run your ADK agent in two ways:

#### Run with Command-Line Interface

Run your agent using the `adk run` command:

This starts an interactive command-line interface where you can chat with your agent and test Tavily's capabilities.

#### Run with Web Interface

Start the ADK web interface for a visual testing experience:

**Note:** Run this command from the parent directory that contains your `my_agent/` folder. For example, if your agent is inside `agents/my_agent/`, run `adk web` from the `agents/` directory.

This starts a web server with a chat interface. Access it at `http://localhost:8000`, select your agent from the dropdown, and start chatting.

Once your agent is set up and running, you can interact with it through the command-line interface or web interface. Here's a simple example:

The agent automatically combines multiple Tavily tools to provide comprehensive answers, making it easy to explore websites and gather information without manual navigation.

<img alt="Tavily-ADK" />

Once connected, your agent gains access to Tavily's powerful web intelligence tools:

Execute a search query to find relevant information across the web.

Extract structured data from any web page. Extract text, links, and images from single pages or batch process multiple URLs efficiently.

Traverses websites like a graph and can explore hundreds of paths in parallel with intelligent discovery to generate comprehensive site maps.

Traversal tool that can explore hundreds of paths in parallel with built-in extraction and intelligent discovery.

**Examples:**

Example 1 (unknown):
```unknown
## Building Your Agent

### Step 1: Create an Agent Project

Run the `adk create` command to start a new agent project:
```

Example 2 (unknown):
```unknown
This creates a new directory with the following structure:
```

Example 3 (unknown):
```unknown
### Step 2: Update Your Agent Code

Edit the `my_agent/agent.py` file to integrate Tavily. Choose either **Remote MCP Server** or **Local MCP Server**:

<CodeGroup>
```

Example 4 (unknown):
```unknown

```

---

## Best Practices for Crawl

**URL:** llms-txt#best-practices-for-crawl

**Contents:**
- Crawl vs Map
  - Use Crawl when you need:
  - Use Map when you need:
- Crawl Parameters
  - Instructions
  - Chunks per Source
  - Depth and breadth
- Filtering and Focusing
  - Path patterns
  - Domain filtering

Source: https://docs.tavily.com/documentation/best-practices/best-practices-crawl

Learn how to optimize crawl parameters, focus your crawls, and efficiently extract content from websites.

Understanding when to use each API:

| Feature                | Crawl                        | Map                      |
| ---------------------- | ---------------------------- | ------------------------ |
| **Content extraction** | Full content                 | URLs only                |
| **Use case**           | Deep content analysis        | Site structure discovery |
| **Speed**              | Slower (extracts content)    | Faster (URLs only)       |
| **Best for**           | RAG, analysis, documentation | Sitemap generation       |

### Use Crawl when you need:

* Full content extraction from pages
* Deep content analysis
* Processing of paginated or nested content
* Extraction of specific content patterns
* Integration with RAG systems

### Use Map when you need:

* Quick site structure discovery
* URL collection without content extraction
* Sitemap generation
* Path pattern matching
* Domain structure analysis

Guide the crawl with natural language to focus on relevant content:

**When to use instructions:**

* To focus crawling on specific topics or content types
* When you need semantic filtering of pages
* For agentic use cases where relevance is critical

### Chunks per Source

Control the amount of content returned per page to prevent context window explosion:

* Returns only relevant content snippets (max 500 characters each) instead of full page content
* Prevents context window from exploding in agentic use cases
* Chunks appear in `raw_content` as: `<chunk 1> [...] <chunk 2> [...] <chunk 3>`

> `chunks_per_source` is only available when instructions are provided.

### Depth and breadth

| Parameter     | Description                                     | Impact                     |
| ------------- | ----------------------------------------------- | -------------------------- |
| `max_depth`   | How many levels deep to crawl from starting URL | Exponential latency growth |
| `max_breadth` | Maximum links to follow per page                | Horizontal spread          |
| `limit`       | Total maximum pages to crawl                    | Hard cap on pages          |

**Performance tip:** Each level of depth increases crawl time exponentially. Start with `max_depth=1` and increase as needed.

## Filtering and Focusing

Use regex patterns to include or exclude specific paths:

Control which domains to crawl:

Controls extraction quality vs. speed.

| Depth             | When to use                            |
| ----------------- | -------------------------------------- |
| `basic` (default) | Simple content, faster processing      |
| `advanced`        | Complex pages, tables, structured data |

### 1. Deep or Unlinked Content

Many sites have content that's difficult to access through standard means:

* Deeply nested pages not in main navigation
* Paginated archives (old blog posts, changelogs)
* Internal search-only content

### 2. Structured but Nonstandard Layouts

For content that's structured but not marked up in schema.org:

* Documentation
* Changelogs
* FAQs

### 3. Multi-modal Information Needs

When you need to combine information from multiple sections:

* Cross-referencing content
* Finding related information
* Building comprehensive knowledge bases

### 4. Rapidly Changing Content

For content that updates frequently:

* API documentation
* Product announcements
* News sections

### 5. Behind Auth / Paywalls

For content requiring authentication:

* Internal knowledge bases
* Customer help centers
* Gated documentation

### 6. Complete Coverage / Auditing

For comprehensive content analysis:

* Legal compliance checks
* Security audits
* Policy verification

### 7. Semantic Search or RAG Integration

For feeding content into LLMs or search systems:

* RAG systems
* Enterprise search
* Knowledge bases

### 8. Known URL Patterns

When you have specific paths to crawl:

* Sitemap-based crawling
* Section-specific extraction
* Pattern-based content collection

## Performance Optimization

### Depth vs. Performance

* Each level of depth increases crawl time exponentially
* Start with max\_depth: 1 and increase as needed
* Use max\_breadth to control horizontal expansion
* Set appropriate limit to prevent excessive crawling

* Respect site's robots.txt
* Implement appropriate delays between requests
* Monitor API usage and limits
* Use appropriate error handling for rate limits

## Integration with Map

Consider using Map before Crawl to:

1. Discover site structure
2. Identify relevant paths
3. Plan crawl strategy
4. Validate URL patterns

**Example workflow:**

1. Use Map to get site structure
2. Analyze paths and patterns
3. Configure Crawl with discovered paths
4. Execute focused crawl

* Discover site structure before crawling
* Identify relevant path patterns
* Avoid unnecessary crawling
* Validate URL patterns work correctly

* **Problem:** Setting `max_depth=4` or higher
* **Impact:** Exponential crawl time, unnecessary pages
* **Solution:** Start with 1-2 levels, increase only if needed

### Unfocused crawling

* **Problem:** No `instructions` provided, crawling entire site
* **Impact:** Wasted resources, irrelevant content, context explosion
* **Solution:** Use instructions to focus the crawl semantically

* **Problem:** No `limit` parameter set
* **Impact:** Runaway crawls, unexpected costs
* **Solution:** Always set a reasonable `limit` value

### Ignoring failed results

* **Problem:** Not checking which pages failed extraction
* **Impact:** Incomplete data, missed content
* **Solution:** Monitor failed results and adjust parameters

* Use instructions and chunks\_per\_source for focused, relevant results in agentic use cases
* Start with conservative parameters (`max_depth=1, max_breadth=20`)
* Use path patterns to focus crawling on relevant content
* Choose appropriate extract\_depth based on content complexity
* Set reasonable limits to prevent excessive crawling
* Monitor failed results and adjust patterns accordingly
* Use Map first to understand site structure
* Implement error handling for rate limits and failures
* Respect robots.txt and site policies
* Optimize for your use case (speed vs. completeness)
* Process results incrementally rather than waiting for full crawl

> Crawling is powerful but resource-intensive. Focus your crawls, start small, monitor results, and scale gradually based on actual needs.

**Examples:**

Example 1 (unknown):
```unknown
**When to use instructions:**

* To focus crawling on specific topics or content types
* When you need semantic filtering of pages
* For agentic use cases where relevance is critical

### Chunks per Source

Control the amount of content returned per page to prevent context window explosion:
```

Example 2 (unknown):
```unknown
**Key benefits:**

* Returns only relevant content snippets (max 500 characters each) instead of full page content
* Prevents context window from exploding in agentic use cases
* Chunks appear in `raw_content` as: `<chunk 1> [...] <chunk 2> [...] <chunk 3>`

> `chunks_per_source` is only available when instructions are provided.

### Depth and breadth

| Parameter     | Description                                     | Impact                     |
| ------------- | ----------------------------------------------- | -------------------------- |
| `max_depth`   | How many levels deep to crawl from starting URL | Exponential latency growth |
| `max_breadth` | Maximum links to follow per page                | Horizontal spread          |
| `limit`       | Total maximum pages to crawl                    | Hard cap on pages          |

**Performance tip:** Each level of depth increases crawl time exponentially. Start with `max_depth=1` and increase as needed.
```

Example 3 (unknown):
```unknown
## Filtering and Focusing

### Path patterns

Use regex patterns to include or exclude specific paths:
```

Example 4 (unknown):
```unknown
### Domain filtering

Control which domains to crawl:
```

---

## Extract location

**URL:** llms-txt#extract-location

text = "Company: Tavily, Location: New York"
match = re.search(r"Location: (\w+)", text)
location = match.group(1) if match else None  # "New York"

---

## Create a research task with a structured output schema

**URL:** llms-txt#create-a-research-task-with-a-structured-output-schema

**Contents:**
- Tavily Get Research
  - Available Parameters
  - Instantiation
  - Direct Tool Invocation

result = tavily_research.invoke({
    "input": "Research the latest developments in AI and summarize key trends.",
    "model": "mini",
    "citation_format": "apa",
})
python theme={null}
{
    "request_id": "test-request-123",
    "created_at": "2024-01-01T00:00:00Z",
    "status": "pending",
    "input": "Research the latest developments in AI and summarize key trends.",
    "model": "mini"
}
python theme={null}
from langchain_tavily import TavilyGetResearch

tavily_get_research = TavilyGetResearch()
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
Example non-streaming response:
```

Example 2 (unknown):
```unknown
If `stream=True` is set (either in the constructor or at invocation time), `invoke` returns a generator (for sync clients) or async generator (for async clients) that yields the research output as it is generated.

## Tavily Get Research

The Tavily Get Research tool retrieves the results of a previously created research task using its `request_id`.

### Available Parameters

* `request_id` (required, str): The unique identifier of the research task to retrieve.

### Instantiation
```

Example 3 (unknown):
```unknown
### Direct Tool Invocation
```

---

## Tavily Extract

**URL:** llms-txt#tavily-extract

Source: https://docs.tavily.com/documentation/api-reference/endpoint/extract

POST /extract
Extract web page content from one or more specified URLs using Tavily Extract.

---

## Frequently Asked Questions

**URL:** llms-txt#frequently-asked-questions

Source: https://docs.tavily.com/faq/faq

<Accordion title="What is Tavily?">
  Tavily allows your AI agent to access the web, securely, and at scale. Supercharge your AI agent with real-time search, scraping, and structured data retrieval in a single API call. Tavily simplifies the process of integrating dynamic web information into AI-driven solutions.
</Accordion>

<Accordion title="What APIs does Tavily offer?">
  Tavily offers three different endpoints:

* **Tavily Search API** - A search engine designed for AI agents, combining search and scraping capabilities.
  * **Tavily Extract API** - Scrape up to 20 URLs in a single API call.
  * **Tavily Crawl API** - Map and crawl domains efficiently.
</Accordion>

<Accordion title="What is Tavily Search API?">
  Tavily Search API is a specialized search engine designed for LLMs and AI agents. It provides real-time, customizable, and RAG-ready search results and extracted content, enabling AI applications to retrieve and process data efficiently.
</Accordion>

<Accordion title="How is Tavily Search API different from other search APIs?">
  **Traditional Search APIs:** Unlike Bing, Google, or SerpAPI, Tavily dynamically searches the web, reviews multiple sources, and extracts the most relevant content, delivering concise, ready-to-use information optimized for AI applications.

**AI Answer Engine APIs:** Unlike Perplexity Sonar API or OpenAI Web Search API, Tavily focuses on delivering high-quality, customizable search results. Developers control search depth, domain targeting, and content extraction. LLM-generated answers are optional, making Tavily a flexible, search-first solution adaptable to different use cases.
</Accordion>

#### Features & Benefits

<Accordion title="What are the key advantages of using Tavily Search API?">
  * **Built for AI** – Designed for AI workflows like Retrieval-Augmented Generation (RAG) with structured and customizable search.
  * **Customizable** – Control search depth, target specific domains, extract full page content, and get an LLM-generated response in one API call.
  * **Real-time & Reliable** – Delivers up-to-date and real-time results.
  * **Easy Integration** – Simple API setup with support for Python, JavaScript, LangChain, and LlamaIndex.
  * **Secure & Scalable** – SOC 2 certified, zero data retention, and built to handle high-volume workloads.
</Accordion>

<Accordion title="How does Tavily ensure the accuracy of its information?">
  Tavily uses advanced algorithms and NLP techniques to gather data from trusted, authoritative sources. Users can also prioritize preferred sources to enhance relevance.
</Accordion>

<Accordion title="How fast is Tavily Search API?">
  Tavily prioritizes speed and typically returns results within seconds. Complex queries involving extensive data retrieval may take slightly longer.
</Accordion>

<Accordion title="Can I test Tavily Search API before subscribing to a paid plan?">
  Yes! Tavily offers a free plan with limited monthly API calls, allowing you to test its capabilities before committing to a paid plan. No credit card is required.
</Accordion>

<Accordion title="What are the available pricing plans?">
  * **Free**: 1,000 credits/month
  * **Pay-as-you-go**: \$0.008 per credit
  * **Monthly plans**: \$0.0075 - \$0.005 per credit
  * **Enterprise**: Custom pricing and volume
</Accordion>

<Accordion title="When do my monthly API credits reset?">
  Your API credits reset on the first day of each month, regardless of the billing date. This ensures you start each month with a clean slate of credits to use for your searches.
</Accordion>

<Accordion title="How does plan upgrading or downgrading work?">
  When upgrading or downgrading your plan, charges are typically **prorated**.
  This means:

* **Upgrading**: If you upgrade mid-cycle, you'll only pay the difference for the remaining days in your billing period.
  * **Downgrading**: Downgrades take effect at the start of the next billing cycle, and you will continue on your current plan until the cycle ends.
</Accordion>

<Accordion title="Is Tavily free for students?">
  Yes! Tavily offers free access for students. Contact [support@tavily.com](mailto:support@tavily.com) for eligibility details.
</Accordion>

#### Integration & Usage

<Accordion title="How do I integrate Tavily into my application?">
  Tavily supports Python, Node.js, and cURL. The API is simple to set up—just sign up, [get your API key](https://app.tavily.com/home), and integrate it within minutes. Visit our [SDKs](/sdk) and [API Reference](/documentation/api-reference/introduction) for more guidance and information.
</Accordion>

<Accordion title="What is GPT Researcher, and how does it relate to Tavily?">
  GPT Researcher is an open-source, autonomous research agent powered by Tavily’s Search API. It automates the research process by retrieving, filtering, and synthesizing data from over 20 web sources per task.
</Accordion>

#### Support & Privacy

<Accordion title="What level of support does Tavily provide?">
  * **Paid Subscriptions** – Email support via [support@tavily.com](mailto:support@tavily.com).
  * **Enterprise Plan** – White-glove support including:
    * Personal Slack channel
    * Dedicated account manager
    * AI engineer for technical assistance and optimizations
    * Uptime and support SLAs
</Accordion>

<Accordion title="Where can I find Tavily’s privacy policy?">
  Tavily's privacy policy is available [here](https://tavily.com/privacy), outlining how data is handled and ensuring compliance with global regulations.
</Accordion>

<Accordion title="Where can I find Tavily’s knowledge base?">
  The [Tavily Help Center](https://help.tavily.com/) is a comprehensive knowledge base with detailed guides on how to use Tavily. You can search for the information you need, explore tutorials, and find answers to common questions.
</Accordion>

<Accordion title="How do I start using Tavily?">
  1. [Sign up for an account](https://tavily.com/)
  2. [Get your API key](https://app.tavily.com/home)
  3. Integrate it into your application using our Python or Node.js SDK.
  4. Start retrieving real-time search results!
</Accordion>

---

## Chat

**URL:** llms-txt#chat

**Contents:**
- Try Our Chatbot
  - Step 1: Get Your API Key
  - Step 2: Chat with Tavily
  - Step 3: Read The Open Source Code
- Features
- How Does It Work?

Source: https://docs.tavily.com/examples/use-cases/chat

Build a conversational chat agent with real-time web search, crawl, and extract capabilities using Tavily's API

<img alt="Tavily Chatbot Demo" />

### Step 1: Get Your API Key

<Card title="Get your Tavily API key" icon="key" href="https://app.tavily.com" />

### Step 2: Chat with Tavily

<Card title="Launch the application" icon="message-bot" href="https://chat.tavily.com" />

### Step 3: Read The Open Source Code

<Card title="View Github Repository" icon="github" href="https://github.com/tavily-ai/tavily-chat" />

1. **Fast Results**: Tavily's API delivers quick responses essential for real-time chat experiences.
2. **Intelligent Parameter Selection**: Dynamically select API parameters based on conversation context using LangChain integration. Specifically designed for agentic systems. All you need is a natural language input, no need to configure structured JSON for our API.
3. **Content Snippets**: Tavily provides compact summaries of search results in the `content` field, best for maintaining small context sizes in low latency, multi-turn applications.
4. **Source Attribution**: All search, extract, and crawl results include URLs, enabling easy implementation of citations for transparency and credibility in responses.

The chatbot uses a simple ReAct architecture to manage conversation flow and decision-making. Here's how the core components work together:

The workflow consists of several key components:

<AccordionGroup>
  <Accordion title="1. Code Snippet: Graph Structure">
    The chatbot uses LangGraph MemorySaver to manage conversation flow. The graph structure conrtols how messages are processed and routed.

<Tip>
      This code snippet is not meant to run standalone. View the full implementation in our [github repository](https://github.com/tavily-ai/tavily-chat).
    </Tip>

<Accordion title="2. Routing Logic">
    The router decides whether to use base knowledge or perform a Tavily web search, extract, or crawl based on:

* Question complexity
    * Need for current information
    * Available conversation context
  </Accordion>

<Accordion title="3. Memory Management">
    The chatbot maintains conversation history using a memory system that:

* Preserves context across multiple exchanges
    * Stores relevant search results for future reference
    * Manages system prompts and initialization
  </Accordion>

<Accordion title="4. Real-time Search Integration">
    When Tavily access is needed, the chatbot:

* Performs targeted web search, extract, or crawl using the LangChain integration
    * Includes source citations
  </Accordion>

<Accordion title="5. Streaming Updates">
    Users receive real-time updates on:

* Search progress
    * Response generation
    * Source processing
  </Accordion>
</AccordionGroup>

---

## LangChain

**URL:** llms-txt#langchain

**Contents:**
- Installation
  - Credentials
- Tavily Search
  - Available Parameters
  - Instantiation
  - Invoke directly with args
  - Direct Tool Invocation

Source: https://docs.tavily.com/documentation/integrations/langchain

We're excited to partner with Langchain as their recommended search tool!

> **Warning**: The [`langchain_community.tools.tavily_search.tool`](https://python.langchain.com/docs/integrations/tools/tavily_search/) is deprecated. While it remains functional for now, we strongly recommend migrating to the new `langchain-tavily` Python package which supports [Search](#tavily-search), [Extract](#tavily-extract), [Map](#tavily-mapcrawl), and [Crawl](#tavily-mapcrawl) functionality and receives continuous updates with the latest features.

The [langchain-tavily](https://pypi.org/project/langchain-tavily/) Python package is the official LangChain integration of Tavily, including [Search](#tavily-search), [Extract](#tavily-extract), [Map](#tavily-mapcrawl), and [Crawl](#tavily-mapcrawl) functionality.

We also need to set our Tavily API key. You can get an API key by visiting [this site](https://app.tavily.com/sign-in) and creating an account.

Here we show how to instantiate the Tavily search tool. This tool allows you to complete search queries using Tavily's Search API endpoint.

### Available Parameters

The Tavily Search API accepts various parameters to customize the search:

* `max_results` (optional, int): Maximum number of search results to return. Default is 5.
* `topic` (optional, str): Category of the search. Can be "general", "news", or "finance". Default is "general".
* `include_answer` (optional, bool): Include an answer to original query in results. Default is False.
* `include_raw_content` (optional, bool): Include cleaned and parsed HTML of each search result. Default is False.
* `include_images` (optional, bool): Include a list of query related images in the response. Default is False.
* `include_image_descriptions` (optional, bool): Include descriptive text for each image. Default is False.
* `search_depth` (optional, str): Depth of the search, either "basic" or "advanced". Default is "basic".
* `time_range` (optional, str): The time range back from the current date ( publish date ) to filter results - "day", "week", "month", or "year". Default is None.
* `start_date` (optional, str): Will return all results after the specified start date ( publish date ). Required to be written in the format YYYY-MM-DD. Default is None.
* `end_date` (optional, str): Will return all results before the specified end date. Required to be written in the format YYYY-MM-DD. Default is None.
* `include_domains` (optional, List\[str]): List of domains to specifically include. Maximum 300 domains. Default is None.
* `exclude_domains` (optional, List\[str]): List of domains to specifically exclude. Maximum 150 domains. Default is None.
* `include_usage` (optional, bool): Whether to include credit usage information in the response. Default is False.

For a comprehensive overview of the available parameters, refer to the [Tavily Search API documentation](https://docs.tavily.com/documentation/api-reference/endpoint/search)

### Invoke directly with args

The Tavily search tool accepts the following arguments during invocation:

* `query` (required): A natural language search query
* The following arguments can also be set during invocation: `include_images`, `search_depth`, `time_range`, `include_domains`, `exclude_domains`, `start_date`, `end_date`
* For reliability and performance reasons, certain parameters that affect response size cannot be modified during invocation: `include_answer` and `include_raw_content`. These limitations prevent unexpected context window issues and ensure consistent results.

NOTE: The optional arguments are available for agents to dynamically set. If you set an argument during instantiation and then invoke the tool with a different value, the tool will use the value you passed during invocation.

### Direct Tool Invocation

```python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
### Credentials

We also need to set our Tavily API key. You can get an API key by visiting [this site](https://app.tavily.com/sign-in) and creating an account.
```

Example 2 (unknown):
```unknown
## Tavily Search

Here we show how to instantiate the Tavily search tool. This tool allows you to complete search queries using Tavily's Search API endpoint.

### Available Parameters

The Tavily Search API accepts various parameters to customize the search:

* `max_results` (optional, int): Maximum number of search results to return. Default is 5.
* `topic` (optional, str): Category of the search. Can be "general", "news", or "finance". Default is "general".
* `include_answer` (optional, bool): Include an answer to original query in results. Default is False.
* `include_raw_content` (optional, bool): Include cleaned and parsed HTML of each search result. Default is False.
* `include_images` (optional, bool): Include a list of query related images in the response. Default is False.
* `include_image_descriptions` (optional, bool): Include descriptive text for each image. Default is False.
* `search_depth` (optional, str): Depth of the search, either "basic" or "advanced". Default is "basic".
* `time_range` (optional, str): The time range back from the current date ( publish date ) to filter results - "day", "week", "month", or "year". Default is None.
* `start_date` (optional, str): Will return all results after the specified start date ( publish date ). Required to be written in the format YYYY-MM-DD. Default is None.
* `end_date` (optional, str): Will return all results before the specified end date. Required to be written in the format YYYY-MM-DD. Default is None.
* `include_domains` (optional, List\[str]): List of domains to specifically include. Maximum 300 domains. Default is None.
* `exclude_domains` (optional, List\[str]): List of domains to specifically exclude. Maximum 150 domains. Default is None.
* `include_usage` (optional, bool): Whether to include credit usage information in the response. Default is False.

For a comprehensive overview of the available parameters, refer to the [Tavily Search API documentation](https://docs.tavily.com/documentation/api-reference/endpoint/search)

### Instantiation
```

Example 3 (unknown):
```unknown
### Invoke directly with args

The Tavily search tool accepts the following arguments during invocation:

* `query` (required): A natural language search query
* The following arguments can also be set during invocation: `include_images`, `search_depth`, `time_range`, `include_domains`, `exclude_domains`, `start_date`, `end_date`
* For reliability and performance reasons, certain parameters that affect response size cannot be modified during invocation: `include_answer` and `include_raw_content`. These limitations prevent unexpected context window issues and ensure consistent results.

NOTE: The optional arguments are available for agents to dynamically set. If you set an argument during instantiation and then invoke the tool with a different value, the tool will use the value you passed during invocation.

### Direct Tool Invocation
```

---

## Example 4: News aggregation

**URL:** llms-txt#example-4:-news-aggregation

**Contents:**
- Additional Use Cases

agent.print_response(
    "Gather the latest news about artificial intelligence from tech news websites "
    "published in the last week",
    markdown=True
)
```

## Additional Use Cases

1. **Content Curation**: Gather and organize information from multiple sources
2. **Real-time Data Integration**: Keep your AI agents up-to-date with the latest information
3. **Technical Documentation**: Search and analyze technical documentation
4. **Market Analysis**: Conduct comprehensive market research and analysis

---

## Zapier

**URL:** llms-txt#zapier

**Contents:**
- Introduction
- How to set up Tavily with Zapier
- Use cases for Tavily in Zapier
- Detailed example - company research
- Best practices

Source: https://docs.tavily.com/documentation/integrations/zapier

Tavily is now available for no-code integration through Zapier.

No need to write a single line of code to connect Tavily to your business processes. With Tavily's robust search capabilities, you can pull in the latest online information into any application or workflow.

Simply set up [**Tavily in Zapier**](https://zapier.com/apps/tavily/integrations) to automate research, track real-time news, or feed relevant data into your tools of choice.

## How to set up Tavily with Zapier

<AccordionGroup>
  <Accordion title="Step 1: Log in to Zapier">
    <p><a href="https://zapier.com/sign-up">Log in</a> to your Zapier account.</p>
  </Accordion>

<Accordion title="Step 2: Create a Zap and Select a Trigger Event">
    <p>Create a new Zap and select a trigger event that will start your workflow.</p>
  </Accordion>

<Accordion title="Step 3: Add an Action Step with Tavily">
    <p>
      Add an action step with Tavily in your workflow:

<ul>
        <li><strong>Setup:</strong> Connect your Tavily account by pasting your API key.</li>
        <li><strong>Configure:</strong> Enter your search `query` along with optional parameters, such as selecting a `topic` (`general` or `news`), deciding whether to include raw content from the sources or an answer based on the content found, and specifying particular domains to run the search on.</li>
        <li><strong>Test:</strong> Test your query.</li>
      </ul>
    </p>
  </Accordion>

<Accordion title="Step 4: Use the Results and Answer Generated by Tavily">
    <p>
      Use the `results` and optionally the `answer` generated by Tavily in the rest of your workflow, such as:

<ul>
        <li>Sending up-to-date research to your CRM.</li>
        <li>Feeding real-time content into your language model (e.g., GPT models) for additional applications.</li>
        <li>Inserting dynamic info into an email automation tool.</li>
      </ul>
    </p>
  </Accordion>
</AccordionGroup>

## Use cases for Tavily in Zapier

With Tavily, you can harness the power of Retrieval-Augmented Generation (RAG) to create complex workflows. Here are some examples, for inspiration:

* **Automated Email Generation**: Use Tavily to create tailored emails based on real-time data.

* **Meeting Preparation**: Gather real-time information about meeting participants. For instance, before a client meeting, retrieve their latest news or social media updates and receive a concise summary through your preferred method, ensuring you’re well-informed.

* **Automated Reporting**: Utilize Tavily’s online search data to generate reports. Push this information into tools like **Google Sheets**, **Notion**, or **Slack** to create a weekly digest of industry trends or competitor analysis, keeping your team updated effortlessly.

## Detailed example - company research

We can build an automated workflow that executes brief company research for newly signed-up companies and delivers the report via Slack.

<Accordion title="Workflow Steps">
  <ol>
    <li><strong>Trigger Event:</strong> A new company is created in your CRM.</li>
    <li><strong>Conduct Company Search:</strong> Use Tavily to perform a general search using the company's domain (provided by the CRM).</li>
    <li><strong>Retrieve Current Date:</strong> Capture the current date and pass it to the LLM in the next step.</li>
    <li><strong>Generate Search Queries:</strong> Request the LLM to create 3 concise search queries for Tavily to obtain additional information about the company (e.g., industry, ARR, CEO, CTO). Include the previously gathered data from the company website as context to prevent redundancy. Ask the LLM to incorporate important keywords related to the company to avoid retrieving information about a different company with the same name but in a different industry or domain.</li>
    <li><strong>Organize Queries:</strong> Format the generated queries into separate fields for use in distinct steps.</li>
    <li><strong>Configure Queries:</strong> Set up the 3 queries in Tavily across 3 individual steps.</li>
    <li><strong>Extract Structured Data:</strong> Instruct the LLM to fill in specific details about the company from the gathered data and indicate the sources used for verification. Additionally, instruct the LLM to use the sources extracted from the domain as the ground truth.</li>
    <li><strong>Refine Information:</strong> Format the information for clarity and professionalism.</li>
    <li><strong>Send to Slack:</strong> Deliver the final message to Slack for easy access and sharing.</li>
  </ol>

<img alt="zap" />
</Accordion>

To use Tavily most efficiently in your Zapier workflows, keep the following guidelines in mind when designing your automations:

* Create concise queries for Tavily, and if needed, create multiple Tavily steps.
* If up-to-date news information is required, configure "news" as your topic.
* Add the current date to your queries for relevant, updated information.
* Consider using specific domains to narrow down search results.
* Use an LLM to generate queries for Tavily to enable a more agentic workflow.

---

## n8n

**URL:** llms-txt#n8n

**Contents:**
- Introduction
- How to set up Tavily with n8n
- Use cases for Tavily in n8n
- Detailed example – Automated job search
- Best practices

Source: https://docs.tavily.com/documentation/integrations/n8n

Tavily is now available for no-code integration through n8n.

Integrate Tavily with n8n to enhance your workflows with real-time web search and content extraction—without writing code. With Tavily's powerful search and extraction capabilities, you can seamlessly integrate up-to-date online information into your n8n automations.

<Frame>
  <img alt="n8n" />
</Frame>

## How to set up Tavily with n8n

<AccordionGroup>
  <Accordion title="Step 1: Log in to n8n">
    <p><a href="https://n8n.io/">Log in</a> to your n8n account or self-hosted instance.</p>
  </Accordion>

<Accordion title="Step 2: Create a New Workflow">
    <p>Create a new workflow and select a trigger node to start your automation.</p>
  </Accordion>

<Accordion title="Step 3: Add Tavily to Your Workflow">
    <div>
      <p>
        <strong>Option 1: Add Tavily as a Node</strong><br />
        In the node library, search for <strong>Tavily</strong>. Add it to your workflow and choose between <strong>Search</strong> or <strong>Extract</strong> actions.
      </p>

<p>
        <strong>Option 2: Add Tavily as a Tool to an AI Agent</strong><br />
        If you are building an AI agent workflow, you can add Tavily as a tool to your agent. This allows your agent to use Tavily for web search or content extraction as part of its reasoning process.
      </p>

<p><strong>Connection:</strong> Connect your Tavily account by entering your <a href="https://app.tavily.com/home">Tavily API key</a>.</p>
      <p><strong>Configuration:</strong> Set up your parameters:</p>
      <p><strong>For Search:</strong></p>

<ul>
        <li>Enter your search <code>query</code> (can be manually entered or populated from another node's output)</li>
        <li>Select a <code>topic</code> ("general" or "news")</li>
        <li>Choose whether to include raw content or generate an answer</li>
        <li>Specify domains to include or exclude</li>
        <li>Set search depth and other optional parameters</li>
      </ul>

<p><strong>For Extract:</strong></p>

<ul>
        <li>Enter the URL(s) to extract content from (can be a single URL or multiple URLs from another node's output)</li>
        <li>Choose extraction type ("basic" or "advanced")</li>
      </ul>

<p><strong>Test:</strong> Run a test to verify your configuration.</p>
    </div>
  </Accordion>

<Accordion title="Step 4: Process and Use Tavily Results">
    <div>
      <p>Utilize the search or extraction results in your workflow:</p>

<ul>
        <li>Process data through additional nodes</li>
        <li>Send information to your CRM, database, or email</li>
        <li>Generate reports or notifications</li>
        <li>Feed data into AI models for further processing</li>
      </ul>
    </div>
  </Accordion>
</AccordionGroup>

## Use cases for Tavily in n8n

Leverage Tavily's capabilities to create powerful automated workflows:

* **Job Search Automation**: Find and summarize new job postings, then send results to your inbox
* **Competitive Intelligence**: Automatically gather and analyze competitor information
* **Market Research**: Track industry trends and market developments
* **Content Curation**: Collect and organize relevant content for your business
* **Lead Enrichment**: Enhance lead data with real-time information
* **News Monitoring**: Stay updated with the latest developments in your field

## Detailed example – Automated job search

Create an automated workflow that uses an AI agent with Tavily as a tool for web search to find new "Software Engineering Intern Roles" on the web, summarizes the results, and sends them to your email.

<Accordion title="Workflow Steps">
  <ol>
    <li><strong>Trigger:</strong> Schedule the workflow to run daily or weekly</li>
    <li><strong>AI Agent:</strong> Add an AI agent node to your workflow</li>
    <li><strong>Add Tavily as a Tool:</strong> In the AI agent configuration, add Tavily as a tool for web search</li>
    <li><strong>Search:</strong> The AI agent uses Tavily to find new "Software Engineering Intern Roles"</li>
    <li><strong>Summarize:</strong> The AI agent summarizes the search results using its LLM capabilities</li>
    <li><strong>Email:</strong> Use the Email node to send the summarized results to your inbox</li>
  </ol>
</Accordion>

To optimize your Tavily integration in n8n:

* Use the SplitInBatches node to process multiple search results efficiently
* Use filters to process only relevant results
* Use the Merge node to combine multiple search results

---

## Composio

**URL:** llms-txt#composio

**Contents:**
- Introduction
- Step-by-Step Integration Guide
  - Step 1: Install Required Packages
  - Step 2: Set Up API Keys
  - Step 3: Connect Tavily to Composio

Source: https://docs.tavily.com/documentation/integrations/composio

Tavily is now available for integration through Composio.

Integrate Tavily with Composio to enhance your AI workflows with powerful web search capabilities. Composio provides a platform to connect your AI agents to external tools like Tavily, making it easy to incorporate real-time web search and data extraction into your applications.

## Step-by-Step Integration Guide

### Step 1: Install Required Packages

Install the necessary Python packages:

### Step 2: Set Up API Keys

* **OpenAI API Key:** [Get your OpenAI API key here](https://platform.openai.com/account/api-keys)
* **Composio API Key:** [Get your Composio API key here](https://app.composio.dev/dashboard)

Set these as environment variables in your terminal or add them to your environment configuration file:

### Step 3: Connect Tavily to Composio

```python theme={null}
from composio import Composio
from dotenv import load_dotenv

composio = Composio()

**Examples:**

Example 1 (unknown):
```unknown
### Step 2: Set Up API Keys

* **OpenAI API Key:** [Get your OpenAI API key here](https://platform.openai.com/account/api-keys)
* **Composio API Key:** [Get your Composio API key here](https://app.composio.dev/dashboard)

Set these as environment variables in your terminal or add them to your environment configuration file:
```

Example 2 (unknown):
```unknown
### Step 3: Connect Tavily to Composio
```

---

## Initialize clients

**URL:** llms-txt#initialize-clients

**Contents:**
- Implementation
  - System prompt
  - Tool schema
  - Tool execution
  - Main chat function
  - Usage example

client = Anthropic(api_key=os.environ["ANTHROPIC_API_KEY"])
tavily_client = TavilyClient(api_key=os.environ["TAVILY_API_KEY"])
MODEL_NAME = "claude-sonnet-4-20250514"
python theme={null}
SYSTEM_PROMPT = (
    "You are a research assistant. Use the tavily_search tool when needed. "
    "After tools run and tool results are provided back to you, produce a concise, well-structured summary "
    "with a short bullet list of key points and a 'Sources' section listing the URLs. "
)
python theme={null}
tools = [
    {
        "name": "tavily_search",
        "description": "Search the web using Tavily. Return relevant links & summaries.",
        "input_schema": {
            "type": "object",
            "properties": {
                "query": {"type": "string", "description": "Search query string."},
                "max_results": {"type": "integer", "default": 5},
                "search_depth": {"type": "string", "enum": ["basic", "advanced"]},
            },
            "required": ["query"]
        }
    }
]
python theme={null}
def tavily_search(**kwargs):
    return tavily_client.search(**kwargs)

def process_tool_call(name, args):
    if name == "tavily_search":
        return tavily_search(**args)
    raise ValueError(f"Unknown tool: {name}")
python theme={null}
def chat_with_claude(user_message: str):
    print(f"\n{'='*50}\nUser Message: {user_message}\n{'='*50}")

# ---- Call 1: allow tools so Claude can ask for searches ----
    initial_response = client.messages.create(
        model=MODEL_NAME,
        max_tokens=4096,
        system=SYSTEM_PROMPT,
        messages=[{"role": "user", "content": [{"type": "text", "text": user_message}]}],
        tools=tools,
    )

print("\nInitial Response stop_reason:", initial_response.stop_reason)
    print("Initial content:", initial_response.content)

# If Claude already answered in text, return it
    if initial_response.stop_reason != "tool_use":
        final_text = next((b.text for b in initial_response.content if getattr(b, "type", None) == "text"), None)
        print("\nFinal Response:", final_text)
        return final_text

# ---- Execute ALL tool_use blocks from Call 1 ----
    tool_result_blocks = []
    for block in initial_response.content:
        if getattr(block, "type", None) == "tool_use":
            result = process_tool_call(block.name, block.input)
            tool_result_blocks.append({
                "type": "tool_result",
                "tool_use_id": block.id,
                "content": [{"type": "text", "text": json.dumps(result)}],
            })

# ---- Call 2: NO tools; ask for the final summary from tool results ----
    final_response = client.messages.create(
        model=MODEL_NAME,
        max_tokens=4096,
        system=SYSTEM_PROMPT,
        messages=[
            {"role": "user", "content": [{"type": "text", "text": user_message}]},
            {"role": "assistant", "content": initial_response.content},    # Claude's tool requests
            {"role": "user", "content": tool_result_blocks},    # Your tool results
            {"role": "user", "content": [{"type": "text", "text":
                "Please synthesize the final answer now based on the tool results above. "
                "Include 3–7 bullets and a 'Sources' section with URLs."}]},
        ],
    )

final_text = next((b.text for b in final_response.content if getattr(b, "type", None) == "text"), None)
    print("\nFinal Response:", final_text)
    return final_text
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
## Implementation

### System prompt

Define a system prompt to guide Claude's behavior:
```

Example 2 (unknown):
```unknown
### Tool schema

Define the Tavily search tool for Claude with enhanced parameters:
```

Example 3 (unknown):
```unknown
<a href="#schemas">Scroll to the bottom to find the full json schema for search, extract, map and crawl</a>

### Tool execution

Create optimized functions to handle Tavily searches:
```

Example 4 (unknown):
```unknown
### Main chat function

The main function that handles the two-step conversation with Claude:
```

---

## Tavily Map

**URL:** llms-txt#tavily-map

Source: https://docs.tavily.com/documentation/api-reference/endpoint/map

POST /map
Tavily Map traverses websites like a graph and can explore hundreds of paths in parallel with intelligent discovery to generate comprehensive site maps.

---

## Initialize the Tavily Search tool

**URL:** llms-txt#initialize-the-tavily-search-tool

tavily_search = TavilySearch(max_results=5, topic="general")

---

## Define the tool for Tavily web search

**URL:** llms-txt#define-the-tool-for-tavily-web-search

---

## Pydantic AI

**URL:** llms-txt#pydantic-ai

**Contents:**
- Introduction
- Step-by-Step Integration Guide
  - Step 1: Install Required Packages
  - Step 2: Set Up API Keys
  - Step 3: Initialize Pydantic AI Agent with Tavily Tools

Source: https://docs.tavily.com/documentation/integrations/pydantic-ai

Tavily is now available for integration through Pydantic AI.

Integrate[Tavily with Pydantic AI](https://ai.pydantic.dev/common-tools/#tavily-search-tool) to enhance your AI agents with powerful web search capabilities. Pydantic AI provides a framework for building AI agents with tools, making it easy to incorporate real-time web search and data extraction into your applications.

## Step-by-Step Integration Guide

### Step 1: Install Required Packages

Install the necessary Python packages:

### Step 2: Set Up API Keys

* **Tavily API Key:** [Get your Tavily API key here](https://app.tavily.com/home)

Set this as an environment variable in your terminal or add it to your environment configuration file:

### Step 3: Initialize Pydantic AI Agent with Tavily Tools

```python theme={null}
import os
from pydantic_ai.agent import Agent
from pydantic_ai.common_tools.tavily import tavily_search_tool

**Examples:**

Example 1 (unknown):
```unknown
### Step 2: Set Up API Keys

* **Tavily API Key:** [Get your Tavily API key here](https://app.tavily.com/home)

Set this as an environment variable in your terminal or add it to your environment configuration file:
```

Example 2 (unknown):
```unknown
### Step 3: Initialize Pydantic AI Agent with Tavily Tools
```

---

## Map a website structure

**URL:** llms-txt#map-a-website-structure

**Contents:**
  - Tavily Crawl

result = tavily_map.invoke({
    "url": "https://docs.example.com",
    "instructions": "Find all documentation and tutorial pages"
})
python theme={null}
{
    'base_url': 'https://docs.example.com',
    'results': [
        'https://docs.example.com',
        'https://docs.example.com/api',
        'https://docs.example.com/tutorials',
        'https://docs.example.com/api/endpoints',
        'https://docs.example.com/tutorials/getting-started'
    ],
    'request_id': 'req_abc123',
    'response_time': 2.1
}
python theme={null}
from langchain_tavily import TavilyCrawl

tool = TavilyCrawl()
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
Example output:
```

Example 2 (unknown):
```unknown
### Tavily Crawl

The Crawl tool extracts full content from URLs. It works perfectly with mapped URLs or can be used standalone to crawl from a starting point.

#### Available Parameters

* `url` (required, str): The root URL to begin the crawl.
* `instructions` (optional, str): Natural language instructions guiding content extraction.

For a comprehensive overview, refer to the [Tavily Crawl API documentation](https://docs.tavily.com/documentation/api-reference/endpoint/crawl)

#### Instantiation
```

Example 3 (unknown):
```unknown
#### Direct Tool Invocation
```

---

## Extract all emails

**URL:** llms-txt#extract-all-emails

text = "Contact: john@example.com, support@tavily.com"
emails = re.findall(r"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}", text)
```

---

## CrewAI

**URL:** llms-txt#crewai

**Contents:**
- Introduction
- Prerequisites
- Installation
- Setup

Source: https://docs.tavily.com/documentation/integrations/crewai

Integrate Tavily with CrewAI to build powerful AI agents that can search the web.

This guide shows you how to integrate Tavily with CrewAI to create sophisticated AI agents that can search the web and extract content. By combining CrewAI's multi-agent framework with Tavily's real-time web search capabilities, you can build AI systems that research, analyze, and process web information autonomously.

Before you begin, make sure you have:

* An OpenAI API key from [OpenAI Platform](https://platform.openai.com/)
* A Tavily API key from [Tavily Dashboard](https://app.tavily.com/sign-in)

Install the required packages:

> **Note:** The stable python versions to use with CrewAI are `Python >=3.10 and Python <3.13` .

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

## Example 2: Market research with multiple parameters

**URL:** llms-txt#example-2:-market-research-with-multiple-parameters

agent.print_response(
    "Analyze the competitive landscape of AI-powered customer service solutions in 2024, "
    "focusing on market leaders and emerging trends",
    markdown=True
)

---

## Get Research Task Status

**URL:** llms-txt#get-research-task-status

Source: https://docs.tavily.com/documentation/api-reference/endpoint/research-get

GET /research/{request_id}
Retrieve the status and results of a research task using its request ID.

---

## --- Step 2: First API call - AI decides to search ---

**URL:** llms-txt#----step-2:-first-api-call---ai-decides-to-search----

---

## Best Practices for Search

**URL:** llms-txt#best-practices-for-search

**Contents:**
- Query Optimization
  - Keep your query under 400 characters
  - Break complex queries into sub-queries
- Search Depth
  - Content types
  - Fast + Ultra-Fast
  - Using `search_depth=advanced`
- Filtering Results
  - By date
  - By topic

Source: https://docs.tavily.com/documentation/best-practices/best-practices-search

Learn how to optimize your queries, refine search filters, and leverage advanced parameters for better performance.

## Query Optimization

### Keep your query under 400 characters

Keep queries concise—under **400 characters**. Think of it as a query for an agent performing web search, not long-form prompts.

### Break complex queries into sub-queries

For complex or multi-topic queries, send separate focused requests:

The `search_depth` parameter controls the tradeoff between latency and relevance:

<Expandable title="Latency vs relevance chart">
  <img alt="Latency vs Relevance by Search Depth" />

*This chart is a heuristic and is not to scale.*
</Expandable>

| Depth        | Latency | Relevance | Content Type |
| ------------ | ------- | --------- | ------------ |
| `ultra-fast` | Lowest  | Lower     | Content      |
| `fast`       | Low     | Good      | Chunks       |
| `basic`      | Medium  | High      | Content      |
| `advanced`   | Higher  | Highest   | Chunks       |

| Type        | Description                                               |
| ----------- | --------------------------------------------------------- |
| **Content** | NLP-based summary of the page, providing general context  |
| **Chunks**  | Short snippets reranked by relevance to your search query |

Use **chunks** when you need highly targeted information aligned with your query. Use **content** when a general page summary is sufficient.

### Fast + Ultra-Fast

| Depth        | When to use                                                                                                                                                             |
| ------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `ultra-fast` | When latency is absolutely crucial. Delivers near-instant results, prioritizing speed over relevance. Ideal for real-time applications where response time is critical. |
| `fast`       | When latency is more important than relevance, but you want results in reranked chunks format. Good for applications that need quick, targeted snippets.                |
| `basic`      | A solid balance between relevance and latency. Best for general-purpose searches where you need quality results without the overhead of advanced processing.            |
| `advanced`   | When you need the highest relevance and are willing to trade off latency. Best for queries seeking specific, detailed information.                                      |

### Using `search_depth=advanced`

Best for queries seeking specific information:

| Parameter                 | Description                                             |
| ------------------------- | ------------------------------------------------------- |
| `time_range`              | Filter by relative time: `day`, `week`, `month`, `year` |
| `start_date` / `end_date` | Filter by specific date range (format: `YYYY-MM-DD`)    |

Use `topic` to filter by content type. Set to `news` for news sources (includes `published_date` metadata):

| Parameter         | Description                           |
| ----------------- | ------------------------------------- |
| `include_domains` | Limit to specific domains             |
| `exclude_domains` | Filter out specific domains           |
| `country`         | Boost results from a specific country |

<Note>Keep domain lists short and relevant for best results.</Note>

Limits results returned (default: `5`). Setting too high may return lower-quality results.

### `include_raw_content`

Returns full extracted page content. For comprehensive extraction, consider a two-step process:

1. Search to retrieve relevant URLs
2. Use [Extract API](/documentation/best-practices/best-practices-extract#2-two-step-process-search-then-extract) to get content

### `auto_parameters`

Tavily automatically configures parameters based on query intent. Your explicit values override automatic ones.

<Note>
  `auto_parameters` may set `search_depth` to `advanced` (2 credits). Set it
  manually to control cost.
</Note>

## Async & Performance

Use async calls for concurrent requests:

Leverage response metadata to refine results:

| Field         | Use case                           |
| ------------- | ---------------------------------- |
| `score`       | Filter/rank by relevance score     |
| `title`       | Keyword filtering on headlines     |
| `content`     | Quick relevance check              |
| `raw_content` | Deep analysis and regex extraction |

### Score-based filtering

The `score` indicates relevance between query and content. Higher is better, but the ideal threshold depends on your use case.

```python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
## Search Depth

The `search_depth` parameter controls the tradeoff between latency and relevance:

<Expandable title="Latency vs relevance chart">
  <img alt="Latency vs Relevance by Search Depth" />

  *This chart is a heuristic and is not to scale.*
</Expandable>

| Depth        | Latency | Relevance | Content Type |
| ------------ | ------- | --------- | ------------ |
| `ultra-fast` | Lowest  | Lower     | Content      |
| `fast`       | Low     | Good      | Chunks       |
| `basic`      | Medium  | High      | Content      |
| `advanced`   | Higher  | Highest   | Chunks       |

### Content types

| Type        | Description                                               |
| ----------- | --------------------------------------------------------- |
| **Content** | NLP-based summary of the page, providing general context  |
| **Chunks**  | Short snippets reranked by relevance to your search query |

Use **chunks** when you need highly targeted information aligned with your query. Use **content** when a general page summary is sufficient.

### Fast + Ultra-Fast

| Depth        | When to use                                                                                                                                                             |
| ------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `ultra-fast` | When latency is absolutely crucial. Delivers near-instant results, prioritizing speed over relevance. Ideal for real-time applications where response time is critical. |
| `fast`       | When latency is more important than relevance, but you want results in reranked chunks format. Good for applications that need quick, targeted snippets.                |
| `basic`      | A solid balance between relevance and latency. Best for general-purpose searches where you need quality results without the overhead of advanced processing.            |
| `advanced`   | When you need the highest relevance and are willing to trade off latency. Best for queries seeking specific, detailed information.                                      |

### Using `search_depth=advanced`

Best for queries seeking specific information:
```

Example 2 (unknown):
```unknown
## Filtering Results

### By date

| Parameter                 | Description                                             |
| ------------------------- | ------------------------------------------------------- |
| `time_range`              | Filter by relative time: `day`, `week`, `month`, `year` |
| `start_date` / `end_date` | Filter by specific date range (format: `YYYY-MM-DD`)    |
```

Example 3 (unknown):
```unknown
### By topic

Use `topic` to filter by content type. Set to `news` for news sources (includes `published_date` metadata):
```

Example 4 (unknown):
```unknown
### By domain

| Parameter         | Description                           |
| ----------------- | ------------------------------------- |
| `include_domains` | Limit to specific domains             |
| `exclude_domains` | Filter out specific domains           |
| `country`         | Boost results from a specific country |
```

---

## Best Practices for Extract

**URL:** llms-txt#best-practices-for-extract

**Contents:**
- Extract Parameters
  - Query
  - Chunks Per Source
- Extraction Approaches
  - Search with include\_raw\_content
  - Direct Extract API
- Extract Depth
  - Using `extract_depth=advanced`
- Advanced Filtering Strategies
  - Example: Score-based filtering

Source: https://docs.tavily.com/documentation/best-practices/best-practices-extract

Learn how to optimize content extraction, choose the right approach, and configure parameters for better performance.

## Extract Parameters

Use query to rerank extracted content chunks based on relevance:

**When to use query:**

* To extract only relevant portions of long documents
* When you need focused content instead of full page extraction
* For targeted information retrieval from specific URLs

> When `query` is provided, chunks are reranked based on relevance to the query.

### Chunks Per Source

Control the amount of content returned per URL to prevent context window explosion:

* Returns only relevant content snippets (max 500 characters each) instead of full page content
* Prevents context window from exploding
* Chunks appear in `raw_content` as: `<chunk 1> [...] <chunk 2> [...] <chunk 3>`
* Must be between 1 and 5 chunks per source

> `chunks_per_source` is only available when `query` is provided.

**Example with multiple URLs:**

This returns the 2 most relevant chunks from each URL, giving you focused, relevant content without overwhelming your context window.

## Extraction Approaches

### Search with include\_raw\_content

Enable include\_raw\_content=true in Search API calls to retrieve both search results and extracted content simultaneously.

* Quick prototyping
* Simple queries where search results are likely relevant
* Single API call convenience

### Direct Extract API

Use the Extract API when you want control over which specific URLs to extract from.

* You already have specific URLs to extract from
* You want to filter or curate URLs before extraction
* You need targeted extraction with query and chunks\_per\_source

**Key difference:** The main distinction is control, with Extract you choose exactly which URLs to extract from, while Search with `include_raw_content` extracts from all search results.

The `extract_depth` parameter controls extraction comprehensiveness:

| Depth             | Use case                                      |
| ----------------- | --------------------------------------------- |
| `basic` (default) | Simple text extraction, faster processing     |
| `advanced`        | Complex pages, tables, structured data, media |

### Using `extract_depth=advanced`

Best for content requiring detailed extraction:

**When to use advanced:**

* Dynamic content or JavaScript-rendered pages
* Tables and structured information
* Embedded media and rich content
* Higher extraction success rates needed

<Note>
  `extract_depth=advanced` provides better accuracy but increases latency and
  cost. Use `basic` for simple content.
</Note>

## Advanced Filtering Strategies

Beyond query-based filtering, consider these approaches for curating URLs before extraction:

| Strategy     | When to use                                    |
| ------------ | ---------------------------------------------- |
| Re-ranking   | Use dedicated re-ranking models for precision  |
| LLM-based    | Let an LLM assess relevance before extraction  |
| Clustering   | Group similar documents, extract from clusters |
| Domain-based | Filter by trusted domains before extracting    |
| Score-based  | Filter search results by relevance score       |

### Example: Score-based filtering

## Integration with Search

* **Search** to discover relevant URLs
* **Filter** by relevance score, domain, or content snippet
* **Re-rank** if needed using specialized models
* **Extract** from top-ranked sources with query and chunks\_per\_source
* **Validate** extracted content quality
* **Process** for your RAG or AI application

### Example end-to-end pipeline

1. **Use query and chunks\_per\_source** for targeted, focused extraction
2. **Choose Extract API** when you need control over which URLs to extract from
3. **Filter URLs** before extraction using scores, re-ranking, or domain trust
4. **Choose appropriate extract\_depth** based on content complexity
5. **Process URLs concurrently** with async operations for better performance
6. **Implement error handling** to manage failed extractions gracefully
7. **Validate extracted content** before downstream processing
8. **Optimize costs** by extracting only necessary content with chunks\_per\_source

> Start with query and chunks\_per\_source for targeted extraction. Filter URLs strategically, extract with appropriate depth, and handle errors gracefully for production-ready pipelines.

**Examples:**

Example 1 (unknown):
```unknown
**When to use query:**

* To extract only relevant portions of long documents
* When you need focused content instead of full page extraction
* For targeted information retrieval from specific URLs

> When `query` is provided, chunks are reranked based on relevance to the query.

### Chunks Per Source

Control the amount of content returned per URL to prevent context window explosion:
```

Example 2 (unknown):
```unknown
**Key benefits:**

* Returns only relevant content snippets (max 500 characters each) instead of full page content
* Prevents context window from exploding
* Chunks appear in `raw_content` as: `<chunk 1> [...] <chunk 2> [...] <chunk 3>`
* Must be between 1 and 5 chunks per source

> `chunks_per_source` is only available when `query` is provided.

**Example with multiple URLs:**
```

Example 3 (unknown):
```unknown
This returns the 2 most relevant chunks from each URL, giving you focused, relevant content without overwhelming your context window.

## Extraction Approaches

### Search with include\_raw\_content

Enable include\_raw\_content=true in Search API calls to retrieve both search results and extracted content simultaneously.
```

Example 4 (unknown):
```unknown
**When to use:**

* Quick prototyping
* Simple queries where search results are likely relevant
* Single API call convenience

### Direct Extract API

Use the Extract API when you want control over which specific URLs to extract from.
```

---

## Example 3: Technical documentation search

**URL:** llms-txt#example-3:-technical-documentation-search

agent.print_response(
    "Find the latest documentation and tutorials about Python async programming, "
    "focusing on asyncio and FastAPI",
    markdown=True
)

---

## LlamaIndex

**URL:** llms-txt#llamaindex

**Contents:**
- Install Tavily and LlamaIndex
- Usage

Source: https://docs.tavily.com/documentation/integrations/llamaindex

Search the web from LlamaIndex with Tavily.

<Note>
  This tool has a more extensive example use case documented in a Jupyter notebook [here](https://github.com/run-llama/llama_index/blob/main/llama-index-integrations/tools/llama-index-tools-tavily-research/examples/tavily.ipynb).
</Note>

## Install Tavily and LlamaIndex

The following dependencies are required to properly run the integration:

You can use access Tavily in LlamaIndex through the `TavilyToolSpec`.

Here is a simple use case that performs a web search with Tavily and generates an answer to the user's search query:

`search`: Search for relevant dynamic data based on a query. Returns a list of urls and their relevant content.

This loader is designed to be used as a way to load data as a Tool in an Agent. See [here](https://github.com/emptycrown/llama-hub/tree/main) for examples.

**Examples:**

Example 1 (unknown):
```unknown
## Usage

You can use access Tavily in LlamaIndex through the `TavilyToolSpec`.

Here is a simple use case that performs a web search with Tavily and generates an answer to the user's search query:
```

---

## Example 1: Basic search for news

**URL:** llms-txt#example-1:-basic-search-for-news

**Contents:**
- Additional Use Cases

result = agent.run_sync('Tell me the top news in the GenAI world, give me links.')
print(result.output)
markdown theme={null}
Here are some of the top recent news articles related to GenAI:

1. How CLEAR users can improve risk analysis with GenAI – Thomson Reuters
   Read more: https://legal.thomsonreuters.com/blog/how-clear-users-can-improve-risk-analysis-with-genai/
   (This article discusses how CLEAR's new GenAI-powered tool streamlines risk analysis by quickly summarizing key information from various public data sources.)

2. TELUS Digital Survey Reveals Enterprise Employees Are Entering Sensitive Data Into AI Assistants More Than You Think – FT.com
   Read more: https://markets.ft.com/data/announce/detail?dockey=600-202502260645BIZWIRE_USPRX____20250226_BW490609-1
   (This news piece highlights findings from a TELUS Digital survey showing that many enterprise employees use public GenAI tools and sometimes even enter sensitive data.)

3. The Essential Guide to Generative AI – Virtualization Review
   Read more: https://virtualizationreview.com/Whitepapers/2025/02/SNOWFLAKE-The-Essential-Guide-to-Generative-AI.aspx
   (This guide provides insights into how GenAI is revolutionizing enterprise strategies and productivity, with input from industry leaders.)
```

## Additional Use Cases

1. **Content Curation**: Gather and organize information from multiple sources
2. **Real-time Data Integration**: Keep your AI agents up-to-date with the latest information
3. **Technical Documentation**: Search and analyze technical documentation
4. **Market Analysis**: Conduct comprehensive market research and analysis

**Examples:**

Example 1 (unknown):
```unknown
Example Response:
```

---

## About

**URL:** llms-txt#about

**Contents:**
- Who are we?
- What is the Tavily Search Engine?
- Why choose Tavily?
- How does the Search API work?
- Getting started

Source: https://docs.tavily.com/documentation/about

<Note>
  Looking for a step-by-step tutorial to get started in under 5 minutes? Head to our [Quickstart guide](/guides/quickstart) and start coding!
</Note>

We're a team of AI researchers and developers passionate about helping you build the next generation of AI assistants.
Our mission is to empower individuals and organizations with accurate, unbiased, and factual information.

## What is the Tavily Search Engine?

Building an AI agent that leverages realtime online information is not a simple task. Scraping doesn't scale and requires expertise to refine, current search engine APIs don't provide explicit information to queries but simply potential related articles (which are not always related), and are not very customziable for AI agent needs. This is why we're excited to introduce the first search engine for AI agents - [Tavily](https://app.tavily.com).

Tavily is a search engine optimized for LLMs, aimed at efficient, quick and persistent search results. Unlike other search APIs such as Serp or Google, Tavily focuses on optimizing search for AI developers and autonomous AI agents. We take care of all the burden of searching, scraping, filtering and extracting the most relevant information from online sources. All in a single API call!

To try the API in action, you can now use our hosted version on our [API Playground](https://app.tavily.com/playground).

<Info>
  If you're an AI developer looking to integrate your application with our API, or seek increased API limits, [please reach out!](mailto:support@tavily.com)
</Info>

## Why choose Tavily?

Tavily shines where others fail, with a Search API optimized for LLMs.

<AccordionGroup>
  <Accordion title="Purpose-Built">
    Tailored just for LLM Agents, we ensure the search results are optimized for <a href="https://towardsdatascience.com/retrieval-augmented-generation-intuitively-and-exhaustively-explain-6a39d6fe6fc9">RAG</a>. We take care of all the burden in searching, scraping, filtering and extracting information from online sources. All in a single API call! Simply pass the returned search results as context to your LLM.
  </Accordion>

<Accordion title="Versatility">
    Beyond just fetching results, the Tavily Search API offers precision. With customizable search depths, domain management, and parsing HTML content controls, you're in the driver's seat.
  </Accordion>

<Accordion title="Performance">
    Committed to speed and efficiency, our API guarantees real-time and trusted information. Our team works hard to improve Tavily's performance over time.
  </Accordion>

<Accordion title="Integration-friendly">
    We appreciate the essence of adaptability. That's why integrating our API with your existing setup is a breeze. You can choose our [Python library](https://pypi.org/project/tavily-python/), [JavaScript package](https://www.npmjs.com/package/@tavily/core) or a simple API call. You can also use Tavily through any of our supported partners such as [LangChain](/integrations/langchain) and [LlamaIndex](/integrations/llamaindex).
  </Accordion>

<Accordion title="Transparent & Informative">
    Our detailed documentation ensures you're never left in the dark. From setup basics to nuanced features, we've got you covered.
  </Accordion>
</AccordionGroup>

## How does the Search API work?

Traditional search APIs such as Google, Serp and Bing retrieve search results based on a user query. However, the results are sometimes irrelevant to the goal of the search, and return simple URLs and snippets of content which are not always relevant. Because of this, any developer would need to then scrape the sites to extract relevant content, filter irrelevant information, optimize the content to fit LLM context limits, and more. This task is a burden and requires a lot of time and effort to complete. The Tavily Search API takes care of all of this for you in a single API call.

The Tavily Search API aggregates up to 20 sites per a single API call, and uses proprietary AI to score, filter and rank the top most relevant sources and content to your task, query or goal.
In addition, Tavily allows developers to add custom fields such as context and limit response tokens to enable the optimal search experience for LLMs.

Tavily can also help your AI agent make better decisions by including a short answer for cross-agent communication.

<Tip>
  With LLM hallucinations, it's crucial to optimize for RAG with the right context and information. This is where Tavily comes in, delivering accurate and precise information for your RAG applications.
</Tip>

[Sign up](https://app.tavily.com) for Tavily to get your API key. You get **1,000 free API Credits every month**. No credit card required.

<Card icon="key" href="https://app.tavily.com" title="Get your free API key">
  You get 1,000 free API Credits every month. **No credit card required.**
</Card>

Head to our [API Playground](https://app.tavily.com/playground) to familiarize yourself with our API.

To get started with Tavily's APIs and SDKs using code, head to our [Quickstart Guide](/guides/quickstart) and follow the steps.

<Note>
  Got questions? Stumbled upon an issue? Simply intrigued? Don't hesitate! Our support team is always on standby, eager to assist. Join us, dive deep, and redefine your search experience! [Contact us!](mailto:support@tavily.com)
</Note>

---

## Example 1: Basic search with default parameters

**URL:** llms-txt#example-1:-basic-search-with-default-parameters

agent.print_response("Latest developments in quantum computing", markdown=True)

---

## Make

**URL:** llms-txt#make

**Contents:**
- Introduction
- How to set up Tavily with Make
- Use cases for Tavily in Make
- Detailed example - automated market research
- Best practices

Source: https://docs.tavily.com/documentation/integrations/make

Tavily is now available for no-code integration through Make.

Integrate [Tavily with Make](https://www.make.com/en/integrations/tavily) to enhance your business processes without writing a single line of code. With Tavily's powerful search and content extraction capabilities, you can seamlessly integrate real-time online information into your Make workflows and automations.

<Frame>
  <img alt="Make-Tavily" />
</Frame>

## How to set up Tavily with Make

<AccordionGroup>
  <Accordion title="Step 1: Log in to Make">
    <p><a href="https://www.make.com/en/login">Log in</a> to your Make account.</p>
  </Accordion>

<Accordion title="Step 2: Create a New Scenario">
    <p>Create a new scenario and select a trigger module that will start your workflow.</p>
  </Accordion>

<Accordion title="Step 3: Add Tavily as an Action Module">
    <div>
      <p>Add Tavily as an action module in your scenario and choose between **Perform a Search** or **Extract Raw Content**:</p>

<p><strong>Connection:</strong> Connect your Tavily account by entering your [Tavily API key](https://app.tavily.com/home).</p>

<p><strong>Configuration:</strong> Set up your parameters:</p>

<p><strong>For Search:</strong></p>

<ul>
        <li>Enter your search `query` (can be manually entered or populated from another module's output)</li>
        <li>Select a `topic` (`general` or `news`)</li>
        <li>Choose whether to include raw content or generate an answer</li>
        <li>Specify domains to include or exclude</li>
        <li>Set search depth and other optional parameters</li>
      </ul>

<p><strong>For Extract:</strong></p>

<ul>
        <li>Enter the URL(s) to extract content from (can be a single URL or multiple URLs from another module's output)</li>
        <li>Choose extraction type (`basic` or `advanced`)</li>
      </ul>

<p><strong>Test:</strong> Run a test to verify your configuration.</p>
    </div>
  </Accordion>

<Accordion title="Step 4: Process and Use Tavily Results">
    <div>
      <p>Utilize the search results in your workflow:</p>

<ul>
        <li>Process data through additional modules</li>
        <li>Send information to your CRM or database</li>
        <li>Generate reports or notifications</li>
        <li>Feed data into AI models for further processing</li>
      </ul>
    </div>
  </Accordion>
</AccordionGroup>

## Use cases for Tavily in Make

Leverage Tavily's capabilities to create powerful automated workflows:

* **Competitive Intelligence**: Automatically gather and analyze competitor information
* **Market Research**: Track industry trends and market developments
* **Content Curation**: Collect and organize relevant content for your business
* **Lead Enrichment**: Enhance lead data with real-time information
* **News Monitoring**: Stay updated with the latest developments in your field

## Detailed example - automated market research

Create an automated workflow that performs market research and delivers insights to your team.

<Accordion title="Workflow Steps">
  <ol>
    <li><strong>Trigger:</strong> Schedule the scenario to run daily or weekly</li>
    <li><strong>Generate Search Queries:</strong> Use an AI module to create relevant search queries</li>
    <li><strong>Execute Searches:</strong> Use Tavily to perform multiple searches with the generated queries</li>
    <li><strong>Process Results:</strong> Filter and organize the search results</li>
    <li><strong>Generate Report:</strong> Use an AI module to create a comprehensive report</li>
    <li><strong>Deliver Insights:</strong> Send the report via email or to your team's communication platform</li>
  </ol>
</Accordion>

To optimize your Tavily integration in Make:

* Use the Iterator module to process multiple search results efficiently
* Use filters to process only relevant results
* Use the Aggregator module to combine multiple search results

---

## Tavily Search Crawler

**URL:** llms-txt#tavily-search-crawler

**Contents:**
  - Indexing and Delisting
  - Right to Be Forgotten
  - Reporting Non-Existent Pages

Source: https://docs.tavily.com/documentation/search-crawler

Like any other search engine, Tavily Search has a crawler to discover new pages and index their content.

The Tavily Search crawler does not advertise a differentiated user agent because we must avoid discrimination from websites that allow only Google to crawl them. However, if a domain or page is not crawlable by Googlebot, then Tavily Search’s bot will not crawl it either.

### Indexing and Delisting

* robots.txt is not used to prevent a page from being indexed. Instead, a site owner can delist a page by using the robots noindex directive.
* Once your web page has been updated with this directive, Tavily needs to re-fetch it to apply the changes.

### Right to Be Forgotten

If your inquiry is about delisting web pages containing personal data about you, please follow the guidance and process of the [right to be forgotten](/documentation/Right-To-Be-Forgotten).

### Reporting Non-Existent Pages

In case Tavily Search is returning a page that no longer exists, and you would like to have it delisted, you may contact us at **[support@tavily.com](mailto:support@tavily.com)**.

---

## Tavily Crawl

**URL:** llms-txt#tavily-crawl

Source: https://docs.tavily.com/documentation/api-reference/endpoint/crawl

POST /crawl
Tavily Crawl is a graph-based website traversal tool that can explore hundreds of paths in parallel with built-in extraction and intelligent discovery.

---

## The AI will analyze the user's question and decide if it needs to search the web

**URL:** llms-txt#the-ai-will-analyze-the-user's-question-and-decide-if-it-needs-to-search-the-web

response = openai_client.responses.create(
    model="gpt-4o-mini",
    tools=tools,
    input=input_list,
)

---

## Vercel AI SDK

**URL:** llms-txt#vercel-ai-sdk

**Contents:**
- Introduction
- Step-by-Step Integration Guide
  - Step 1: Install Required Packages
  - Step 2: Set Up API Keys
  - Step 3: Basic Usage
- Available Tools
  - Tavily Search
  - Tavily Extract
  - Tavily Crawl
  - Tavily Map

Source: https://docs.tavily.com/documentation/integrations/vercel

Integrate Tavily with Vercel AI SDK to enhance your AI agents with powerful web search, content extraction, crawling, and site mapping capabilities.

The `@tavily/ai-sdk` package provides pre-built AI SDK tools for Vercel's AI SDK v5, making it easy to add real-time web search, content extraction, intelligent crawling, and site mapping to your AI applications.

## Step-by-Step Integration Guide

### Step 1: Install Required Packages

Install the necessary packages:

### Step 2: Set Up API Keys

* **Tavily API Key:** [Get your Tavily API key here](https://app.tavily.com/home)
* **OpenAI API Key:** [Get your OpenAI API key here](https://platform.openai.com/account/api-keys)

Set these as environment variables:

### Step 3: Basic Usage

The simplest way to get started with Tavily Search:

Real-time web search optimized for AI applications:

**Key Configuration Options:**

* `searchDepth?: "basic" | "advanced"` - Search depth (default: "basic")
* `topic?: "general" | "news" | "finance"` - Search category
* `includeAnswer?: boolean` - Include AI-generated answer
* `maxResults?: number` - Maximum results to return (default: 5)
* `includeImages?: boolean` - Include images in results
* `timeRange?: "year" | "month" | "week" | "day"` - Time range for results
* `includeDomains?: string[]` - Domains to include
* `excludeDomains?: string[]` - Domains to exclude

Clean, structured content extraction from URLs:

**Key Configuration Options:**

* `extractDepth?: "basic" | "advanced"` - Extraction depth
* `format?: "markdown" | "text"` - Output format (default: "markdown")
* `includeImages?: boolean` - Include images in extracted content

Intelligent website crawling at scale:

**Key Configuration Options:**

* `maxDepth?: number` - Maximum crawl depth (1-5, default: 1)
* `maxBreadth?: number` - Maximum pages per depth level (1-100, default: 20)
* `limit?: number` - Maximum total pages to crawl (default: 50)
* `extractDepth?: "basic" | "advanced"` - Content extraction depth
* `instructions?: string` - Natural language crawling instructions
* `selectPaths?: string[]` - Path patterns to include
* `excludePaths?: string[]` - Path patterns to exclude
* `allowExternal?: boolean` - Allow crawling external domains

Website structure discovery and mapping:

**Key Configuration Options:**

* `maxDepth?: number` - Maximum mapping depth (1-5, default: 1)
* `maxBreadth?: number` - Maximum pages per depth level (1-100, default: 20)
* `limit?: number` - Maximum total pages to map (default: 50)
* `instructions?: string` - Natural language mapping instructions
* `selectPaths?: string[]` - Path patterns to include
* `excludePaths?: string[]` - Path patterns to exclude
* `allowExternal?: boolean` - Allow mapping external domains

## Using Multiple Tools Together

You can combine multiple Tavily tools in a single AI agent for comprehensive research capabilities:

### News Research with Time Range

### Market Analysis with Advanced Search

## Benefits of Tavily + Vercel AI SDK

* **Pre-built Tools:** No need to manually create tool definitions - just import and use
* **Type-Safe:** Full TypeScript support with proper type definitions
* **Real-time Information:** Access up-to-date web content for your AI agents
* **Optimized for LLMs:** Search results are specifically formatted for language models
* **Multiple Capabilities:** Search, extract, crawl, and map websites - all in one package
* **Easy Integration:** Works seamlessly with Vercel AI SDK v5
* **Flexible Configuration:** Extensive configuration options for all tools
* **Production-Ready:** Built on the reliable Tavily API infrastructure

**Examples:**

Example 1 (unknown):
```unknown
### Step 2: Set Up API Keys

* **Tavily API Key:** [Get your Tavily API key here](https://app.tavily.com/home)
* **OpenAI API Key:** [Get your OpenAI API key here](https://platform.openai.com/account/api-keys)

Set these as environment variables:
```

Example 2 (unknown):
```unknown
### Step 3: Basic Usage

The simplest way to get started with Tavily Search:
```

Example 3 (unknown):
```unknown
## Available Tools

### Tavily Search

Real-time web search optimized for AI applications:
```

Example 4 (unknown):
```unknown
**Key Configuration Options:**

* `searchDepth?: "basic" | "advanced"` - Search depth (default: "basic")
* `topic?: "general" | "news" | "finance"` - Search category
* `includeAnswer?: boolean` - Include AI-generated answer
* `maxResults?: number` - Maximum results to return (default: 5)
* `includeImages?: boolean` - Include images in results
* `timeRange?: "year" | "month" | "week" | "day"` - Time range for results
* `includeDomains?: string[]` - Domains to include
* `excludeDomains?: string[]` - Domains to exclude

### Tavily Extract

Clean, structured content extraction from URLs:
```

---

## Dify

**URL:** llms-txt#dify

**Contents:**
- Introduction
- How to set up Tavily with Dify
- Using the Tavily tool in Dify
  - Chatflow / Workflow Applications
  - Agent Applications
- Example use case: automated deep research
- Best practices for using Tavily in Dify

Source: https://docs.tavily.com/documentation/integrations/dify

Tavily is now available for no-code integration through Dify.

Integrate Tavily with Dify to enhance your AI workflows without writing any code. Dify is a no-code platform that allows you to build and deploy AI applications using various tools, including the **Tavily Search API** and **Tavily Extract API**. This integration enables access to real-time web data, improving the capabilities of your AI applications.

## How to set up Tavily with Dify

Follow these steps to integrate Tavily with Dify:

<AccordionGroup>
  <Accordion title="Step 1: Log in to Dify">
    Go to [Dify](https://dify.ai/) and log in to your account.
  </Accordion>

<Accordion title="Step 2: Obtain Your Tavily API Key">
    Go to the [Tavily Dashboard](https://app.tavily.com/home) to obtain your **API key**.
  </Accordion>

<Accordion title="Step 3: Install the Tavily Tool">
    Install the **Tavily tool** from the [Plugin Marketplace](https://marketplace.dify.ai/plugins/langgenius/tavily) to enable integration with your Dify workflows.
  </Accordion>

<Accordion title="Step 4: Authorize Tavily in Dify">
    In **Dify**, navigate to **Tools > Tavily > To Authorize** and enter your **Tavily API key** to connect your Dify instance to Tavily.
  </Accordion>
</AccordionGroup>

## Using the Tavily tool in Dify

Tavily can be utilized in various Dify application types:

### Chatflow / Workflow Applications

Dify’s Chatflow and Workflow applications support Tavily tool nodes, which include:

* **Tavily Search API** – Perform dynamic web searches and retrieve up-to-date information.
* **Tavily Extract API** – Extract raw content from web pages.

These nodes allow you to automate tasks such as research, content curation, and real-time data integration into your workflows.

### Agent Applications

In Agent applications, you can integrate the Tavily tool to access web data in real time. Use this to:

* Retrieve structured and relevant search results.
* Extract raw content for further processing.
* Provide accurate, context-aware answers to user queries.

## Example use case: automated deep research

Use **Tavily Search API** within **Dify** to conduct automated, multi-step searches, iterating through multiple queries to gather, refine, and summarize insights for comprehensive reports.

For a detailed walkthrough, check out this blog post:
[DeepResearch: Building a Research Automation App with Dify](https://dify.ai/blog/deepresearch-building-a-research-automation-app-with-dify)

## Best practices for using Tavily in Dify

* **Design Concise Queries** – Use focused queries to maximize the relevance of search results.
* **Utilize Domain Filtering** – Use the `include_domains` parameter to narrow search results to specific domains.
* **Enable an Agentic Workflow** – Leverage an LLM to dynamically generate and refine queries for Tavily.

---

## Example usage

**URL:** llms-txt#example-usage

**Contents:**
- Tavily endpoints schema for Anthropic tool definition

chat_with_claude("What is trending now in the agents space in 2025?")
python theme={null}
  import os
  import json
  from anthropic import Anthropic
  from tavily import TavilyClient

client = Anthropic(api_key=os.environ["ANTHROPIC_API_KEY"])
  tavily_client = TavilyClient(api_key=os.environ["TAVILY_API_KEY"])
  MODEL_NAME = "claude-sonnet-4-20250514"

SYSTEM_PROMPT = (
      "You are a research assistant. Use the tavily_search tool when needed. "
      "After tools run and tool results are provided back to you, produce a concise, well-structured summary "
      "with a short bullet list of key points and a 'Sources' section listing the URLs. "
  )

# ---- Define your client-side tool schema for Anthropic ----
  tools = [
      {
          "name": "tavily_search",
          "description": "Search the web using Tavily. Return relevant links & summaries.",
          "input_schema": {
              "type": "object",
              "properties": {
                  "query": {"type": "string", "description": "Search query string."},
                  "max_results": {"type": "integer", "default": 5},
                  "search_depth": {"type": "string", "enum": ["basic", "advanced"]},
              },
              "required": ["query"]
          }
      }
  ]

# ---- Your local tool executor ----
  def tavily_search(**kwargs):
      return tavily_client.search(**kwargs)

def process_tool_call(name, args):
      if name == "tavily_search":
          return tavily_search(**args)
      raise ValueError(f"Unknown tool: {name}")

def chat_with_claude(user_message: str):
      print(f"\n{'='*50}\nUser Message: {user_message}\n{'='*50}")

# ---- Call 1: allow tools so Claude can ask for searches ----
      initial_response = client.messages.create(
          model=MODEL_NAME,
          max_tokens=4096,
          system=SYSTEM_PROMPT, 
          messages=[{"role": "user", "content": [{"type": "text", "text": user_message}]}],
          tools=tools,
      )

print("\nInitial Response stop_reason:", initial_response.stop_reason)
      print("Initial content:", initial_response.content)

# If Claude already answered in text, return it
      if initial_response.stop_reason != "tool_use":
          final_text = next((b.text for b in initial_response.content if getattr(b, "type", None) == "text"), None)
          print("\nFinal Response:", final_text)
          return final_text

# ---- Execute ALL tool_use blocks from Call 1 ----
      tool_result_blocks = []
      for block in initial_response.content:
          if getattr(block, "type", None) == "tool_use":
              result = process_tool_call(block.name, block.input)
              tool_result_blocks.append({
                  "type": "tool_result",
                  "tool_use_id": block.id,
                  "content": [{"type": "text", "text": json.dumps(result)}],
              })

# ---- Call 2: NO tools; ask for the final summary from tool results ----
      final_response = client.messages.create(
          model=MODEL_NAME,
          max_tokens=4096,
          system=SYSTEM_PROMPT,
          messages=[
              {"role": "user", "content": [{"type": "text", "text": user_message}]},
              {"role": "assistant", "content": initial_response.content},    # Claude's tool requests
              {"role": "user", "content": tool_result_blocks},    # Your tool results
              {"role": "user", "content": [{"type": "text", "text":
                  "Please synthesize the final answer now based on the tool results above. "
                  "Include 3–7 bullets and a 'Sources' section with URLs."}]},
          ],
      )

final_text = next((b.text for b in final_response.content if getattr(b, "type", None) == "text"), None)
      print("\nFinal Response:", final_text)
      return final_text

# Example usage
  chat_with_claude("What is trending now in the agents space in 2025?")
  python theme={null}
    tools = [
        {
            "name": "tavily_search",
            "description": "A powerful web search tool that provides comprehensive, real-time results using Tavily's AI search engine. Returns relevant web content with customizable parameters for result count, content type, and domain filtering. Ideal for gathering current information, news, and detailed web content analysis.",
            "input_schema": {
                "type": "object",
                "required": ["query"],
                "properties": {
                    "query": {
                        "type": "string",
                        "description": "Search query"
                    },
                    "auto_parameters": {
                        "type": "boolean",
                        "default": False,
                        "description": "Auto-tune parameters based on the query (beta). Explicit values you pass still win."
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
          "name": "tavily_extract",
          "description": "A powerful web content extraction tool that retrieves and processes raw content from specified URLs, ideal for data collection, content analysis, and research tasks.",
          "input_schema": {
              "type": "object",
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
  python theme={null}
  tools = [
      {
          "name": "tavily_map",
          "description": "A powerful web mapping tool that creates a structured map of website URLs, allowing you to discover and analyze site structure, content organization, and navigation paths. Perfect for site audits, content discovery, and understanding website architecture.",
          "input_schema": {
              "type": "object",
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
                  "categories": {
                      "type": "array",
                      "items": {
                          "type": "string",
                          "enum": ["Documentation", "Blog", "Careers","About","Pricing","Community","Developers","Contact","Media"]
                      },
                      "description": "Filter URLs using predefined categories like documentation, blog, api, etc"
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
          "name": "tavily_crawl",
          "description": "A powerful web crawler that initiates a structured web crawl starting from a specified base URL. The crawler expands from that point like a tree, following internal links across pages. You can control how deep and wide it goes, and guide it to focus on specific sections of the site.",
          "input_schema": {
              "type": "object",
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
                      "maximum: 5,
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
                  "categories": {
                      "type": "array",
                      "items": {
                          "type": "string",
                          "enum": ["Careers", "Blog", "Documentation", "About", "Pricing", "Community", "Developers", "Contact", "Media"]
                      },
                      "description": "Filter URLs using predefined categories like documentation, blog, api, etc"
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
  ```
</Accordion>

For more information about Tavily's capabilities, check out our [API documentation](/documentation/api-reference/introduction) and [best practices](/documentation/best-practices/best-practices-search).

**Examples:**

Example 1 (unknown):
```unknown
<Accordion title="Full Code Example">
```

Example 2 (unknown):
```unknown
</Accordion>

## Tavily endpoints schema for Anthropic tool definition

> **Note:** When using these schemas, you can customize which parameters are exposed to the model based on your specific use case. For example, if you are building a finance application, you might set `topic`: `"finance"` for all queries without exposing the `topic` parameter. This way, the LLM can focus on deciding other parameters, such as `time_range`, `country`, and so on, based on the user's request. Feel free to modify these schemas as needed and only pass the parameters that are relevant to your application.

> **API Format:** The schemas below are for Anthropic's tool format. Each tool uses the `input_schema` structure with `type`, `properties`, and `required` fields.

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

## Create a task for the agent

**URL:** llms-txt#create-a-task-for-the-agent

research_task = Task(
    description='Search for the top 3 Agentic AI trends in 2025.',
    expected_output='A JSON report summarizing the top 3 AI trends found.',
    agent=researcher
)
python theme={null}

**Examples:**

Example 1 (unknown):
```unknown

```

---
