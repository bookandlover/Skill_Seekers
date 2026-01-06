# Tavily-Api - Integrations

**Pages:** 4

---

## Agent Builder

**URL:** llms-txt#agent-builder

**Contents:**
- Getting Started
- Real-World Applications
  - Market Research Agents
  - Content Curation Systems
  - Competitive Intelligence
  - News & Event Monitors

Source: https://docs.tavily.com/documentation/integrations/agent-builder

Integrate OpenAI’s Agent Builder with Tavily’s MCP server to empower your AI agents with real-time web access.

Before you begin, make sure you have:

* A [Tavily API key](https://app.tavily.com/home) (sign up for free if you don't have one)
* An OpenAI account with [organization verification](https://help.openai.com/en/articles/10910291-api-organization-verification)

<Step title="Create a new workflow in Agent Builder">
  Navigate to [Agent Builder](https://platform.openai.com/agent-builder) and click **Create New Workflow** to begin building your AI agent.

<img alt="Create New Workflow" />
</Step>

<Step title="Select the agent node in your workflow">
  Click on the agent node in your workflow canvas to open the configuration panel.

<img alt="Agent Block" />
</Step>

<Step title="Open the Tools configuration">
  In the configuration panel, locate and click on **Tools** in the sidebar to add external capabilities to your agent.

<img alt="Tools Panel" />
</Step>

<Step title="Connect Tavily's MCP server">
  In the MCP configuration section, paste the Tavily MCP server URL:

Remember to replace `YOUR_API_KEY` with your actual Tavily API key.

<Tip>
    Need an API key? Get one instantly from your [Tavily dashboard](https://app.tavily.com/home)
  </Tip>

Click **Connect** to establish the connection to Tavily.

<img alt="Tavily MCP Configuration" />
</Step>

<Step title="Enable Tavily capabilities for your agent">
  Once connected, you'll see Tavily's suite of tools available:

* **tavily\_search** - Execute a search query.
  * **tavily\_extract** - Extract web page content from one or more specified URLs.
  * **tavily\_map** - Traverses websites like a graph and can explore hundreds of paths in parallel with intelligent discovery to generate comprehensive site maps.
  * **tavily\_crawl** - Traversal tool that can explore hundreds of paths in parallel with built-in extraction and intelligent discovery.

Select the tools you want to activate for this agent, then click **Add** to integrate them.

<img alt="Tavily Tools Available" />
</Step>

<Step title="Customize your agent's behavior">
  Now configure your agent:

* **Name**: Choose a descriptive name for your agent
  * **Instructions**: Define the agent's role and how it should use Tavily's tools
  * **Reasoning**: Set the appropriate reasoning effort level
  * Click **Preview** to test the configuration

**Sample instructions:**

<img alt="Agent Configuration Panel" />
</Step>

<Step title="Verify your agent works correctly">
  Test your agent with queries that require real-time information to verify everything is working as expected.

<img alt="Agent Testing Interface" />
</Step>

## Real-World Applications

### Market Research Agents

Build agents that continuously monitor industry trends, competitor activities, and market sentiment by searching for and analyzing relevant business information.

### Content Curation Systems

Create agents that automatically find, extract, and summarize content from multiple sources based on your specific criteria and preferences.

### Competitive Intelligence

Develop agents that crawl competitor websites, map their content strategies, and extract pricing, features, and positioning information.

### News & Event Monitors

Build agents that track breaking news on specific topics by leveraging Tavily's news search mode, providing real-time updates with citations.

**Examples:**

Example 1 (unknown):
```unknown
Remember to replace `YOUR_API_KEY` with your actual Tavily API key.

  <Tip>
    Need an API key? Get one instantly from your [Tavily dashboard](https://app.tavily.com/home)
  </Tip>

  Click **Connect** to establish the connection to Tavily.

  <img alt="Tavily MCP Configuration" />
</Step>

<Step title="Enable Tavily capabilities for your agent">
  Once connected, you'll see Tavily's suite of tools available:

  * **tavily\_search** - Execute a search query.
  * **tavily\_extract** - Extract web page content from one or more specified URLs.
  * **tavily\_map** - Traverses websites like a graph and can explore hundreds of paths in parallel with intelligent discovery to generate comprehensive site maps.
  * **tavily\_crawl** - Traversal tool that can explore hundreds of paths in parallel with built-in extraction and intelligent discovery.

  Select the tools you want to activate for this agent, then click **Add** to integrate them.

  <img alt="Tavily Tools Available" />
</Step>

<Step title="Customize your agent's behavior">
  Now configure your agent:

  * **Name**: Choose a descriptive name for your agent
  * **Instructions**: Define the agent's role and how it should use Tavily's tools
  * **Reasoning**: Set the appropriate reasoning effort level
  * Click **Preview** to test the configuration

  **Sample instructions:**
```

---

## Tavily MCP Server

**URL:** llms-txt#tavily-mcp-server

**Contents:**
- Remote MCP Server
  - Connect to Cursor
  - Connect to Claude Desktop
  - OpenAI
  - Clients that don't support remote MCPs
- Local Installation
  - Prerequisites
  - Configuring MCP Clients
- Usage Examples
- Troubleshooting

Source: https://docs.tavily.com/documentation/mcp

Tavily MCP Server allows you to use the Tavily API in your MCP clients.

<CardGroup>
  <Card title="GitHub" icon="github" href="https://github.com/tavily-ai/tavily-mcp">
    `/tavily-ai/tavily-mcp`

<img alt="GitHub Repo stars" />
  </Card>

<Card title="NPM" icon="npm" href="https://www.npmjs.com/package/tavily-mcp">
    `@tavily/mcp`

<img alt="npm" />
  </Card>
</CardGroup>

<Tip>
  **Compatible with both [Cursor](https://cursor.sh) and [Claude Desktop](https://claude.ai/download)!**

Tavily MCP is also compatible with any MCP client.
</Tip>

<Info>
  **Check out our
  [tutorial](https://medium.com/@dustin_36183/building-a-knowledge-graph-assistant-combining-tavily-and-neo4j-mcp-servers-with-claude-db92de075df9)
  on combining Tavily MCP with Neo4j MCP server!**
</Info>

<Frame>
  <img alt="Tavily MCP Demo" />
</Frame>

<Tabs>
  <Tab title="Overview">
    The Model Context Protocol (MCP) is an open standard that enables AI systems to interact seamlessly with various data sources and tools, facilitating secure, two-way connections.

Developed by Anthropic, the Model Context Protocol (MCP) enables AI assistants like Claude to seamlessly integrate with Tavily's advanced search and data extraction capabilities. This integration provides AI models with real-time access to web information, complete with sophisticated filtering options and domain-specific search features.
  </Tab>

<Tab title="Features">
    The Tavily MCP server provides:

* Seamless interaction with the tavily-search and tavily-extract tools
    * Real-time web search capabilities through the tavily-search tool
    * Intelligent data extraction from web pages via the tavily-extract tool
  </Tab>
</Tabs>

The easiest way to take advantage of Tavily MCP is by using the remote URL. This provides a seamless experience without requiring local installation or configuration.

Simply use the remote MCP server URL with your Tavily API key:

Get your Tavily API key from [tavily.com](https://www.tavily.com/).

### Connect to Cursor

[![Install MCP Server](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/install-mcp?name=tavily-remote-mcp\&config=eyJjb21tYW5kIjoibnB4IC15IG1jcC1yZW1vdGUgaHR0cHM6Ly9tY3AudGF2aWx5LmNvbS9tY3AvP3RhdmlseUFwaUtleT08eW91ci1hcGkta2V5PiJ9)

Click the ⬆️ Add to Cursor ⬆️ button, this will do most of the work for you but you will still need to edit the configuration to add your API-KEY. You can get a Tavily API key [here](https://www.tavily.com/).

once you click the button you should be redirect to Cursor ...

You will then be redirected to your `mcp.json` file where you have to add `your-api-key`.

### Connect to Claude Desktop

Claude desktop now supports adding `integrations` which is currently in beta. An integration in this case is the Tavily Remote MCP, below I will explain how to add the MCP as an `integration` in Claude desktop.

Open claude desktop, click the button with the two sliders and then navigate to add integrations. Name the integration and insert the Tavily remote MCP url with your API key. You can get a Tavily API key [here](https://www.tavily.com/). Click `Add` to confirm.

Allow models to use remote MCP servers to perform tasks.

* You first need to export your OPENAI\_API\_KEY
* You must also add your Tavily API-key to `<your-api-key>`, you can get a Tavily API key [here](https://www.tavily.com/)

### Clients that don't support remote MCPs

mcp-remote is a lightweight bridge that lets MCP clients that can only talk to local (stdio) servers securely connect to remote MCP servers over HTTP + SSE with OAuth-based auth, so you can host and update your server in the cloud while existing clients keep working. It serves as an experimental stop-gap until popular MCP clients natively support remote, authorized servers.

Alternatively, you can also run the MCP server locally.

## Local Installation

<AccordionGroup>
  <Accordion title="Required Tools" icon="wrench">
    * [Tavily API key](https://app.tavily.com/home)
      * If you don't have a Tavily API key, you can sign up for a free account [here](https://app.tavily.com/home)
    * [Claude Desktop](https://claude.ai/download) or [Cursor](https://cursor.sh)
    * [Node.js](https://nodejs.org/) (v20 or higher)
      * You can verify your Node.js installation by running:
        
  </Accordion>

<Accordion title="Git Installation (Optional)" icon="code-branch">
    Only needed if using Git installation method:

* On macOS: `brew install git`
    * On Linux:
      * Debian/Ubuntu: `sudo apt install git`
      * RedHat/CentOS: `sudo yum install git`
    * On Windows: Download [Git for Windows](https://git-scm.com/download/win)
  </Accordion>
</AccordionGroup>

<Note>
  Although you can launch a server on its own, it's not particularly helpful in
  isolation. Instead, you should integrate it into an MCP client.
</Note>

### Configuring MCP Clients

<Tabs>
  <Tab title="Cursor">
    > **Note**: Requires Cursor version 0.45.6 or higher

To set up the Tavily MCP server in Cursor:

1. Open Cursor Settings
    2. Navigate to Features > MCP Servers
    3. Click on the "+ Add New MCP Server" button
    4. Fill out the following information:
       * **Name**: Enter a nickname for the server (e.g., "tavily-mcp")
       * **Type**: Select "command" as the type
       * **Command**: Enter the command to run the server:
         
         <Warning>Replace `tvly-YOUR_API_KEY` with your Tavily API key from [app.tavily.com/home](https://app.tavily.com/home)</Warning>

<Frame>
      <img alt="Cursor Interface Example" />
    </Frame>
  </Tab>

<Tab title="Claude Desktop">
    <CodeGroup>

Add this configuration (replace `tvly-YOUR_API_KEY-here` with your [Tavily API key](https://tavily.com/api-keys)):

<AccordionGroup>
  <Accordion title="Tavily Search Examples" icon="magnifying-glass">
    1. **General Web Search**:

3. **Domain-Specific Search**:

<Accordion title="Tavily Extract Examples" icon="file-export">
    **Extract Article Content**: `Extract the main content from this article:
          https://example.com/article`
  </Accordion>

<Accordion title="Combined Usage" icon="wand-magic-sparkles">
    
  </Accordion>
</AccordionGroup>

<Accordion title="Server Not Found" icon="server">
  If you encounter server connection issues, run these commands to verify your environment:

Make sure to also check your configuration syntax for any errors.
</Accordion>

<Accordion title="NPX Issues" icon="terminal">
  If experiencing problems with npx, locate your executable:

<Tip>
    Once you have the path, update your configuration to use the full path to the npx executable.
  </Tip>
</Accordion>

<Accordion title="API Key Issues" icon="key">
  When troubleshooting API key problems, verify that your key is:

* Properly formatted with the `tvly-` prefix
  * Valid and active in your Tavily dashboard
  * Correctly configured in your environment variables

<Tip>
    You can test your API key validity by making a simple test request through the [Tavily Playground](https://app.tavily.com/playground)
  </Tip>
</Accordion>

<CardGroup>
  <Card title="Model Context Protocol" icon="book" href="https://modelcontextprotocol.io">
    For the MCP specification
  </Card>

<Card title="Anthropic" icon="robot" href="https://www.anthropic.com/claude">
    For Claude Desktop
  </Card>
</CardGroup>

**Examples:**

Example 1 (unknown):
```unknown
https://mcp.tavily.com/mcp/?tavilyApiKey=<your-api-key>
```

Example 2 (unknown):
```unknown
### Connect to Claude Desktop

Claude desktop now supports adding `integrations` which is currently in beta. An integration in this case is the Tavily Remote MCP, below I will explain how to add the MCP as an `integration` in Claude desktop.

Open claude desktop, click the button with the two sliders and then navigate to add integrations. Name the integration and insert the Tavily remote MCP url with your API key. You can get a Tavily API key [here](https://www.tavily.com/). Click `Add` to confirm.

### OpenAI

Allow models to use remote MCP servers to perform tasks.

* You first need to export your OPENAI\_API\_KEY
* You must also add your Tavily API-key to `<your-api-key>`, you can get a Tavily API key [here](https://www.tavily.com/)
```

Example 3 (unknown):
```unknown
### Clients that don't support remote MCPs

mcp-remote is a lightweight bridge that lets MCP clients that can only talk to local (stdio) servers securely connect to remote MCP servers over HTTP + SSE with OAuth-based auth, so you can host and update your server in the cloud while existing clients keep working. It serves as an experimental stop-gap until popular MCP clients natively support remote, authorized servers.
```

Example 4 (unknown):
```unknown
Alternatively, you can also run the MCP server locally.

## Local Installation

### Prerequisites

<AccordionGroup>
  <Accordion title="Required Tools" icon="wrench">
    * [Tavily API key](https://app.tavily.com/home)
      * If you don't have a Tavily API key, you can sign up for a free account [here](https://app.tavily.com/home)
    * [Claude Desktop](https://claude.ai/download) or [Cursor](https://cursor.sh)
    * [Node.js](https://nodejs.org/) (v20 or higher)
      * You can verify your Node.js installation by running:
```

---

## Snowflake

**URL:** llms-txt#snowflake

**Contents:**
- Introduction
- Installation and Setup
- Use cases
  - Using TAVILY\_WEB\_SEARCH in Snowsight
  - Using TAVILY\_WEB\_SEARCH in Snowflake Intelligence
- Tutorial

Source: https://docs.tavily.com/documentation/partnerships/snowflake

Tavily is now available as a native app on the [Snowflake Marketplace](https://www.snowflake.com/en/product/features/marketplace/).

The Tavily Snowflake Native App brings powerful web search capabilities directly into your Snowflake environment, allowing you to download and install it natively within your Snowflake account in an easy and secure way.

## Installation and Setup

1. After logging into your Snowflake account, click on ***Marketplace*** from the sidebar.

2. In the search bar, search for ***Tavily*** and find the ***Tavily Search API*** app.

3. Click on ***GET*** in the right top side to download the app into your Snowflake account.

4. Read through the permissions and click on ***Agree and Continue*** and click on ***GET***.

5. After the app finished downloading, hover over ***Catalog*** in the left sidebar and click on ***Apps***.

6. Locate the Tavily app named ***Tavily Search API*** in the installed apps section.

7. Now you have to configure the application.

8. Visit [https://tavily.com](https://tavily.com) to get your API key if you don't already have one.

9. After you have your API key, click on the ***Configure*** button and pass the API key in the secret value box to configure the API key for your native app.

10. Now, in the ***Review integration requests*** section, click on ***Review*** and toggle the button to the right to enable your app ***Access the Tavily external API for web search***.

11. Click on ***Save***. Now you have successfully configured your application for use in the Snowflake environment.

12. Click on ***Next*** to visit the app page.

### Using TAVILY\_WEB\_SEARCH in Snowsight

1. After installation in the app page, you can click on ***Open Worksheet*** to pop up a Snowflake worksheet with a pre-loaded SQL query to use Tavily web search.

2. Make sure to select the appropriate database for your worksheet. In the top right, ensure the database is `TAVILY_SEARCH_API` and the schema is `TAVILY_SCHEMA`.

3. Now you can click the ***Run*** button on the top left of your worksheet to run the query.

SQL Procedure: `TAVILY_SCHEMA.TAVILY_WEB_SEARCH`

* `QUERY` (VARCHAR): The search query in natural language

* `SEARCH_DEPTH` (VARCHAR, optional): `'basic'` (default) or `'advanced'`

* `MAX_RESULTS` (INTEGER, optional): Maximum number of results (default: 5)

**Data Enrichment**:
With this setup, you can enhance your Snowflake database with up-to-date information from the web, enabling you to fill your data warehouse with real-world data and keep your analytics current with the latest trends and events.

`For example`: During data analysis in your Snowflake environment, you may discover records with missing, null, or outdated values, such as incomplete company details, stale product information, or missing metadata. Instead of filling these gaps manually, you can leverage the `TAVILY_WEB_SEARCH` stored procedure to automatically query reliable sources on the web. This allows you to fetch the most current information available and enrich your dataset directly within Snowflake, improving data completeness, accuracy, and overall analytical value.

### Using TAVILY\_WEB\_SEARCH in Snowflake Intelligence

1. **Set up Snowflake Intelligence**: Follow the [Snowflake documentation](https://docs.snowflake.com/en/user-guide/snowflake-cortex/snowflake-intelligence) to set up Snowflake Intelligence. Make sure you have the snowflake\_intelligence database, required schema and GRANTs before proceeding to the next steps.

2. **Create an Agent**: In the Snowsight UI sidebar, navigate to the ***Agents*** admin page under ***AI & ML***, click on ***create agent*** and provide agent object name, display name and create the agent.

3. **Add the TAVILY\_WEB\_SEARCH Custom Tool**: Within the current agent's menu bar, navigate to the ***Tools*** section and click on ***+Add*** in Custom tools.

* Select the Resource type as ***Procedure***

* Select the database and schema: `TAVILY_SEARCH_API.TAVILY_SCHEMA`

* Select the custom tool identifier: `TAVILY_SEARCH_API.TAVILY_SCHEMA.TAVILY_WEB_SEARCH`

* Give your tool a descriptive name

* Configure the following parameters with their descriptions:

* `query`: "Search query"

* `search_depth`: "The depth of the search. It can be 'basic' or 'advanced'"

* `max_results`: "The maximum number of search results to return. Minimum is 1 and Maximum is 20"

* Click on ***Add*** to attach the tool to your agent

* Make sure to click on ***Save*** in the top right corner to update the agent

4. **Use the Agent**: In the Snowsight UI sidebar, navigate to the ***Snowflake Intelligence*** landing page under ***AI & ML***, select the agent you created, and use the tool.

`Real-time AI agents`:
With Snowflake Intelligence, you can ask complex questions about your data in natural language and receive insights from your own personalized enterprise intelligence agent. To ensure those insights are both accurate and current, it’s important to ground the agent in real-time information. By integrating the `TAVILY_WEB_SEARCH` tool, you allow the agent to automatically pull fresh, relevant data from the web, thus resulting in more trustworthy analysis and more informed decision-making.

The following video walks you through the above-mentioned steps for installing, configuring, and using the Tavily Snowflake Native App.

<div>
  <iframe title="YouTube video player" />
</div>

---

## IBM

**URL:** llms-txt#ibm

**Contents:**
- Overview
- What is it?
- How it Works
- Architecture
- Setup Instructions

Source: https://docs.tavily.com/documentation/partnerships/IBM

Tavily and IBM have partnered to deliver AI-enriched spreadsheets, combining real-time web search with advanced foundation models to transform business data workflows.

<p>
  <img alt="Tavily Logo" />

<img alt="IBM watsonx Logo" />
</p>

<p>
  Powered by <a href="https://tavily.com">Tavily</a> and <a href="https://www.ibm.com/products/watsonx-ai">IBM® watsonx.ai™</a>
</p>

Tavily and IBM have partnered to deliver [AI-enriched spreadsheets](https://github.com/tavily-ai/watsonx-tavily-spreadsheets) that combine Tavily's real-time web search with IBM watsonx.ai's advanced foundation models. This open-source solution enables users to enrich spreadsheet data with live, cited web information and powerful LLM-driven insights.

With this application, you can:

* 📊 Enrich spreadsheet cells with AI-generated content backed by live web data
* 🧠 Entity extraction and data processing with Granite LLMs
* 🔄 Process entire columns in batch for efficient data enhancement
* 📑 Access source citations for all web-sourced information
* 📂 Export your enriched data as CSV files for further use

1. **Fill in spreadsheet columns** with your data
2. **Enrich your spreadsheet**: The app uses Tavily's search and IBM watsonx.ai models to add live, relevant information
3. **Export as CSV** for further use

<div>
  <iframe title="YouTube video player" />
</div>

<img alt="Architecture Diagram" />

## Setup Instructions

<AccordionGroup>
  <Accordion title="API Keys & Environment Variables">
    <ul>
      <li>Get your <a href="https://app.tavily.com/home">Tavily API key</a> and <a href="https://www.ibm.com/products/watsonx-ai">IBM watsonx.ai API key</a>.</li>
      <li>Create a <code>.env</code> file in the project root.</li>
    </ul>

<em>Note: <code>FOUNDATION\_MODEL\_ID</code> is optional. Defaults to <code>ibm/granite-3-2-8b-instruct</code> if not set.</em>

<ul>
      <li>Create <code>.env.development</code> in <code>ui/</code> directory.</li>
    </ul>

<Accordion title="Backend Setup (Python)">
    <ul>
      <li>Create and activate a Python 3.11 virtual environment.</li>
    </ul>

<ul>
      <li>Install dependencies.</li>
    </ul>

<ul>
      <li>Run the backend server.</li>
    </ul>

<Accordion title="Backend Setup (Docker)">
    <ul>
      <li>Build the Docker image.</li>
    </ul>

<ul>
      <li>Run the container.</li>
    </ul>

<Accordion title="Frontend Setup">
    <ul>
      <li>Navigate to the frontend directory.</li>
    </ul>

<ul>
      <li>Install dependencies.</li>
    </ul>

<ul>
      <li>Start the development server.</li>
    </ul>

<ul>
      <li>Open <a href="http://localhost:5174">[http://localhost:5174](http://localhost:5174)</a> in your browser.</li>
    </ul>
  </Accordion>
</AccordionGroup>

See full setup, usage, and contribution details in the [GitHub repository](https://github.com/tavily-ai/watsonx-tavily-spreadsheets).

**Examples:**

Example 1 (unknown):
```unknown
TAVILY_API_KEY=<your API key>
    WATSONX_API_KEY=<your API key>
    WATSONX_PROJECT_ID=<your project id>
    WATSONX_URL=<your data center url>
    FOUNDATION_MODEL_ID=<watsonx.ai model id>
```

Example 2 (unknown):
```unknown
VITE_API_URL=http://localhost:8000
    VITE_WS_URL=ws://localhost:8000
```

Example 3 (unknown):
```unknown
python3.11 -m venv venv
    source venv/bin/activate  # On Windows: .\venv\Scripts\activate
```

Example 4 (unknown):
```unknown
python3.11 -m pip install -r requirements.txt
```

---
