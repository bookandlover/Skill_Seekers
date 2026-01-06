# Exa-Api - Search

**Pages:** 74

---

## Search

**URL:** llms-txt#search

Source: https://docs.exa.ai/reference/search

post /search
The search endpoint lets you intelligently search the web and extract contents from the results.

By default, it automatically chooses the best search method using Exa's embeddings-based model and other techniques to find the most relevant results for your query. You can also use Deep search for comprehensive results with query expansion and detailed context.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

---

## Option 1: Use text with character limit (recommended for consistent comparisons)

**URL:** llms-txt#option-1:-use-text-with-character-limit-(recommended-for-consistent-comparisons)

exa.search_and_contents(
    query,
    type="fast",  # or "auto" (for `Deep`, see Option 2)
    num_results=10,
    text={"max_characters": 5000}
)

---

## Or, to research a specific topic:

**URL:** llms-txt#or,-to-research-a-specific-topic:

---

## Exa AI SDK

**URL:** llms-txt#exa-ai-sdk

**Contents:**
- Install
- Quick Start
- Setup
- Example
- All Options
- TypeScript Support
- Links

Exa is a Websearch API. Add Exa websearch tool to your LLMs in just a few lines of code. Giving your AI apps websearch capabilites. Works with AI SDK by Vercel.

Get your API key from the [Exa Dashboard](https://dashboard.exa.ai/api-keys).

**Defaults when you use `webSearch()`:**

* Type: `auto` (best search)
* Results: `10`
* Text: `3000 characters per result`
* Livecrawl: `fallback` (fresh content when needed)

1. Get your API key from the [Exa Dashboard](https://dashboard.exa.ai/api-keys)
2. Add it to your `.env` file:

That's it! The package reads it automatically.

Here's a full-featured example combining the most useful search settings:

## TypeScript Support

Full TypeScript types included:

* [GitHub Repository](https://github.com/exa-labs/ai-sdk) - View source code of this npm package
* [Try npm Package](https://www.npmjs.com/package/@exalabs/ai-sdk) - View on npm
* [Vercel AI SDK Docs](https://ai-sdk.dev/cookbook/node/web-search-agent#exa) - Web Search Agent guide featuring Exa
* [API Dashboard](https://dashboard.exa.ai) - Try Exa API on the dashboard
* [Get your API Keys](https://dashboard.exa.ai/api-keys) - Get your API keys
* [Exa Website](https://exa.ai) - Learn more about Exa

**Examples:**

Example 1 (unknown):
```unknown
## Quick Start
```

Example 2 (unknown):
```unknown
Get your API key from the [Exa Dashboard](https://dashboard.exa.ai/api-keys).

**Defaults when you use `webSearch()`:**

* Type: `auto` (best search)
* Results: `10`
* Text: `3000 characters per result`
* Livecrawl: `fallback` (fresh content when needed)

## Setup

1. Get your API key from the [Exa Dashboard](https://dashboard.exa.ai/api-keys)
2. Add it to your `.env` file:
```

Example 3 (unknown):
```unknown
That's it! The package reads it automatically.

## Example

Here's a full-featured example combining the most useful search settings:
```

Example 4 (unknown):
```unknown
## All Options
```

---

## https://docs.exa.ai/reference/python-sdk-specification#search_and_contents-method

**URL:** llms-txt#https://docs.exa.ai/reference/python-sdk-specification#search_and_contents-method

def exa_search(query: str) -> Dict[str, Any]:
    return exa.search_and_contents(query=query, type='auto', highlights=True)

---

## print(researcher("llama antibodies"))

**URL:** llms-txt#print(researcher("llama-antibodies"))

This Python implementation of Exa Researcher demonstrates how to leverage Exa's Auto search feature and the OpenAI API to create an automated research tool. By combining Exa's powerful search capabilities with GPT-3.5 Turbo's language understanding and generation, we've created a system that can quickly gather and synthesize information on any given topic.

---

## Make Exa Your Default Search Engine

**URL:** llms-txt#make-exa-your-default-search-engine

**Contents:**
  - For Google Chrome
  - For Mozilla Firefox
  - For Safari (Mac)
  - For Microsoft Edge
- Quick Test
- Need Help?
- Why Use Exa as Your Default?

Source: https://docs.exa.ai/reference/set-exa-as-default-search

Simple steps to set exa.ai as your browser's default search engine

Want to use Exa search every time you search from your browser's address bar? Here's how to set it up in simple steps. What You'll Need:

* A web browser (Chrome, Firefox, Safari, or Edge)
* 60 seconds of your time

### For Google Chrome

1. **Open Chrome** on your computer
2. **Go to exa.ai** in your address bar
3. **Click the three dots** (⋮) in the top right corner
4. **Click "Settings"**
5. **Click "Search engine"** on the left side
6. **Click "Manage search engines and site search"**
7. **Look for "exa.ai"** in the list
8. **Click the three dots** next to it
9. **Click "Make default"**

**That's it!** Now when you type in Chrome's address bar, it will search with Exa.

### For Mozilla Firefox

1. **Open Firefox** on your computer
2. **Go to exa.ai** in your address bar
3. **Right-click in the search box** on the Exa website
4. **Click "Add a Keyword for this Search"**
5. **Type "exa" as the keyword** and click "Save"
6. **Click the hamburger menu** (☰) in the top right
7. **Click "Settings"**
8. **Click "Search"** on the left side
9. **Find "Default Search Engine"**
10. **Select "Exa"** from the dropdown

**Done!** Firefox will now use Exa for your searches.

1. **Open Safari** on your Mac
2. **Go to exa.ai** in your address bar
3. **Click "Safari"** in the top menu bar
4. **Click "Settings"** (or press ⌘,)
5. **Click the "Search" tab**
6. **Click the dropdown** next to "Search engine"
7. **Select "Other"**
8. **Type:** `https://exa.ai/search?q=%s`
9. **Click "OK"**

**All set!** Safari will now search with Exa.

### For Microsoft Edge

1. **Open Edge** on your computer
2. **Go to exa.ai** in your address bar
3. **Click the three dots** (⋯) in the top right corner
4. **Click "Settings"**
5. **Click "Privacy, search, and services"** on the left
6. **Scroll down to "Services"**
7. **Click "Address bar and search"**
8. **Click "Manage search engines"**
9. **Look for "exa.ai"** in the list
10. **Click the three dots** next to it
11. **Click "Make default"**

**Perfect!** Edge will now use Exa for searches.

To make sure it worked:

1. **Click in your browser's address bar**
2. **Type any search term** (like "best pizza recipes")
3. **Press Enter**

You should see Exa's search results instead of Google or other search engines.

If these steps don't work for your browser:

* Make sure you visited exa.ai first
* Try refreshing the settings page

## Why Use Exa as Your Default?

* **Better results** for research and finding specific information
* **Clean interface** without ads or seo slop, cluttering your results
* **Free, fast and accurate** search results every time

Now you can enjoy Exa's powerful search right from your browser's address bar!

---

## Exa Researcher - JavaScript

**URL:** llms-txt#exa-researcher---javascript

**Contents:**
- What this doc covers
- Setup
- Exa Auto search
- Writing a report with GPT-4
- All Together Now

Source: https://docs.exa.ai/examples/exa-researcher

Example project using the Exa JS SDK.

## What this doc covers

1. Using Exa's Auto search to pick the best search setting for each query
2. Using searchAndContents() through Exa's JavaScript SDK

In this example, we will build Exa Researcher, a JavaScript app that, given a research topic, automatically searches for relevant sources with Exa's [**Auto search**](/changelog/auto-search-as-default) and synthesizes the information into a reliable research report.

Fastest setup: Interact with the code in your browser with this Replit [template](https://replit.com/@olafblitz/exa-researcher?v=1).

Alternatively, this [interactive notebook](https://github.com/exa-labs/exa-js/tree/master/examples/researcher/researcher.ipynb) was made with the Deno Javascript kernel for Jupyter so you can easily run it locally. Check out the [plain JS version](https://github.com/exa-labs/exa-js/tree/master/examples/researcher/researcher.mjs) if you prefer a regular Javascript file you can run with NodeJS, or want to skip to the final result. If you'd like to run this notebook locally, [Installing Deno](https://docs.deno.com/runtime/manual/getting%5Fstarted/installation) and [connecting Deno to Jupyter](https://docs.deno.com/runtime/manual/tools/jupyter) is fast and easy.

To play with this code, first we need a [Exa API key](https://dashboard.exa.ai/api-keys) and an [OpenAI API key](https://platform.openai.com/api-keys).

Let's import the Exa and OpenAI SDKs and put in our API keys to create a client object for each. Make sure to pick the right imports for your runtime and paste or load your API keys.

Since we'll be making several calls to the OpenAI API to get a completion from GPT-3.5 Turbo, let's make a simple utility function so we can pass in the system and user messages directly, and get the LLM's response back as a string.

Okay, great! Now let's starting building Exa Researcher.

The researcher should be able to automatically generate research reports for all kinds of different topics. Here's two to start:

The first thing our researcher has to do is decide what kind of search to do for the given topic.

Exa offers multiple search methods, with **neural** search being our primary approach. Neural search is preferred when the query is broad and complex because it lets us retrieve high quality, semantically relevant data. Neural search is especially suitable when a topic is well-known and popularly discussed on the Internet, allowing the machine learning model to retrieve contents which are more likely recommended by real humans.

Conveniently, Exa's autosearch feature (on by default) will automatically decide which search method to use for each query, optimizing results based on the query type.

Now, we'll create a helper function to generate search queries for our topic.

Next, let's write another function that actually calls the Exa API to perform searches using Auto search.

## Writing a report with GPT-4

The final step is to instruct the LLM to synthesize the content into a research report, including citations of the original links. We can do that by pairing the content and the URLs and writing them into the prompt.

Now, let's just wrap everything into one Researcher function that strings together all the functions we've written. Given a user's research topic, the Researcher will generate search queries, feed those queries to Exa Auto search, and finally use an LLM to synthesize the retrieved information. Three simple steps!

In just a couple lines of code, we've used Exa to go from a research topic to a valuable essay with up-to-date sources.

For a link to a complete, cleaned up version of this project that you can execute in your NodeJS environment, check out the [alternative JS-only version](https://github.com/exa-labs/exa-js/tree/master/examples/researcher/researcher.mjs).

**Examples:**

Example 1 (unknown):
```unknown
Since we'll be making several calls to the OpenAI API to get a completion from GPT-3.5 Turbo, let's make a simple utility function so we can pass in the system and user messages directly, and get the LLM's response back as a string.
```

Example 2 (unknown):
```unknown
Okay, great! Now let's starting building Exa Researcher.

## Exa Auto search

The researcher should be able to automatically generate research reports for all kinds of different topics. Here's two to start:
```

Example 3 (unknown):
```unknown
The first thing our researcher has to do is decide what kind of search to do for the given topic.

Exa offers multiple search methods, with **neural** search being our primary approach. Neural search is preferred when the query is broad and complex because it lets us retrieve high quality, semantically relevant data. Neural search is especially suitable when a topic is well-known and popularly discussed on the Internet, allowing the machine learning model to retrieve contents which are more likely recommended by real humans.

Conveniently, Exa's autosearch feature (on by default) will automatically decide which search method to use for each query, optimizing results based on the query type.

Now, we'll create a helper function to generate search queries for our topic.
```

Example 4 (unknown):
```unknown
Next, let's write another function that actually calls the Exa API to perform searches using Auto search.
```

---

## Job Search with Exa

**URL:** llms-txt#job-search-with-exa

**Contents:**
- What This Doc Covers
- More than just jobs

Source: https://docs.exa.ai/examples/job-search-with-exa

Tutorial for simple Exa searches on our front-end.

## What This Doc Covers

* The problem with traditional job search tools
* How to use Exa, an AI-powered search engine, for job hunting
* Other cool ways to use Exa beyond job searching

Finding a job is way harder than it should be. Tools like LinkedIn, Handshake, or traditional search engines are supposed to solve this problem, but they're filled with too many noisy results to actually be useful.

Here's how you can use AI to find hundreds of hidden job listings in less than 5 minutes.

At a high level, Exa is a search engine that understands your query. So, when searching for "ML internships for new grads in San Francisco" here's what gets returned:

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/5d5309c-Screenshot_2024-07-18_at_12.44.34.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=69c0445ee6a92ada1eef02a2cfa7bf4d" alt="" data-og-width="1706" width="1706" data-og-height="1596" height="1596" data-path="images/5d5309c-Screenshot_2024-07-18_at_12.44.34.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/5d5309c-Screenshot_2024-07-18_at_12.44.34.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=b6d435f30264fb9855e9cb05e43daf8d 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/5d5309c-Screenshot_2024-07-18_at_12.44.34.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=d3210bef12498b88f4fff8a0e9841782 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/5d5309c-Screenshot_2024-07-18_at_12.44.34.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=91be0f8ee663f9c3b9d904a86e80b916 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/5d5309c-Screenshot_2024-07-18_at_12.44.34.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=d541231da353c644543513aef09049ee 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/5d5309c-Screenshot_2024-07-18_at_12.44.34.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=a89f08eec9d559e32dd26bf05df1fded 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/5d5309c-Screenshot_2024-07-18_at_12.44.34.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=894553c79389eb09556043910a66650c 2500w" />

And, by filtering for only things that were posted recently, you can make sure that the positions were new and not-filled.

But, there's actually an even better way to take advantage of Exa. You can just paste a job posting and get similar ones:

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/eb97595-Screenshot_2024-07-18_at_12.40.27.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=8fd3a8a4448a7ed7f5917c07e0aeeec5" alt="" data-og-width="1706" width="1706" data-og-height="1596" height="1596" data-path="images/eb97595-Screenshot_2024-07-18_at_12.40.27.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/eb97595-Screenshot_2024-07-18_at_12.40.27.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=330ab8ce1d71f3bfe59a75d3f0377fc7 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/eb97595-Screenshot_2024-07-18_at_12.40.27.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=4461ce355f399c8e8facb5b0aba99a54 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/eb97595-Screenshot_2024-07-18_at_12.40.27.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=e29b895d7a46f0bdcbcbfddc05bc47dc 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/eb97595-Screenshot_2024-07-18_at_12.40.27.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=ce2d38a266387070594c70333d385251 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/eb97595-Screenshot_2024-07-18_at_12.40.27.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=d56e556cb40097a93f3eb064021b6a94 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/eb97595-Screenshot_2024-07-18_at_12.40.27.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=7c19b835a8dcbc3a3f2f30223ca4c5f0 2500w" />

## More than just jobs

Job search is really just one use case of Exa. Exa is a search engine built using novel representation learning techniques.

For example, Exa excels at finding similar things.

* **Shopping**: if you want a similar (but cheaper) shirt, paste a link to your shirt and it'll give you hundreds like it
* **Research**: paste a link to a research paper to find hundreds of other relevant papers
* **Startups**: if you're building a startup, find your competitors by searching a link to your startup

---

## Create an Import

**URL:** llms-txt#create-an-import

Source: https://docs.exa.ai/websets/api/imports/create-an-import

post /v0/imports
Creates a new import to upload your data into Websets. Imports can be used to:

- **Enrich**: Enhance your data with additional information using our AI-powered enrichment engine
- **Search**: Query your data using Websets' agentic search with natural language filters
- **Exclude**: Prevent duplicate or already known results from appearing in your searches

Once the import is created, you can upload your data to the returned `uploadUrl` until `uploadValidUntil` (by default 1 hour).

---

## How Exa Search Works

**URL:** llms-txt#how-exa-search-works

**Contents:**
- Neural search via 'next-link prediction'
- Auto search combines multiple methods
- Deep search for comprehensive results
- Fast search is the world's fastest search API

Source: https://docs.exa.ai/reference/how-exa-search-works

Exa is a novel search engine that utilizes the latest advancements in AI language processing to return the best possible results.

We offer four search types:

* **Auto (Default)** - Our best search, intelligently combines multiple search methods
* **Fast** - A streamlined implementation for faster results
* **Deep** - Comprehensive search with query expansion and detailed context
* **Neural** - Our AI search model, predicts relevant links based on query meaning

## Neural search via 'next-link prediction'

At Exa, we've built our very own index of high quality web content, and have trained a model to query this index powered by the same embeddings-based technology that makes modern LLMs so powerful.

By using embeddings, we move beyond traditional searches to use 'next-link prediction', understanding the semantic content of queries and indexed documents. This method predicts which web links are most relevant based on the semantic meaning, not just direct word matches.

By doing this, our model anticipates the most relevant links by understanding complex queries, including indirect or thematic relationships. This approach is especially effective for exploratory searches, where precise terms may be unknown, or where queries demand many, often semantically dense, layered filters.

You can query our search model directly with search type `neural`. It is also incorporated into the `auto` and `fast` search types.

## Auto search combines multiple methods

Sometimes traditional search methods are the best way to query the web - for instance, you may have a specific word or piece of jargon that you want to match explicitly with results (often the case with proper nouns like place-names). In these cases, semantic searches alone are not the most useful.

To ensure our engine is comprehensive, we have built multiple search capabilities in parallel to our novel neural search. This means Exa is an 'all-in-one' search solution, no matter what your query needs are.

We surface the best results through search type `auto`, to give users the best of all worlds. It uses a reranker model that understands your query and ranks results from multiple search methods according to relevance.

## Deep search for comprehensive results

Deep search takes a different approach by expanding your query into multiple variations and running parallel searches to find comprehensive results. When you provide a single query, Deep search automatically generates additional query variations to capture different aspects of your search intent. You can also provide your own query variations using the `additionalQueries` parameter for even more control.

Deep search is particularly powerful for research tasks, complex questions, and when you need detailed context about each result. It returns rich context for each result, making it ideal for applications that need to understand the content of web pages in depth.

You can use Deep search by setting `type="deep"` in your search requests. Note that Deep search requires the `context` parameter to be set to `true` in the contents object to return the detailed context for each result.

## Fast search is the world's fastest search API

We built Fast search for when latency matters most. It trades off a small amount of performance for significant speed improvements.

Fast search is best for applications where milliseconds matter. It means a much better user experience for real-time applications like voice agents and autocomplete. It's also great for long running agents, like deep research, that might use hundreds of search calls so the latency adds up.

We achieved these latency improvements by making streamlined versions of our neural and reranker models. You can expect Fast search to run in less than 400 milliseconds, not accounting for network latency or live crawling.

---

## Import from CSV

**URL:** llms-txt#import-from-csv

**Contents:**
- Overview
- How it works
- CSV preparation
- What happens next?
  - Enrich with custom columns
  - Apply search criteria

Source: https://docs.exa.ai/websets/dashboard/import-from-csv

Turn your existing CSV data into a Webset

The Import from CSV feature allows you to transform your existing CSV files containing URLs into fully-functional Websets. This is perfect when you already have a list of websites, companies, or resources that you want to enrich with additional data or apply search criteria to filter.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/import-flow.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=6cf23e9e291fe7811942d18c3aa08b33" alt="" data-og-width="1512" width="1512" data-og-height="857" height="857" data-path="images/websets/import-flow.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/import-flow.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=7144bcac1257ad6234f84e09b3b46e65 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/import-flow.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=e0002f49d319b209241babc75e41bb8c 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/import-flow.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=4a05c88f7ee0b6c5e1aff2b9b2123458 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/import-flow.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=00a37fce8580e9c539033d63d15c00cb 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/import-flow.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=11b6832f570530b2a28d21ced7ce3ad1 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/import-flow.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=be874fa671009913eae844700df875d6 2500w" />

1. Click "Start from CSV" to select your CSV file
2. Select which column contains the URLs you want to analyze
3. Review how your data will be imported before proceeding
4. Your URLs are transformed into a Webset with enrichments and metadata

Ensure your CSV file has a URL column

* For People searches: URLs must be LinkedIn profile URLs (e.g., [https://linkedin.com/in/username](https://linkedin.com/in/username))
* For Company search: URLs must be company homepage URLs (e.g., [https://example.com](https://example.com))
* For other searches: use any type of URL

If you do not have URLs, Websets will attempt to infer URLs based on the information in each CSV row and any extra info you provide.

The maximum number of results you can import is determined by your plan.

## What happens next?

Once imported, your CSV becomes a full Webset where you can:

### Enrich with custom columns

Add any information you want about each URL:

* Contact information (emails, phone numbers)
* Company metrics (revenue, employee count)
* Content analysis (sentiment, topics, summaries)
* Custom data specific to your use case

### Apply search criteria

Filter your imported URLs based on specific criteria:

* Company stage or size
* Industry or sector
* Geographic location
* Content type or topic

---

## Preview a webset

**URL:** llms-txt#preview-a-webset

Source: https://docs.exa.ai/websets/api/websets/preview-a-webset

post /v0/websets/preview
Preview how a search query will be decomposed before creating a webset. This endpoint performs the same query analysis that happens during webset creation, allowing you to see the detected entity type, generated search criteria, and available enrichment columns in advance.

Use this to help users understand how their search will be interpreted before committing to a full webset creation.

---

## Create a Monitor

**URL:** llms-txt#create-a-monitor

Source: https://docs.exa.ai/websets/api/monitors/create-a-monitor

post /v0/monitors
Creates a new `Monitor` to continuously keep your Websets updated with fresh data.

Monitors automatically run on your defined schedule to ensure your Websets stay current without manual intervention:

- **Find new content**: Execute `search` operations to discover fresh items matching your criteria
- **Update existing content**: Run `refresh` operations to update items contents and enrichments
- **Automated scheduling**: Configure `cron` expressions and `timezone` for precise scheduling control

---

## After: Use results in the order returned (already optimally ranked)

**URL:** llms-txt#after:-use-results-in-the-order-returned-(already-optimally-ranked)

result = exa.search("AI startups", type="auto")

---

## SDK changes: highlights removed and contents returned by default

**URL:** llms-txt#sdk-changes:-highlights-removed-and-contents-returned-by-default

**Contents:**
  - 1. Contents Included by Default in SDKs
  - 2. Highlights Feature Removed from SDKs
  - 3. use\_autoprompt Deprecated in All API Responses
- Need Help?

Source: https://docs.exa.ai/changelog/sdk-major-version-changes

Major SDK update with contents included by default in search, highlights feature removed from SDKs, and use_autoprompt field deprecated in all API responses.

**Date: October 28, 2025**

We're releasing a major version update to our SDKs along with changes to API responses. This update makes content retrieval more convenient while removing deprecated features.

### 1. Contents Included by Default in SDKs

Search operations in the SDKs now include page contents by default, eliminating the need for a separate contents call in most workflows. You can opt out if you need faster searches without content.

### 2. Highlights Feature Removed from SDKs

The highlights feature has been completely removed from all SDKs. This feature was previously deprecated and is no longer available in the SDK packages.

> *Update (November 2025): Highlights have been reintroduced in the JavaScript SDK as of `exa-js` v2.0.11. See [JS SDK: highlights restored](/changelog/highlights-restored-js-sdk) for details.*

**Migration Options:**

* **Option 1**: Do not upgrade to the new major version if you still need highlights
* **Option 2**: Use the API directly to access highlights functionality
* **Option 3**: Use "AI Summary" to get the main summary of "text"

### 3. use\_autoprompt Deprecated in All API Responses

The `use_autoprompt` field has been deprecated and removed from all API responses across the entire platform. This field is no longer needed with current search improvements.

If you have questions about upgrading or need help with migration, please reach out to [hello@exa.ai](mailto:hello@exa.ai). We're here to help ensure a smooth transition to the new major version.

---

## type="deep",

**URL:** llms-txt#type="deep",

---

## Python SDK Specification

**URL:** llms-txt#python-sdk-specification

**Contents:**
- Getting started
- `search` Method
  - Input Example:

Source: https://docs.exa.ai/sdks/python-sdk-specification

Enumeration of methods and types in the Exa Python SDK (exa_py).

Install the [exa-py](https://github.com/exa-labs/exa-py) SDK

and then instantiate an Exa client

<Card title="Get API Key" icon="key" horizontal href="https://dashboard.exa.ai/login?redirect=/docs?path=/reference/python-sdk-specification">
  Follow this link to get your API key
</Card>

Perform an Exa search given an input query and retrieve a list of relevant results as links.

```Python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
and then instantiate an Exa client
```

Example 2 (unknown):
```unknown
<Card title="Get API Key" icon="key" horizontal href="https://dashboard.exa.ai/login?redirect=/docs?path=/reference/python-sdk-specification">
  Follow this link to get your API key
</Card>

## `search` Method

Perform an Exa search given an input query and retrieve a list of relevant results as links.

### Input Example:
```

---

## Search with highlights

**URL:** llms-txt#search-with-highlights

result_with_highlights = exa.search_and_contents(
    "AI in healthcare",
    highlights=True,
    num_results=2
)

---

## Explicitly use neural search

**URL:** llms-txt#explicitly-use-neural-search

result = exa.search_and_contents("hottest AI startups", type="neural")
```

We're confident this update will significantly improve your search experience. If you have any questions or want to chat about how this might impact your specific use case, please reach out to [hello@exa.ai](mailto:hello@exa.ai).

We can't wait for you to try out the new Auto search as default!

---

## define the function that will be called when the tool is used and perform the search

**URL:** llms-txt#define-the-function-that-will-be-called-when-the-tool-is-used-and-perform-the-search

---

## Company researcher

**URL:** llms-txt#company-researcher

Source: https://docs.exa.ai/examples/demo-company-researcher

---

## Get a research task by ID

**URL:** llms-txt#get-a-research-task-by-id

**Contents:**
  - Input Parameters:
  - Returns:
  - Return Example:
- `research.poll_task` Method
  - Input Example:

task_id = "your-task-id-here"
task = exa.research.get_task(task_id)

print(f"Task status: {task.status}")
if task.status == "completed":
    print(f"Results: {task.data}")
    print(f"Citations: {task.citations}")
JSON JSON theme={null}
{
  "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
  "status": "completed",
  "instructions": "What is the latest valuation of SpaceX?",
  "schema": {
    "type": "object",
    "properties": {
      "valuation": {"type": "string"},
      "date": {"type": "string"},
      "source": {"type": "string"}
    }
  },
  "data": {
    "valuation": "$350 billion",
    "date": "December 2024",
    "source": "Financial Times"
  },
  "citations": {
    "valuation": [
      {
        "id": "https://www.ft.com/content/...",
        "url": "https://www.ft.com/content/...",
        "title": "SpaceX valued at $350bn in employee share sale",
        "snippet": "SpaceX has been valued at $350bn..."
      }
    ]
  }
}
Python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
### Input Parameters:

| Parameter | Type | Description                       | Default  |
| --------- | ---- | --------------------------------- | -------- |
| task\_id  | str  | The unique identifier of the task | Required |

### Returns:

Returns a `ResearchTaskDetails` object:

| Field        | Type                        | Description                                      |
| ------------ | --------------------------- | ------------------------------------------------ |
| id           | str                         | The unique identifier for the task               |
| status       | str                         | Task status: "running", "completed", or "failed" |
| instructions | str                         | The original instructions provided               |
| schema       | Optional\[Dict]             | The JSON schema specification used               |
| data         | Optional\[Dict]             | The research results (when completed)            |
| citations    | Optional\[Dict\[str, List]] | Citations grouped by root field (when completed) |

### Return Example:
```

Example 2 (unknown):
```unknown
## `research.poll_task` Method

Poll a research task until it completes or fails, returning the final result.

### Input Example:
```

---

## RAG Q&A

**URL:** llms-txt#rag-q&a

**Contents:**
  - What this doc covers
- Answer your questions with context

Source: https://docs.exa.ai/examples/exa-rag

Using Exa to enable retrieval-augmented generation.

### What this doc covers

1. Using Exa search\_and\_contents to find relevant webpages for a query and get their contents
2. Performing Exa search based on text similarity rather than a search query

The Jupyter notebook for this tutorial is available on [Colab](https://colab.research.google.com/drive/1iXfXg9%5F-MEmhwW1a0WRHHbMl21jSxjO7?usp=sharing) for easy experimentation.

## Answer your questions with context

LLMs are powerful because they compress large amounts of data into a format that allows convenient access, but this compressions isn't lossless. LLMs are prone to hallucination, corrupting facts and details from training data.

To get around this fundamental issue with LLM reliability, we can use Exa to bring the most relevant data into context—a fancy way of saying: put the info in the LLM prompt directly. This lets us combine the compressed data and *reasoning abilities* of the LLM with a curated selection of uncompressed, accurate data for the problem at hand for the best answers possible.

Exa's SDKs make incorporating quality data into your LLM pipelines quick and painless. Install the SDK by running this command in your terminal:

```Python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown

```

---

## Livecrawling Contents

**URL:** llms-txt#livecrawling-contents

**Contents:**
- LiveCrawl Options
- Recommended default
- When LiveCrawl Isn't Necessary
- Examples
  - Company News
  - Production Applications

Source: https://docs.exa.ai/reference/livecrawling-contents

With Exa, we can already search the web using LLMs.

However, by default, we cache all of our links to bias for the fastest response possible. You may be interested in the live version of the page, which our `livecrawl` parameter can help with.

Here are all livecrawl options and their behaviors:

| Option        | Crawl Behavior   | Cache Fallback              | Best For                                               |
| ------------- | ---------------- | --------------------------- | ------------------------------------------------------ |
| `"always"`    | Always crawls    | Never falls back            | Real-time data (news, stock prices, live events)       |
| `"preferred"` | Always crawls    | Falls back on crawl failure | Production apps needing fresh content with reliability |
| `"fallback"`  | Only if no cache | Uses cache first            | Balanced speed and freshness                           |
| `"never"`     | Never crawls     | Always uses cache           | Maximum speed, historical/static content               |

## Recommended default

> **Best practice:** Start with `livecrawl: "preferred"` and set `livecrawlTimeout` (for example `10000`–`15000` ms). This combination aggressively tries to fetch fresh content, falls back to cached data if the live crawl fails or times out, and prevents long-running calls from hanging. Reserve `livecrawl: "always"` for the rare cases where you'd rather return an error than fall back to cached content.

## When LiveCrawl Isn't Necessary

Cached data is sufficient for many queries, especially for historical topics like "What were the major causes of World War II?" or educational content such as "How does photosynthesis work?" These subjects rarely change, so reliable cached results can provide accurate information quickly.

Using `"preferred"` with an explicit timeout ensures you get the freshest content while still returning cached data if Apple's homepage can’t be crawled quickly. Switch to `"always"` only if you truly prefer the call to fail rather than receive cached content:

Output without LiveCrawl: Results here are slightly dated, mentioning a fall release (later in the year)

Output with LiveCrawl (as at Oct 30 2024): Now we see contents talking about Apple's upcoming specific release on November 11th

### Production Applications

Using `"preferred"` provides fresh content with fallback reliability. This is ideal for production applications:

This will try to get the freshest content available, but if live crawling fails (due to website downtime, network issues, etc.), it falls back to cached content instead of failing entirely. This makes it ideal for production applications.

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

Output without LiveCrawl: Results here are slightly dated, mentioning a fall release (later in the year)
```

Example 4 (unknown):
```unknown
Output with LiveCrawl (as at Oct 30 2024): Now we see contents talking about Apple's upcoming specific release on November 11th
```

---

## Before: Code that depends on scores

**URL:** llms-txt#before:-code-that-depends-on-scores

result = exa.search("AI startups", type="auto")
sorted_results = sorted(result.results, key=lambda x: x.score, reverse=True)

---

## TypeScript SDK Specification

**URL:** llms-txt#typescript-sdk-specification

**Contents:**
- Getting started
- `search` Method
  - Input Example
  - Input Parameters
  - Returns Example
  - Return Parameters
  - `SearchResponse`
  - `Result` Object
- `searchAndContents` Method
  - Input Example

Source: https://docs.exa.ai/sdks/typescript-sdk-specification

Installing the [exa-js](https://github.com/exa-labs/exa-js) SDK

<Tabs>
  <Tab title="npm">
    
  </Tab>

<Tab title="pnpm">
    
  </Tab>
</Tabs>

and then instantiate an Exa client

<Card title="Get API Key" icon="key" horizontal href="https://dashboard.exa.ai/login?redirect=/docs?path=/reference/typescript-sdk-specification">
  Follow this link to get your API key
</Card>

Perform an Exa search given an input query and retrieve a list of relevant results as links.

| Parameter          | Type      | Description                                                                                                                                                                                                                       | Default   |
| ------------------ | --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------- |
| query              | string    | The input query string.                                                                                                                                                                                                           | Required  |
| numResults         | number    | Number of search results to return. Limits vary by search type: with "neural": max 100. If you want to increase the num results, contact sales ([hello@exa.ai](mailto:hello@exa.ai))                                              | 10        |
| includeDomains     | string\[] | List of domains to include in the search.                                                                                                                                                                                         | undefined |
| excludeDomains     | string\[] | List of domains to exclude in the search.                                                                                                                                                                                         | undefined |
| startCrawlDate     | string    | Results will only include links **crawled** after this date.                                                                                                                                                                      | undefined |
| endCrawlDate       | string    | Results will only include links **crawled** before this date.                                                                                                                                                                     | undefined |
| startPublishedDate | string    | Results will only include links with a **published** date after this date.                                                                                                                                                        | undefined |
| endPublishedDate   | string    | Results will only include links with a **published** date before this date.                                                                                                                                                       | undefined |
| type               | string    | The type of search: "auto", "neural", "fast", or "deep".                                                                                                                                                                          | "auto"    |
| category           | string    | A data category to focus on when searching, with higher comprehensivity and data cleanliness. Available categories: "company", "research paper", "news", "github", "tweet", "personal site", "pdf", "financial report", "people". | undefined |
| includeText        | string\[] | List of strings that must be present in webpage text of results. Currently, only 1 string is supported, of up to 5 words.                                                                                                         | undefined |
| excludeText        | string\[] | List of strings that must not be present in webpage text of results. Currently, only 1 string is supported, of up to 5 words. Checks from the first 1000 words of the webpage text.                                               | undefined |

### Return Parameters

| Field   | Type      | Description            |
| ------- | --------- | ---------------------- |
| results | Result\[] | List of Result objects |

| Field | Type           | Description                   |
| ----- | -------------- | ----------------------------- |
| url   | string         | URL of the search result      |
| id    | string         | Temporary ID for the document |
| title | string \| null | Title of the search result    |

\| publishedDate? | string         | Estimated creation date                       |
\| author?        | string         | Author of the content, if available           |

## `searchAndContents` Method

Perform an Exa search given an input query and retrieve a list of relevant results as links, optionally including the full text and/or highlights of the content.

| Parameter          | Type                                                                             | Description                                                                                                                                                                                                                                | Default   |
| ------------------ | -------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------- |
| query              | string                                                                           | The input query string.                                                                                                                                                                                                                    | Required  |
| text               | boolean \| \{ maxCharacters?: number, includeHtmlTags?: boolean }                | If provided, includes the full text of the content in the results.                                                                                                                                                                         | undefined |
| highlights         | boolean \| \{ query?: string, numSentences?: number, highlightsPerUrl?: number } | If provided, includes highlights of the content in the results.                                                                                                                                                                            | undefined |
| context            | boolean \| \{ maxCharacters?: number }                                           | Return page contents as a context string for LLM RAG. When true, combines all result contents into one string. We recommend 10000+ characters for best results. Context strings often perform better than highlights for RAG applications. | undefined |
| numResults         | number                                                                           | Number of search results to return. Limits vary by search type: with "neural": max 100. If you want to increase the num results, contact sales ([hello@exa.ai](mailto:hello@exa.ai))                                                       | 10        |
| includeDomains     | string\[]                                                                        | List of domains to include in the search.                                                                                                                                                                                                  | undefined |
| excludeDomains     | string\[]                                                                        | List of domains to exclude in the search.                                                                                                                                                                                                  | undefined |
| startCrawlDate     | string                                                                           | Results will only include links **crawled** after this date.                                                                                                                                                                               | undefined |
| endCrawlDate       | string                                                                           | Results will only include links **crawled** before this date.                                                                                                                                                                              | undefined |
| startPublishedDate | string                                                                           | Results will only include links with a **published** date after this date.                                                                                                                                                                 | undefined |
| endPublishedDate   | string                                                                           | Results will only include links with a **published** date before this date.                                                                                                                                                                | undefined |
| type               | string                                                                           | The type of search: "auto", "neural", "fast", or "deep".                                                                                                                                                                                   | "auto"    |
| category           | string                                                                           | A data category to focus on when searching, with higher comprehensivity and data cleanliness. Available categories: "company", "research paper", "news", "github", "tweet", "personal site", "pdf", "financial report", "people".          | undefined |
| includeText        | string\[]                                                                        | List of strings that must be present in webpage text of results. Currently, only 1 string is supported, of up to 5 words.                                                                                                                  | undefined |
| excludeText        | string\[]                                                                        | List of strings that must not be present in webpage text of results. Currently, only 1 string is supported, of up to 5 words. Checks from the first 1000 words of the webpage text.                                                        | undefined |

### Return Parameters

| Field   | Type                | Description                  |
| ------- | ------------------- | ---------------------------- |
| results | SearchResult\<T>\[] | List of SearchResult objects |

Extends the `Result` object from the `search` method with additional fields based on `T`:

| Field            | Type      | Description                                    |
| ---------------- | --------- | ---------------------------------------------- |
| text?            | string    | Text of the search result page (if requested)  |
| highlights?      | string\[] | Highlights of the search result (if requested) |
| highlightScores? | number\[] | Scores of the highlights (if requested)        |

Note: The actual fields present in the `SearchResult<T>` object depend on the options provided in the `searchAndContents` call.

## `findSimilar` Method

Find a list of similar results based on a webpage's URL.

| Parameter           | Type      | Description                                                                                   | Default   |
| ------------------- | --------- | --------------------------------------------------------------------------------------------- | --------- |
| url                 | string    | The URL of the webpage to find similar results for.                                           | Required  |
| numResults          | number    | Number of similar results to return.                                                          | undefined |
| includeDomains      | string\[] | List of domains to include in the search.                                                     | undefined |
| excludeDomains      | string\[] | List of domains to exclude from the search.                                                   | undefined |
| startCrawlDate      | string    | Results will only include links **crawled** after this date.                                  | undefined |
| endCrawlDate        | string    | Results will only include links **crawled** before this date.                                 | undefined |
| startPublishedDate  | string    | Results will only include links with a **published** date after this date.                    | undefined |
| endPublishedDate    | string    | Results will only include links with a **published** date before this date.                   | undefined |
| excludeSourceDomain | boolean   | If true, excludes results from the same domain as the input URL.                              | undefined |
| category            | string    | A data category to focus on when searching, with higher comprehensivity and data cleanliness. | undefined |

### Return Parameters

| Field   | Type      | Description            |
| ------- | --------- | ---------------------- |
| results | Result\[] | List of Result objects |

| Field | Type           | Description                   |
| ----- | -------------- | ----------------------------- |
| url   | string         | URL of the search result      |
| id    | string         | Temporary ID for the document |
| title | string \| null | Title of the search result    |

\| publishedDate? | string         | Estimated creation date                       |
\| author?        | string         | Author of the content, if available           |

## `findSimilarAndContents` Method

Find a list of similar results based on a webpage's URL, optionally including the text content or highlights of each result.

| Parameter           | Type                                                                             | Description                                                                                   | Default   |
| ------------------- | -------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------- |
| url                 | string                                                                           | The URL of the webpage to find similar results for.                                           | Required  |
| text                | boolean \| \{ maxCharacters?: number, includeHtmlTags?: boolean }                | If provided, includes the full text of the content in the results.                            | undefined |
| highlights          | boolean \| \{ query?: string, numSentences?: number, highlightsPerUrl?: number } | If provided, includes highlights of the content in the results.                               | undefined |
| numResults          | number                                                                           | Number of similar results to return.                                                          | undefined |
| includeDomains      | string\[]                                                                        | List of domains to include in the search.                                                     | undefined |
| excludeDomains      | string\[]                                                                        | List of domains to exclude from the search.                                                   | undefined |
| startCrawlDate      | string                                                                           | Results will only include links **crawled** after this date.                                  | undefined |
| endCrawlDate        | string                                                                           | Results will only include links **crawled** before this date.                                 | undefined |
| startPublishedDate  | string                                                                           | Results will only include links with a **published** date after this date.                    | undefined |
| endPublishedDate    | string                                                                           | Results will only include links with a **published** date before this date.                   | undefined |
| excludeSourceDomain | boolean                                                                          | If true, excludes results from the same domain as the input URL.                              | undefined |
| category            | string                                                                           | A data category to focus on when searching, with higher comprehensivity and data cleanliness. | undefined |

### Return Parameters

| Field   | Type                | Description                  |
| ------- | ------------------- | ---------------------------- |
| results | SearchResult\<T>\[] | List of SearchResult objects |

Extends the `Result` object with additional fields based on the requested content:

| Field | Type     | Description                   |                            |
| ----- | -------- | ----------------------------- | -------------------------- |
| url   | string   | URL of the search result      |                            |
| id    | string   | Temporary ID for the document |                            |
| title | \`string | null\`                        | Title of the search result |

\| publishedDate?   | string     | Estimated creation date                        |                            |
\| author?          | string     | Author of the content, if available            |                            |
\| text?            | string     | Text of the search result page (if requested)  |                            |
\| highlights?      | string\[] | Highlights of the search result (if requested) |                            |
\| highlightScores? | number\[] | Scores of the highlights (if requested)        |

Note: The actual fields present in the `SearchResult<T>` object depend on the options provided in the `findSimilarAndContents` call.

## `getContents` Method

Retrieves contents of documents based on a list of document IDs.

| Parameter  | Type                                                                             | Description                                                        | Default   |
| ---------- | -------------------------------------------------------------------------------- | ------------------------------------------------------------------ | --------- |
| ids        | string \| string\[] \| SearchResult\[]\`                                         | A single ID, an array of IDs, or an array of SearchResults.        | Required  |
| text       | boolean \| \{ maxCharacters?: number, includeHtmlTags?: boolean }                | If provided, includes the full text of the content in the results. | undefined |
| highlights | boolean \| \{ query?: string, numSentences?: number, highlightsPerUrl?: number } | If provided, includes highlights of the content in the results.    | undefined |

### Return Parameters

| Field   | Type                | Description                  |
| ------- | ------------------- | ---------------------------- |
| results | SearchResult\<T>\[] | List of SearchResult objects |

The fields in the `SearchResult<T>` object depend on the options provided in the `getContents` call:

| Field            | Type      | Description                                    |                            |
| ---------------- | --------- | ---------------------------------------------- | -------------------------- |
| id               | string    | Temporary ID for the document                  |                            |
| url              | string    | URL of the search result                       |                            |
| title            | \`string  | null\`                                         | Title of the search result |
| publishedDate?   | string    | Estimated creation date                        |                            |
| author?          | string    | Author of the content, if available            |                            |
| text?            | string    | Text of the search result page (if requested)  |                            |
| highlights?      | string\[] | Highlights of the search result (if requested) |                            |
| highlightScores? | number\[] | Scores of the highlights (if requested)        |                            |

Note: The actual fields present in the `SearchResult<T>` object depend on the options provided in the `getContents` call. If neither `text` nor `highlights` is specified, the method defaults to including the full text content.

Generate an answer to a query using Exa's search and LLM capabilities. This returns an AnswerResponse object with the answer text and citations used. You may optionally retrieve the full text of each source by setting `text: true`.

| Parameter | Type              | Description                                                        | Default  |
| --------- | ----------------- | ------------------------------------------------------------------ | -------- |
| query     | string            | The question or query to answer.                                   | Required |
| options   | \{text?: boolean} | If text is true, each source in the result includes its full text. | {}       |

### Return Parameters

#### `AnswerResponse`

| Field      | Type                   | Description                               |
| ---------- | ---------------------- | ----------------------------------------- |
| answer     | string                 | The generated answer text                 |
| citations  | SearchResult\<\{ }>\[] | The citations used to generate the answer |
| requestId? | string                 | Optional request ID for reference         |

Each citation is a `SearchResult<{}>` — a basic result object that can include text if options.text was set to true.

## `streamAnswer` Method

Generate a streaming answer to a query with Exa's LLM capabilities. This returns an async generator yielding chunks of text and/or citations as they become available.

| Parameter | Type                | Description                                                  | Default  |
| --------- | ------------------- | ------------------------------------------------------------ | -------- |
| query     | string              | The question to answer.                                      | Required |
| options   | \{ text?: boolean } | If text is true, each citation chunk includes its full text. | {}       |

An async generator of objects with the type:

* `content` is the partial text content of the answer so far (streamed in chunks).
* `citations` is an array of citation objects that appear at this chunk in the response.

You can end iteration by using a break or by letting the loop finish naturally.

## `research.create` Method

Create an asynchronous research task that performs multi-step web research and returns structured JSON results with citations.

| Parameter    | Type          | Description                                                                                       | Default       |
| ------------ | ------------- | ------------------------------------------------------------------------------------------------- | ------------- |
| instructions | string        | Natural language instructions describing what the research task should accomplish.                | Required      |
| model        | ResearchModel | The research model to use. Options: ResearchModel.exa\_research, ResearchModel.exa\_research\_pro | exa\_research |
| outputSchema | object        | Optional JSON schema for structured output. If not provided, schema will be inferred.             | undefined     |

| Field      | Type   | Description                        |
| ---------- | ------ | ---------------------------------- |
| researchId | string | The unique identifier for the task |

## `research.get` Method

Get the current status and results of a research task by its ID.

| Parameter  | Type   | Description                       | Default  |
| ---------- | ------ | --------------------------------- | -------- |
| researchId | string | The unique identifier of the task | Required |

| Field        | Type                                    | Description                                      |
| ------------ | --------------------------------------- | ------------------------------------------------ |
| researchId   | string                                  | The unique identifier for the task               |
| status       | string                                  | Task status: "running", "completed", or "failed" |
| instructions | string                                  | The original instructions provided               |
| schema       | object (optional)                       | The JSON schema specification used               |
| data         | object (optional)                       | The research results (when completed)            |
| citations    | Record\<string, Citation\[]> (optional) | Citations grouped by root field (when completed) |

## `research.pollUntilFinished` Method

Poll a research task until it completes or fails, returning the final result.

| Parameter  | Type   | Description                       | Default  |
| ---------- | ------ | --------------------------------- | -------- |
| researchId | string | The unique identifier of the task | Required |

Note: The pollUntilFinished method automatically polls every 1 second with a timeout of 10 minutes.

Returns a `ResearchTask` object with the completed task data (same structure as `getTask`).

## `research.list` Method

List all research tasks with optional pagination.

| Parameter | Type   | Description                             | Default   |
| --------- | ------ | --------------------------------------- | --------- |
| cursor    | string | Pagination cursor from previous request | undefined |
| limit     | number | Number of results to return (1-200)     | 25        |

| Field      | Type              | Description                                   |
| ---------- | ----------------- | --------------------------------------------- |
| data       | ResearchTask\[]   | List of research task objects                 |
| hasMore    | boolean           | Whether there are more results to paginate    |
| nextCursor | string (optional) | Cursor for the next page (if hasMore is true) |

**Examples:**

Example 1 (unknown):
```unknown
</Tab>

  <Tab title="pnpm">
```

Example 2 (unknown):
```unknown
</Tab>
</Tabs>

and then instantiate an Exa client
```

Example 3 (unknown):
```unknown
<Card title="Get API Key" icon="key" horizontal href="https://dashboard.exa.ai/login?redirect=/docs?path=/reference/typescript-sdk-specification">
  Follow this link to get your API key
</Card>

<br />

***

## `search` Method

Perform an Exa search given an input query and retrieve a list of relevant results as links.

<br />

### Input Example
```

Example 4 (unknown):
```unknown
<br />

### Input Parameters

| Parameter          | Type      | Description                                                                                                                                                                                                                       | Default   |
| ------------------ | --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------- |
| query              | string    | The input query string.                                                                                                                                                                                                           | Required  |
| numResults         | number    | Number of search results to return. Limits vary by search type: with "neural": max 100. If you want to increase the num results, contact sales ([hello@exa.ai](mailto:hello@exa.ai))                                              | 10        |
| includeDomains     | string\[] | List of domains to include in the search.                                                                                                                                                                                         | undefined |
| excludeDomains     | string\[] | List of domains to exclude in the search.                                                                                                                                                                                         | undefined |
| startCrawlDate     | string    | Results will only include links **crawled** after this date.                                                                                                                                                                      | undefined |
| endCrawlDate       | string    | Results will only include links **crawled** before this date.                                                                                                                                                                     | undefined |
| startPublishedDate | string    | Results will only include links with a **published** date after this date.                                                                                                                                                        | undefined |
| endPublishedDate   | string    | Results will only include links with a **published** date before this date.                                                                                                                                                       | undefined |
| type               | string    | The type of search: "auto", "neural", "fast", or "deep".                                                                                                                                                                          | "auto"    |
| category           | string    | A data category to focus on when searching, with higher comprehensivity and data cleanliness. Available categories: "company", "research paper", "news", "github", "tweet", "personal site", "pdf", "financial report", "people". | undefined |
| includeText        | string\[] | List of strings that must be present in webpage text of results. Currently, only 1 string is supported, of up to 5 words.                                                                                                         | undefined |
| excludeText        | string\[] | List of strings that must not be present in webpage text of results. Currently, only 1 string is supported, of up to 5 words. Checks from the first 1000 words of the webpage text.                                               | undefined |

<br />

### Returns Example
```

---

## define the function that will process the tool call and perform the exa search

**URL:** llms-txt#define-the-function-that-will-process-the-tool-call-and-perform-the-exa-search

def process_tool_calls(tool_calls, messages):
    
    for tool_call in tool_calls:
        function_name = tool_call.function.name
        function_args = json.loads(tool_call.function.arguments)
        
        if function_name == "exa_search":
            search_results = exa_search(**function_args)
            messages.append(
                {
                    "role": "tool",
                    "content": str(search_results),
                    "tool_call_id": tool_call.id,
                }
            )
            console.print(
                f"[bold cyan]Context updated[/bold cyan] [i]with[/i] "
                f"[bold green]exa_search ({function_args.get('mode')})[/bold green]: ",
                function_args.get("query"),
            )
            
    return messages

def main():
    messages = [SYSTEM_MESSAGE]
    
    while True:
        try:
            # create the user input prompt using rich
            user_query = Prompt.ask(
                "[bold yellow]What do you want to search for?[/bold yellow]",
            )
            messages.append({"role": "user", "content": user_query})
            
            # call openai llm by creating a completion which calls the defined exa tool
            completion = openai.chat.completions.create(
                model="gpt-4o",
                messages=messages,
                tools=TOOLS,
                tool_choice="auto",
            )
            
            # completion will contain the object needed to invoke your tool and perform the search
            message = completion.choices[0].message
            tool_calls = message.tool_calls
            
            if tool_calls:

messages.append(message)

# process the tool object created by OpenAI llm and store the search results
                messages = process_tool_calls(tool_calls, messages)
                messages.append(
                    {
                        "role": "user",
                        "content": "Answer my previous query based on the search results.",
                    }
                )
                
                # call OpenAI llm again to process the search results and yield the final answer
                completion = openai.chat.completions.create(
                    model="gpt-4o",
                    messages=messages,
                )
                
                # parse the agents final answer and print it
                console.print(Markdown(completion.choices[0].message.content))
            else:
                console.print(Markdown(message.content))
        except Exception as e:
            console.print(f"[bold red]An error occurred:[/bold red] {str(e)}")
            
            
if __name__ == "__main__":
    main()
```

---

## Returns: "correct", "partial", or "incorrect"

**URL:** llms-txt#returns:-"correct",-"partial",-or-"incorrect"

**Contents:**
- Optimal Exa Settings for Evaluation
  - Configuration Parameters
  - Recommended Configuration Templates
- Choosing Datasets for Evaluation
  - Benchmark-to-Search-Type Mapping
  - Dataset Characteristics
- Benchmark Results
  - Low-Latency Search Engines
  - Agentic Search APIs
- Quality-Latency Tradeoffs

python Python theme={null}
  result = exa.search_and_contents(
      query,
      type="fast",
      num_results=10,
      text={"max_characters": 5000}
  )
  javascript JavaScript theme={null}
  const result = await exa.searchAndContents(query, {
      type: "fast",
      numResults: 10,
      text: {maxCharacters: 5000}
  });
  bash cURL theme={null}
  curl -X POST https://api.exa.ai/search \
    -H "x-api-key: YOUR_API_KEY" \
    -H "Content-Type: application/json" \
    -d '{
      "query": "your query here",
      "type": "fast",
      "num_results": 10,
      "contents": {"text": {"max_characters": 5000}}
    }'
  python Python theme={null}
  result = exa.search_and_contents(
      query,
      type="auto",
      num_results=10,
      text={"max_characters": 5000}
  )
  javascript JavaScript theme={null}
  const result = await exa.searchAndContents(query, {
      type: "auto",
      numResults: 10,
      text: {maxCharacters: 5000}
  });
  python Python theme={null}
  result = exa.search_and_contents(
      query,
      type="deep",
      additional_queries=[variation1, variation2],
      num_results=10,
      text=True,
      context=True,
      livecrawl="fallback"
  )
  javascript JavaScript theme={null}
  const result = await exa.searchAndContents(query, {
      type: "deep",
      additionalQueries: [variation1, variation2],
      numResults: 10,
      text: true,
      context: true,
      livecrawl: "fallback"
  });
  python Python theme={null}
  from exa_py import Exa
  import json
  from datetime import datetime

exa = Exa(api_key="YOUR_API_KEY")

def evaluate_simpleqa(dataset_path, config):
      """
      Run SimpleQA evaluation with specified configuration.

Args:
          dataset_path: Path to SimpleQA JSON file
          config: Dict with keys: type, num_results, text, livecrawl
      """
      with open(dataset_path) as f:
          questions = json.load(f)

results = []
      latencies = []

for item in questions:
          query = item['question']
          ground_truth = item['answer']

# Retrieval
          start = datetime.now()
          search_result = exa.search_and_contents(
              query,
              type=config['type'],
              num_results=config['num_results'],
              text=config['text'],
              livecrawl=config['livecrawl']
          )
          latency = (datetime.now() - start).total_seconds() * 1000
          latencies.append(latency)

# Synthesis (using your LLM)
          context = "\n\n".join([r.text for r in search_result.results])
          answer = your_llm.generate(
              f"Answer concisely using only the context.\n\n"
              f"Context: {context}\n\n"
              f"Question: {query}\n\n"
              f"Answer:"
          )

# Grading (using your grading LLM)
          grade = grading_llm.evaluate(
              question=query,
              expected=ground_truth,
              generated=answer
          )

results.append({
              'query': query,
              'grade': grade,
              'latency_ms': latency
          })

# Calculate metrics
      accuracy = sum(1 for r in results if r['grade'] == 'correct') / len(results)
      p50_latency = sorted(latencies)[len(latencies) // 2]

return {
          'accuracy': accuracy,
          'p50_latency_ms': p50_latency,
          'total_queries': len(results),
          'config': config
      }

# Run evaluation
  config = {
      'type': 'fast',
      'num_results': 10,
      'text': {'max_characters': 5000}
  }

results = evaluate_simpleqa('simpleqa.json', config)
  print(f"Accuracy: {results['accuracy']:.2%}")
  print(f"P50 Latency: {results['p50_latency_ms']:.0f}ms")
  javascript JavaScript theme={null}
  import Exa from 'exa-js';
  import fs from 'fs/promises';

const exa = new Exa("YOUR_API_KEY");

async function evaluateSimpleQA(datasetPath, config) {
      const data = JSON.parse(await fs.readFile(datasetPath, 'utf8'));

const results = [];
      const latencies = [];

for (const item of data) {
          const { question, answer: groundTruth } = item;

// Retrieval
          const start = Date.now();
          const searchResult = await exa.searchAndContents(question, {
              type: config.type,
              numResults: config.numResults,
              text: config.text,
              livecrawl: config.livecrawl
          });
          const latency = Date.now() - start;
          latencies.push(latency);

// Synthesis
          const context = searchResult.results
              .map(r => r.text)
              .join('\n\n');
          const answer = await yourLLM.generate(
              `Answer concisely using only the context.\n\n` +
              `Context: ${context}\n\n` +
              `Question: ${question}\n\n` +
              `Answer:`
          );

// Grading
          const grade = await gradingLLM.evaluate({
              question,
              expected: groundTruth,
              generated: answer
          });

results.push({ question, grade, latency });
      }

// Calculate metrics
      const accuracy = results.filter(r => r.grade === 'correct').length / results.length;
      const p50Latency = latencies.sort((a, b) => a - b)[Math.floor(latencies.length / 2)];

return { accuracy, p50Latency, totalQueries: results.length, config };
  }

// Run evaluation
  const config = {
      type: 'fast',
      numResults: 10,
      text: {maxCharacters: 5000}
  };

const results = await evaluateSimpleQA('simpleqa.json', config);
  console.log(`Accuracy: ${(results.accuracy * 100).toFixed(1)}%`);
  console.log(`P50 Latency: ${results.p50Latency}ms`);
  python  theme={null}
configs = [
    {'name': 'Fast', 'type': 'fast'},
    {'name': 'Auto', 'type': 'auto'},
    {'name': 'Deep', 'type': 'deep'},
]

for config in configs:
    results = evaluate_simpleqa('simpleqa.json', config)
    print(f"{config['name']}: {results['accuracy']:.1%} @ {results['p50_latency_ms']:.0f}ms")

`Fast`: 94.2% @ 450ms
`Auto`: 95.8% @ 1050ms
`Deep`: 97.2% @ 4950ms
```

### For Low-Latency QA Benchmarks

**Datasets**: SimpleQA, WebWalkerQA, Seal0 (single-step)

* Use `type="fast"` or `type="auto"`
* Fix `num_results=10`
* Use `text={"max_characters": 5000}` for consistent context length

**Expected performance**:

* Accuracy: 90-95% on factual queries
* Latency: 400-600ms (Fast), 900-1200ms (Auto)

### For Agentic Workflow Benchmarks

**Datasets**: FRAMES (agentic), MultiLoKo, BrowseComp, HLE

* Use `type="deep"`
* Provide 2-3 query variations via `additional_queries` (Python) / `additionalQueries` (JavaScript) for best results
* Enable `context=True` for rich summaries
* Set `livecrawl="fallback"` for freshness

**For tool calling evaluations**: See the [Evaluating Exa with Tool Calling](#evaluating-exa-with-tool-calling) section below for guidance on setting up agents to autonomously invoke Exa search.

**Expected performance**:

* Accuracy: 85-96% on complex multi-hop queries
* Latency: 4000-6000ms
* Higher comprehensive coverage vs single-query search

### For Freshness Benchmarks

**Datasets**: FreshQA, time-sensitive custom queries

* Use any search type based on latency requirements
* Set `livecrawl="preferred"` or `livecrawl="fallback"`
* Include recent date filters if needed

**Expected performance**:

* Freshness: Up-to-date information from recent sources
* Latency: +500-2000ms vs cached content

### For Production Deployment

1. **Run comparative benchmarks** across `Fast`, `Auto`, and `Deep` to understand your quality-latency frontier
2. **Match search type to use case**:
   * Real-time user-facing: `Fast`
   * General chatbot/assistant: `Auto`
   * Deep research/agent workflows: `Deep`
3. **Monitor in production**: Track accuracy, latency, and cost metrics continuously
4. **Optimize parameters**: Adjust `livecrawl`, `num_results`, and content options based on actual usage patterns
5. **Document your evaluation**: Record configurations, datasets, and results for reproducibility

### For Meaningful Cross-System Comparisons

1. **Standardize everything**:
   * Identical query sets
   * Same downstream LLM for synthesis
   * Same grading model/rubric
   * Fixed `num_results` across systems
2. **Compare within latency classes** — find the closest competitor in terms of P50 latency:
   * For Exa Fast (\<500ms): Compare to other sub-1s APIs with similar latency
   * For Exa Auto (\~1s): Compare to mid-latency systems (800ms-1500ms)
   * For Exa Deep (>2s): Compare to other multi-second agentic/research systems
3. **Account for feature differences**:
   * Some systems don't offer content retrieval
   * Some don't support livecrawling
   * Some have different context limits
4. **Measure what matters for your use case**:
   * If latency \<500ms is required, only benchmark Fast-class systems
   * If accuracy >95% is required, accept higher latency configurations

## Additional Resources

* [How Exa Search Works](/reference/how-exa-search-works) - Deep dive into neural search and search types
* [Exa's Capabilities Explained](/reference/exas-capabilities-explained) - Feature overview and use cases
* [Livecrawling Contents](/reference/livecrawling-contents) - When and how to use livecrawling
* [API Reference: Search](/reference/search) - Complete parameter documentation

For questions about evaluation methodology or custom benchmark needs, [join our Discord community](https://discord.com/invite/HCShtBqbfV) or [reach out to our team](https://exa.ai).

**Examples:**

Example 1 (unknown):
```unknown
#### Phase 4: Results Analysis

Aggregate metrics:

* **Accuracy**: Percentage of correct answers
* **Partial-credit accuracy**: Weighted score (e.g., correct=1.0, partial=0.5, incorrect=0.0)
* **Retrieval coverage**: Percentage of queries where relevant information was retrieved
* **P50 latency**: Median response time across all queries
* **Cost per query**: Total API cost divided by number of queries

## Optimal Exa Settings for Evaluation

### Configuration Parameters

| Parameter                                  | Purpose                      | Evaluation Recommendations                                                                                                 |
| ------------------------------------------ | ---------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `type`                                     | Search method                | Match to benchmark type (fast/auto/deep)                                                                                   |
| `num_results`                              | Number of results            | Fix at 10 for consistency across comparisons                                                                               |
| `text`                                     | Retrieve full content        | Set to `true` for RAG-style evaluation                                                                                     |
| `context`                                  | Get AI-generated summaries   | Set to `true` for Deep search                                                                                              |
| `livecrawl`                                | Real-time web fetching       | Default `"fallback"` is recommended; use `"preferred"` for freshness tests                                                 |
| `additional_queries` / `additionalQueries` | Query variations (Deep only) | Provide 2-3 variations for best Deep search results. Use `additional_queries` in Python, `additionalQueries` in JavaScript |

### Recommended Configuration Templates

#### Fast-Baseline Configuration

For latency-sensitive evaluations:

<CodeGroup>
```

Example 2 (unknown):
```unknown

```

Example 3 (unknown):
```unknown

```

Example 4 (unknown):
```unknown
</CodeGroup>

#### Auto-Quality Configuration

For balanced evaluations:

<CodeGroup>
```

---

## Parameters for our Highlights search

**URL:** llms-txt#parameters-for-our-highlights-search

highlights_options  = {
    "num_sentences": 7, # how long our highlights should be
    "highlights_per_url": 1, # just get the best highlight for each URL
}

---

## Create a Webset

**URL:** llms-txt#create-a-webset

Source: https://docs.exa.ai/websets/api/websets/create-a-webset

post /v0/websets
Creates a new Webset with optional search, import, and enrichment configurations. The Webset will automatically begin processing once created.

You can specify an `externalId` to reference the Webset with your own identifiers for easier integration.

---

## Set up progress bar

**URL:** llms-txt#set-up-progress-bar

**Contents:**
- Finding more candidates

from tqdm.auto import tqdm
tqdm.pandas()

def enrich_row(row):
    row['School'] = extract_school_from_email(row['Email'])
    linkedIn_info = get_linkedin_from_name(row['Name'], row['School'])
    if linkedIn_info:
        row['LinkedIn'] = linkedIn_info
    website_url, website_info = exa_search_personal_website(row['Name'], row['School'])
    row['ExaWebsite'] = website_url
    row['ContentInfo'] = website_info
    row['Undergrad'] = extract_undergrad_from_contents(row['ContentInfo'])
    row['Role'] = extract_current_role_from_contents(row['ContentInfo'])
    row['ResearchTopics'] = extract_research_topics_from_contents(row['ContentInfo'])
    row['AI'] = extract_is_ai_from_contents(row['ContentInfo'])
    row['Score'] = calculate_score(row['ContentInfo'], row['Undergrad'], row['Role'], row['ResearchTopics'], row['AI'])
    return row

enriched_df = students_df.progress_apply(enrich_row, axis=1)
sorted_df = enriched_df.sort_values(by='Score', ascending=False).reset_index(drop=True)
sorted_df
Python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
## Finding more candidates

Now that we know how to research candidates, let's find some more! We'll take each of the top candidates (score 7-10), and use Exa to find similar profiles.

Exa's `find_similar`,allows us to search a URL and find semantically similar URLs. For example, I could search 'hinge.co' and it'll return the homepages of similar dating apps. In this case, we'll pass in the homepages of our top candidates to find similar profiles.
```

---

## Exa Research

**URL:** llms-txt#exa-research

**Contents:**
- How It Works
- Best Practices
- Models
- Pricing
- Examples
  - Competitive Landscape Table
  - Market Size Estimate
  - Timeline of Key Events
- FAQs

Source: https://docs.exa.ai/reference/exa-research

Automate in-depth web research with structured output support.

The Research API is an **asynchronous, multi-step pipeline** that transforms open-ended questions into grounded reports. You provide natural-language instructions (e.g. *"Compare the hardware roadmaps of the top GPU manufacturers"*) and an optional JSON Schema describing the output you want.

Under the hood, Exa agents perform multiple steps:

1. **Planning** – Your natural-language `instructions` are parsed by an LLM that decomposes the task into one or more research steps.

2. **Searching** – Specialized search agents issue semantic queries to Exa's search engine, continuously expanding and refining the result set until they can fulfil the request.

3. **Reasoning & synthesis** – Reasoning models combine facts across sources and return structured JSON (if you provide `outputSchema`) or a detailed markdown report.

Because tasks are **asynchronous**, you submit a request and immediately receive a `researchId`. You can [poll the request](/reference/research/get-a-task) until it is complete or failed, or [list all tasks](/reference/research/list-tasks) to monitor progress in bulk.

* **Be explicit** – Clear, scoped instructions lead to faster tasks and higher-quality answers. You should describe (1) what information you want (2) how the agent should find that information and (3) how the agent should compose it's final report.
* **Keep schemas small** – 1-5 root fields is the sweet spot. If you need more, create multiple tasks.
* **Use enums** – Tight schema constraints improve accuracy and reduce hallucinations.

The Research API offers two advanced agentic researcher models that break down your instructions, search the web, extract and reason over facts, and return structured answers with citations.

* **exa-research** (default) adapts to the difficulty of the task, using more or less compute for individual steps. Recommended for most use cases.
* **exa-research-pro** maximizes quality by using the highest reasoning capability for every step. Recommended for the most complex, multi-step research tasks.

Here are typical completion times for each model:

| Model            | p50 (seconds) | p90 (seconds) |
| ---------------- | ------------- | ------------- |
| exa-research     | 45            | 90            |
| exa-research-pro | 90            | 180           |

The Research API now uses **variable usage-based pricing**. You are billed based on how much work and reasoning the research agent does.

<Note>You are ONLY charged for tasks that complete successfully.</Note>

| Operation            | exa-research      | exa-research-pro   | Notes                                                |
| -------------------- | ----------------- | ------------------ | ---------------------------------------------------- |
| **Search**           | \$5/1k searches   | \$5/1k searches    | Each unique search query issued by the agent         |
| **Page read**        | \$5/1k pages read | \$10/1k pages read | One "page" = 1,000 tokens from the web               |
| **Reasoning tokens** | \$5/1M tokens     | \$5/1M tokens      | Specific LLM tokens used for reasoning and synthesis |

**Example:**\
A research task with `exa-research` that performs 6 searches, reads 20 pages of content, and uses 1,000 reasoning tokens would cost:

$$
\begin{array}{rl}
& \$0.03 \text{ (6 searches × \$5/1000)} \\
+ & \$0.10 \text{ (20 pages × \$5/1000)} \\
+ & \$0.005 \text{ (1{,}000 reasoning tokens × \$5/1{,}000{,}000)} \\
\hline
& \$0.135
\end{array}
$$

For `exa-research-pro`, the same task would cost:

$$
\begin{array}{rl}
& \$0.03 \text{ (6 searches × \$5/1000)} \\
+ & \$0.20 \text{ (20 pages × \$10/1000)} \\
+ & \$0.005 \text{ (1{,}000 reasoning tokens × \$5/1{,}000{,}000)} \\
\hline
& \$0.235
\end{array}
$$

### Competitive Landscape Table

Compare the current flagship GPUs from NVIDIA, AMD, and Intel and extract pricing, TDP, and release date.

### Market Size Estimate

Estimate the total global market size (USD) for battery recycling in 2030 with a clear methodology.

### Timeline of Key Events

Build a timeline of major OpenAI product releases from 2015 – 2023.

<AccordionGroup>
  <Accordion title="Who is the Research API for?">
    Product teams, analysts, researchers, and anyone who needs **structured answers** that require reading multiple web sources — without having to build their own search + scraping + LLM pipeline.
  </Accordion>

<Accordion title="How is this different from the /answer endpoint?">
    `/answer` is designed for **single-shot Q\&A**. The Research API handles
    **long-running, multi-step investigations**. It's suitable for tasks that
    require complex reasoning over web data.
  </Accordion>

<Accordion title="How long do tasks take?">
    Tasks generally complete in 20–40 seconds. Simple tasks that can be solved
    with few searches complete faster, while complex schema's targeting niche
    subjects may take longer.
  </Accordion>

<Accordion title="What are best practices for writing instructions?">
    Be explicit about the objective and any constraints - Specify the **time
    range** or **types of sources** to consult if important - Use imperative verbs
    ("Compare", "List", "Summarize") - Keep it under 4096 characters
  </Accordion>

<Accordion title="How large can my output schema be?">
    You must have ≤ 8 root fields. It must not be more than 5 fields deep.
  </Accordion>

<Accordion title="What happens if my schema validation fails?">
    If your schema is not valid, an error will surface *before the task is
    created* with a message about what is invalid. You will not be charged for
    such requests.
  </Accordion>
</AccordionGroup>

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

### Market Size Estimate

Estimate the total global market size (USD) for battery recycling in 2030 with a clear methodology.

<CodeGroup>
```

Example 4 (unknown):
```unknown

```

---

## Create a Search

**URL:** llms-txt#create-a-search

Source: https://docs.exa.ai/websets/api/websets/searches/create-a-search

post /v0/websets/{webset}/searches
Creates a new Search for the Webset.

The default behavior is to reuse the previous Search results and evaluate them against the new criteria.

---

## type="fast",

**URL:** llms-txt#type="fast",

---

## Recruiting Agent

**URL:** llms-txt#recruiting-agent

**Contents:**
- What this doc covers
- Introduction

Source: https://docs.exa.ai/examples/exa-recruiting-agent

## What this doc covers

1. Using Exa search with includeDomain to only retrieve search results from a specified domain
2. Using Exa search to find specific people by name
3. Using excludeDomain to ignore certain low-signal domains
4. Using Exa link similarity search to find similar websites

In this tutorial, we use Exa to **automate** the process of **discovering**, **researching**, and **evaluating** exceptional candidates. If you just want to see the code, check out the [Colab notebook](https://colab.research.google.com/drive/1a-7niLbCtIEjZnPz-qXPS3XwckPgIMrV?usp=sharing).

Here's what we're going to do:

1. Candidate research: Identify potential candidates and use Exa to find additional details, such as personal websites, LinkedIn profiles, and their research topics.
2. Candidate evaluation: Evaluate candidates using an LLM to score their fit to our hiring criteria.
3. Finding more candidates: Discover more candidates similar to our top picks.

This project requires an [Exa API key](https://dashboard.exa.ai/api-keys) and an [OpenAI API key](https://platform.openai.com/api-keys). Get 1000 Exa searches per month free just for [signing up](https://dashboard.exa.ai/overview)!

```Python Python theme={null}

---

## Deep search with query variations

**URL:** llms-txt#deep-search-with-query-variations

**Contents:**
  - Input Parameters:
  - Returns Example:
  - Return Parameters:
  - Result Object:
- `search_and_contents` Method
  - Input Example:

deep_result = exa.search(
  "blog post about AI",
  type="deep",
  additional_queries=["AI blogpost", "machine learning blogs"],
  num_results=5
)
JSON JSON theme={null}
{
  "autopromptString": "Here is a link to one of the hottest AI startups:",
  "results": [
    {

"title": "Adept: Useful General Intelligence",
      "id": "https://www.adept.ai/",
      "url": "https://www.adept.ai/",
      "publishedDate": "2000-01-01",
      "author": null
    },
    {

"title": "Home | Tenyx, Inc.",
      "id": "https://www.tenyx.com/",
      "url": "https://www.tenyx.com/",
      "publishedDate": "2019-09-10",
      "author": null
    }
  ],
  "requestId": "a78ebce717f4d712b6f8fe0d5d7753f8"
}
Python Python theme={null}
`# Search with full text content
result_with_text = exa.search_and_contents(
    "AI in healthcare",
    text=True,
    num_results=2
)

**Examples:**

Example 1 (unknown):
```unknown
### Input Parameters:

| Parameter              | Type                                           | Description                                                                                                                                                                                                                            | Default  |
| ---------------------- | ---------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| query                  | str                                            | The input query string.                                                                                                                                                                                                                | Required |
| additional\_queries    | Optional\[List\[str]]                          | Additional query variations for deep search. Only works with type="deep". When provided, these queries are used alongside the main query for comprehensive results.                                                                    | None     |
| num\_results           | Optional\[int]                                 | Number of search results to return. Limits vary by search type: with "neural": max 100. If you want to increase the num results, contact sales ([hello@exa.ai](mailto:hello@exa.ai))                                                   | 10       |
| include\_domains       | Optional\[List\[str]]                          | List of domains to include in the search.                                                                                                                                                                                              | None     |
| exclude\_domains       | Optional\[List\[str]]                          | List of domains to exclude in the search.                                                                                                                                                                                              | None     |
| start\_crawl\_date     | Optional\[str]                                 | Results will only include links **crawled** after this date.                                                                                                                                                                           | None     |
| end\_crawl\_date       | Optional\[str]                                 | Results will only include links **crawled** before this date.                                                                                                                                                                          | None     |
| start\_published\_date | Optional\[str]                                 | Results will only include links with a **published** date after this date.                                                                                                                                                             | None     |
| end\_published\_date   | Optional\[str]                                 | Results will only include links with a **published** date before this date.                                                                                                                                                            | None     |
| type                   | Optional\[str]                                 | The type of search: "auto", "neural", "fast", or "deep".                                                                                                                                                                               | "auto"   |
| category               | Optional\[str]                                 | A data category to focus on when searching, with higher comprehensivity and data cleanliness. Currently, the available categories are: company, research paper, news, github, tweet, personal site, pdf, financial report, and people. | None     |
| include\_text          | Optional\[List\[str]]                          | List of strings that must be present in webpage text of results. Currently, only 1 string is supported, of up to 5 words.                                                                                                              | None     |
| exclude\_text          | Optional\[List\[str]]                          | List of strings that must not be present in webpage text of results. Currently, only 1 string is supported, of up to 5 words. Checks from the first 1000 words of the webpage text.                                                    | None     |
| context                | Union\[ContextContentsOptions, Literal\[True]] | If true, concatentates results into a context string.                                                                                                                                                                                  | None     |

### Returns Example:
```

Example 2 (unknown):
```unknown
### Return Parameters:

`SearchResponse[Result]`

| Field   | Type           | Description                         |
| ------- | -------------- | ----------------------------------- |
| results | List\[Result]  | List of Result objects              |
| context | Optional\[str] | Results concatentated into a string |

### Result Object:

| Field | Type           | Description                   |
| ----- | -------------- | ----------------------------- |
| url   | str            | URL of the search result      |
| id    | str            | Temporary ID for the document |
| title | Optional\[str] | Title of the search result    |

\| published\_date | Optional\[str]   | Estimated creation date                       |
\| author         | Optional\[str]   | Author of the content, if available           |

## `search_and_contents` Method

Perform an Exa search given an input query and retrieve a list of relevant results as links, optionally including the full text and/or highlights of the content.

### Input Example:
```

---

## query,

**URL:** llms-txt#query,

---

## To use the researcher on the examples, simply call the run_examples() function:

**URL:** llms-txt#to-use-the-researcher-on-the-examples,-simply-call-the-run_examples()-function:

if __name__ == "__main__":
    run_examples()

---

## Score Deprecation in Auto Search

**URL:** llms-txt#score-deprecation-in-auto-search

**Contents:**
- What Changed
- What This Means for You
- How to Update Your Code
  - Remove Score Dependencies

Source: https://docs.exa.ai/changelog/auto-keyword-score-deprecation

We're deprecating relevance scores in Auto search due to architectural improvements. Scores will remain available in Neural search.

**Date: July 21, 2025**

We're launching a big update to Auto search in our API. The new system cannot create useful scores for results. Because of this, we're removing scores from Auto search.

<Info>
  Scores in Neural search results will remain unchanged and continue to work exactly as before.
</Info>

Previously, Auto and Neural search types returned relevance scores - a number from 0 to 1 representing similarity between the query and each result. With our new Auto search architecture, we can no longer generate meaningful scores for Auto search results.

The search functionality works exactly the same way as it did before - you'll still get the same high-quality results, just without the `score` field in the response.

## What This Means for You

1. **Auto search**: The `score` field will no longer be returned in search results
2. **Neural search**: Scores continue to work exactly as before with no changes
3. **Migration needed**: If your application relies on scores from Auto search, you should migrate as soon as possible

## How to Update Your Code

If you currently use scores from Auto search, here is what you can do:

### Remove Score Dependencies

```python Python theme={null}

---

## Cancel a running Search

**URL:** llms-txt#cancel-a-running-search

Source: https://docs.exa.ai/websets/api/websets/searches/cancel-a-running-search

post /v0/websets/{webset}/searches/{id}/cancel
Cancels a currently running Search.

You can cancel all searches at once by using the `websets/:webset/cancel` endpoint.

---

## Search with both text and highlights

**URL:** llms-txt#search-with-both-text-and-highlights

result_with_text_and_highlights = exa.search_and_contents(
    "AI in healthcare",
    text=True,
    highlights=True,
    num_results=2
)

---

## List all research tasks

**URL:** llms-txt#list-all-research-tasks

response = exa.research.list_tasks()
print(f"Found {len(response['data'])} tasks")

---

## How It Works

**URL:** llms-txt#how-it-works

**Contents:**
- Creating Your First Search
  - 1. Initial Request
  - 2. Webset Creation
  - 3. Search Process
  - Accessing Results
- Running Additional Searches
  - Control Operations
- Up-to-date Websets using Monitors
  - Behavior
  - Scheduling

Source: https://docs.exa.ai/websets/api/how-it-works

The Websets API operates as an **asynchronous search system**. When you create a Webset, it automatically starts searching and verifying results based on your criteria. Let's dive into each part of the process.

## Creating Your First Search

The process starts when you [create a Webset](/websets/api/websets/create-a-webset). Here's how it flows:

### 1. Initial Request

Start by providing a search configuration:

You can optionally specify:

* An `entity.type` to define what you're looking for
* Custom `criteria` for verification
* `enrichments` to extract specific data points
* `metadata` for your own tracking

### 2. Webset Creation

When your request is received:

1. A new Webset is created with status `running`
2. A `webset.created` event is emitted
3. The search process begins automatically

### 3. Search Process

The search flows through several stages:

1. **Initialization**

* A new WebsetSearch is created
   * Status is set to `running`
   * `webset.search.created` event is emitted

2. **Discovery & Verification**

* The system starts retrieving results leveraging Exa Search and verifies each one
   * Items that pass verification and match your search criteria are automatically added to your Webset
   * Each new item triggers a `webset.item.created` event
   * Items are immediately available through the [list endpoint](/websets/api/websets/items/list-all-items-for-a-webset)

3. **Enrichment** (if configured)

* Each item is processed through specified enrichments
   * `webset.item.enriched` events are emitted as results come in
   * Enrichment results are added to the item's data

4. **Completion**
   * When the search finds all items, its status changes to `completed`
   * A `webset.search.completed` event is emitted
   * If no other operations are running, you'll receive a `webset.idle` event

### Accessing Results

You can access your data throughout the process:

1. **Real-time Access**

* Use the list endpoint to paginate through items
   * Listen for item events (`webset.item.created` and `webset.item.enriched`) to process results as they arrive

2. **Bulk Export**
   * Available once the Webset becomes `idle`
   * Includes all items with their content, verifications and enrichments
   * Useful for processing the complete dataset

## Running Additional Searches

You can [create additional searches](/websets/api/websets/searches/create-a-search) on the same Webset at any time. Each new search:

* Follows the same event flow as the initial search
* Can run in parallel with other enrichment operations (not other searches for now)
* Maintains its own progress tracking
* Contributes to the overall Webset state

### Control Operations

Manage your searches with:

* [Cancel specific searches](/websets/api/websets/searches/cancel-a-running-search)
* [Cancel all operations](/websets/api/websets/cancel-a-running-webset)

## Up-to-date Websets using Monitors

**[Monitors](/websets/api/monitors/create-a-monitor)** allow you to automatically keep your Websets updated with fresh data on a schedule, creating a continuous flow of updates without manual intervention.

* **Search behavior**: Automatically run new searches to find fresh content matching your criteria. New items are added to your Webset with automatic deduplication.

* **Refresh behavior**: Update existing items by refreshing their content from source URLs or re-running specific enrichments to capture data changes.

Set your update frequency with:

* **Cron Expression**: A valid Unix cron expression with 5 fields that triggers at most once per day
* **Timezone**: Any IANA timezone (defaults to `Etc/UTC`)

### Example: Weekly Monitor for Series A Funded Companies

**Examples:**

Example 1 (unknown):
```unknown
You can optionally specify:

* An `entity.type` to define what you're looking for
* Custom `criteria` for verification
* `enrichments` to extract specific data points
* `metadata` for your own tracking

### 2. Webset Creation

When your request is received:

1. A new Webset is created with status `running`
2. A `webset.created` event is emitted
3. The search process begins automatically

### 3. Search Process

The search flows through several stages:

1. **Initialization**

   * A new WebsetSearch is created
   * Status is set to `running`
   * `webset.search.created` event is emitted

2. **Discovery & Verification**

   * The system starts retrieving results leveraging Exa Search and verifies each one
   * Items that pass verification and match your search criteria are automatically added to your Webset
   * Each new item triggers a `webset.item.created` event
   * Items are immediately available through the [list endpoint](/websets/api/websets/items/list-all-items-for-a-webset)

3. **Enrichment** (if configured)

   * Each item is processed through specified enrichments
   * `webset.item.enriched` events are emitted as results come in
   * Enrichment results are added to the item's data

4. **Completion**
   * When the search finds all items, its status changes to `completed`
   * A `webset.search.completed` event is emitted
   * If no other operations are running, you'll receive a `webset.idle` event

### Accessing Results

You can access your data throughout the process:

1. **Real-time Access**

   * Use the list endpoint to paginate through items
   * Listen for item events (`webset.item.created` and `webset.item.enriched`) to process results as they arrive

2. **Bulk Export**
   * Available once the Webset becomes `idle`
   * Includes all items with their content, verifications and enrichments
   * Useful for processing the complete dataset

<br />

***

<br />

## Running Additional Searches

You can [create additional searches](/websets/api/websets/searches/create-a-search) on the same Webset at any time. Each new search:

* Follows the same event flow as the initial search
* Can run in parallel with other enrichment operations (not other searches for now)
* Maintains its own progress tracking
* Contributes to the overall Webset state

### Control Operations

Manage your searches with:

* [Cancel specific searches](/websets/api/websets/searches/cancel-a-running-search)
* [Cancel all operations](/websets/api/websets/cancel-a-running-webset)

<br />

***

<br />

## Up-to-date Websets using Monitors

**[Monitors](/websets/api/monitors/create-a-monitor)** allow you to automatically keep your Websets updated with fresh data on a schedule, creating a continuous flow of updates without manual intervention.

### Behavior

* **Search behavior**: Automatically run new searches to find fresh content matching your criteria. New items are added to your Webset with automatic deduplication.

* **Refresh behavior**: Update existing items by refreshing their content from source URLs or re-running specific enrichments to capture data changes.

### Scheduling

Set your update frequency with:

* **Cron Expression**: A valid Unix cron expression with 5 fields that triggers at most once per day
* **Timezone**: Any IANA timezone (defaults to `Etc/UTC`)

### Example: Weekly Monitor for Series A Funded Companies
```

---

## exa.search_and_contents(

**URL:** llms-txt#exa.search_and_contents(

---

## Load environment variables

**URL:** llms-txt#load-environment-variables

agentops.init(os.getenv('AGENTOPS_API_KEY'))

@tool("Exa search and get contents")
def search_and_contents(question: str) -> str:
    """
    Tool using Exa's Python SDK to run semantic search and return result highlights.
    """
    exa = Exa(api_key=os.getenv('EXA_API_KEY'))

response = exa.search_and_contents(
        query,
        type="auto",
        num_results=3,
        highlights=True
    )

parsedResult = ''.join([
        f'<Title id={idx}>{eachResult.title}</Title>'
        f'<URL id={idx}>{eachResult.url}</URL>'
        f'<Highlight id={idx}>{"".join(eachResult.highlights)}</Highlight>' 
        for (idx, eachResult) in enumerate(response.results)
    ])

---

## Crawling Subpages

**URL:** llms-txt#crawling-subpages

**Contents:**
- Using Subpage Crawling
- Parameters
- Best Practices
- Combining with LiveCrawl
- Examples
  - Product Documentation
  - News Archives
  - Blog Content

Source: https://docs.exa.ai/reference/crawling-subpages

When searching websites, you often need to explore beyond the main page to find relevant information. Exa's subpage crawling feature allows you to automatically discover and search through linked pages within a website.

## Using Subpage Crawling

Here's how to use Exa's subpage crawling feature:

This will search through up to 5 subpages of the given website, and prioritize pages that contain the terms "about" or "products" in their contents.

* `subpages`: Maximum number of subpages to crawl (integer)
* `subpage_target`: List of query terms to target (e.g., \["about", "products", "news"])

1. **Limit Depth**: Start with a smaller `subpages` value (5-10) and increase if needed
2. **Prefer Safe Freshness**: Start with `livecrawl='preferred'` plus `livecrawl_timeout` (e.g. `12000`) to get live data while still falling back to cached content. Use `"always"` only if you'd rather the call fail than return cached data.
3. **Target Specific Sections**: Use `subpage_target` to focus on relevant sections rather than crawling the entire site

## Combining with LiveCrawl

For the most up-to-date and comprehensive results, combine subpage crawling with livecrawl:

This ensures you get fresh content from all discovered subpages.

Note that regarding usage, additional subpages count as an additional piece of content retrieval for each type you specify.

### Product Documentation

Search through documentation pages:

This example crawls up to 9 subpages from the main site, prioritizing pages that contain "docs" or "tutorial" in their content.

Crawl through a company's news section:

Gather recent blog posts:

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

This will search through up to 5 subpages of the given website, and prioritize pages that contain the terms "about" or "products" in their contents.

## Parameters

* `subpages`: Maximum number of subpages to crawl (integer)
* `subpage_target`: List of query terms to target (e.g., \["about", "products", "news"])

## Best Practices

1. **Limit Depth**: Start with a smaller `subpages` value (5-10) and increase if needed
2. **Prefer Safe Freshness**: Start with `livecrawl='preferred'` plus `livecrawl_timeout` (e.g. `12000`) to get live data while still falling back to cached content. Use `"always"` only if you'd rather the call fail than return cached data.
3. **Target Specific Sections**: Use `subpage_target` to focus on relevant sections rather than crawling the entire site

## Combining with LiveCrawl

For the most up-to-date and comprehensive results, combine subpage crawling with livecrawl:

<CodeGroup>
```

Example 4 (unknown):
```unknown

```

---

## Exa Researcher - Python

**URL:** llms-txt#exa-researcher---python

**Contents:**
- What this doc covers
- Setup
- Exa Auto search
- Writing a report with GPT-3.5 Turbo
- All Together Now

Source: https://docs.exa.ai/examples/exa-researcher-python

## What this doc covers

1. Using Exa's Auto search to pick the best search setting for each query
2. Using search\_and\_contents() through Exa's Python SDK

In this example, we will build Exa Researcher, a Python app that, given a research topic, automatically searches for relevant sources with Exa's [auto search](../reference/how-exa-search-works) and synthesizes the information into a reliable research report.

To run this code, first we need a [Exa API key](https://dashboard.exa.ai/api-keys) and an [OpenAI API key](https://platform.openai.com/api-keys).

If you would like to se the full code for this tutorial as a Colab notebook, [click here](https://colab.research.google.com/drive/1Aj6bBptSHWxZO7GVG2RoWtQSEkpabuaF?usp=sharing)

Let's import the Exa and OpenAI SDKs and set up our API keys to create client objects for each. We'll use environment variables to securely store our API keys.

Since we'll be making several calls to the OpenAI API to get a completion from GPT-3.5 Turbo, let's make a simple utility function so we can pass in the system and user messages directly, and get the LLM's response back as a string.

Okay, great! Now let's start building Exa Researcher.

The researcher should be able to automatically generate research reports for all kinds of different topics. Here's two to start:

The first thing our researcher has to do is decide what kind of search to do for the given topic.

Exa offers multiple search methods, with **neural** search being our primary approach. Neural search is preferred when the query is broad and complex because it lets us retrieve high quality, semantically relevant data. Neural search is especially suitable when a topic is well-known and popularly discussed on the Internet, allowing the machine learning model to retrieve contents which are more likely recommended by real humans.

Conveniently, Exa's [auto search](../reference/how-exa-search-works) feature (on by default) will automatically decide which search method to use for each query, optimizing results based on the query type.

Now, we'll create a helper function to generate search queries for our topic.

Next, let's write another function that actually calls the Exa API to perform searches using Auto search.

## Writing a report with GPT-3.5 Turbo

The final step is to instruct the LLM to synthesize the content into a research report, including citations of the original links. We can do that by pairing the content and the URLs and writing them into the prompt.

Now, let's just wrap everything into one Researcher function that strings together all the functions we've written. Given a user's research topic, the Researcher will generate search queries, feed those queries to Exa Auto search, and finally use an LLM to synthesize the retrieved information. Three simple steps!

In just a couple lines of code, we've used Exa to go from a research topic to a valuable essay with up-to-date sources.

```Python Python theme={null}
def run_examples():
    print("Researching Sam Altman:")
    sama_report = researcher(SAMA_TOPIC)
    print(sama_report)

print("\n\nResearching Renaissance Art:")
    art_report = researcher(ART_TOPIC)
    print(art_report)

**Examples:**

Example 1 (unknown):
```unknown
Since we'll be making several calls to the OpenAI API to get a completion from GPT-3.5 Turbo, let's make a simple utility function so we can pass in the system and user messages directly, and get the LLM's response back as a string.
```

Example 2 (unknown):
```unknown
Okay, great! Now let's start building Exa Researcher.

## Exa Auto search

The researcher should be able to automatically generate research reports for all kinds of different topics. Here's two to start:
```

Example 3 (unknown):
```unknown
The first thing our researcher has to do is decide what kind of search to do for the given topic.

Exa offers multiple search methods, with **neural** search being our primary approach. Neural search is preferred when the query is broad and complex because it lets us retrieve high quality, semantically relevant data. Neural search is especially suitable when a topic is well-known and popularly discussed on the Internet, allowing the machine learning model to retrieve contents which are more likely recommended by real humans.

Conveniently, Exa's [auto search](../reference/how-exa-search-works) feature (on by default) will automatically decide which search method to use for each query, optimizing results based on the query type.

Now, we'll create a helper function to generate search queries for our topic.
```

Example 4 (unknown):
```unknown
Next, let's write another function that actually calls the Exa API to perform searches using Auto search.
```

---

## define the tools available to the agent - we're defining a single tool, exa_search

**URL:** llms-txt#define-the-tools-available-to-the-agent---we're-defining-a-single-tool,-exa_search

TOOLS = [
    {
        "type": "function",
        "function": {
            "name": "exa_search",
            "description": "Perform a search query on the web, and retrieve the world's most relevant information.",
            "parameters": {
                "type": "object",
                "properties": {
                    "query": {
                        "type": "string",
                        "description": "The search query to perform.",
                    },
                },
                "required": ["query"],
            },
        },
    }
]

---

## New approach - comprehensive people search across the web

**URL:** llms-txt#new-approach---comprehensive-people-search-across-the-web

**Contents:**
- How to Use People Search
- Learn More
- Need Help?

result = exa.search("VP of Product at Microsoft", category="people")
bash  theme={null}
curl -X POST https://api.exa.ai/search \
  -H "x-api-key: EXA_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "query": "Product managers at Microsoft",
    "category": "people",
    "numResults": 10
  }'
```

The new `people` category provides:

* **Broader coverage**: 1B+ profiles across the entire web, not just LinkedIn
* **Better accuracy**: Fine-tuned embeddings specifically for people search
* **More relevant results**: Hybrid retrieval system optimized for role, skill, and company queries

* Read our blog post: [Introducing Exa's People Search Benchmarks](https://exa.ai/blog/people-search-benchmark)
* Follow our announcement: [Twitter/X](https://x.com/ExaAILabs/status/2001373897154007390)
* Try it in the [API Playground](https://dashboard.exa.ai/playground/search?q=product%20managers%20at%20microsoft\&c=people\&filters=%7B%22text%22%3A%22true%22%2C%22type%22%3A%22auto%22%7D)

If you have questions about migrating from the `linkedin` category or want to learn more about optimizing your people search queries, reach out to [hello@exa.ai](mailto:hello@exa.ai). We're here to help you get the most out of Exa People Search!

**Examples:**

Example 1 (unknown):
```unknown
## How to Use People Search

Simply use `category="people"` in your search requests:
```

---

## Search for recent AI ethics research papers

**URL:** llms-txt#search-for-recent-ai-ethics-research-papers

search_results = exa.search_and_contents(
    "Recent AI ethics research papers",
    type="neural",
    text=True,
    num_results=5,  # Limit to 5 papers for this example
)

---

## Search with structured summary schema

**URL:** llms-txt#search-with-structured-summary-schema

company_schema = {
    "$schema": "http://json-schema.org/draft-07/schema#",
    "title": "Company Information",
    "type": "object",
    "properties": {
        "name": {
            "type": "string",
            "description": "The name of the company"
        },
        "industry": {
            "type": "string",
            "description": "The industry the company operates in"
        },
        "foundedYear": {
            "type": "number",
            "description": "The year the company was founded"
        },
        "keyProducts": {
            "type": "array",
            "items": {
                "type": "string"
            },
            "description": "List of key products or services offered by the company"
        },
        "competitors": {
            "type": "array",
            "items": {
                "type": "string"
            },
            "description": "List of main competitors"
        }
    },
    "required": ["name", "industry"]
}

result_with_structured_summary = exa.search_and_contents(
    "OpenAI company information",
    summary={
        "schema": company_schema
    },
    category="company",
    num_results=3
)

---

## New default behavior (Auto search)

**URL:** llms-txt#new-default-behavior-(auto-search)

result = exa.search_and_contents("hottest AI startups")

---

## Combine all search results into one string

**URL:** llms-txt#combine-all-search-results-into-one-string

combined_results = "\n\n".join([result.text for result in search_results.results])

def write_to_csv(insights: List[AIEthicsInsight], filename: str = "ai_ethics_insights.csv"):
    with open(filename, mode='w', newline='', encoding='utf-8') as file:
        writer = csv.writer(file)
        writer.writerow(['Topic', 'Description', 'Ethical Implications'])
        
        for insight in insights:
            writer.writerow([
                insight.topic,
                insight.description,
                '; '.join(insight.ethical_implications)
            ])
    
    print(f"Results written to {filename}")

---

## 1. Retrieval step

**URL:** llms-txt#1.-retrieval-step

results = exa.search_and_contents(
    query,
    type="fast",  # or "auto", "deep"
    num_results=10,
    text={"max_characters": 5000}
)

---

## Now, import the Exa class and pass your API key to it.

**URL:** llms-txt#now,-import-the-exa-class-and-pass-your-api-key-to-it.

from exa_py import Exa

my_exa_api_key = "YOUR_API_KEY_HERE"
exa = Exa(my_exa_api_key)
Python Python theme={null}
result = exa.search_and_contents(
  "Here is an innovative climate technology company",
  type="neural",
  num_results=10,
  text=True,
	include_text=["GmbH"]
)

"title": "Sorption Technologies |",
			"id": "https://sorption-technologies.com/",
			"url": "https://sorption-technologies.com/",
			"publishedDate": "2024-02-10",
			"author": null,
			"text": ""
		},
		{

"title": "FenX | VentureRadar",
			"id": "https://www.ventureradar.com/organisation/FenX/364b6fb7-0033-4c88-a4e9-9c3b1f530d72",
			"url": "https://www.ventureradar.com/organisation/FenX/364b6fb7-0033-4c88-a4e9-9c3b1f530d72",
			"publishedDate": "2023-03-28",
			"author": null,
			"text": "Follow\n\nFollowing\n\nLocation: Switzerland\n\nFounded in 2019\n\nPrivate Company\n\n\"FenX is a Spinoff of ETH Zurich tackling the world’s energy and greenhouse gas challenges by disrupting the building insulation market. Based on a innovative foaming technique, the company produces high-performance insulation foams made from abandoned waste materials such as fly ash from coal power stations. The final products are fully recyclable, emit low CO2 emissions and are economically competitive.\"\n Description Source: VentureRadar Research / Company Website\n\nExport Similar Companies Similar Companies\n\nCompany \n Country\n Status\n Description\n\nVecor Australia Australia n/a Every year the world’s coal-fired power stations produce approximately 1 billion tonnes of a very fine ash called fly ash. This nuisance ash, which resembles smoke, can be... MCC Technologies USA Private MCC Technologies builds, owns and operates processing plants utilizing coal fly ash waste from landfills and ash ponds. The company processes large volumes of low-quality Class F... Climeworks GmbH Switzerland Private Climeworks has developed an ecologically and economically attractive method to extract CO2 from ambient air. Our goal is to deliver CO2 for the production of synthetic liquid... Errcive Inc USA Private The company is involved in developing a novel fly ash based material to mitigate exhaust pollution. The commercial impact of the work is to allow: the reduction of exhaust fumes... 4 Envi Denmark n/a Danish 4 Envi develops a system for the cleaning and re-use of biomass-fuelled plant’s fly ash. After cleaning, the ash and some of its components can be reused as fertilizers,... Neolithe France n/a Néolithe wants to reduce global greenhouse gas emissions by 5% by tackling a problem that concerns us all: waste treatment! They transform non-recyclable waste into aggregates...\n\nShow all\n\nWebsite Archive\n\nInternet Archive snapshots for |\n\nhttps://fenx.ch/\n\nThe archive allows you to go back in time and view historical versions of the company website\n\nThe site\n\nhttps://fenx.ch/\n\nwas first archived on\n\n4th Jul 2019\n\nIs this your company? Claim this profile andupdate details for free\n\nSub-Scores\n\nPopularity on VentureRadar\n\nWebsite Popularity\n\nLow Traffic Sites\n Low\n\nHigh Traffic Sites\n High\n\nAlexa Global Rank:\n\n3,478,846 | \n fenx.ch\n\nAuto Analyst Score\n\n68\n\nAuto Analyst Score:\n 68 | \n fenx.ch\n\nVentureRadar Popularity\n\nHigh\n\nVentureRadar Popularity:\n High The popularity score combines profile views, clicks and the number of times the company appears in search results.\n\nor\n\nTo continue, please confirm you\n are not a robot"
		},
		{

"title": "intelligent fluids | LinkedIn",
			"id": "https://www.linkedin.com/company/intelligentfluids",
			"url": "https://www.linkedin.com/company/intelligentfluids",
			"publishedDate": "2023-06-08",
			"author": null,
			"text": "Sign in to see who you already know at intelligent fluids GmbH (SMARTCHEM)\n\nWelcome back\n\nEmail or phone\n\nPassword\n\nForgot password?\n\nor\n\nNew to LinkedIn? Join now\n\nor\n\nNew to LinkedIn? Join now"
		},
		{

"title": "justairtech GmbH – Umweltfreundliche Kühlsysteme mit Luft als Kältemittel",
			"id": "https://www.justairtech.de/",
			"url": "https://www.justairtech.de/",
			"publishedDate": "2024-06-13",
			"author": null,
			"text": "decouple cooling from climate change with air as refrigerant.\n\nWir entwickeln eine hocheffziente Kühlanlage, die Luft als Kältemittel verwendet. Wieso? Die Welt verändert sich tiefgreifender und schneller als in allen Generationen vor uns. Wir sehen darin nicht nur eine Bedrohung, sondern begreifen dies auch als Chance, Prozesse nachhaltig zu gestalten.\n\nUnsere Arbeit konzentriert sich auf die Revolutio­nie­rung der Kühlung für Ziel­tempera­turen von 0–40 °C bei beliebiger Umwelt­temperatur. Dabei verwenden wir Luft als Kältemittel.\n\nzielgruppe\n\nDer globale Kühlbedarf macht aktuell 10% des weltweiten Strom­bedarfs aus und steigt rasant an. Es werden zwischen 2020 und 2070 knapp 10 Klima­anlagen pro Sekunde verkauft (viele weitere Zahlen und Statistiken rund um das Thema Kühlung findest Du bei der International Energy Agency ) . Mit unserer Technologie können wir verhindern, dass der Strom­verbrauch und die CO2-Emissionen propor­tional mit der Anzahl der verkauften Anlagen wächst.\n\nWir entwickeln eine Technologie, die 4–5 mal so effizient wie konventio­nelle Kühlanlagen arbeitet. Außerdem verwendet sie Luft als Kühlmittel. Luft ist ein natürliches Kältemittel, ist unbegrenzt frei verfügbar und hat ein Global Warming Potential von 0 (mehr zu natürlichen Kältemittel bei der Green Cooling Initiative) . Der Einsatz von Luft als Kältemittel ist nicht neu, aber mit konventio­nellen Anlagen im Ziel­temperatur­bereich nicht wettbewerbs­fähig umsetzbar. Unser erstes Produkt wird für die Kühlung von Rechen­zentren ausgelegt. Weitere Produkte im Bereich der gewerblichen und industriellen Kälte­erzeugung werden folgen.\n\nroadmap\n\n06/2020 \n Q4 2020 erste Seed-Finanzierungsrunde Q4 2020 \n 10/2020 erste Patentanmeldungen 10/2020 \n Q4 2021 zweite Seed-Finanzierungsrunde Q4 2021 \n Q4 2021 erste Patenterteilungen beantragt Q4 2021 \n 05/2022 Prototyp des fraktalen Wärmetauschers 05/2022 \n Q3 2022 Start-Up-Finanzierungsrunde Q3 2022\n\nQ4 2023 per CCS ausgeblendet Q4 2023 \n Q4 2023 physischer Anlagenprototyp Q4 2023 \n Q3 2024 Serienüberleitung und Beta-Tests Q3 2024 \n Q3 2025 \n ab 2025\n\nour core values\n\nWe love innovation. And disruption is even better! Failing is part of the game, but we are curious and continuous learners. \n We help and enable each other. Cooperative interaction with our clients, our partners and our colleagues is central. \n We are pragmatic. Our goals always remain our focus. We are dedicated team players. \n We interact respectfully. With each other and our environment.\n\nteam\n\nGerrit Barth Product Development & Technology \n Anna Herzog Head of Sales & Marketing, PR \n Bikbulat Khabibullin Product Development & Technology\n\nJohannes Lampl Product Development & Technology \n Anne Murmann Product Development & Technology \n Jens Schäfer Co-Founder and CEO\n\nHolger Sedlak Inventor, Co-Founder and CTO \n Adrian Zajac Product Development & Technology\n\nstellenangebote\n\npartner & förderungen"
		},
		{

"title": "Let’s capture CO2 and tackle climate change",
			"id": "https://blancair.com/",
			"url": "https://blancair.com/",
			"publishedDate": "2023-03-01",
			"author": null,
			"text": "Let’s capture CO2 and tackle climate change\n\nWe need to keep global warming below 1.5°C. This requires a deployment of Negative Emission Technologies (NETs) of around 8 Gt of CO2 in 2050. Natural Climate solutions cannot do it alone.Technology has to give support. BLANCAIR can turn back human-emitted carbon dioxide from our atmosphere by capturing it and sequestering it back into the planet.\n\nGet to know us, our Hamburg team, partnerships and network\n\nTake a look at the BLANCAIR technology, our milestones & our next goals\n\nJoin our BLANCAIR team & help us to fight climate change!"
		},
		{

"title": "bionero - Der Erde zuliebe. Carbon Removal | Terra Preta",
			"id": "https://www.bionero.de/",
			"url": "https://www.bionero.de/",
			"publishedDate": "2023-10-28",
			"author": null,
			"text": "Mehr Wachstum. Echter Klimaschutz. bionero ist eines der ersten Unternehmen weltweit, das zertifiziert klimapositiv arbeitet. Das Familienunternehmen, das in der Nähe von Bayreuth beheimatet ist, stellt qualitativ höchstwertige Erden und Substrate her, die durch das einzigartige Produktionsverfahren aktiv CO2 aus der Atmosphäre entziehen und gleichzeitig enorm fruchtbar sind. Aus Liebe und der Ehrfurcht zur Natur entwickelte bionero ein hochmodernes, industrialisiertes Verfahren, das aus biogenen Reststoffen eine höchstwertige Pflanzenkohle herstellt und zu fruchtbaren Schwarzerden made in Germany verwandelt. Hier kannst du bionero im Einzelhandel finden Wir liefern Gutes aus der Natur, für die Natur. Terra Preta (portugiesisch für \"Schwarze Erde\") gilt als \"wiederentdeckte Wundererde\". Sie wurde vor circa 40 Jahren in den Tiefen des Amazonasgebiets entdeckt und intensiv erforscht. Das Besondere an ihr ist ihre Fruchtbarkeit. Tatsächlich gilt dieser Boden als der fruchtbarste unseres Planeten. bionero hat gemeinsam mit Professor Bruno Glaser, einem weltweit anerkannten Experten für Terra Preta, das Herstellungsverfahren dieser besonderen Erde transformiert, optimiert und industrialisiert. Der wesentliche Wirk- und Inhaltsstoff ist eine sog. Pflanzenkohle. Sie sorgt dank ihrer enorm großen spezifischen Oberfläche für optimale Nährstoff- und Wasserspeicherfähigkeiten im Boden und bietet zusätzlich Lebensraum für wertvolle Mikroorganismen. Das Ergebnis ist ein stetiger Humusaufbau und eine dauerhafte Bodenfruchtbarkeit. Das Einzigartige an bionero? Die bionero Wertschöpfungskette ist vollständig klimapositiv! bioneros Produkte bieten einer Branche, die stark in die Kritik geraten ist, einen Weg in eine nachhaltige Zukunft. Während der Herstellung unserer hochwertigen Terra Preta leisten wir einen aktiven Beitrag zum Klimaschutz. Durch die Produktion unserer wichtigsten Zutat, der Pflanzenkohle, wird dem atmosphärischen Kohlenstoffkreislauf aktiv Kohlenstoff entzogen. Der Kohlenstoff, welcher anfangs in den biogenen Reststoffen gespeichert war, wird während des Pyrolyseprozesses für mehrere Jahrtausende in der Pflanzenkohle fixiert und gelangt somit nicht als Kohlenstoffdioxid zurück in unsere Atmosphäre. Das Erstaunliche: Die Pflanzenkohle entzieht der Atmosphäre das bis zu dreieinhalbfache ihres Eigengewichts an CO2! Die entstandenen Kohlenstoffsenken sind dabei transparent quantifizierbar und zertifiziert. Tatsächlich vereint bionero als erstes Unternehmen weltweit alle notwendigen Verfahrensschritte zu einer echten Kohlenstoffsenke gemäß EBC. Der Kohlenstoff ist am Ende der bionero Wertschöpfungskette in einer stabilen Matrix fixiert. Torf ist bis heute der meistgenutzte Rohstoff bei der Herstellung von Pflanzsubstraten. Schon beim Abbau werden Unmengen an CO2 freigesetzt. Moore sind einer der wichtigsten Kohlenstoff-Speicher unseres Planeten. Moore speichern 700 Tonnen Kohlenstoff je Hektar, sechsmal mehr als ein Hektar Wald! Durch die Trockenlegung und den Abbau für die Gewinnung von Torf können diese gewaltigen Mengen Kohlenstoff wieder zu CO2-reagieren und gelangen in die Atmosphäre. Hinzu kommen enorm weite Transportwege. Der Torfabbau findet zu großen Teilen in Osteuropa statt. Um einerseits die natürlichen Ökosysteme zu schützen und andererseits lange Transportwege zu vermeiden, setzen wir auf regional anfallende Roh- und Reststoffe. In langen Reifeprozessen verarbeiten wir natürliche Reststoffe zu hochwertigen Ausgangsstoffen für unsere Produkte. Bei der Auswahl aller Inputstoffe schauen wir genau hin und arbeiten nach dem Prinzip “regional, nachhaltig, umwelt- und klimaschonend“. Nur, wenn diese Voraussetzungen ausnahmslos gewährleistet sind, findet ein Rohstoff letztlich seinen Weg in unsere Produkte. bionero - Mehr Wachstum. Echter Klimaschutz. Erhalte spannende Einblicke in die Abläufe unseres Start-Ups und unsere hochmodernen Verfahren. Hier gibt es die neuesten Trends, aktuelle Tipps, hilfreiche Pflanz- und Pflegeanleitungen und interessante Videos."
		},
		{

"title": "Green City Solutions",
			"id": "https://www.greentalents.de/green-city-solutions.php",
			"url": "https://www.greentalents.de/green-city-solutions.php",
			"publishedDate": "2022-04-12",
			"author": null,
			"text": "In their devices, called CityTrees, they combine the natural ability of moss to clean and cool the air with Internet of Things technology to control irrigation and ventilation. In March 2014, Green City Solutions GmbH was founded by Peter Sänger and his friend Liang Wu in Dresden. They set up a team of young experts from the fields of horticulture/biology, computer science, architecture, and mechanical engineering. The knowledge of the individuals was bundled to realise a device that combines nature and technology: the CityTree.\n\nThe living heart of CityTrees is moss cultivated on hanging textile mats. The moss mats are hidden behind wooden bars that provide sufficient shade for these plants, which naturally grow mainly in forests. Sensors are measuring various parameters such as temperature, humidity, and concentration of particulates. This data is used to regulate ventilation and irrigation. Behind the moss mats are large vents that create an airflow through the moss. In this way, the amount of air cleaned by the device can be increased when pollution levels are high, such as during rush hours.\n\nGreen City Solutions collaborates with several partners in Germany and abroad. Scientific partners include the Leibniz Institute for Tropospheric Research (TROPOS) and the Dresden University of Applied Sciences (HTW Dresden), both located in Germany. Green City Solutions has been awarded the Seal of Excellence by the European Commission. This is a European Union quality label for outstanding ideas worthy of funding.\n\nThe work of Green City Solutions mainly contributes to the Sustainable Development Goals 3, 11, 13, and 15:"
		},
		{

"title": "No.1 DAC manufacturer from Germany - DACMA GmbH",
			"id": "https://dacma.com/",
			"url": "https://dacma.com/",
			"publishedDate": "2024-03-02",
			"author": null,
			"text": "Reach net zero goal with BLANCAIR by DACMA – a proven direct air capture technology with maximum CO2 uptake and minimal energy demand.\n\nDACMA GmbH, headquartered in Hamburg, Germany, is a pioneering DAC manufacturer with cutting-edge technology. With a proven track record, our first machines were delivered in 2023. Our scalable design reaches gigaton capacities, ensuring high CO2 uptake with minimal energy demand.\n\nGet to know us, our team, partnerships and network\n\nLearn more about the status quo of DAC technologies and our BLANCAIR solution\n\nJoin our DACMA team – help us to reach net zero and fight climate change!\n\nWhy BLANCAIR by DACMA:\n\nNo.1 DAC manufacturer from Germany – leveraging decades of aerospace – innovation\n\nDeliverable: proven technology in the market\n\nInterchangeable adsorbents for continuous performance improvement\n\nPatented reactor design with optimized air flow\n\nUniversal application for different climate conditions\n\n“In just one year, DACMA GmbH have achieved an exponential progress in the atmospheric carbon capture journey. The strategic alliance with Repsol (both in Venturing Capital and projects) will boost the pace of this highly focused group of outstanding engineers that are persistently looking for every angle of the technology improvement. Take the time to celebrate, acknowledge your success and keep going!!!”\n\n“One of the most relevant projects related to the development of technologies with a negative CO2 effect, the ONLY project in Brazil on Direct Air Capture multi-country Spain, Brazil Germany in Open Innovation. Repsol Sinopec Brazil Corporation, Start Up DACMA and PUC Rio Grande do Sul University. A disruptive commitment to a more decarbonized world. Being part of this project is a privilege and a unique opportunity to add value to society.”\n\n“In collaboration with Phoenix Contact, DACMA has developed an application that contributes to CO2 decarbonization. This technology makes a significant contribution to sector coupling in the All Electric Society and to the sustainable use of energy. I am delighted that two technology-driven companies are working together so efficiently.”\n\n“The DACMA GmbH with Jörg Spitzner and his team are not only valuable partners in our network, but also key initiators and innovators who, with BLANCAIR, are driving forward DAC system engineering in the Hamburg metropolitan region – an essential future climate change mitigation technology.”\n\n“Together with our partner DACMA GmbH, we are delighted to be building the first DAC machine on the HAMBURG BLUE HUB site in the Port of Hamburg. The 30-60 tons output of CO2 annually of the BLANCAIR machine can later be used to produce e-methanol for the Port of Hamburg, for example. This is a joint milestone, as it fits in with the plan to purchase large volumes of synthetic fuels from Power-to-X plants in Africa and South America for Germany through the HAMBURG BLUE HUB”.\n\nBacked by strong investors & partners:\n\nassociations & supporters:"
		},
		{

"title": "Heatrix GmbH Decarbonizing Industry – We decarbonize high temperature industrial heat.",
			"id": "https://heatrix.de/",
			"url": "https://heatrix.de/",
			"publishedDate": "2024-02-28",
			"author": null,
			"text": "Our mission\n\nis to competitively replace fossil fuels in energy intensive industriesby converting renewable electricity into storable, high-temperature process heat.\n\n11% of global CO2 emissions is caused byhigh-temperature industrial heat.\n\nNo carbon-neutral, cost-competitive and easy\nto\nintegrate solution exists yet.\n\n11%\nof global CO2 emissions is caused by\nhigh-temperature industrial heat.\n\nNo carbon-neutral, cost-competitive and easy\nto integrate solution exists yet.\n\nOur solution\n\nThe Heatrix system combines an electric heater, utilizing off-grid solar or wind \nelectricity, with a thermal energy storage to provide continuous high-temperature \nprocess heat. With an outlet temperature of up to 1500 °C, Heatrix has the potential to \ndecarbonize the majority of high emission industries.\n\nHeatrix technology perfectly fulfils customers' \nrequirements – CO2 free continuous and easily integrated process heat at competitive cost.\n\nCarbon-free green heat, \nreducing CO2 emissions \n up to 100%\n\nProcess heat (hot air) \nup to 1500 °C\n\nThermal storage up\n to 20 hours to \ndeliver green heat 24/7\n\nHigh efficiency up \nto 90% based on \nresistance heating\n\nCost competitive vs. \nfossil fuels and substantially \ncheaper than green hydrogen\n\nModular container\nsystem enables \neasy scalability\n\nEasy integration \nwith minimal \nretrofitting needs\n\nApplications for Heatrix\n\nCalcination\n\nReplacing fossil fuel burners and reducing fuel consumption in calcination processes by integrating Heatrix heat to shaft calciners or precalciners of rotary kilns.\n\nHeat Treatment\n\nInducing required process temperatures via hot air flow from Heatrix replacing fossil fuel burners in heat treatment ovens.\n\nSintering & Pelletization\n\nReduced fuel gas & coke usage by providing Heatrix heat to sintering or pelletization plants.\n\nPreheating\n\nCombined with existing burner system, Heatrix technology can be used to preheat materials and reduce fuel consumption in the actual process.\n\nThis is us\n\nStrategy & Operations\n\nInnovator / Inventor / Sold first tech start-up in 2021 / Ph.D. from RWTH Aachen\n\nTechnology & Product\n\nTech Lead / Fluid dynamics expert / Energy technologies / Ph.D. from University Bremen\n\nBusiness & Finance\n\n2nd-time Founder / former VC-Investor / MBA from Tsinghua, MIT & HEC Paris\n\nContact us\n\nLooking for more information about Heatrix and our technology? We’d love to get in touch!\n\nHeatrix ensures defensibility through modular product, ease of integration, technological advantages and compelling business model.\n\nModular Product\n\n• Avoids individual design process – fits in standard containers• Industry-agnostic solution• Modular configuration to meet customer needs\n\nEasy Interaction\n\n• Rapid deployment• Focus on minimal plant downtime• Compatible to back-up for guaranteed production\n\nBusiness Model\n\n• Ongoing customer relationship and revenue \n• Large growth potential\n• Maximal impact on CO2\nreduction\n\nTechnical Advantage\n\n• Unique system design integrating electric heater and thermal storage \n• IP application in preparation for unique heater and storage design"
		},
		{

"title": "vabeck® GmbH - Grüne Prozesstechnik für den Umweltschutz",
			"id": "https://www.vabeck.com/en",
			"url": "https://www.vabeck.com/en",
			"publishedDate": "2022-01-01",
			"author": null,
			"text": ""
		}
	],
	"requestId": "a02fd414d9ca16454089e8720cd6ed2b"
}
```

Nice! On inspection, these results include companies located in Hamburg, Munich and other close by European locations. This example can be extended to any key phrase - have a play with filtering via [other company suffixes - ](https://en.wikipedia.org/wiki/List%5Fof%5Flegal%5Fentity%5Ftypes%5Fby%5Fcountry) and see what interesting results you get back!

**Examples:**

Example 1 (unknown):
```unknown
Make a query, in this example searching for the most innovative climate tech companies. To use Phrase Filters, specify a string corresponding to the `includeText` input parameter
```

Example 2 (unknown):
```unknown
Which outputs:
```

---

## All tools

**URL:** llms-txt#all-tools

**Contents:**
- Additional Resources

npx exa-mcp-server tools=web_search_exa,get_code_context_exa,crawling_exa,company_research_exa,linkedin_search_exa,deep_researcher_start,deep_researcher_check
```

## Additional Resources

For more information, visit the [Exa MCP Server GitHub repository](https://github.com/exa-labs/exa-mcp-server/).

---

## Auto search as Default

**URL:** llms-txt#auto-search-as-default

**Contents:**
- What This Means for You
- Quick Example

Source: https://docs.exa.ai/changelog/auto-search-as-default

Auto search, which intelligently combines Exa's proprietary neural search with other search methods, is now the default search type for all queries.

The change to Auto search as default leverages the best of Exa's proprietary neural search and other search methods to give you the best results. Out of the box, Exa now automatically routes your queries to the best search type.

<Info>
  Read our documentation on Exa's different search types [here](/reference/exas-capabilities-explained).
</Info>

## What This Means for You

1. **Enhanced results**: Auto search automatically routes queries to the most appropriate search method, optimizing your search results without any extra effort on your part.
2. **No Action required**: If you want to benefit from Auto search, you don't need to change anything in your existing implementation. It'll just work!
3. **Maintaining current behavior**: If you prefer to keep your current search behavior, you can still explicitly set `type="neural"` in your search requests.

Here's what this means for your code when default switches over:

```Python Python theme={null}

---

## New Fast Search Type

**URL:** llms-txt#new-fast-search-type

**Contents:**
- What's New
- When to Use Fast Search
- How to Use Fast Search
- Options That Impact Latency

Source: https://docs.exa.ai/changelog/new-fast-search-type

Introducing Exa Fast: The world's fastest search API.

**Date: July 29, 2025**

We're excited to introduce **Exa Fast** - the fastest search API in the world. Exa Fast uses streamlined versions of our search models with p50 latency below 425ms.

<Info>
  Fast search is available immediately on all API plans. [Try Fast search in the dashboard →](https://dashboard.exa.ai/playground/search?q=blog%20post%20about%20AI\&filters=%7B%22text%22%3A%22true%22%2C%22type%22%3A%22fast%22%2C%22livecrawl%22%3A%22never%22%7D)
</Info>

The Fast search type provides:

* **Speed**: p50 latency below 425ms - that's 30% faster than other search APIs
* **Exa Index**: Uses the same index of high quality content as our neural search
* **Customization**: Full compatibility with all the same parameters as our other search types

## When to Use Fast Search

Fast search is ideal for:

1. **Fast web grounding**: Integrate real-time web information into responses without sacrificing speed and impacting user experience
2. **Agentic workflows**: AI agents like deep research that use dozens or hundreds of search calls where milliseconds add up
3. **Low-latency AI products**: Latency-sensitive applications like AI voice companions where every millisecond matters

## How to Use Fast Search

Using Fast search is simple - just add `type="fast"` to your search requests:

## Options That Impact Latency

While Fast search is optimized for speed, certain options can increase response times:

* **Live crawling**: Fetching content live requires real-time web requests. Set `livecrawl="never"` to use cached content and maintain optimal speed.
* **AI summaries**: Requesting AI-generated summaries requires LLM processing, which adds significant latency to your requests.
* **Complex date filters**: Using wide date ranges or multiple date constraints requires additional filtering that can slow down results.
* **Include/exclude text**: Text-based content filtering requires scanning through results, which impacts response times.
* **Subpages**: Including subpages in your search requires additional processing and can significantly increase latency.

For the fastest possible performance, use Fast search with minimal parameters and rely on cached content.

**Examples:**

Example 1 (unknown):
```unknown

```

Example 2 (unknown):
```unknown

```

---

## Basic search

**URL:** llms-txt#basic-search

result = exa.search(
  "hottest AI startups",
  num_results=2
)

---

## Added Language Filtering

**URL:** llms-txt#added-language-filtering

**Contents:**
- What Changed
- What This Means for You
- How It Works

Source: https://docs.exa.ai/changelog/language-filtering-default

Language filtering is now turned on for everyone by default. Exa now detects your query language and only searches web search results in the same language.

**Date: November 5, 2025**

We now return results that match the language of your search query. This feature is now turned on by default for all users.

Before this update, Exa would mostly return results in your query language, but you might also get results from other languages mixed in. Now, Exa detects what language you're searching in and only shows you web search results in that same language.

## What This Means for You

1. **Better results**: Your search results will now be more relevant because they match your query language.
2. **No setup needed**: This feature is already working for your account - you don't need to do anything.
3. **Works across languages**: Whether you search in English, Spanish, French, or any other language, you'll get results in that language.

When you search, Exa automatically:

* Detects what language your query is in
* Searches only through web search results in that same language
* Returns results that are more relevant to your language needs

This update makes search results much more useful, especially if you work with content in multiple languages. The filtering works particularly well and has shown big improvements in our testing.

If you have any questions about this update, please reach out to [hello@exa.ai](mailto:hello@exa.ai).

---

## Exa for Google Sheets

**URL:** llms-txt#exa-for-google-sheets

**Contents:**
- Overview
- Installation
- Using Exa in Sheets
  - EXA\_SEARCH - Search the Web
  - EXA\_ANSWER - Generate AI Answers
  - EXA\_CONTENTS - Extract Content
  - EXA\_FINDSIMILAR - Find Similar Pages
- Example Use Cases
  - Market Research
  - Content Curation

Source: https://docs.exa.ai/reference/exa-for-sheets

Bring the power of Exa's semantic search directly into Google Sheets. Query the web, retrieve relevant results, and enrich your spreadsheets with up-to-date information—all without leaving your worksheet.

Exa for Sheets is a Google Apps Script integration that enables you to:

* Run semantic web searches directly from spreadsheet cells
* Generate AI-powered answers with web citations
* Retrieve and parse web content at scale
* Find similar pages to reference URLs
* Automate research and data collection workflows

<Steps>
  <Step title="Open Google Sheets">
    Navigate to [Google Sheets](https://sheets.google.com) and open a new or existing spreadsheet.
  </Step>

<Step title="Install Exa AI Add-on">
    1. Go directly to the [Exa AI add-on](https://workspace.google.com/marketplace/app/exa_ai/465545439521) in the Google Workspace Marketplace
    2. Click **Install** and grant the necessary permissions

Alternatively, you can search manually:

* Click **Extensions** → **Add-ons** → **Get add-ons** in the menu bar
    * Search for "Exa AI" in the Google Workspace Marketplace

<img src="https://mintcdn.com/exa-52/O7mBjFSY5eCtLx6i/images/integrations/exa-for-sheets/exa-sheets.png?fit=max&auto=format&n=O7mBjFSY5eCtLx6i&q=85&s=22a03e6a26d60ab1eb204f37661698dc" alt="" data-og-width="2246" width="2246" data-og-height="867" height="867" data-path="images/integrations/exa-for-sheets/exa-sheets.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/O7mBjFSY5eCtLx6i/images/integrations/exa-for-sheets/exa-sheets.png?w=280&fit=max&auto=format&n=O7mBjFSY5eCtLx6i&q=85&s=1df8053eca1dfa4d319e4033c7289f60 280w, https://mintcdn.com/exa-52/O7mBjFSY5eCtLx6i/images/integrations/exa-for-sheets/exa-sheets.png?w=560&fit=max&auto=format&n=O7mBjFSY5eCtLx6i&q=85&s=f9803a620ae2649145b659a3430d9013 560w, https://mintcdn.com/exa-52/O7mBjFSY5eCtLx6i/images/integrations/exa-for-sheets/exa-sheets.png?w=840&fit=max&auto=format&n=O7mBjFSY5eCtLx6i&q=85&s=4d26a6fba877aebd3d3087c34fc94d70 840w, https://mintcdn.com/exa-52/O7mBjFSY5eCtLx6i/images/integrations/exa-for-sheets/exa-sheets.png?w=1100&fit=max&auto=format&n=O7mBjFSY5eCtLx6i&q=85&s=19b3b3ecdb9fbf3ded73259a51edf31d 1100w, https://mintcdn.com/exa-52/O7mBjFSY5eCtLx6i/images/integrations/exa-for-sheets/exa-sheets.png?w=1650&fit=max&auto=format&n=O7mBjFSY5eCtLx6i&q=85&s=c4f4d7093df9f52c688a1133f378a20d 1650w, https://mintcdn.com/exa-52/O7mBjFSY5eCtLx6i/images/integrations/exa-for-sheets/exa-sheets.png?w=2500&fit=max&auto=format&n=O7mBjFSY5eCtLx6i&q=85&s=3122ffca0137ee7c0b562debb27085a2 2500w" />
  </Step>

<Step title="Configure Your API Key">
    1. After installation, you'll see a new **Exa AI** menu in Google Sheets
    2. Click **Extensions** → **Exa AI** → **Open Sidebar**
    3. Get your API key from [dashboard.exa.ai](https://dashboard.exa.ai/api-keys)
    4. Paste your API key in the sidebar and click **Save Key**
  </Step>

<Step title="Start Using Exa Functions">
    You're all set! Start using Exa functions like `=EXA_SEARCH()`, `=EXA_ANSWER()`, and more in your spreadsheet cells.
  </Step>
</Steps>

## Using Exa in Sheets

### EXA\_SEARCH - Search the Web

Search the web and return URLs:

* `query` (required, string): Your search query
* `numResults` (optional, number): Number of results to return (1-10, default: 1)
* `searchType` (optional, string): "auto", "neural", or "fast" (default: "auto")
* `prefix` (optional, string): Text to prepend to the query
* `suffix` (optional, string): Text to append to the query

**Returns:** Vertical array of URLs that automatically spills into cells below

### EXA\_ANSWER - Generate AI Answers

Generate AI-powered answers based on web search results:

* `prompt` (required, string): The main question or prompt
* `prefix` (optional, string): Text to prepend to the prompt
* `suffix` (optional, string): Text to append to the prompt
* `includeCitations` (optional, boolean): If TRUE, includes source citations (default: FALSE)

**Returns:** String containing the answer with optional citations

### EXA\_CONTENTS - Extract Content

Extract text content from a specified URL:

* `url` (required, string): Full URL starting with http/https

**Returns:** String containing the main text content from the URL

### EXA\_FINDSIMILAR - Find Similar Pages

Find URLs similar to a reference URL:

* `url` (required, string): Reference URL to find similar content
* `numResults` (optional, number): Number of results (1-10, default: 1)
* `includeDomainsStr` (optional, string): Comma-separated domains to include
* `excludeDomainsStr` (optional, string): Comma-separated domains to exclude
* `includeTextStr` (optional, string): Phrase that must appear in results
* `excludeTextStr` (optional, string): Phrase that must not appear in results

**Returns:** Vertical array of similar URLs

Automatically gather competitor information and industry trends:

Build reading lists and curate relevant articles:

### Research Automation

Get AI-powered answers with citations for research:

## Using Claude for Sheets with Exa

You can combine Exa for Sheets with Claude for Sheets to create powerful research and analysis workflows. While Exa finds and retrieves relevant web content, Claude can process, analyze, and transform that content.

### What is Claude for Sheets?

Claude for Sheets is a Google Sheets add-on that brings Anthropic's AI assistant directly into your spreadsheets. It allows you to use AI to analyze, summarize, rewrite, and process text data right in your cells.

**Install Claude for Sheets**: [Google Workspace Marketplace](https://workspace.google.com/marketplace/app/claude_for_sheets/909417792257)

### Combining Exa and Claude

Here's how you can use both tools together:

1. **Use Exa to find content**: Search for relevant URLs or extract content from web pages
2. **Use Claude to process the results**: Analyze, summarize, or transform the content Exa retrieved

## Available Functions Reference

| Function                                                                                                | Description                 | Returns       |
| ------------------------------------------------------------------------------------------------------- | --------------------------- | ------------- |
| `=EXA_SEARCH(query, [numResults], [searchType], [prefix], [suffix])`                                    | Search the web semantically | Array of URLs |
| `=EXA_ANSWER(prompt, [prefix], [suffix], [includeCitations])`                                           | Generate AI-powered answers | Answer text   |
| `=EXA_CONTENTS(url)`                                                                                    | Extract content from URL    | Text content  |
| `=EXA_FINDSIMILAR(url, [numResults], [includeDomains], [excludeDomains], [includeText], [excludeText])` | Find similar pages          | Array of URLs |

The Exa for Sheets sidebar provides additional functionality:

### API Key Management

* Save and manage your Exa API key securely
* Keys are stored in your Google account using UserProperties
* View masked key display (first 4 + last 4 characters)
* Remove keys when needed

* **Refresh Selected Cells**: Update multiple Exa function results at once
* Select a range of cells containing Exa functions
* Click "Refresh Selected Cells" to re-execute all functions
* Automatically handles spilled array values

### Built-in Documentation

* Quick reference for all available functions
* Parameter descriptions and types
* Function signatures with examples

## Tips and Best Practices

<Tip>
  **Array Formulas**: `EXA_SEARCH` and `EXA_FINDSIMILAR` return arrays that automatically spill into cells below. Make sure you have empty cells below your formula to avoid `#SPILL!` errors.
</Tip>

<Tip>
  **Batch Refresh**: Use the sidebar's batch refresh feature to update multiple cells at once instead of manually editing each formula.
</Tip>

<Warning>
  **Rate Limits**: Be mindful of your API rate limits when running large batch operations. Each function call counts as one API request.
</Warning>

<Note>
  **Search Types**: Use "neural" for semantic similarity, "fast" for quick searches, or "auto" to let Exa choose the best approach automatically.
</Note>

## Dynamic Queries with Concatenation

Build powerful dynamic queries by combining cell references with text using the `&` operator or `CONCAT()` function:

### Basic Concatenation

Combine text and cell values to create dynamic search queries:

If cell A2 contains "artificial intelligence", this searches for "latest news about artificial intelligence".

### Multiple Cell References

Combine multiple cells to build complex queries:

Example: A2="Tesla", B2="production numbers", C2="2024" → searches for "Tesla production numbers in 2024"

### Using CONCAT for Cleaner Formulas

For longer queries, use `CONCAT()` for better readability:

### Dynamic Prefixes and Suffixes

Use the prefix and suffix parameters with cell references:

This prepends and appends text to your query dynamically.

### Conditional Queries

Combine with `IF()` statements for conditional searches:

### Example Use Cases

**Research Tracker:**

**Competitor Analysis:**

**Content Discovery:**

## Privacy & Security

* API keys are stored securely using Google Apps Script's UserProperties service
* Keys are only accessible to your Google account
* No data is stored outside your Google account and the Exa API
* [Privacy Policy](https://exa.ai/exa-for-sheets/privacy-policy)

Check out the [GitHub repository](https://github.com/exa-labs/exa-sheets).

**Examples:**

Example 1 (unknown):
```unknown
=EXA_SEARCH("latest developments in renewable energy", 5)
```

Example 2 (unknown):
```unknown
=EXA_ANSWER("What is quantum computing?", "", "", TRUE)
```

Example 3 (unknown):
```unknown
=EXA_CONTENTS("https://example.com/article")
```

Example 4 (unknown):
```unknown
=EXA_FINDSIMILAR("https://example.com", 5)
```

---

## Exa's Capabilities Explained

**URL:** llms-txt#exa's-capabilities-explained

**Contents:**
- Search Types
- Auto search (prev. Magic Search)
- Neural Search
- Fast Search
- Deep Search
- Phrase Filter Search
- Large-scale Searches
- Contents Retrieval
- Highlights
- Prompt Engineering

Source: https://docs.exa.ai/reference/exas-capabilities-explained

This page explains some of the available feature functionalities of Exa and some unique ways you might use Exa for your use-case

## Auto search (prev. Magic Search)

| Where you would use it                                                                                                                                                                                                           |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| When you want optimal results without manually choosing search methods. When you might not know ahead of time what the best search type is. Note Auto search is the default search type - when unspecified, Auto search is used. |

| Description                                                                                                             | Where you would use it                                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Uses Exa's embeddings-based index and query model to perform complex queries and provide semantically relevant results. | For exploratory searches or when looking for conceptually related content rather than exact matches. To find hard to find, specific results from the web |

| Description                                                   | Where you would use it                                                                                                                                                                       |
| ------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Streamlined versions of our search models for faster results. | When you need quick search results and speed is more important than comprehensive coverage. Ideal for real-time applications, AI agents, or when you need to make many search calls quickly. |

| Description                                                                     | Where you would use it                                                                                                                                                                  |
| ------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Comprehensive search with query expansion and detailed context for each result. | When you need thorough research results with high-quality context. Perfect for complex queries, research tasks, or when you want to explore different aspects of a topic in one search. |

## Phrase Filter Search

| Description                                                         | Where you would use it                                                                                                                                                               |
| ------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Apply text filters atop of a neural search before returning results | When you want the power of Neural Search but also need to specify and filter on some key phrase. Often helpful when filtering on a piece of jargon where a specific match is crucial |

[See a worked example here](/examples/niche-company-finder-with-phrase-filters)

## Large-scale Searches

| Description                                                | Where you would use it                                                                                                            |
| ---------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| Exa searches that return a large number of search results. | When desiring comprehensive, semantically relevant data for batch use cases, e.g., for enrichment of CRMs or full topic scraping. |

Note high return results cost more and higher result caps (e.g., 1000 returns) are restricted to Enterprise/Custom plans only. [Get in touch ](https://cal.com/team/exa/exa-intro-chat?date=2024-11-14\&month=2024-11)if you are interested in learning more.

## Contents Retrieval

| Description                                                                         | Where you would use it                                                                         |
| ----------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| Instantly retrieves whole, cleaned and parsed webpage contents from search results. | When you need the full text of webpages for analysis, summarization, or other post-processing. |

| Description                                                      | Where you would use it                                                                                                            |
| ---------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| Extracts relevant excerpts or highlights from retrieved content. | When you want a quick or targeted outputs from the most relevant parts of a search entity without wanted to handle the full text. |

## Prompt Engineering

Prompt engineering is crucial for getting the most out of Exa's capabilities. The right prompt can dramatically improve the relevance and usefulness of your search results. This is especially important for neural search and advanced features like writing continuation.

## Writing continuation queries

| Description                                                                                                                                                                                            | Where you would use it                                                                                                                                                                                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Prompt crafted by post-pending 'Here is a great resource to continue writing this piece of writing:'. Useful for research writing or any other citation-based text generation after passing to an LLM. | When you're in the middle of writing a piece and need to find relevant sources to continue or expand your content. This is particularly useful for academic writing, content creation, or any scenario where you need to find information that logically follows from what you've already written. |

| Description                                                                             | Where you would use it                                                                                                                                                                                                                                   |
| --------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Utilizing Exa's long query window to perform matches against semantically rich content. | When you need to find content that matches complex, detailed descriptions or when you want to find content similar to a large piece of text. This is particularly useful for finding niche content or when you're looking for very specific information. |

**Examples:**

Example 1 (unknown):
```unknown
## Neural Search

| Description                                                                                                             | Where you would use it                                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Uses Exa's embeddings-based index and query model to perform complex queries and provide semantically relevant results. | For exploratory searches or when looking for conceptually related content rather than exact matches. To find hard to find, specific results from the web |
```

Example 2 (unknown):
```unknown
## Fast Search

| Description                                                   | Where you would use it                                                                                                                                                                       |
| ------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Streamlined versions of our search models for faster results. | When you need quick search results and speed is more important than comprehensive coverage. Ideal for real-time applications, AI agents, or when you need to make many search calls quickly. |
```

Example 3 (unknown):
```unknown
## Deep Search

| Description                                                                     | Where you would use it                                                                                                                                                                  |
| ------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Comprehensive search with query expansion and detailed context for each result. | When you need thorough research results with high-quality context. Perfect for complex queries, research tasks, or when you want to explore different aspects of a topic in one search. |
```

Example 4 (unknown):
```unknown
## Phrase Filter Search

| Description                                                         | Where you would use it                                                                                                                                                               |
| ------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Apply text filters atop of a neural search before returning results | When you want the power of Neural Search but also need to specify and filter on some key phrase. Often helpful when filtering on a piece of jargon where a specific match is crucial |
```

---

## Run with default tools only (web_search_exa and get_code_context_exa)

**URL:** llms-txt#run-with-default-tools-only-(web_search_exa-and-get_code_context_exa)

---

## Get a Search

**URL:** llms-txt#get-a-search

Source: https://docs.exa.ai/websets/api/websets/searches/get-a-search

get /v0/websets/{webset}/searches/{id}
Gets a Search by id

---

## additional_queries=["variation 1", "variation 2"],  # Optional query variations

**URL:** llms-txt#additional_queries=["variation-1",-"variation-2"],--#-optional-query-variations

---

## New Deep Search Type

**URL:** llms-txt#new-deep-search-type

**Contents:**
  - How Deep Search Works
  - How to Use Deep Search
  - What You Get Back
  - Available Search Types

Source: https://docs.exa.ai/changelog/new-deep-search-type

Introducing Exa Deep: Get better results with smart query expansion and high-quality summaries.

**Date: November 20, 2025**

We're excited to introduce **Exa Deep** - a new search type that finds better results by running multiple searches at once and gives you high-quality context for each result. You can send just one query (we'll create variations automatically) or provide your own query variations using the `additionalQueries` parameter for even better results.

<Info>
  Deep search is available on our API Playground. [Try Deep search in the dashboard →](https://dashboard.exa.ai/playground/search?q=blog%20post%20about%20AI\&filters=%7B%22text%22%3A%22true%22%2C%22type%22%3A%22deep%22%2C%22livecrawl%22%3A%22fallback%22%7D)
</Info>

### How Deep Search Works

When you use Deep search, here's what happens:

1. **Query Expansion**: If you only send one query, we automatically create variations. If you send query variations yourself using `additionalQueries`, we use those instead. For best results, consider having a good LLM model (like GPT-5 or Claude 4.5 Sonnet) generate the query variations for you.
2. **Parallel Search**: We search for your main query and all variations at the same time
3. **Smart Ranking**: We combine and rank all results to give you the most relevant ones
4. **Summary Generation**: Each result gets a detailed, accurate summary

### How to Use Deep Search

Using Deep search is simple - just add `type="deep"` to your search requests. You can also add `additionalQueries` for even better results:

**Basic Deep Search:**

**Deep Search with Query Variations:**

### What You Get Back

Deep search returns a `context` field that gives you detailed context:

### Available Search Types

Now you have four search types to choose from:

* **Auto** (default): Our best search, intelligently combines multiple search methods
* **Fast**: Fastest search with lowest latency
* **Deep**: Deep search with query expansion and summaries
* **Neural**: Predicts the most relevant results based on query meaning

We're excited for you to try Deep search and see how it can improve your search results!

**Examples:**

Example 1 (unknown):
```unknown
**Deep Search with Query Variations:**
```

Example 2 (unknown):
```unknown
### What You Get Back

Deep search returns a `context` field that gives you detailed context:
```

---

## Limit search_results to a maximum of 20,000 characters

**URL:** llms-txt#limit-search_results-to-a-maximum-of-20,000-characters

**Contents:**
- 4. Advanced Example: Analyzing Multiple Research Papers

search_results = search_results.results[:20000]

class QuantumComputingAdvancement(BaseModel):
    technology: str
    description: str
    potential_impact: str

def __str__(self):
        return (
            f"Technology: {self.technology}\n"
            f"Description: {self.description}\n"
            f"Potential Impact: {self.potential_impact}"
        )

structured_output = client.chat.completions.create(
    model="gpt-3.5-turbo",
    response_model=QuantumComputingAdvancement,
    messages=[
        {
            "role": "user",
            "content": f"Based on the provided context, describe a recent advancement in quantum computing.\n\n{search_results}",
        }
    ],
)

print(structured_output)
python Python theme={null}
import os
from typing import List

import instructor
from exa_py import Exa
from openai import OpenAI
from pydantic import BaseModel, field_validator

exa = Exa(os.environ["EXA_API_KEY"])
client = instructor.from_openai(OpenAI())

class ResearchPaper(BaseModel):
    title: str
    authors: List[str]
    key_findings: List[str]
    methodology: str

@field_validator("title")
    @classmethod
    def validate_title(cls, v):
        if v.upper() != v:
            raise ValueError("Title must be in uppercase.")
        return v

def __str__(self):
        return (
            f"Title: {self.title}\n"
            f"Authors: {', '.join(self.authors)}\n"
            f"Key Findings: {', '.join(self.key_findings)}\n"
            f"Methodology: {self.methodology}"
        )

class ResearchAnalysis(BaseModel):
    papers: List[ResearchPaper]
    common_themes: List[str]
    future_directions: str

def __str__(self):
        return (
            f"Common Themes:\n- {', '.join(self.common_themes)}\n"
            f"Future Directions: {self.future_directions}\n"
            f"Analyzed Papers:\n" + "\n".join(str(paper) for paper in self.papers)
        )

**Examples:**

Example 1 (unknown):
```unknown
Here we define a `QuantumComputingAdvancement` class that inherits from `BaseModel` from Pydantic. This class will be used by Instructor to validate the output from the LLM and for the LLM as a response model. We also implement the `__str__()` method for easy printing of the output. We then initialize `OpenAI()` and wrap instructor on top of it with `instructor.from_openai` to create a client that will return structured outputs. If the output is not structured as our class, Instructor makes the LLM retry until max\_retries is reached. You can read more about how Instructor retries [here](https://python.useinstructor.com/why/#retries).

This example demonstrates how to use Exa to search for content about quantum computing advancements and structure the output using Instructor.

## 4. Advanced Example: Analyzing Multiple Research Papers

Let's create a more complex example where we analyze multiple research papers on a specific topic and use pydantic's own validation model to correct the structured data to show you how we can be *even* more fine-grained:
```

---

## Note: `Deep` search may require context=True to return results

**URL:** llms-txt#note:-`deep`-search-may-require-context=true-to-return-results

---

## OpenAI Responses API

**URL:** llms-txt#openai-responses-api

**Contents:**
- What is Exa?
- Get Started
- Complete Example
- How Tool Calling Works
- Direct Research with Responses API
  - How It Works
  - Available Models
  - Research vs Web Search Tool

Source: https://docs.exa.ai/reference/openai-responses-api-with-exa

Use Exa with OpenAI's Responses API - both as a web search tool and for direct research capabilities.

Exa is the search engine built for AI. It finds information from across the web and delivers both links and the actual content from pages, making it easy to use with AI models.

Exa uses neural search technology to understand the meaning of queries, not just exact matches. The API works with semantic search and other intelligent methods.

First, you'll need API keys from both OpenAI and Exa:

* Get your Exa API key from the [Exa Dashboard](https://dashboard.exa.ai/api-keys)
* Get your OpenAI API key from the [OpenAI Dashboard](https://platform.openai.com/api-keys)

Both examples show how to:

1. Set up the OpenAI Response API with Exa as a tool
2. Make a request to OpenAI
3. Handle the search function call
4. Send the search results back to OpenAI
5. Get the final response

Remember to replace the empty API key strings with your actual API keys when trying these examples.

## How Tool Calling Works

Let's break down how the Exa web search tool works with OpenAI's Response API:

1. **Tool Definition**: First, we define our Exa search as a tool that OpenAI can use:

2. **Initial Request**: When you send a message to OpenAI, the API looks at your message and decides if it needs to search the web. If it does, instead of giving a direct answer, it will return a "function call" in its output.

3. **Function Call**: If OpenAI decides to search, it returns something like:

4. **Search Execution**: Your code then:

* Takes this search query
   * Calls Exa's API to perform the actual web search
   * Gets real web results back

5. **Final Response**: You send these web results back to OpenAI, and it gives you a final answer using the fresh information from the web.

This back-and-forth process happens automatically in the code above, letting OpenAI use Exa's web search when it needs to find current information.

## Direct Research with Responses API

In addition to using Exa as a search tool, you can also access Exa's powerful research capabilities directly through the OpenAI Responses API format. This provides a familiar interface for running complex research tasks.

Simply point the OpenAI client to Exa's API and use our research models:

* **`exa-research`** - Adapts compute to task difficulty. Best for most use cases.
* **`exa-research-pro`** - Maximum quality with highest reasoning capability. Best for complex, multi-step research.

### Research vs Web Search Tool

Choose the right approach for your use case:

| Feature           | Web Search Tool (Function Calling)               | Direct Research                     |
| ----------------- | ------------------------------------------------ | ----------------------------------- |
| **Use Case**      | Augment LLM conversations with web data          | Get comprehensive research reports  |
| **Control**       | Full control over search queries and integration | Automated multi-step research       |
| **Response Time** | Fast (seconds)                                   | Longer (45-180 seconds)             |
| **Best For**      | Interactive chatbots, real-time Q\&A             | In-depth analysis, research reports |

<Note>
  For detailed information about research capabilities, structured outputs, and
  pricing, see the [Exa Research documentation](/reference/exa-research).
</Note>

**Examples:**

Example 1 (unknown):
```unknown

```

Example 2 (unknown):
```unknown
</CodeGroup>

Both examples show how to:

1. Set up the OpenAI Response API with Exa as a tool
2. Make a request to OpenAI
3. Handle the search function call
4. Send the search results back to OpenAI
5. Get the final response

Remember to replace the empty API key strings with your actual API keys when trying these examples.

## How Tool Calling Works

Let's break down how the Exa web search tool works with OpenAI's Response API:

1. **Tool Definition**: First, we define our Exa search as a tool that OpenAI can use:
```

Example 3 (unknown):
```unknown
2. **Initial Request**: When you send a message to OpenAI, the API looks at your message and decides if it needs to search the web. If it does, instead of giving a direct answer, it will return a "function call" in its output.

3. **Function Call**: If OpenAI decides to search, it returns something like:
```

Example 4 (unknown):
```unknown
4. **Search Execution**: Your code then:

   * Takes this search query
   * Calls Exa's API to perform the actual web search
   * Gets real web results back

5. **Final Response**: You send these web results back to OpenAI, and it gives you a final answer using the fresh information from the web.

This back-and-forth process happens automatically in the code above, letting OpenAI use Exa's web search when it needs to find current information.

## Direct Research with Responses API

In addition to using Exa as a search tool, you can also access Exa's powerful research capabilities directly through the OpenAI Responses API format. This provides a familiar interface for running complex research tasks.

### How It Works

Simply point the OpenAI client to Exa's API and use our research models:

<CodeGroup>
```

---

## How to Evaluate Exa Search

**URL:** llms-txt#how-to-evaluate-exa-search

**Contents:**
- Overview
  - Best Practice: Start with Defaults

Source: https://docs.exa.ai/reference/evaluating-exa-search

Comprehensive guide to benchmarking Exa's search API: methodology, optimal settings, datasets, and quality-latency tradeoffs

Evaluating search APIs requires careful methodology to ensure fair, reproducible comparisons. This guide provides a framework for assessing Exa's search capabilities across multiple dimensions:

* **Retrieval Quality**: Accuracy and relevance of returned results
* **Latency**: Response time from query to results
* **Freshness**: Ability to retrieve up-to-date information
* **Cost Efficiency**: Value delivered per API call
* **Agentic Suitability**: Performance in multi-step reasoning workflows

Exa is designed to excel across different use cases:

* **Deep Research**: Multi-hop queries requiring comprehensive context and query expansion
* **Agentic Workflows**: Complex tasks involving multiple search iterations and reasoning steps
* **Low-Latency QA**: Fast factual question-answering for real-time applications
* **Semantic Discovery**: Finding conceptually related content beyond keyword matching

### Best Practice: Start with Defaults

**The most important recommendation for fair evaluation: use Exa's default settings.**

Adding restrictive parameters (date filters, domain restrictions, text inclusion/exclusion) often causes agents to over-optimize in non-meaningful ways, unnecessarily limiting results and reducing quality without providing valuable insights. Unless your evaluation specifically tests a filtered use case, avoid adding constraints that don't reflect real-world usage.

**Recommended minimal configuration:**

```python  theme={null}

---

## )

**URL:** llms-txt#)

**Contents:**
  - Compare Within Latency Classes
- Search Types: Understanding the Quality-Latency Spectrum
  - Fast Search
  - Auto Search (Default)
  - Deep Search
  - Neural Search
- Evaluating Exa with Tool Calling
  - Why Tool Calling Matters for Evaluation
  - Tool Calling Best Practices for Evaluation
  - Implementation Guides

python  theme={null}
result = exa.search_and_contents(
    "latest AI breakthroughs in 2025",
    type="fast",
    num_results=10,
    text={"max_characters": 5000}
)
python  theme={null}
result = exa.search_and_contents(
    "companies building climate tech solutions",
    type="auto",  # or omit - auto is default
    num_results=10,
    text={"max_characters": 5000}
)
python  theme={null}
result = exa.search_and_contents(
    "impact of quantum computing on cryptography",
    type="deep",
    additional_queries=[
        "quantum threats to encryption",
        "post-quantum cryptography research"
    ],
    num_results=10,
    text=True,
    context=True  # Required for `Deep` search summaries
)
python  theme={null}

**Examples:**

Example 1 (unknown):
```unknown
Setting a consistent `max_characters` ensures fair comparisons by standardizing content length across all queries. The `context` parameter returns a single RAG-ready string, while `text` returns individual content for each result. **Note: `Deep` search may require `context=True` to return detailed summaries.** Only add additional parameters (date filters, domain restrictions, etc.) when they're essential to your specific evaluation objective.

### Compare Within Latency Classes

**Critical: Always find the closest competitor in terms of P50 latency for meaningful comparisons.**

Don't compare systems with vastly different latency profiles — a 500ms API serves different use cases than a 5000ms API. Instead, benchmark within similar latency ranges:

* **For Exa Fast (\<500ms)**: Compare to other sub-1s APIs with similar latency
* **For Exa Auto (\~1s)**: Compare to mid-latency systems (800ms-1500ms)
* **For Exa Deep (>2s)**: Compare to other multi-second agentic/research systems

Comparing across latency classes (e.g., `Fast` vs `Deep`) is not meaningful — they're optimized for different requirements and use cases.

## Search Types: Understanding the Quality-Latency Spectrum

Exa offers four search types, each optimized for different evaluation scenarios:

<img src="https://mintcdn.com/exa-52/lUWjcwF6jErKZoyG/assets/latency.png?fit=max&auto=format&n=lUWjcwF6jErKZoyG&q=85&s=53ffd3e8eaea4a83b81ebd6f677c1473" alt="Exa search types positioned on speed vs depth/quality spectrum" data-og-width="1289" width="1289" data-og-height="677" height="677" data-path="assets/latency.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/lUWjcwF6jErKZoyG/assets/latency.png?w=280&fit=max&auto=format&n=lUWjcwF6jErKZoyG&q=85&s=19c653e3a9974a69ca60dd5942d3b901 280w, https://mintcdn.com/exa-52/lUWjcwF6jErKZoyG/assets/latency.png?w=560&fit=max&auto=format&n=lUWjcwF6jErKZoyG&q=85&s=b8c9d9fb56bdce0086feaa612ee1ec75 560w, https://mintcdn.com/exa-52/lUWjcwF6jErKZoyG/assets/latency.png?w=840&fit=max&auto=format&n=lUWjcwF6jErKZoyG&q=85&s=2c69c19683204368c0e24bcb94783e17 840w, https://mintcdn.com/exa-52/lUWjcwF6jErKZoyG/assets/latency.png?w=1100&fit=max&auto=format&n=lUWjcwF6jErKZoyG&q=85&s=e584594bfc6eef8e8ec5265871a1e4d5 1100w, https://mintcdn.com/exa-52/lUWjcwF6jErKZoyG/assets/latency.png?w=1650&fit=max&auto=format&n=lUWjcwF6jErKZoyG&q=85&s=97a0e28265b8c7998e2231f18f9968a2 1650w, https://mintcdn.com/exa-52/lUWjcwF6jErKZoyG/assets/latency.png?w=2500&fit=max&auto=format&n=lUWjcwF6jErKZoyG&q=85&s=a736d68bc036bbff8207934b0cf64939 2500w" />

### Fast Search

**Optimized for**: Speed-critical applications

**Characteristics**:

* Median latency: \~500ms (excluding network and optional features)
* Streamlined neural and reranking models
* Best for single-step factual queries

**When to benchmark with Fast**:

* Low-latency QA datasets (SimpleQA, WebWalkerQA)
* Real-time applications (voice agents, autocomplete)
* High-volume agentic workflows where latency accumulates

**Example configuration**:
```

Example 2 (unknown):
```unknown
### Auto Search (Default)

**Optimized for**: Balanced performance without manual tuning

**Characteristics**:

* Median latency: \~1000ms
* Intelligently combines multiple search methods
* Reranker model adapts to query type

**When to benchmark with Auto**:

* General-purpose search evaluations
* When query types vary significantly
* Production workloads requiring versatility

**Example configuration**:
```

Example 3 (unknown):
```unknown
### Deep Search

<Info>
  Learn more about Deep search in our [Deep Search changelog](/changelog/new-deep-search-type).
</Info>

**Optimized for**: Comprehensive research and multi-hop queries

**Characteristics**:

* Median latency: \~5000ms
* Automatic query expansion or custom query variations via `additional_queries` (Python) / `additionalQueries` (JavaScript)
* Rich contextual summaries for each result (requires `context=True`)
* Parallel search across multiple query formulations

<Note>
  **Using query variations**: Provide 2-3 query variations using `additional_queries` (Python) or `additionalQueries` (JavaScript) for best results. If not provided, Deep search will automatically generate variations.
</Note>

**When to benchmark with Deep**:

* Agentic workflows (FRAMES, MultiLoKo, BrowseComp)
* Complex research tasks requiring multiple perspectives
* Scenarios where comprehensive coverage matters more than speed

**Example configuration**:
```

Example 4 (unknown):
```unknown
### Neural Search

**Optimized for**: Semantic similarity and exploratory queries

**Characteristics**:

* Embeddings-based next-link prediction
* Excels at thematic and conceptual relationships
* Incorporated into Fast and Auto search types

**When to benchmark with Neural**:

* Exploratory search tasks
* Finding semantically related content
* Long-form query matching

## Evaluating Exa with Tool Calling

For evaluating Exa in agentic workflows where LLMs autonomously call search tools, proper tool calling setup is critical. Tool calling allows agents to dynamically invoke Exa search based on user queries and reasoning steps.

### Why Tool Calling Matters for Evaluation

When benchmarking agentic systems:

* **Agents decide when to search**: The LLM determines if/when to call Exa based on the task
* **Dynamic parameter selection**: Agents may choose search parameters (though we recommend minimal defaults)
* **Multi-step workflows**: Agents can make multiple Exa calls in sequence or parallel

### Tool Calling Best Practices for Evaluation

1. **Keep tool definitions minimal**: Don't expose too many parameters to the agent — this encourages over-filtering
2. **Use consistent tool schemas**: Standardize tool definitions across all evaluated systems
3. **Monitor tool call patterns**: Track how often and when agents invoke Exa vs competitors

### Implementation Guides

See our detailed guides for implementing Exa with popular LLM providers:

* **[Anthropic Tool Calling](/reference/anthropic-tool-calling)** - Using Claude with Exa search integration
* **[OpenAI Tool Calling](/reference/openai-tool-calling)** - Integrating Exa with GPT models
* **[OpenAI Responses API](/reference/openai-responses-api-with-exa)** - Recommended for new OpenAI projects

These guides show how to define Exa search as a tool and handle the agent's tool call responses properly.

***

## Evaluation Methodology

### Core Principles for Fair Benchmarking

To ensure reproducible, meaningful comparisons:

1. **Use default settings**: Start with minimal parameters (`type`, `num_results`, `text`). Avoid adding restrictive filters (date ranges, domains, text inclusion/exclusion) unless they're core to your evaluation — these often cause over-optimization that artificially limits results without meaningful benefit.

2. **Standardize queries**: Use identical query sets across all systems

3. **Control downstream processing**: Use the same LLM for answer synthesis and grading

4. **Disable prompt engineering**: Evaluate base API performance without query optimization

5. **Measure consistently**: Track P50 latency, accuracy, and coverage using identical metrics

6. **Document configurations**: Record all parameter settings for reproducibility

### Four-Phase Evaluation Workflow

#### Phase 1: Scope Definition

Define evaluation objectives:

* What capabilities are you testing? (factual QA, research depth, freshness, etc.)
* What latency requirements matter for your use case?
* Are you evaluating single-step retrieval or multi-step agentic workflows?

#### Phase 2: Dataset Selection

Choose benchmarks aligned with your scope (see Datasets section below):

* **Low-latency factual QA**: SimpleQA, WebWalkerQA
* **Single-step retrieval**: FRAMES (single-step slice), Seal0
* **Agentic workflows**: FRAMES (agentic slice), MultiLoKo, BrowseComp
* **Complex reasoning**: HLE (hard, long, emerging questions)
* **Freshness**: FreshQA, time-sensitive queries

#### Phase 3: Run Configurations

Execute standardized retrieval-synthesis-grading loop:
```

---

## Create a simple research task

**URL:** llms-txt#create-a-simple-research-task

instructions = "What is the latest valuation of SpaceX?"
schema = {
    "type": "object",
    "properties": {
        "valuation": {"type": "string"},
        "date": {"type": "string"},
        "source": {"type": "string"}
    }
}

task = exa.research.create_task(
    instructions=instructions,
    output_schema=schema
)

---

## Prompting Websets

**URL:** llms-txt#prompting-websets

Source: https://docs.exa.ai/websets/dashboard/walkthroughs/Prompting

Here's how to prompt your query in Websets

Websets is a web research agent designed to find a perfect list of results that matches your criteria. Here's how to prompt it:

<Note>
  **How not to prompt Websets:** Websets is not an answer engine, so it's not meant for queries like "How your I think about xyz" or "Give me a report on abc".&#x20;
</Note>

* Type in your query, thinking of the type of thing you're trying to find (e.g. Companies, People, Research Papers, Articles, Reports, etc.)&#x20;

* Describing in detail the type of results you'd like. Common descriptors include location, size, theme, industry, qualifiers (e.g. have ISO certification, know rust), past experience etc.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/rkXVtvVkqGs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen referrerpolicy="strict-origin-when-cross-origin" />

---
