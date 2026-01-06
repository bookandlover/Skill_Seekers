# Exa-Api - Other

**Pages:** 91

---

## FAQ

**URL:** llms-txt#faq

Source: https://docs.exa.ai/websets/faq

Frequently asked questions about Websets

<Accordion title="Who is Websets for?">
  Websets is a tool meant to solve sourcing for knowledge workers. Here are a few major use cases:

* **Recruiters**: source potential candidates for any role (we all know Linkedin search is broken after all)
  * **Sales teams**: source companies and points of contact that match your ICP. Watch hours of outbound research be done in minutes
  * **Investors**: whether you're looking for your next target or doing diligence, Websets can be a powerful tool. Find companies, financial statements, reports and news.
  * **Researchers**: find research papers, reports, news and more. No matter what you're researching.
  * **Founder**: find competitors, tweet ideas, candidates, potential customers, potential investors and more.

And more! We've seen thousands of different use cases.
</Accordion>

<Accordion title="What exactly does Websets do?">
  Websets helps you find lists of entities (e.g. companies, people, research
  papers) that match the specific criteria you provide. It's not an all-purpose
  Q\&A engine, so stick to queries aimed at listing out or filtering by certain
  attributes. Websets can find people, companies, financial reports, research
  papers, articles, news, blogposts, social media posts, code repos, the
  list goes on.
</Accordion>

<Accordion title="Why am I not getting any results?">
  Too many restrictive criteria. If your search is very narrow (e.g., "Companies
  in Antarctica that raised \$1B in seed funding in 2025"), it may be impossible
  to find matches. You can try removing or broadening certain criteria and
  searching again. Asking questions not meant for Websets (e.g. if you're asking
  open ended questions such as "How's the European economy doing in 2025?" or
  specific questions such as "What's an EGOT?")
</Accordion>

<Accordion title="How many results can I request in one webset?">
  You can request anywhere from 1 to 1000+ results (depending on your plan and
  credit balance). However: Large requests (1000+ results) can take about an
  hour or more to complete. Websets stops automatically if it can't find your
  requested number of matching items before hitting its search limit (50× your
  requested size or 50,000 max).
</Accordion>

<Accordion title="Can I remove or tweak results?">
  Yes. On the results page, you can manually delete any entries that you don't
  want to keep. If you see that the results aren't what you need, you can also
  refine your criteria and try again.
</Accordion>

<Accordion title="How do credits and pricing work?">
  Free: 1,000 credits. Websets up to 25 results, with limited features.

Subscription Core plan: \$49/month - 8,000 credits per month

Pro plan: \$449/month - 100,000 credits per month

We also have an Enterprise plan.

10 credit = 1 all-green result in a generated webset. For example, if you generate a webset of 50 perfect matches, that uses 500 credits. Credits are also used for special features such as custom columns, requesting emails/contact information & alerts.

Topping up credits: If you run out, you can contact your point person to purchase additional credits manually.
</Accordion>

<Accordion title="Why is my Webset taking a long time?">
  Large requests (especially 1000+ results) can take up to \~1 hour. This is
  normal because Websets scans a large volume of data. The more criteria, the
  tougher it is to find those results. These types of searches are narrower and
  can take longer as well You can monitor the progress in the left-hand panel,
  where you'll see the job's status and any partial progress.
</Accordion>

<Accordion title="Where does Websets get its data?">
  Websets runs using the Exa API - a powerful search engine that combines
  multiple search methods to find precise criteria. Websets collects
  and aggregates data from publicly available sources (e.g., company websites,
  press releases). It can validate different criteria using different data
  sources. This ensures that we can find more matches, more accurately. The tool
  surfaces the references (links) used, so you can check exactly which sources
  informed each match.
</Accordion>

<Accordion title="Can I change my criteria after I've generated a full webset?">
  Absolutely. You can revise your original query or tweak the criteria from the
  Search More button on the lower left hand side. You would then run a new
  Webset which would consume new credits based on how many all-green results you
  generate.
</Accordion>

<Accordion title="What if I still have more questions or need more credits?">
  Contact your account representative or point person if you need help,
  additional credits, or have feedback about your results, or [hello@exa.ai](mailto:hello@exa.ai).
</Accordion>

---

## Structured Outputs with Instructor

**URL:** llms-txt#structured-outputs-with-instructor

**Contents:**
- What this doc covers
- Guide
- 1. Pre-requisites and installation
- 2. Why use Instructor?
- 3. Setup and Basic Usage

Source: https://docs.exa.ai/examples/getting-started-with-exa-in-instructor

Using Exa with instructor to generate structured outputs from web content.

## What this doc covers

* Setting up Exa to use [Instructor](https://python.useinstructor.com/) for structured output generation
* Practical examples of using Exa and Instructor together

## 1. Pre-requisites and installation

Install the required libraries:

Ensure API keys are initialized properly. The environment variable names are `EXA_API_KEY` and `OPENAI_API_KEY`.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

## 2. Why use Instructor?

Instructor is a Python library that allows you to generate structured outputs from a language model.

We could instruct the LLM to return a structured output, but the output will still be a string, which we need to convert to a dictionary. What if the dictionary is not structured as we want? What if the LLM forgot to add the last "}" in the JSON? We would have to handle all of these errors manually.

We could use `{ "type": "json_object" }` [](https://platform.openai.com/docs/guides/structured-outputs/json-mode) which will make the LLM return a JSON object. But for this, we would need to provide a JSON schema, which can get [large and complex](https://python.useinstructor.com/why/#pydantic-over-raw-schema).

Instead of doing this, we can use Instructor. Instructor is powered by [pydantic](https://docs.pydantic.dev/latest/), which means that it integrates with your IDE. We use pydantic's `BaseModel` to define the output model:

## 3. Setup and Basic Usage

Let's set up Exa and Instructor:

```python Python theme={null}
import os

import instructor
from exa_py import Exa
from openai import OpenAI
from pydantic import BaseModel

exa = Exa(os.environ["EXA_API_KEY"])
client = instructor.from_openai(OpenAI())

search_results = exa.search_and_contents(
    "Latest advancements in quantum computing",
    type="neural",
    text=True,
)

**Examples:**

Example 1 (unknown):
```unknown
Ensure API keys are initialized properly. The environment variable names are `EXA_API_KEY` and `OPENAI_API_KEY`.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

## 2. Why use Instructor?

Instructor is a Python library that allows you to generate structured outputs from a language model.

We could instruct the LLM to return a structured output, but the output will still be a string, which we need to convert to a dictionary. What if the dictionary is not structured as we want? What if the LLM forgot to add the last "}" in the JSON? We would have to handle all of these errors manually.

We could use `{ "type": "json_object" }` [](https://platform.openai.com/docs/guides/structured-outputs/json-mode) which will make the LLM return a JSON object. But for this, we would need to provide a JSON schema, which can get [large and complex](https://python.useinstructor.com/why/#pydantic-over-raw-schema).

Instead of doing this, we can use Instructor. Instructor is powered by [pydantic](https://docs.pydantic.dev/latest/), which means that it integrates with your IDE. We use pydantic's `BaseModel` to define the output model:

## 3. Setup and Basic Usage

Let's set up Exa and Instructor:
```

---

## Enable specific tools only

**URL:** llms-txt#enable-specific-tools-only

npx exa-mcp-server tools=web_search_exa

---

## Usually you would upload a csv of students

**URL:** llms-txt#usually-you-would-upload-a-csv-of-students

---

## Chat app

**URL:** llms-txt#chat-app

Source: https://docs.exa.ai/examples/demo-chat

---

## Cancel a running Webset

**URL:** llms-txt#cancel-a-running-webset

Source: https://docs.exa.ai/websets/api/websets/cancel-a-running-webset

post /v0/websets/{id}/cancel
Cancels all operations being performed on a Webset.

Any enrichment or search will be stopped and the Webset will be marked as `idle`.

---

## List tasks

**URL:** llms-txt#list-tasks

Source: https://docs.exa.ai/reference/research/list-tasks

get /research/v1
Retrieve a paginated list of your research tasks.

The response follows a cursor-based pagination pattern. Pass the `limit` parameter to control page size (max 50) and use the `cursor` token returned in the response to fetch subsequent pages.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

---

## Delete Import

**URL:** llms-txt#delete-import

Source: https://docs.exa.ai/websets/api/imports/delete-import

delete /v0/imports/{id}
Deletes a import.

---

## TODO: add your own candidates

**URL:** llms-txt#todo:-add-your-own-candidates

sample_data = {
    "Name": [
        "Kristy Choi", "Jiaming Song", "Brice Huang", "Andi Peng",
        "Athiya Deviyani", "Hao Zhu", "Zana Bucinca", "Usha Bhalla",
        "Kia Rahmani", "Jingyan Wang", "Jun-Kun Wang", "Sanmi Koyejo",
        "Erik Jenner"
    ],
    "Email": [
        "[[email protected]](/cdn-cgi/l/email-protection)", "[[email protected]](/cdn-cgi/l/email-protection)",
        "[[email protected]](/cdn-cgi/l/email-protection)", "[[email protected]](/cdn-cgi/l/email-protection)",
        "[[email protected]](/cdn-cgi/l/email-protection)", "[[email protected]](/cdn-cgi/l/email-protection)",
        "[[email protected]](/cdn-cgi/l/email-protection)", "[[email protected]](/cdn-cgi/l/email-protection)",
        "[[email protected]](/cdn-cgi/l/email-protection)", "[[email protected]](/cdn-cgi/l/email-protection)",
        "[[email protected]](/cdn-cgi/l/email-protection)", "[[email protected]](/cdn-cgi/l/email-protection)",
        "[[email protected]](/cdn-cgi/l/email-protection)"
    ]
}

---

## Enterprise Documentation & Security

**URL:** llms-txt#enterprise-documentation-&-security

Source: https://docs.exa.ai/reference/security

Exa takes data security and privacy seriously. We are proud to be SOC 2 Type II certified, demonstrating our commitment to maintaining rigorous information security practices and controls.

Contact us at [sales@exa.ai](mailto:sales@exa.ai) to discuss an Enterprise plan if you are interested in Zero Data Retention or other customized data security solutions.

[Click here](https://exa-public.s3.us-east-1.amazonaws.com/%5B20250529%5D%2BAuthorized%2BSubprocessors%2B\(Subcontractors\).pdf) to see a list of our Authorized Subcontractors per our standard Enterprise Data Processing Agreement (DPA).

[Click here](https://exa-public.s3.us-east-1.amazonaws.com/Exa+Labs+Inc.+SOC2+Type+I+Report+-+Final.pdf) to view our SOC2 Type I Report

[Click here](https://exa-public.s3.us-east-1.amazonaws.com/Exa+SOC+2+Type+2+2025+Report.pdf) to view our SOC2 Type II Report

[Click here](https://exa-public.s3.us-east-1.amazonaws.com/Exa+-+Online+Master+Subscription+Agreement.pdf) to see our standard Master Subscription Agreement

[Click here](https://exa-public.s3.us-east-1.amazonaws.com/Exa+Data+Processing+Addendum.pdf) to see our standard Data Processing Agreement

---

## 3. Grading (LLM-based correctness evaluation)

**URL:** llms-txt#3.-grading-(llm-based-correctness-evaluation)

grade = grading_llm.evaluate(
    question=query,
    expected_answer=ground_truth,
    generated_answer=answer
)

---

## Define the workflow graph

**URL:** llms-txt#define-the-workflow-graph

workflow = StateGraph(MessagesState)
workflow.add_node("agent", call_model)
workflow.add_node("tools", ToolNode([retrieve_web_content]))
workflow.set_entry_point("agent")
workflow.add_conditional_edges("agent", should_continue)
workflow.add_edge("tools", "agent")

---

## Delete a Webset

**URL:** llms-txt#delete-a-webset

Source: https://docs.exa.ai/websets/api/websets/delete-a-webset

delete /v0/websets/{id}
Deletes a Webset.

Once deleted, the Webset and all its Items will no longer be available.

---

## Test with a known payload and signature

**URL:** llms-txt#test-with-a-known-payload-and-signature

test_payload = '{"type":"webset.created","data":{"id":"ws_test"}}'
test_timestamp = "1234567890"
test_secret = "your_webhook_secret"

---

## Integrations

**URL:** llms-txt#integrations

**Contents:**
- Overview
- Supported integrations
- Managing integrations
- Exporting capabilities
- Setup guides
  - Salesforce
  - HubSpot
  - Instantly
  - Smartlead
  - Lemlist

Source: https://docs.exa.ai/websets/dashboard/integrations

Connect your Websets with popular CRM and email tools

Websets integrates seamlessly with your favorite CRM, email sequencing, and database tools, allowing you to export enriched data directly where you need it. Manage all your integrations from a single dashboard and keep your workflows streamlined.

## Supported integrations

We've built support for leading platforms across sales, marketing, and data enrichment:

* [Salesforce](https://www.salesforce.com/) - Export People entities as Leads
* [HubSpot](https://www.hubspot.com/) - Export People entities as Contacts

* [Instantly](https://instantly.ai/) - Export People entities as Leads
* [Smartlead](https://www.smartlead.ai/) - Export People entities as Leads
* [Lemlist](https://www.lemlist.com/) - Export People entities as Leads

* [Clay](https://www.clay.com/) - Export any entity type via webhook

## Managing integrations

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/connected.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=ddf3ba288cee029617b7c660c6554896" alt="Connected integrations view" data-og-width="1999" width="1999" data-og-height="1061" height="1061" data-path="images/websets/integrations/connected.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/connected.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=599c451719609ff6087599d8c277b41b 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/connected.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=96b89f92357be1f5b00fb45d52973003 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/connected.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=c1f8569482d3bba5950309f75b5a8b55 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/connected.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=1d020ad6499c6174685d891871793725 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/connected.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=95fbf7a9ace8c93d2ba50ee1517ca940 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/connected.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=af02cc52480505fa05975677fd36dc82 2500w" />

To enable an integration:

1. Visit [https://websets.exa.ai/integrations](https://websets.exa.ai/integrations)
2. Toggle the integration you want to connect
3. Provide your account credentials
4. The integration will be scoped to your currently selected team

## Exporting capabilities

Currently, we support **exporting all** your Webset table rows to connected platforms. Import functionality for further enrichment is coming soon.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/export.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=13617754d7b9606dbcf88ec4523c4a7e" alt="Export options interface" data-og-width="1999" width="1999" data-og-height="1067" height="1067" data-path="images/websets/integrations/export.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/export.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=15794cd4d11633fd93ea257f30006160 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/export.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=f2a5ed5f48ac66d259699d60dd975831 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/export.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=933b3e90bec9cc9c47049bfc43c8e9e4 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/export.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=aafe81a94123550b485dcc5883a5bdf1 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/export.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=44e2c19258f336b99f221907a16bddf5 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/export.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=397e8211f7811408a7a60f9ff61949ee 2500w" />

When you toggle on the Salesforce integration, you'll be redirected to login to your Salesforce account. After logging in, you'll be redirected back and ready to go!

**Create Leads** – Export any People entity Webset type as **Leads** in your Salesforce account.

When you toggle on the HubSpot integration, you'll be redirected to login to your HubSpot account. You'll be prompted to install the Exa app and grant the requested permissions. After approval, you'll be redirected back and fully connected.

**Create Contacts** – Export any People entity Webset type as **Contacts** in your HubSpot account.

<Frame caption="Instantly API key setup">
  <iframe src="https://www.loom.com/embed/870ed25fc8c24d9ab4d4928817761d33?hideEmbedTopBar=true" allowFullScreen frameBorder="0" className="w-full aspect-video" />
</Frame>

When you toggle on the Instantly integration, you'll need to provide your Instantly API key:

1. Login to your Instantly account and click your avatar in the bottom left corner
2. Select "Settings" from the menu
3. Navigate to the "Integrations" tab
4. Select "API Keys" from the left navigation menu
5. Click "Create API Key"
6. Name your key and select "all:all" for scopes
7. Copy and paste the generated key into Websets

**Create Leads** – Export any People entity Webset type as **Leads** in your Instantly account.

<Frame caption="Smartlead API key setup">
  <iframe src="https://www.loom.com/embed/a4568d1a7d5a4fea9a0101450175d457?hideEmbedTopBar=true" allowFullScreen frameBorder="0" className="w-full aspect-video" />
</Frame>

When you toggle on the Smartlead integration, you'll need to provide your Smartlead API key:

1. Login to your Smartlead account and click your avatar in the top right corner
2. Select "Settings" from the menu
3. Scroll down to "Smartlead API Key"
4. Copy your existing key or generate a new one
5. Paste the key into Websets and click connect

**Create Leads** – Export any People entity Webset type as **Leads** in your Smartlead account.

<Frame caption="Lemlist API key setup">
  <iframe src="https://www.loom.com/embed/7cd4fd32f35042e4b6d73ffcb6c821f7?hideEmbedTopBar=true" allowFullScreen frameBorder="0" className="w-full aspect-video" />
</Frame>

When you toggle on the Lemlist integration, you'll need to provide your Lemlist API key:

1. Login to your Lemlist account and click your name in the bottom left corner
2. Select "Settings" from the menu
3. Click "Integrations" in the left menu
4. Find the "API overview" section and click "Generate"
5. Name your key and click "Create Key"
6. Copy and paste the generated key into Websets

**Create Leads** – Export any People entity Webset type as **Leads** in your Lemlist account.

<Frame caption="Clay webhook setup">
  <iframe src="https://www.loom.com/embed/7baebd0584c144e8bd0869b4770b137d?hideEmbedTopBar=true" allowFullScreen frameBorder="0" className="w-full aspect-video" />
</Frame>

No authentication is required for Clay integration, as we currently support exporting Webset data via webhook only. **Note: A Clay Pro account is required.**

**Creating a webhook**

1. Navigate to a Clay table and click "Add" at the bottom
2. Search for "Webhook" and select it
3. This creates a new table view with a Webhook column
4. Copy the webhook URL from the "Pull in data from a Webhook" panel on the right

**Create table rows** – Export Websets of any entity type to Clay:

1. From a Webset, click "Export" in the top navigation
2. Select the "Clay" integration option
3. Paste the webhook URL from Clay
4. Click "Export"

Your Webset rows will populate your Clay table within moments.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/clay-export.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=2171ef8d52ffdc65b74a4e01b6413b0c" alt="Clay export interface" data-og-width="1270" width="1270" data-og-height="1290" height="1290" data-path="images/websets/integrations/clay-export.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/clay-export.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=b46f98a3259d4f3addf483446c461ff6 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/clay-export.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=e85316751711cad456b2562175a2c498 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/clay-export.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=67f3bd324938b7bb843b1868fbb4d534 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/clay-export.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=e1de8ad6869dcd58a47e30dea3ec7529 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/clay-export.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=a39e7fec96c92c912529571eedba2edf 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/integrations/clay-export.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=50fde294b23cf81e9bd3ec34ef8f1d95 2500w" />

---

## Exa

**URL:** llms-txt#exa

**Contents:**
- Full Example

Source: https://docs.exa.ai/integrations/agentops

Use Exa's semantic search and contents endpoints to give your agents access to up-to-date, relevant information on the web.

<Steps>
  <Step title="Install the AgentOps SDK">
    
  </Step>

<Step title="Install the Exa SDK">
    
  </Step>

<Step title="Set Up Environment Variables">
    Create a `.env` file to store your API keys:

<Step title="Initialize the Clients">
    Set up both AgentOps and Exa in your code:

<Step title="Create Your Search Tool">
    Create a tool that uses Exa's search capabilities:

```python  theme={null}
import agentops
from crewai_tools import tool
from exa_py import Exa
from dotenv import load_dotenv
import os

**Examples:**

Example 1 (unknown):
```unknown
</Step>

  <Step title="Install the Exa SDK">
```

Example 2 (unknown):
```unknown
</Step>

  <Step title="Set Up Environment Variables">
    Create a `.env` file to store your API keys:
```

Example 3 (unknown):
```unknown
</Step>

  <Step title="Initialize the Clients">
    Set up both AgentOps and Exa in your code:
```

Example 4 (unknown):
```unknown
</Step>

  <Step title="Create Your Search Tool">
    Create a tool that uses Exa's search capabilities:
```

---

## Migrating from Bing

**URL:** llms-txt#migrating-from-bing

**Contents:**
- Overview
- Quick Start
  - Get your API key
  - Install the SDK
  - Replace your API calls
- Parameter Mapping
- Response Format Differences
- Examples
  - Fresh Content Search
  - Domain-Specific Search

Source: https://docs.exa.ai/reference/migrating-from-bing

Guide for switching from the deprecated Bing Search API to Exa

Microsoft deprecated the Bing Search API on August 11th, 2025. This guide provides the technical details needed to migrate from Bing Search API to Exa's search API.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

### Replace your API calls

| Bing Parameter   | Exa Parameter                                                                          | Notes                                        |
| ---------------- | -------------------------------------------------------------------------------------- | -------------------------------------------- |
| `q`              | `query`                                                                                | Required parameter                           |
| `count`          | `numResults`                                                                           | Default: 10, Max: 100                        |
| `mkt`, `cc`      | `userLocation`                                                                         | Use 2-letter ISO country code                |
| `freshness`      | `startPublishedDate`<br />`endPublishedDate`<br />`startCrawlDate`<br />`endCrawlDate` | Use ISO 8601 date format                     |
| `site:` operator | `includeDomains`<br />`excludeDomains`                                                 | Use arrays of domain strings                 |
| Query filters    | `includeText`<br />`excludeText`                                                       | Use arrays of phrase filters                 |
| `safeSearch`     | `moderation`                                                                           | Disabled by default, set to `true` to enable |
| `offset`         | Not supported                                                                          |                                              |

## Response Format Differences

**Bing Response Structure**

**Exa Response Structure**

### Fresh Content Search

### Domain-Specific Search

### Search with Content Extraction

Exa provides integrated content extraction, eliminating the need for separate API calls:

**Examples:**

Example 1 (unknown):
```unknown

```

Example 2 (unknown):
```unknown
</CodeGroup>

### Replace your API calls

**Bing**

<CodeGroup>
```

Example 3 (unknown):
```unknown

```

Example 4 (unknown):
```unknown

```

---

## df = pd.read_csv('./students.csv')

**URL:** llms-txt#df-=-pd.read_csv('./students.csv')

---

## Create test signature

**URL:** llms-txt#create-test-signature

import hmac
import hashlib

signed_payload = f"{test_timestamp}.{test_payload}"
test_signature = hmac.new(
    test_secret.encode('utf-8'),
    signed_payload.encode('utf-8'),
    hashlib.sha256
).hexdigest()

test_header = f"t={test_timestamp},v1={test_signature}"

---

## Error Codes

**URL:** llms-txt#error-codes

**Contents:**
- API errors
- Error Response Structure
- Getting Help

Source: https://docs.exa.ai/reference/error-codes

Reference for common error codes used by the Exa API

| Code                        | Overview                                                                                                                                                                                |
| --------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 400 - Bad Request           | **Cause:** Invalid request parameters, malformed JSON, missing required fields<br />**Solution:** Check request body format, validate parameters, ensure API key is correctly formatted |
| 401 - Unauthorized          | **Cause:** Missing or invalid API key<br />**Solution:** Verify your API key is correct and active, ensure proper authentication headers                                                |
| 403 - Forbidden             | **Cause:** Valid API key but insufficient permissions or rate limit exceeded<br />**Solution:** Check feature access permissions or implement rate limiting                             |
| 404 - Not Found             | **Cause:** Resource not found (e.g., Webset, task, or URL doesn't exist)<br />**Solution:** Verify the resource identifier exists and is accessible                                     |
| 409 - Conflict              | **Cause:** Resource already exists (e.g., Webset with same externalId)<br />**Solution:** Use a different identifier or update the existing resource                                    |
| 429 - Too Many Requests     | **Cause:** Rate limit exceeded<br />**Solution:** Implement exponential backoff and reduce request rate                                                                                 |
| 500 - Internal Server Error | **Cause:** Issue on our servers<br />**Solution:** Retry your request after a brief wait and contact us if the issue persists                                                           |
| 502 - Bad Gateway           | **Cause:** Upstream server issue<br />**Solution:** Retry the request after a brief delay                                                                                               |
| 503 - Service Unavailable   | **Cause:** Service temporarily down<br />**Solution:** Retry after delay, check for maintenance announcements                                                                           |

## Error Response Structure

All error responses include a `requestId` field and `error` message:

<Note>
  Include the `requestId` when contacting support for faster troubleshooting.
</Note>

When using the `/contents` endpoint, specific errors are returned in the `statuses` field rather than HTTP error codes. This allows for granular error handling when fetching multiple URLs.

| Tag                       | HTTP Code | Description                              | How to Handle                                                      |
| ------------------------- | --------- | ---------------------------------------- | ------------------------------------------------------------------ |
| `CRAWL_NOT_FOUND`         | `404`     | Content not found at the specified URL   | Verify the URL is correct and accessible                           |
| `CRAWL_TIMEOUT`           | `408`     | Request timed out while fetching content | Retry the request or increase timeout if available                 |
| `CRAWL_LIVECRAWL_TIMEOUT` | `408`     | Live crawl operation timed out           | Try again with `livecrawl: "fallback"` or `livecrawl: "never"`     |
| `SOURCE_NOT_AVAILABLE`    | `403`     | Access forbidden or source unavailable   | Check if the source requires authentication or is behind a paywall |
| `CRAWL_UNKNOWN_ERROR`     | `500+`    | Other crawling errors                    | Retry the request; contact support if persistent                   |

If you encounter persistent errors or need clarification on error codes:

* Check the [Rate Limits](/reference/rate-limits) page for current limits
* Review the [API Reference](/reference/search) for parameter requirements
* Contact support at [hello@exa.ai](mailto:hello@exa.ai) with error details and request IDs

**Examples:**

Example 1 (unknown):
```unknown
<Note>
  Include the `requestId` when contacting support for faster troubleshooting.
</Note>

When using the `/contents` endpoint, specific errors are returned in the `statuses` field rather than HTTP error codes. This allows for granular error handling when fetching multiple URLs.
```

---

## install dependencies

**URL:** llms-txt#install-dependencies

**Contents:**
- Initial Candidates

!pip install exa_py openai matplotlib tqdm

import pandas as pd
from exa_py import Exa
import openai

EXA_API_KEY = ''
OPENAI_API_KEY = ''

exa = Exa(api_key = EXA_API_KEY)
openai.api_key = OPENAI_API_KEY
Python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
## Initial Candidates

Suppose I'm building Simile, an AI startup for web retrieval.

My hiring criteria is:

* AI experience
* interest in retrieval, databases, and knowledge
* available to work now or soon

We start with 13 example PhD students recommended by friends. All I have is their name and email.
```

---

## List all Items for a Webset

**URL:** llms-txt#list-all-items-for-a-webset

Source: https://docs.exa.ai/websets/api/websets/items/list-all-items-for-a-webset

get /v0/websets/{webset}/items
Returns a list of Webset Items.

You can paginate through the Items using the `cursor` parameter.

---

## Create and poll a task until completion

**URL:** llms-txt#create-and-poll-a-task-until-completion

task = exa.research.create_task(
    instructions="Get information about Paris, France",
    output_schema={
        "type": "object",
        "properties": {
            "name": {"type": "string"},
            "population": {"type": "string"},
            "founded_date": {"type": "string"}
        }
    }
)

---

## Get an Event

**URL:** llms-txt#get-an-event

Source: https://docs.exa.ai/websets/api/events/get-an-event

get /v0/events/{id}
Get a single Event by id.

You can subscribe to Events by creating a Webhook.

---

## define the system message (primer) of your agent

**URL:** llms-txt#define-the-system-message-(primer)-of-your-agent

SYSTEM_MESSAGE = {
    "role": "system",
    "content": "You are the world's most advanced search engine. Please provide the user with the information they are looking for by using the tools provided.",
}

---

## List with pagination

**URL:** llms-txt#list-with-pagination

**Contents:**
  - Input Parameters:
  - Returns:
  - Return Example:

response = exa.research.list_tasks(limit=10)
if response['hasMore']:
    next_page = exa.research.list_tasks(cursor=response['nextCursor'])
JSON JSON theme={null}
{
  "data": [
    {
      "id": "task-1",
      "status": "completed",
      "instructions": "Research SpaceX valuation",
      ...
    },
    {
      "id": "task-2",
      "status": "running",
      "instructions": "Compare GPU specifications",
      ...
    }
  ],
  "hasMore": true,
  "nextCursor": "eyJjcmVhdGVkQXQiOiIyMDI0LTAxLTE1VDE4OjMwOjAwWiIsImlkIjoidGFzay0yIn0="
}
```

**Examples:**

Example 1 (unknown):
```unknown
### Input Parameters:

| Parameter | Type           | Description                             | Default |
| --------- | -------------- | --------------------------------------- | ------- |
| cursor    | Optional\[str] | Pagination cursor from previous request | None    |
| limit     | Optional\[int] | Number of results to return (1-200)     | 25      |

### Returns:

Returns a dictionary with:

| Field      | Type                       | Description                                   |
| ---------- | -------------------------- | --------------------------------------------- |
| data       | List\[ResearchTaskDetails] | List of research task objects                 |
| hasMore    | bool                       | Whether there are more results to paginate    |
| nextCursor | Optional\[str]             | Cursor for the next page (if hasMore is true) |

### Return Example:
```

---

## Get API Key

**URL:** llms-txt#get-api-key

**Contents:**
- Overview
- Path Parameters
- Response

Source: https://docs.exa.ai/reference/team-management/get-api-key

get /api-keys/{id}
Retrieve details of a specific API key by its ID.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

The Get API Key endpoint allows you to retrieve detailed information about a specific API key using its unique identifier.

* **id**: The unique identifier of the API key to retrieve

Returns detailed information about the API key including:

* **id**: Unique identifier
* **name**: Descriptive name
* **rateLimit**: Rate limit in requests per minute (if set)
* **teamId**: Team ID this key belongs to
* **createdAt**: When the key was created

---

## List all Events

**URL:** llms-txt#list-all-events

Source: https://docs.exa.ai/websets/api/events/list-all-events

get /v0/events
List all events that have occurred in the system.

You can paginate through the results using the `cursor` parameter.

---

## Load environment variables from .env file

**URL:** llms-txt#load-environment-variables-from-.env-file

---

## Or even simpler - let the model infer the schema

**URL:** llms-txt#or-even-simpler---let-the-model-infer-the-schema

**Contents:**
  - Input Parameters:
  - Returns:
  - Return Example:
- `research.get_task` Method
  - Input Example:

simple_task = exa.research.create_task(
    instructions="What are the main benefits of meditation?",
    infer_schema=True
)

print(f"Task created with ID: {task.id}")
JSON JSON theme={null}
{
  "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890"
}
Python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
### Input Parameters:

| Parameter      | Type            | Description                                                                               | Default        |
| -------------- | --------------- | ----------------------------------------------------------------------------------------- | -------------- |
| instructions   | str             | Natural language instructions describing what the research task should accomplish.        | Required       |
| model          | Optional\[str]  | The research model to use. Options: "exa-research" (default), "exa-research-pro".         | "exa-research" |
| output\_schema | Optional\[Dict] | JSON Schema specification for the desired output structure. See json-schema.org/draft-07. | None           |
| infer\_schema  | Optional\[bool] | When true and no output schema is provided, an LLM will generate an output schema.        | None           |

### Returns:

Returns a `ResearchTask` object:

| Field | Type | Description                        |
| ----- | ---- | ---------------------------------- |
| id    | str  | The unique identifier for the task |

### Return Example:
```

Example 2 (unknown):
```unknown
## `research.get_task` Method

Get the current status and results of a research task by its ID.

### Input Example:
```

---

## Get a task

**URL:** llms-txt#get-a-task

Source: https://docs.exa.ai/reference/research/get-a-task

get /research/v1/{researchId}
Retrieve the status and results of a previously created research task.

Use the unique `researchId` returned from `POST /research/v1` to poll until the task is finished.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

---

## Delete API Key

**URL:** llms-txt#delete-api-key

**Contents:**
- Overview
- Path Parameters

Source: https://docs.exa.ai/reference/team-management/delete-api-key

delete /api-keys/{id}
Permanently delete an API key from your team.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

The Delete API Key endpoint permanently removes an API key from your team.

* **id**: The unique identifier of the API key to delete (UUID format)

---

## Domain Path Filter Support

**URL:** llms-txt#domain-path-filter-support

**Contents:**
- What's New
- Examples
- When to Use Path Filtering
- How To Use Path Filtering
- Need Help?

Source: https://docs.exa.ai/changelog/domain-path-filter

`includeDomains` and `excludeDomains` now support URL path filtering and subdomain wildcards.

**Date: August 4, 2025**

The `includeDomains` and `excludeDomains` parameters now support:

* **Path-specific filtering**: Target specific sections of a domain by including the path
* **Subdomain wildcard matching**: Use `*.domain.com` to match all subdomains

| Pattern                  | What it matches                 | Example URLs                                                          |
| ------------------------ | ------------------------------- | --------------------------------------------------------------------- |
| `"*.substack.com"`       | Any subdomain of substack.com   | `https://thehobbyist.substack.com/p/location-matters-6-days-273-bets` |
| `"exa.ai/blog"`          | Only the blog section of exa.ai | `https://exa.ai/blog/meet-the-exacluster`                             |
| `"linkedin.com/company"` | Company profiles on LinkedIn    | `https://www.linkedin.com/company/exa-ai`                             |

## When to Use Path Filtering

Path filtering is useful for things like:

1. **Blogs**: Search within blogs like `stripe.com/blog`, `openai.com/blog`, or `stratechery.com/2025`
2. **Product Catalogs**: Query product pages like `amazon.com/dp`, `etsy.com/listing`, or `ikea.com/us/en/cat`
3. **Directories**: Search specific directories like `ycombinator.com/companies`, `crunchbase.com/organization`, or `github.com/orgs`

## How To Use Path Filtering

You can use the same `includeDomains` and `excludeDomains` parameters:

If you have any questions about domain filtering or need help with your specific use case, please reach out to [hello@exa.ai](mailto:hello@exa.ai).

**Examples:**

Example 1 (unknown):
```unknown

```

Example 2 (unknown):
```unknown

```

---

## Generic type for any ExaBaseModel

**URL:** llms-txt#generic-type-for-any-exabasemodel

ModelT = TypeVar('ModelT', bound='ExaBaseModel')

---

## Hacker News Clone

**URL:** llms-txt#hacker-news-clone

**Contents:**
- What this doc covers:
- Getting Started
- How Exa works
- Customize your site

Source: https://docs.exa.ai/examples/live-demo-hacker-news-clone

Make your very own Hacker News powered by Exa

[Click here to try Exa-powered Hacker News for Anything.](https://hackernews-by-exa.replit.app/)

## What this doc covers:

* How to create a personalized Hacker News clone using Exa's API.
* Steps to set up and run your own news site with custom prompts.
* Customization options for the site's content, appearance, and deployment.

*Estimated time to complete: 20 minutes*

Built by Silicon Valley legend Paul Graham in 2007, [Hacker News](https://news.ycombinator.com/) is a popular website where users post interesting tech-adjacent content. The most interesting content often comes from small blogs and personal sites. However, these gems can be really hard to find.

Thankfully, Exa's search models are good at finding interesting sites from all corners of the web, no matter how big or small. Exa searches the web semantically, enabling you to find information based on meaning rather than SEO. We can use Exa to find super interesting tech articles without specific topics or blogs in mind.

In this tutorial, we'll use Exa's API to create a clone of Hacker News. Here's our [live example](https://hackernews-by-exa.replit.app/).

You'll get to create your own personalized version about anything, not just tech. For instance, you could make Business News, a site that displays relevant corporate updates. Your website will automatically update to get the newest content on whatever topic you choose.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/315a2e9-Screenshot_2024-07-14_at_7.49.35_PM.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=97184fcc3fa592e4a382362e3ab5f962" alt="" data-og-width="2022" width="2022" data-og-height="1446" height="1446" data-path="images/315a2e9-Screenshot_2024-07-14_at_7.49.35_PM.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/315a2e9-Screenshot_2024-07-14_at_7.49.35_PM.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=91c4a9ea2515af7c85fe09ab832c207e 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/315a2e9-Screenshot_2024-07-14_at_7.49.35_PM.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=cfcec9167a92fc7d85962d8f85d6aec8 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/315a2e9-Screenshot_2024-07-14_at_7.49.35_PM.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=70f2db46a87edb8f7bce59a18884fbca 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/315a2e9-Screenshot_2024-07-14_at_7.49.35_PM.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=eff284e5c749fe2e44800830d7067370 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/315a2e9-Screenshot_2024-07-14_at_7.49.35_PM.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=cba36f852a979cb68ff80552a314c759 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/315a2e9-Screenshot_2024-07-14_at_7.49.35_PM.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=d3a29a62f402edbb2accaff311da9e78 2500w" />

First, grab a free Exa API key by signing up [here](https://exa.ai/). You get 1000 free queries a month.

Next, fork (clone) our [template](https://replit.com/@olafblitz/exa-hackernews-demo-nodejs?v=1) on Replit.

Once you've forked the template, go to the lower left corner of the screen and scroll through the options until you see "Secrets" (where you manage environment variables like API keys).

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.12.21___pm.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=b4061cc26caf64dc549bf28cbbcd2bf4" alt="Click on Secrets" data-og-width="564" width="564" data-og-height="630" height="630" data-path="images/0screenshot_2024-05-15_at_11.12.21___pm.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.12.21___pm.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=8bb288bb1d0c6cfd3d0d0ab6c0607424 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.12.21___pm.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=0e0dfa9044ac34835cad242f161700a0 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.12.21___pm.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=ebf831af4bab7e97ba9f6ce90ff44f20 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.12.21___pm.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=40e564b1c0b2fafa1796269e46a284d1 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.12.21___pm.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=c432997fe9ebf08a9c41fca9d9bc3f08 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.12.21___pm.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=fb53358e7af3ea5b4723b738135054fc 2500w" />

Add your Exa API key as a secret named "EXA\_API\_KEY" (original, we know).

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.13.34___pm.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=70ea666e2e4c6565a99bbe38c29308ee" alt="Add your API key!" data-og-width="1226" width="1226" data-og-height="418" height="418" data-path="images/0screenshot_2024-05-15_at_11.13.34___pm.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.13.34___pm.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=e6d3b1aba0f495da874a6759b3998347 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.13.34___pm.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=785423515dd5b3fbca06e011450654a4 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.13.34___pm.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=ddcc1c933ab3dc0c292390dc54adc8cf 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.13.34___pm.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=4debe043c21eb195fbb81eccc4d8b2fe 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.13.34___pm.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=a491a79ccbc9912e009cda0b6dab72e6 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_11.13.34___pm.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=3bc3d077a97530b44c1dac2277ae1e36 2500w" />

After you've added your API key, click the green Run button in the top center of the window.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.08.03___pm.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=13f12b853f9e2468e1f4b5fc9c25b2d2" alt="Run button" data-og-width="380" width="380" data-og-height="100" height="100" data-path="images/0screenshot_2024-05-15_at_10.08.03___pm.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.08.03___pm.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=ab74740bc7c75043c3bc7316fc738abe 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.08.03___pm.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=bc2e18f86d1cbb8facfd2ed5dbd5963c 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.08.03___pm.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=b2fbc14517c9cba50587395cc29acbfc 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.08.03___pm.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=2d703cbdcc94d00ca21cb0cca6cbb53d 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.08.03___pm.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=542ea0e9da0aea841499eb46ca2e12c3 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.08.03___pm.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=b6b5cdc546b700d24a86035d431145cd 2500w" />

After a few seconds, a Webview window will pop up with your website. You'll see a website that vaguely resembles Hacker News. It's a basic Express.js app with some CSS styling.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.12.09___pm.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=9c8a167ee6e89e8707cf3cb251ec3701" alt="What you should see" data-og-width="1346" width="1346" data-og-height="1228" height="1228" data-path="images/0screenshot_2024-05-15_at_10.12.09___pm.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.12.09___pm.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=5b082f3f0b17a577fbf6b8a17ad32571 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.12.09___pm.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=4cf1547db5ddf7442e261318f5abd3a0 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.12.09___pm.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=900a7f0d0644b705239737a5c2f7799d 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.12.09___pm.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=fc0855f87ba2985925155ad31e4073c1 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.12.09___pm.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=bdc846aef4694c4a732f90639dc9f94f 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0screenshot_2024-05-15_at_10.12.09___pm.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=2b7026d44f5924775e4e880b3f778c65 2500w" />

In the index.js file (should be open by default), scroll to **line 19**. This is the brains of the site. It's where we call the Exa API with a custom prompt to get back Hacker News-style content.

The prompt is set to "here is a really interesting tech article:". This is because of how Exa works behind the scenes. Exa uses embeddings to help predict which links would naturally follow a query. For example, on the Internet, you'll frequently see people recommend great content like this: "this tutorial really helped me understand linked lists: linkedlisttutorial.com". When you prompt Exa, you pretend to be someone recommending what you're looking for. In this case, our prompt nudges Exa to find links that someone would share when discussing a "really interesting tech article".

Check out the [results](https://exa.ai/search?q=here%20is%20a%20really%20interesting%20tech%20article%3A\&filters=%7B%22numResults%22%3A30%2C%22useAutoprompt%22%3Afalse%2C%22domainFilterType%22%3A%22include%22%7D) Exa returns for our prompt. Aren't they nice?

More example prompts to help you get a sense of prompting with Exa:

* [this gadget saves me so much time:](https://exa.ai/search?c=all\&q=this%20gadget%20saves%20me%20so%20much%20time%3A\&filters=%7B%22domainFilterType%22%3A%22include%22%2C%22timeFilterOption%22%3A%22any%5Ftime%22%2C%22activeTabFilter%22%3A%22all%22%7D)
* [i loved my wedding dress from this boutique:](https://exa.ai/search?c=all\&q=i%20loved%20my%20wedding%20dress%20from%20this%20boutique%3A\&filters=%7B%22domainFilterType%22%3A%22include%22%2C%22timeFilterOption%22%3A%22any%5Ftime%22%2C%22activeTabFilter%22%3A%22all%22%7D)
* [this video helped me understand attention mechanisms:](https://exa.ai/search?c=all\&q=this%20video%20helped%20me%20understand%20attention%20mechanisms%3A\&filters=%7B%22domainFilterType%22%3A%22include%22%2C%22timeFilterOption%22%3A%22any%5Ftime%22%2C%22activeTabFilter%22%3A%22all%22%7D)

More examples in the Exa [docs](/reference/the-exa-index).

At this point, please craft your own Exa prompt for your Hacker News site. It can be about anything you find interesting.

* [this is a really exciting machine learning paper:](https://exa.ai/search?c=all\&q=this%20is%20a%20really%20exciting%20machine%20learning%20paper%3A\&filters=%7B%22domainFilterType%22%3A%22include%22%2C%22timeFilterOption%22%3A%22past%5Fday%22%2C%22activeTabFilter%22%3A%22all%22%7D)
* [here's a delicious new recipe:](https://exa.ai/search?c=all\&q=here%27s%20a%20delicious%20new%20recipe%3A\&filters=%7B%22domainFilterType%22%3A%22include%22%2C%22timeFilterOption%22%3A%22any%5Ftime%22%2C%22activeTabFilter%22%3A%22all%22%7D)
* [this company just got acquired:](https://exa.ai/search?c=all\&q=this%20company%20just%20got%20acquired%3A\&filters=%7B%22domainFilterType%22%3A%22include%22%2C%22timeFilterOption%22%3A%22past%5Fday%22%2C%22activeTabFilter%22%3A%22all%22%7D)
* [here's how the basketball game went:](https://exa.ai/search?c=all\&q=here%27s%20how%20the%20basketball%20game%20went%3A\&filters=%7B%22domainFilterType%22%3A%22include%22%2C%22timeFilterOption%22%3A%22past%5Fday%22%2C%22activeTabFilter%22%3A%22all%22%7D)

Once you have your prompt, replace the old one (line 28 of index.js). Hit the Stop button (where the Run button was) and hit Run again to restart your site with the new prompt.

Feel free to keep tweaking your prompt until you get results you like.

## Customize your site

Now, other things you can modify in the site template include the time window to search over, the number of results to return, the text on the site (title, description, footer), and styling (colors, fonts, etc.).

By default, the site asks the Exa API to get the ten most relevant results from the last 24 hours every time you visit the site. On the free plan, you can only get up to ten results, so you'll have to sign up for an Exa plan to increase this. You *can* tweak the time window though. Lines 12 to 17 in index.js is where we set the time window. You can adjust this as you like to get results from the last week, month, year, etc. Note that you don't have to search starting from the current date. You can search between any arbitrary dates, like October 31, 2015 and January 1, 2018.

To adjust the site title and other text, go to line 51 in index.js where the dynamic HTML starts. You can Ctrl-F "change" to find all the places where you can edit the text.

If orange isn't your vibe, go to the styles.css. To get there, go to the left side panel on Replit and click on the "public" folder.

To keep your site running all the time, you'll need to deploy it on Replit using Deployments. Click Deploy in the top right corner and select Autoscale. You can leave the default settings and click Deploy. This does cost money though. Alternatively you can deploy the site on your own. It's only two files (index.js and public/styles.css).

Well, there you have it! You just made your very own Hacker News-style site using the Exa API. Share it on X and [tag us](https://x.com/ExaAILabs) for a retweet!

**Examples:**

Example 1 (unknown):
```unknown
const response = await fetch('https://api.exa.ai/search', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    // Add your API key named "EXA_API_KEY" to Repl.it Secrets
    'x-api-key': process.env.EXA_API_KEY,
  },
  body: JSON.stringify({
    // change this prompt!
    query: 'here is a really interesting techy article:',
    // specify the maximum number of results to retrieve (10 is the limit for free API users)
    numResults: 10,
    // Set the start date for the article search
    startPublishedDate: startPublishedDate,
    // Set the end date for the article search
    endPublishedDate: endPublishedDate,
  }),
});
```

---

## Building a Hallucination Checker

**URL:** llms-txt#building-a-hallucination-checker

**Contents:**
- Get Started

Source: https://docs.exa.ai/examples/identifying-hallucinations-with-exa

Learn how to build an AI-powered system that identifies and verifies claims using Exa and LangGraph.

We'll build a hallucination detection system using Exa's search capabilities to verify AI-generated claims. The system works in three steps:

1. Extract claims from text
2. Search for evidence using Exa
3. Verify claims against evidence

This combines RAG with LangGraph to fact-check AI outputs and reduce hallucinations by grounding claims in real-world data.

<Steps>
  <Step title="Pre-requisites and installation">
    Install the required packages:

<Note> You'll need both an Exa API key and an Anthropic API key to run this example. You can get your Anthropic API key [here](https://console.anthropic.com/). </Note>

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

Set up your API keys:

<Step title="Create the claim extractor">
    First, we'll create functions to extract factual claims from the text:

<Note> We include a regex-based fallback method in case the LLM response isn't properly formatted. This ensures our system remains robust even if the LLM output is unexpected. </Note>
  </Step>

<Step title="Set up Exa search">
    Create a function to search for evidence using Exa:

<Note>
      We format each source with its URL and content for easy reference in the verification step. The print statements help with debugging and understanding the search process.
    </Note>
  </Step>

<Step title="Create the claim verifier">
    Build a function to analyze the evidence and assess each claim:

<Note>
      The verifier includes robust error handling and defaults to "Insufficient information" if there are issues with the LLM response or source processing.
    </Note>
  </Step>

<Step title="Create the workflow">
    Set up the LangGraph workflow to orchestrate the process:

<Step title="Test the system">
    Let's try it with a sample text about the Eiffel Tower:

Through this combination of Exa's search capabilities and LangGraph's workflow management, we've created a powerful system for identifying and verifying claims in any text. The system successfully identified both true claims (structure and location) and false claims (construction date and purpose) about the Eiffel Tower.
  </Step>
</Steps>

**Examples:**

Example 1 (unknown):
```unknown
<Note> You'll need both an Exa API key and an Anthropic API key to run this example. You can get your Anthropic API key [here](https://console.anthropic.com/). </Note>

    <Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

    Set up your API keys:
```

Example 2 (unknown):
```unknown
</Step>

  <Step title="Create the claim extractor">
    First, we'll create functions to extract factual claims from the text:
```

Example 3 (unknown):
```unknown
<Note> We include a regex-based fallback method in case the LLM response isn't properly formatted. This ensures our system remains robust even if the LLM output is unexpected. </Note>
  </Step>

  <Step title="Set up Exa search">
    Create a function to search for evidence using Exa:
```

Example 4 (unknown):
```unknown
<Note>
      We format each source with its URL and content for easy reference in the verification step. The print statements help with debugging and understanding the search process.
    </Note>
  </Step>

  <Step title="Create the claim verifier">
    Build a function to analyze the evidence and assess each claim:
```

---

## Generate multiple insights

**URL:** llms-txt#generate-multiple-insights

num_insights = 5
insights = []
for _ in range(num_insights):
    insight = client.chat.completions.create(
        model="gpt-3.5-turbo",
        response_model=AIEthicsInsight,
        messages=[
            {
                "role": "user",
                "content": f"Provide an insight on AI ethics based on the following research:\n\n{combined_results}",
            }
        ],
    )
    insights.append(insight)

---

## Get all public names from model module that don't start with underscore

**URL:** llms-txt#get-all-public-names-from-model-module-that-don't-start-with-underscore

model_module = sys.modules[\__name_\_]

**all** = ['WebsetsBaseClient', 'ExaBaseModel'] \+ [

name for name in dir(model_module)

if not name.startswith('\_') and name not in ('WebsetsBaseClient', 'ExaBaseModel')

core/[base.py](http://base.py)

from **future** import annotations

from pydantic import ConfigDict, BaseModel, AnyUrl

from enum import Enum

from typing import Any, Dict, Optional, TypeVar, Generic, Type, get_origin, get_args, Union

---

## IBM WatsonX

**URL:** llms-txt#ibm-watsonx

**Contents:**
- What it does
- Try Notebook
- Resources

Source: https://docs.exa.ai/reference/ibm-watsonx

Combine IBM WatsonX's AI with Exa's web search to build a smart assistant that can search the internet and answer questions.

<Frame>
  <video className="w-full aspect-video" controls src="https://exa.imgix.net/ibm_exa_integration_video.mp4" />
</Frame>

<Card title="Try it yourself" icon="notebook" href="https://github.com/exa-labs/ibm-exa/blob/main/ibm_exa_integration.ipynb">
  Check out our example notebook to get started quickly
</Card>

This integration connects IBM WatsonX with Exa to create an AI that can:

* Search the web to get information
* Give answers with links to sources
* Handle both simple and complex questions

Want to see it in action? [Try notebook here.](https://github.com/exa-labs/ibm-exa/blob/main/ibm_exa_integration.ipynb)

Make sure to add your API keys to the notebook.

* [IBM WatsonX](https://www.ibm.com/products/watsonx-ai)
* [Exa API Playground](https://dashboard.exa.ai/)
* [Github Repository for this integration](https://github.com/exa-labs/ibm-exa)

---

## Update Import

**URL:** llms-txt#update-import

Source: https://docs.exa.ai/websets/api/imports/update-import

patch /v0/imports/{id}
Updates a import configuration.

---

## Geolocation Filter Support

**URL:** llms-txt#geolocation-filter-support

**Contents:**
- When to Use Geolocation Filter
- How To Use Geolocation Filter
- Response Structure Changes
- Need Help?

Source: https://docs.exa.ai/changelog/geolocation-filter-support

`userLocation` added to the search API to bias search results based on geographic location.

**Date: July 30, 2025**

We're excited to announce a new `userLocation` parameter that lets you bias search results based on a user's geographic region. The location is passed as an [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code (e.g., "fr" for France, "us" for the United States).

If this field is provided, search will return results that are more relevant to users in the provided region.

## When to Use Geolocation Filter

The `userLocation` parameter is particularly useful for:

1. **Multi-regional applications**: Show users content that's relevant to their region
2. **Language-specific content**: Prioritizing content in regional languages
3. **Local discovery**: Surface products or businesses relevant to the users region

Consider using geolocation filtering when the user's physical location or regional context significantly impacts the relevance of search results.

## How To Use Geolocation Filter

Here's how to implement the new `userLocation` parameter:

## Response Structure Changes

The response structure remains unchanged - geolocation filtering affects result ranking and relevance scoring, but doesn't modify the response format.

If you have any questions about location filtering or need help with your specific use case, please reach out to [hello@exa.ai](mailto:hello@exa.ai).

**Examples:**

Example 1 (unknown):
```unknown

```

Example 2 (unknown):
```unknown

```

---

## FAQs

**URL:** llms-txt#faqs

Source: https://docs.exa.ai/reference/faqs

<AccordionGroup>
  <Accordion title="What is Exa?">
    Exa is a search engine built specifically for AI applications. We've built our own search engine from scratch that is state of the art at finding high quality information for LLMs. Exa is used by thousands of companies to power their LLM and agentic applications.
  </Accordion>

<Accordion title="What's different about Exa Search?">
    Traditional search engines that are optimized for clicks and ads. Because nearly every search API wraps traditional search engines, they all have a similar problem.

In contrast, Exa is optimized to return the highest quality information for LLM applications. We do not make money from ads, so we are fully incentivized to return the highest quality results to our customers. Because we've built our own search engine from scratch, we're able to provide all sorts of customized features that other providers can't.
  </Accordion>

<Accordion title="How is Exa different from LLMs?">
    Exa is a new search engine built from the ground up. LLMs are models built to predict the next piece of text. Exa predicts specific links on the web given their relevance to a query. LLMs have intelligence, and are getting smarter over time as new models are trained. Exa connects these intelligences to the web.
  </Accordion>

<Accordion title="How can Exa be used in an LLM?">
    Exa enhances LLMs by supplying high-quality, relevant web content, minimizing hallucination and outdated responses. An LLM can take a user's query, use Exa to find pertinent web content, and generate answers based on reliable, up-to-date information.
  </Accordion>

<Accordion title="How does Exa compare to other search APIs?">
    Exa.ai offers unique capabilities:

* Embedding Search Technology: Uses transformers for semantic understanding, handling complex queries based on meaning.
    * Natural Language Queries: Processes and understands natural language queries for more accurate results.
    * Instant Content Retrieval: Instantly returns clean and parsed content for any page in its index.
    * Large-scale searches: Capable of returning thousands of results for automatic processing, ideal for batch use cases.
    * Content Highlights: Extracts relevant excerpts or highlights from retrieved content for targeted information.
    * Optimized for AI Applications: Specifically designed for enhancing AI models, chatbots, and research automation.
    * Auto search: Automatically selects the best search method based on the query for optimal results.
  </Accordion>

<Accordion title="How often is the index updated?">
    We update our index every hour, and are constantly adding batches of new links. We target the highest quality web pages. Our clients oftentimes request specific domains to be more deeply covered - if there is a use-case we can unlock by additional domain coverage in our index, please contact us.
  </Accordion>

<Accordion title="How does similarity search work?">
    When you search using a URL, Exa crawls the URL, parses the main content from the HTML, and searches the index with that parsed content.

The model chooses webpages which it predicts are talked about in similar ways to the prompt URL. That means the model considers a range of factors about the page, including the text style, the domain, and the main ideas inside the text.

Similarity search is natural extension for a neural search engine like Exa, and something that's difficult with traditional search engines
  </Accordion>

<Accordion title="What security measures does Exa take?">
    We have robust policies and everything we do is either in standard cloud services, or built in house (e.g., we have our own vector database that we serve in house, our own GPU cluster, our own query model and our own search solution). In addition to this, we can offer unique security arrangements like zero data retention as part of a custom enterprise agreement. [Learn more](./security).
  </Accordion>

<Accordion title="Does Exa have a crawler?">
    Exa crawls pages on the web, just like any other search engine. If a webpage has the noindex tag and is therefore not crawlable by any search engine, then Exa will not crawl that page.
  </Accordion>

<Accordion title="What's on our roadmap?">
    * Super low latency search
    * Build a (much) larger index
    * Solve search. No, really.
  </Accordion>
</AccordionGroup>

---

## Get an Item

**URL:** llms-txt#get-an-item

Source: https://docs.exa.ai/websets/api/websets/items/get-an-item

get /v0/websets/{webset}/items/{id}
Returns a Webset Item.

---

## Old approach (no longer recommended)

**URL:** llms-txt#old-approach-(no-longer-recommended)

try:
    result = exa.get_contents(["https://example.com"])
except HTTPError as e:
    print(f"Error: {e.status_code}")

---

## num_results=10,

**URL:** llms-txt#num_results=10,

---

## Hallucination Detector

**URL:** llms-txt#hallucination-detector

**Contents:**
- Function breakdown

Source: https://docs.exa.ai/examples/demo-hallucination-detector

A live demo that detects hallucinations in content using Exa's search.

<div>
  <a href="https://demo.exa.ai/hallucination-detector" target="_blank" rel="noopener noreferrer">
    <button class="api-button">
      \> try the app
    </button>
  </a>
</div>

We built a live hallucination detector that uses Exa to verify LLM-generated content. When you input text, the app breaks it into individual claims, searches for evidence to verify each one, and returns relevant sources with a verification confidence score.

A claim is a single, verifiable statement that can be proven true or false - like "The Eiffel Tower is in Paris" or "It was built in 1822."

<Card title="Click here to try it out." href="https://demo.exa.ai/hallucination-detector" img="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/Screenshot%202024-11-19%20at%203.19.48%E2%80%AFPM.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=75ac7324f228fb3d0d19f18603998228" data-og-width="1832" width="1832" data-og-height="1170" height="1170" data-path="images/Screenshot 2024-11-19 at 3.19.48 PM.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/Screenshot%202024-11-19%20at%203.19.48%E2%80%AFPM.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=efd378652d3d4b95bc8ce2eeb30d2c7d 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/Screenshot%202024-11-19%20at%203.19.48%E2%80%AFPM.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=c3413cedc97f7d2d99428cbb248782da 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/Screenshot%202024-11-19%20at%203.19.48%E2%80%AFPM.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=2f854f02938ef3992bbf8a28097d50fa 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/Screenshot%202024-11-19%20at%203.19.48%E2%80%AFPM.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=f27814fd501730881b12e9b5f98e7342 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/Screenshot%202024-11-19%20at%203.19.48%E2%80%AFPM.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=a6fbfa924159fbddfd541a18a8bbd6f5 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/Screenshot%202024-11-19%20at%203.19.48%E2%80%AFPM.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=f57f2087ea2cbb27c371c21117b25703 2500w" />

This document explains the functions behind the three steps of the fact-checker:

1. The LLM extracts verifiable claims from your text
2. Exa searches for relevant sources for each claim
3. The LLM evaluates each claim against its sources, returning whether or not its true, along with a confidence score.

<Info>See the full [step-by-step guide](/examples/identifying-hallucinations-with-exa) and [github repo](https://github.com/exa-labs/exa-hallucination-detector) if you'd like to recreate. </Info>

## Function breakdown

<Steps>
  <Step title="Extracting claims">
    The `extract_claims` function uses an LLM (Anthropic's, in this case) to identify distinct, verifiable statements from your inputted text, returning these claims as a JSON array of strings.

<Warning>For simpilicity, we did not include a try/catch block in the code below. However, if you are building your own hallucination detector, you should include one that catches any errors in the LLM parsing and uses a regex method that treats each sentence (text between capital letter and end punctuation) as a claim.</Warning>

<Step title="Searching for evidence">
    The `exa_search` function uses Exa search to find evidence for each extracted claim. For every claim, it retrieves the 5 most relevant sources, formats them with their URLs and content (`text`), passing them to the next function for verification.

<Step title="Verifying claims">
    The `verify_claim` function checks each claim against the sources from `exa_search`. It uses an LLM to determine if the sources support or refute the claim and returns a decision with a confidence score. If no sources are found, it returns "insufficient information".

Using LLMs to extract claims and verify them against Exa search sources is a simple way to detect hallucinations in content. If you'd like to recreate it, the full documentation for the script is [here](/examples/identifying-hallucinations-with-exa) and the github repo is [here](https://github.com/exa-labs/exa-hallucination-detector).

**Examples:**

Example 1 (unknown):
```unknown
</Step>

  <Step title="Searching for evidence">
    The `exa_search` function uses Exa search to find evidence for each extracted claim. For every claim, it retrieves the 5 most relevant sources, formats them with their URLs and content (`text`), passing them to the next function for verification.
```

Example 2 (unknown):
```unknown
</Step>

  <Step title="Verifying claims">
    The `verify_claim` function checks each claim against the sources from `exa_search`. It uses an LLM to determine if the sources support or refute the claim and returns a decision with a confidence score. If no sources are found, it returns "insufficient information".
```

---

## Rate Limits

**URL:** llms-txt#rate-limits

Source: https://docs.exa.ai/reference/rate-limits

Default rate limits for Exa API endpoints

<Info>
  Need higher rate limits? Contact us at [hello@exa.ai](mailto:hello@exa.ai) to discuss an Enterprise plan.
</Info>

Our API endpoints have default rate limits to ensure reliable performance for all users. Most endpoints are limited by QPS, while the Research API uses concurrent task limits for its long-running operations.

| Endpoint    | Limit               |
| ----------- | ------------------- |
| `/search`   | 5 QPS\*             |
| `/contents` | 50 QPS              |
| `/answer`   | 5 QPS               |
| `/research` | 15 concurrent tasks |

*\*QPS = Queries Per Second*

---

## Google ADK

**URL:** llms-txt#google-adk

**Contents:**
- What is Google ADK?
- Exa MCP Integration
- Prerequisites
- Use with Google ADK
  - Local MCP Server
  - Remote MCP Server
- More Resources

Source: https://docs.exa.ai/integrations/google-adk

Learn how to use Exa's search API with Google's Agent Development Kit (ADK). Google ADK works with Exa through our MCP (Model Context Protocol) server.

For the official Google ADK documentation about Exa integration, visit the [Google ADK Exa integration page](https://google.github.io/adk-docs/tools/third-party/exa/).

## What is Google ADK?

Google's Agent Development Kit (ADK) is a simple framework for building AI agents. It helps developers create and run AI agents that can do different tasks. ADK works with Google's Gemini models and other AI systems. It makes building agents feel more like regular software development.

## Exa MCP Integration

Exa has an MCP server that works with Google ADK. This lets your ADK agents search the web, find similar content, get clean text from web pages, and do research - all using Exa websearch.

* Create an [API Key](https://dashboard.exa.ai/api-keys) in Exa.

## Use with Google ADK

You can use Exa with Google ADK in two ways: with a local MCP server or a remote MCP server.

### Remote MCP Server

* [Exa MCP Server Documentation](https://docs.exa.ai/reference/exa-mcp)
* [Exa MCP Server Repository](https://github.com/exa-labs/exa-mcp-server)

**Examples:**

Example 1 (unknown):
```unknown
### Remote MCP Server
```

---

## Create API Key

**URL:** llms-txt#create-api-key

**Contents:**
- Optional Parameters

Source: https://docs.exa.ai/reference/team-management/create-api-key

post /api-keys
Create a new API key for your team with optional name and rate limit configuration.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

The Create API Key endpoint allows you to programmatically generate new API keys for your team using your service API key.

## Optional Parameters

* **name**: A descriptive name for the API key to help identify its purpose
* **rateLimit**: Maximum number of requests per minute allowed for this API key

---

## Old approach - limited to LinkedIn

**URL:** llms-txt#old-approach---limited-to-linkedin

**Contents:**
  - After

result = exa.search("VP of Product at Microsoft", category="linkedin")
python  theme={null}

**Examples:**

Example 1 (unknown):
```unknown
### After
```

---

## Update API Key

**URL:** llms-txt#update-api-key

**Contents:**
- Overview
- Path Parameters
- Optional Parameters

Source: https://docs.exa.ai/reference/team-management/update-api-key

put /api-keys/{id}
Update the name and rate limit of an existing API key.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

The Update API Key endpoint allows you to modify an existing API key

* **id**: The unique identifier of the API key to update (UUID format)

## Optional Parameters

* **name**: New descriptive name for the API key
* **rateLimit**: New rate limit in requests per minute

---

## OpenAPI Specification

**URL:** llms-txt#openapi-specification

Source: https://docs.exa.ai/reference/openapi-spec

You can view up-to-date versions of our OpenAPI specs here:

* [Search API Spec](https://raw.githubusercontent.com/exa-labs/openapi-spec/refs/heads/master/exa-openapi-spec.yaml)
* [Websets API Spec](https://raw.githubusercontent.com/exa-labs/openapi-spec/refs/heads/master/exa-websets-spec.yaml)

---

## Printing the information using f-string formatting

**URL:** llms-txt#printing-the-information-using-f-string-formatting

**Contents:**
- Candidate Evaluation

print(f"Personal Site: {personal_website_url}")
print(f"Undergrad: {undergrad}")
print(f"Current: {current}")
print(f"Topics: {topics}")
print(f"AI: {ai}")
Python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
## Candidate Evaluation

Next, we use GPT-4 to score candidates 1-10 based on fit. This way, we can use Exa to find more folks similar to our top-rated candidates.
```

---

## Semantic Whitelisting

**URL:** llms-txt#semantic-whitelisting

We want our feeds to contain high-quality links and avoid SEO spam. This would normally require manually maintaining lists of domains to include/exclude from your results, but with Websets it's simple.

You can create criteria that function as a *semantic whitelist*, telling the LLM what kinds of articles to allow. Here's an example:

You can see all of the criteria used in the demo [here](https://github.com/exa-labs/websets-news-monitor/blob/main/scripts/setup-websets.js).

**Examples:**

Example 1 (unknown):
```unknown
Article published in a top 20 tech publication (TechCrunch, The Verge, Wired, etc.)
```

---

## OpenRouter

**URL:** llms-txt#openrouter

Source: https://docs.exa.ai/integrations/openrouter

Learn how to use Exa's web search API with OpenRouter. OpenRouter provides web search capabilities that enable AI models to access current information from the web.

For detailed instructions on using Exa with OpenRouter, visit the [OpenRouter documentation](https://openrouter.ai/docs/features/web-search).

---

## Install globally

**URL:** llms-txt#install-globally

npm install -g exa-mcp-server

---

## create the exa client

**URL:** llms-txt#create-the-exa-client

exa = Exa(api_key=os.getenv("EXA_API_KEY"))

---

## TODO: change these to fit your own criteria

**URL:** llms-txt#todo:-change-these-to-fit-your-own-criteria

def calculate_score(info, undergrad, year, researchTopics, AI):
    contents = f"""I'm going to provide some information about an individual, and I want you to rate on a scale of 1 to 10 how good of a hiring candidate they are. I am hiring for AI researchers.
    A 10 is someone who went to an incredible college, is graduating soon (final year PhD ideally) or is already graduated, is definitely an AI researcher, has a lot of experience and seems really smart, and a nice bonus is if their research is related to retrieval, search, databases. Only return an integer from 0 to 10. Do not return anything else. This candidate did undergrad at {undergrad} and their current role is {year}. Are they an AI researcher? {AI}. They do research in {researchTopics}. Here are some other things I know about them: {info}"""
    try:
        return int(get_openai_response(contents))
    except:
        return None
Python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
Finally, let's enrich our dataframe of people. We define a function `enrich_row` that uses all the functions we defined to learn more about a candidate,and sort by score to get the most promising candidates.
```

---

## Define and bind the AI model

**URL:** llms-txt#define-and-bind-the-ai-model

model = ChatAnthropic(model="claude-3-5-sonnet-20240620", temperature=0).bind_tools(
    [retrieve_web_content]
)

---

## List API Keys

**URL:** llms-txt#list-api-keys

**Contents:**
- Overview
- Response Format

Source: https://docs.exa.ai/reference/team-management/list-api-keys

get /api-keys
Retrieve all API keys belonging to your team with their metadata.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

The List API Keys endpoint returns all API keys associated with your team. This includes the key ID, name, rate limit, and creation timestamp for each key.

The response includes an array of API key objects with the following information:

* **id**: Unique identifier for the API key
* **name**: Human-readable name (if provided during creation)
* **rateLimit**: Rate limit in requests per minute (if set)
* **createdAt**: ISO 8601 timestamp of when the key was created

---

## Example

**URL:** llms-txt#example

example_homepage = ('https://winniexu.ca/')
additional_homepages = get_more_candidates(example_homepage)
new_candidate_url, new_candidate_content = additional_homepages[0]
name = get_name_from_contents(new_candidate_content)
email = get_email_from_contents(new_candidate_content)

print(f"Additional Homepages:{additional_homepages}")
print(f"Name:{name}")
print(f"Email: {email}")

Python Python theme={null}
def new_candidates_df(df):
    # get the websites of our top candidates
    top_candidates_df = df[df['Score'] > 7]
    websites_list = top_candidates_df['ExaWebsite'].tolist()

# use those top candidates to find new candidates
    new_candidates = set()
    for url in websites_list:
      new_candidates.update(get_more_candidates(url))

#for each new candidate, get their information and add them to the dataframe
    names = []
    emails = []
    urls = []
    for url, content in tqdm(new_candidates):
      names.append(get_name_from_contents(content))
      emails.append(get_email_from_contents(content))
      urls.append(url)

new_df = pd.DataFrame({
        'Name': names,
        'Email': emails,
        'ExaWebsite': urls,
    })

new_df = new_candidates_df(sorted_df)
new_df
```

Alrighty, that's it! We've just built an automated way of finding, researching, and evaluating candidates. You can use this for recruiting, or tailor this to find customers, companies, etc.

And the best part is that every time you use Exa to find new candidates, you can do more `find_similar(new_candidate_homepage)` searches with the new candidates as well -- helping you build an infinite list!

Hope this tutorial was helpful and don't forget, you can get started with [Exa for free](https://dashboard.exa.ai/overview) :)

**Examples:**

Example 1 (unknown):
```unknown
Final stretch -- let's put it all together. Let's find and add our new candidates to our original dataframe.
```

---

## The Exa Index

**URL:** llms-txt#the-exa-index

Source: https://docs.exa.ai/reference/the-exa-index

We spend a lot of time and energy creating a high quality, curated index.

There are many types of content, and we're constantly discovering new things to search for as well. If there's anything you want to be more highly covered, just reach out to [hello@exa.ai](mailto:hello@exa.ai). See the following table for a high level overview of what is available in our index:

|                      Category                     | Availability in Exa Index |                                                           Description                                                           |                                                                                                                                                                                                                                     Example prompt link                                                                                                                                                                                                                                    |
| :-----------------------------------------------: | :-----------------------: | :-----------------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
|                  Research papers                  |         Very High         | Offer semantic search over a very vast index of papers, enabling sophisticated, multi-layer and complex filtering for use cases |            [If you're looking for the most helpful academic paper on "embeddings for document retrieval", check this out (pdf:](https://search.exa.ai/search?q=If+you%27re+looking+for+the+most+helpful+academic+paper+on+%22embeddings+for+document+retrieval%22\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22neural%22%2C%22resolvedSearchType%22%3A%22neural%22%2C%22useAutoprompt%22%3Afalse%7D\&resolvedSearchType=neural)            |
|                   Personal pages                  |         Very High         |        Excels at finding personal pages, which are often extremely hard/impossible to find on traditional search engines        |                                                                           [Here is a link to the best life coach for when you're unhappy at work:](https://exa.ai/search?q=Here%20is%20a%20link%20to%20the%20best%20life%20coach%20for%20when%20you%27re%20unhappy%20at%20work%3A\&c=personal%20site\&filters=%7B%22numResults%22%3A30%2C%22useAutoprompt%22%3Afalse%2C%22domainFilterType%22%3A%22include%22%7D)                                                                          |
|                     Wikipedia                     |         Very High         |             Covers all of Wikipedia, providing comprehensive access to this vast knowledge base via semantic search             |                                                                      [Here is a Wikipedia page about a Roman emperor:](https://search.exa.ai/search?q=Here+is+a+Wikipedia+page+about+a+Roman+emperor%3A\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22neural%22%2C%22useAutoprompt%22%3Afalse%2C%22resolvedSearchType%22%3A%22neural%22%7D\&resolvedSearchType=neurall)                                                                     |
|                        News                       |         Very High         |                     Includes a wide, robust index of web news sources, providing coverage of current events                     |                                       [Here is news about war in the Middle East:](https://exa.ai/search?q=Here+is+news+about+war+in+the+Middle+East%3A\&c=personal+site\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22auto%22%2C%22useAutoprompt%22%3Afalse%2C%22resolvedSearchType%22%3A%22neural%22%2C%22startPublishedDate%22%3A%222024-10-29T01%3A45%3A46.055Z%22%7D\&resolvedSearchType=neural)                                       |
|             People (LinkedIn profiles)            |    *Very High (US+EU)*    |  Use `category="people"` to search for individual profiles. Has improved quality for finding LinkedIn profiles of individuals.  |                   [best theoretical computer scientist at uc berkeley](https://exa.ai/search?q=best+theoretical+computer+scientist+at+uc+berkeley\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22neural%22%2C%22category%22%3A%22people%22%2C%22useAutoprompt%22%3Atrue%2C%22resolvedSearchType%22%3A%22neural%22%7D\&autopromptString=A+leading+theoretical+computer+scientist+at+UC+Berkeley.\&resolvedSearchType=neural)                  |
|         Companies (LinkedIn company pages)        |        *Very High*        |          Use `category="company"` to search for company pages. Has improved quality for finding LinkedIn company pages.         |                                                                             [AI startups in San Francisco](https://exa.ai/search?q=AI+startups+in+San+Francisco\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22neural%22%2C%22category%22%3A%22company%22%2C%22useAutoprompt%22%3Afalse%2C%22resolvedSearchType%22%3A%22neural%22%7D\&resolvedSearchType=neural)                                                                             |
|                 Company home-pages                |         Very High         |        Wide index of companies covered; also available are curated, customized company datasets - reach out to learn more       |                                            [Here is the homepage of a company working on making space travel cheaper:](https://search.exa.ai/search?q=Here+is+the+homepage+of+a+company+working+on+making+space+travel+cheaper%3A\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22neural%22%2C%22useAutoprompt%22%3Afalse%2C%22resolvedSearchType%22%3A%22neural%22%7D\&resolvedSearchType=neural)                                            |
|                 Financial Reports                 |         Very High         |                Includes SEC 10k financial reports and information from other finance sources like Yahoo Finance.                |                    [Here is a source on Apple's revenue growth rate over the past years:](https://exa.ai/search?q=Here+is+a+source+on+Apple%27s+revenue+growth+rate+over+the+past+years%3A\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22neural%22%2C%22startPublishedDate%22%3A%222023-11-18T22%3A35%3A50.022Z%22%2C%22useAutoprompt%22%3Afalse%2C%22resolvedSearchType%22%3A%22neural%22%7D\&resolvedSearchType=neural)                   |
|                    GitHub repos                   |            High           |                                  Indexes open source code (which the Exa team use frequently!)                                  |                                                 [Here's a Github repo if you want to convert OpenAPI specs to Rust code:](https://exa.ai/search?q=Here%27s+a+Github+repo+if+you+want+to+convert+OpenAPI+specs+to+Rust+code%3A\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22neural%22%2C%22useAutoprompt%22%3Afalse%2C%22resolvedSearchType%22%3A%22neural%22%7D\&resolvedSearchType=neural)                                                |
|                       Blogs                       |            High           |                      Excels at finding high quality reading material, particularly useful for niche topics                      |                                                          [If you're a huge fan of Japandi decor, you'd love this blog:](https://exa.ai/search?q=If+you%27re+a+huge+fan+of+Japandi+decor%2C+you%27d+love+this+blog%3A\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22neural%22%2C%22useAutoprompt%22%3Afalse%2C%22resolvedSearchType%22%3A%22neural%22%7D\&resolvedSearchType=neural)                                                         |
|                 Places and things                 |            High           |              Covers a wide range of entities including hospitals, schools, restaurants, appliances, and electronics             |                                                             [Here is a high-rated Italian restaurant in downtown Chicago:](https://exa.ai/search?q=Here+is+a+high-rated+Italian+restaurant+in+downtown+Chicago%3A\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22neural%22%2C%22useAutoprompt%22%3Afalse%2C%22resolvedSearchType%22%3A%22neural%22%7D\&resolvedSearchType=neural)                                                            |
|              Legal and policy sources             |            High           |           Strong coverage of legal and policy information, (e.g., including sources like CPUC, Justia, Findlaw, etc.)           |                        [Here is a common law case in california on marital property rights:](https://search.exa.ai/search?q=Here+is+a+common+law+case+in+california+on+marital+property+rights%3A\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22neural%22%2C%22useAutoprompt%22%3Afalse%2C%22includeDomains%22%3A%5B%22law.justia.com%22%5D%2C%22resolvedSearchType%22%3A%22neural%22%7D\&resolvedSearchType=neural)                        |
| Government and international organization sources |            High           |                                Includes content from sources like the IMF and CDC amongst others                                |             [Here is a recent World Health Organization site on global vaccination rates:](https://exa.ai/search?q=Here+is+a+recent+World+Health+Organization+site+on+global+vaccination+rates%3A\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22neural%22%2C%22startPublishedDate%22%3A%222023-11-18T22%3A35%3A50.022Z%22%2C%22useAutoprompt%22%3Afalse%2C%22resolvedSearchType%22%3A%22neural%22%7D\&resolvedSearchType=neural)            |
|                       Events                      |          Moderate         |                      Reasonable coverage of events in major municipalities, suggesting room for improvement                     | [Here is an AI hackathon in SF:](https://search.exa.ai/search?q=Here+is+an+AI+hackathon+in+SF\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22exclude%22%2C%22type%22%3A%22neural%22%2C%22startPublishedDate%22%3A%222024-07-02T23%3A36%3A15.511Z%22%2C%22useAutoprompt%22%3Afalse%2C%22endPublishedDate%22%3A%222024-07-09T23%3A36%3A15.511Z%22%2C%22excludeDomains%22%3A%5B%22twitter.com%22%5D%2C%22resolvedSearchType%22%3A%22neural%22%7D\&resolvedSearchType=neural) |
|                        Jobs                       |          Moderate         |                                                    Can find some job listings                                                   |      [If you're looking for a software engineering job at a small startup working on an important mission, check out](https://search.exa.ai/search?q=If+you%27re+looking+for+a+software+engineering+job+at+a+small+startup+working+on+an+important+mission%2C+check+out\&filters=%7B%22numResults%22%3A30%2C%22domainFilterType%22%3A%22include%22%2C%22type%22%3A%22neural%22%2C%22useAutoprompt%22%3Afalse%2C%22resolvedSearchType%22%3A%22neural%22%7D\&resolvedSearchType=neural)      |

---

## Results are already ranked by relevance, no need to sort by score

**URL:** llms-txt#results-are-already-ranked-by-relevance,-no-need-to-sort-by-score

**Contents:**
- Response Structure Changes
  - Auto Search (New)
  - Neural Search (Unchanged)
- Need Help with Migration?

for item in result.results:
    print(f"Title: {item.title}")
json  theme={null}
{
  "results": [
    {
      "title": "Example AI Startup",
      "url": "https://example-startup.com",
      "id": "abc123",
      "publishedDate": "2024-01-15",
      "author": "John Doe"
      // Note: No 'score' field
    }
  ]
}
json  theme={null}
{
  "results": [
    {

"title": "Example AI Startup", 
      "url": "https://example-startup.com",
      "id": "abc123",
      "publishedDate": "2024-01-15",
      "author": "John Doe"
    }
  ]
}
```

## Need Help with Migration?

If you have questions about migrating from Auto search scores or need help determining the best search type for your use case, please reach out to [hello@exa.ai](mailto:hello@exa.ai). We're here to help ensure a smooth transition.

**Examples:**

Example 1 (unknown):
```unknown
## Response Structure Changes

### Auto Search (New)
```

Example 2 (unknown):
```unknown
### Neural Search (Unchanged)
```

---

## Managing Your Team

**URL:** llms-txt#managing-your-team

**Contents:**
- Seeing your teams
- Topping up a Team's balance
- Inviting people to your team

Source: https://docs.exa.ai/reference/setting-up-team

Details on Team structure and account management for the Exa platform

[Go to API Dashboard](https://dashboard.exa.ai)

Exa organizes account usage and paid feature access through 'Teams':

Upon account creation, you're placed in a 'Personal' Team. You can use the dropdown in the top-left of the Exa dashboard shown below to create a new Team or select between other Teams you have. You can make as many Teams as you like.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashbaord_team_switcher.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=4e6df5b679e8f1abd98f37e302d272b5" alt="Team dropdown (top-left) within the Exa dashboard under Team settings" data-og-width="2954" width="2954" data-og-height="1916" height="1916" data-path="images/dashbaord_team_switcher.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashbaord_team_switcher.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=2fde086680500c580f6caf1c20c01882 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashbaord_team_switcher.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=630f510ee78cd2f10bdb99f164121e16 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashbaord_team_switcher.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=9e1459fe392149c1694e10795f69c019 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashbaord_team_switcher.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=ec6e722c13c4715ef345883d4f635264 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashbaord_team_switcher.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=faeba90192fefa2fd4127e6449bd47aa 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashbaord_team_switcher.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=0dd109234e745db02802c4bc4cb6c51e 2500w" />

Team dropdown (top-left) within the Exa dashboard under Team settings

[Go to API Dashboard](https://dashboard.exa.ai)

## Topping up a Team's balance

With the desired Team selected, you can top up your credit balance in the Billing page.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_topup.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=7d0ba25707107f9ffe401657d7050d3a" alt="" data-og-width="2954" width="2954" data-og-height="1916" height="1916" data-path="images/dashboard_topup.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_topup.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=73fe90586f98fb06f822ac70e874a2e1 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_topup.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=9c9f26f66d7d095b7de2567fb53c7d4f 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_topup.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=1932e9801f4d2ea27072fe379a5bf128 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_topup.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=6966eb19eaa8ff10814517eec115a28c 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_topup.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=dc2c8f33bf495b273da8c483131bd53d 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_topup.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=a585dda6d136ba25c36eab416cd44505 2500w" />

## Inviting people to your team

Team admins can add members via the Invite feature in Team settings.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=95d6b04394946325486e912103cdf79f" alt="" data-og-width="2954" width="2954" data-og-height="1916" height="1916" data-path="images/dashboard_invite.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=be3200e345d010c6d616a5d0db770c92 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=24173f1e4967af0e4d7fde5f11db0212 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=0b27824628475ac5047057e4fe901c4d 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=11802a534e9c7589d2d6104701613762 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=7a8afba5965e9ec81fc6411d44423775 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=8d7fcc1ca0671b5f777a5323595bb406 2500w" />

Once a team member is invited, their status will be 'Pending' on the team management menu.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_pending.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=6256177f8a13c6d60853f9a85f6fac5d" alt="" data-og-width="2954" width="2954" data-og-height="1916" height="1916" data-path="images/dashboard_invite_pending.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_pending.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=15b57a2e9672d42326c2c49725d4c02b 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_pending.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=75749b19048452437b792cb11c803e6a 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_pending.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=655e809a1fccf2b90c94715e9641c23a 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_pending.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=4348d6451f305ab6c582cfbb18c026f7 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_pending.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=190c3d14beabf3f4e01ccb9b4485a7a1 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_pending.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=df2dc93b2d06f6b401ef08ebe8458376 2500w" />

They will receive an email inviting them to join the team.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_email.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=57225ab6244f3f09f245703358d36e67" alt="" data-og-width="1094" width="1094" data-og-height="1082" height="1082" data-path="images/dashboard_invite_email.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_email.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=66b885801cf28d0b466f63f9172e9fc7 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_email.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=350ad6b93f86d22c5e0fa36051955d1e 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_email.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=8f56eaa963cbb581c244d0c13374b1e2 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_email.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=52b259a73003687a34eeb658fd296d72 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_email.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=beac2fb2207629157eee7e91f89038f7 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_email.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=a897e8e5153762ed3a852b202263607b 2500w" />

Once accepted, you'll see both members are 'Accepted'. All Team members share the usage limits and features of their respective Team's plan.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_accepted.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=9be5765f24c53a129c58542a681a9932" alt="" data-og-width="2954" width="2954" data-og-height="1916" height="1916" data-path="images/dashboard_invite_accepted.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_accepted.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=76abe2fcf0c0084c2047be6e5d38bbf0 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_accepted.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=d1c7e910620860ac802d562ba96099ae 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_accepted.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=dfe0010090fa00f0801554df5a95d347 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_accepted.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=a57e0ec9e75523d7cff608697a149b83 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_accepted.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=c97f89b69a4c84f464f90ff3c038854a 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/dashboard_invite_accepted.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=b1bc8435d7897128ea6ced1b8bd1c5dc 2500w" />

[Go to API Dashboard](https://dashboard.exa.ai)

---

## Get a Webset

**URL:** llms-txt#get-a-webset

Source: https://docs.exa.ai/websets/api/websets/get-a-webset

---

## Determine whether to continue or end

**URL:** llms-txt#determine-whether-to-continue-or-end

def should_continue(state: MessagesState) -> Literal["tools", END]:
    messages = state["messages"]
    last_message = messages[-1]
    return "tools" if last_message.tool_calls else END

---

## Create a task

**URL:** llms-txt#create-a-task

Source: https://docs.exa.ai/reference/research/create-a-task

post /research/v1
Create an asynchronous research task that explores the web, gathers sources, synthesizes findings, and returns results with citations. Can be used to generate:
1. Structured JSON matching an `outputSchema` you provide.
2. A detailed markdown report when no schema is provided.

The API responds immediately with a `researchId` for polling completion status. For more details, see [Exa Research](/reference/exa-research).

Alternatively, you can use the OpenAI compatible [chat completions interface](/reference/chat-completions#research).

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

---

## Or run directly with npx

**URL:** llms-txt#or-run-directly-with-npx

npx exa-mcp-server
bash  theme={null}

**Examples:**

Example 1 (unknown):
```unknown
To specify which tools to enable:
```

---

## Delete an Item

**URL:** llms-txt#delete-an-item

Source: https://docs.exa.ai/websets/api/websets/items/delete-an-item

delete /v0/websets/{webset}/items/{id}
Deletes an Item from the Webset.

This will cancel any enrichment process for it.

---

## Phrase Filters: Niche Company Finder

**URL:** llms-txt#phrase-filters:-niche-company-finder

**Contents:**
- What this doc covers
- How Phrase Filters work
- Running a query with phrase filter

Source: https://docs.exa.ai/examples/niche-company-finder-with-phrase-filters

## What this doc covers

1. What Phrase filters are and how they work
2. Using 'Phrase Filters' to find specific results, in this case filtering by a foreign company suffix

In this simple example, we'll demonstrate a company discovery search that helps find relevant companies incorporated in the Germany (and a few nearby countries) via Phrase Filters. This example will use the fact that companies incorporated in these locations [have a suffix of GmbH](https://en.wikipedia.org/wiki/GmbH), which is a term in the region similar to the US 'incorporated'.

## How Phrase Filters work

Exa's search combines semantic relevance with precise filtering: a neural query first retrieves contextually relevant documents, then a phrase filter refines these results by checking for specific text in the content. This two-stage approach delivers highly targeted outputs by leveraging both semantic understanding and exact text matching.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/1864e57-Screenshot_2024-07-16_at_05.41.13.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=758bc3c59268a1678e9022748af47aa8" alt="" data-og-width="550" width="550" data-og-height="837" height="837" data-path="images/1864e57-Screenshot_2024-07-16_at_05.41.13.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/1864e57-Screenshot_2024-07-16_at_05.41.13.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=db7e808a978eeeda7e952f3f932bc580 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/1864e57-Screenshot_2024-07-16_at_05.41.13.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=fb331f9d5001a305c88f4e0f7923b19d 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/1864e57-Screenshot_2024-07-16_at_05.41.13.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=2a15f67e08991ea632d168de97d87492 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/1864e57-Screenshot_2024-07-16_at_05.41.13.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=abf7bdcb4a7d44fba40fce7d408dee1d 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/1864e57-Screenshot_2024-07-16_at_05.41.13.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=2b1fd7b067a0017cd2e3ddb4445edeba 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/1864e57-Screenshot_2024-07-16_at_05.41.13.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=a0d2a4941d8ba4554f020c2bc7a31a85 2500w" />

## Running a query with phrase filter

Using Phrase Filters is super simple. As usual, install the `exa_py` library with `pip install exa_py`. Then instantiate the library:

```Python Python theme={null}

---

## Poll until completion

**URL:** llms-txt#poll-until-completion

**Contents:**
  - Input Parameters:
  - Returns:
- `research.list_tasks` Method
  - Input Example:

result = exa.research.poll_task(task.id)
print(f"Research complete: {result.data}")
Python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
### Input Parameters:

| Parameter       | Type           | Description                               | Default  |
| --------------- | -------------- | ----------------------------------------- | -------- |
| task\_id        | str            | The unique identifier of the task         | Required |
| poll\_interval  | Optional\[int] | Seconds between polling attempts          | 2        |
| max\_wait\_time | Optional\[int] | Maximum seconds to wait before timing out | 300      |

### Returns:

Returns a `ResearchTaskDetails` object with the completed task data (same structure as `get_task`).

## `research.list_tasks` Method

List all research tasks with optional pagination.

### Input Example:
```

---

## Get API Key Usage

**URL:** llms-txt#get-api-key-usage

**Contents:**
- Overview
- Path Parameters
- Query Parameters
- Response
- Important Notes
- Use Cases

Source: https://docs.exa.ai/reference/team-management/get-api-key-usage

get /api-keys/{id}/usage
Retrieve usage analytics and billing data for a specific API key.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

The Get API Key Usage endpoint allows you to retrieve detailed billing and usage analytics for a specific API key over a given time period. This endpoint returns cost data from Exa's billing system, providing an authoritative view of what you're being billed for that API key.

* **id**: The unique identifier of the API key to retrieve usage for

* **start\_date** (optional): Start date for the usage period in ISO 8601 format (e.g., `2025-01-01T00:00:00Z` or `2025-01-01`). Defaults to 30 days ago. Must be within the last 100 days.
* **end\_date** (optional): End date for the usage period in ISO 8601 format. Defaults to the current time.
* **group\_by** (optional): Time granularity for grouping results (`hour`, `day`, or `month`). Currently reserved for future enhancements and does not change the response shape. Defaults to `day`.

Returns detailed usage and billing information including:

* **api\_key\_id**: Unique identifier of the API key
* **api\_key\_name**: Descriptive name of the API key (if set)
* **team\_id**: Team ID this key belongs to
* **period**: Object containing the start and end dates of the usage period
* **total\_cost\_usd**: Total cost in USD for the specified period
* **cost\_breakdown**: Array of cost breakdowns by price type, each containing:
  * **price\_id**: Unique identifier for the price
  * **price\_name**: Name of the price (e.g., "Neural Search", "Content Retrieval")
  * **quantity**: Total quantity consumed
  * **amount\_usd**: Cost in USD for this price type
* **metadata**: Object containing report generation timestamp

* **100-Day Lookback Limit**: The billing system has a 100-day lookback limit. Requests with `start_date` older than 100 days will return a 400 error.
* **Zero Usage**: If the API key has no usage in the requested period, `total_cost_usd` will be 0 and `cost_breakdown` may be empty.
* **Team Ownership**: The service API key used for authentication must belong to the same team as the requested API key. Cross-team access is not permitted.
* **Date Formats**: Dates can be provided in ISO 8601 format with or without time components (e.g., `2025-01-01` or `2025-01-01T00:00:00Z`).

This endpoint is useful for:

* Building API-key-level billing dashboards
* Monitoring usage and costs for specific API keys
* Creating automated alerts based on usage thresholds
* Generating usage reports for internal cost allocation
* Debugging billing questions for specific API keys

---

## Exploring your results

**URL:** llms-txt#exploring-your-results

Source: https://docs.exa.ai/websets/dashboard/walkthroughs/Exploring-your-results

Explore your Websets matched results, view summaries, criteria justification

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/lFgIdWKgJQc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen referrerpolicy="strict-origin-when-cross-origin" />

<Info>
  Matched Result: matched results are results that match all of your criteria.
</Info>

<Info>
  Evaluated Results: evaluated results are all the possible results that were analyzed by Websets - some were deemed matches, some were deemed that they did not comply with your criteria.
</Info>

---

## Writing Assistant

**URL:** llms-txt#writing-assistant

**Contents:**
- What this doc covers
- Demo overview
- High-level overview
- Exa prompting and query style
- Prompting Claude with Exa results
- Conclusion

Source: https://docs.exa.ai/examples/demo-exa-powered-writing-assistant

[Click here to try the Exa-powered Writing Assistant](https://demo.exa.ai/writing)

[Click here to see the relevant GitHub repo and hosting instructions](https://github.com/exa-labs/exa-writing-assist)

## What this doc covers

* Live demo link for hands-on experience (above!)
* Overview of a real-time writing assistant using Exa and Claude
* Breakdown of Exa query prompt engineering and generative AI system prompt

## High-level overview

This demo showcases a real-time writing assistant that uses Exa's search capabilities to provide relevant information and citations as a user writes. The system combines Exa's neural search with Anthropic's Claude AI model to generate contextually appropriate content and citations.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/77dd3c1-image.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=71fdb665fe05eba5ea76e04a186d52d3" alt="Conceptual block diagram of how the writing assistant works" data-og-width="1660" width="1660" data-og-height="1660" height="1660" data-path="images/77dd3c1-image.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/77dd3c1-image.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=24a55ccdac2c7c9b70ba1bba9e488d9a 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/77dd3c1-image.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=836e162e10d13bdc1bb4ec7460e65f0f 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/77dd3c1-image.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=b96e1b3389aaf96ccef1c55db47636e3 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/77dd3c1-image.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=86f7bd243f85f23508455c31c0078c96 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/77dd3c1-image.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=adb93218eb741b51466df3faeae052ff 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/77dd3c1-image.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=d30873c8c5082d9e93845a090a78b3d6 2500w" />

Conceptual block diagram of how the writing assistant works

## Exa prompting and query style

The Exa search is performed using a unique query style that appends the user's input with a prompt for continuation. Here's the relevant code snippet:

**Key aspects of this query style:**

* **Continuation prompt:** The crucial post-pend "A helpful source to read so you can continue writing the above:"
  * This prompt is designed to find sources that can logically continue the user's writing when passed to an LLM to generate content.
  * It leverages Exa's ability to understand context and find semantically relevant results.
  * By framing the query as a request for continuation, it aligns with how people naturally share helpful links.
* **Length limitation:** It caps the query at 1000 characters to maintain relevance and continue writing just based on the last section of the text.

Note this prompt is not a hard and fast rule for this use-case - we encourage experimentation with query styles to get the best results for your specific use case. For instance, you could further constrain down to just research papers.

## Prompting Claude with Exa results

The Claude AI model is prompted with a carefully crafted system message and passed the above formatted Exa results. Here is an example system prompt:

This prompt ensures that:

* Claude will only do completions, not parrot back the user query like in a typical chat based scenario. Note the inclusion of multiple examples that demonstrate Claude should not reply back with the stub even if there are errors, like spelling or grammar, in the input text (which we found to be a common issue)
* We define the citation style and formatting. We also tell the bot went to collapse authors into 'et al' style citations, as some webpages have many authors

Once again, experimenting with this prompt is crucial to getting best results for your particular use case.

This demo illustrates the power of combining Exa's advanced search capabilities with generative AI to create a writing assistant. By leveraging Exa's neural search and content retrieval features, the system can provide relevant, up-to-date information to any AI model, resulting in contextually appropriate content generation with citations.

This approach showcases how Exa can be integrated into AI-powered applications to enhance user experiences and productivity.

[Click here to try the Exa-powered Writing Assistant](https://demo.exa.ai/writing)

**Examples:**

Example 1 (unknown):
```unknown
**Key aspects of this query style:**

* **Continuation prompt:** The crucial post-pend "A helpful source to read so you can continue writing the above:"
  * This prompt is designed to find sources that can logically continue the user's writing when passed to an LLM to generate content.
  * It leverages Exa's ability to understand context and find semantically relevant results.
  * By framing the query as a request for continuation, it aligns with how people naturally share helpful links.
* **Length limitation:** It caps the query at 1000 characters to maintain relevance and continue writing just based on the last section of the text.

Note this prompt is not a hard and fast rule for this use-case - we encourage experimentation with query styles to get the best results for your specific use case. For instance, you could further constrain down to just research papers.

## Prompting Claude with Exa results

The Claude AI model is prompted with a carefully crafted system message and passed the above formatted Exa results. Here is an example system prompt:
```

---

## Function to generate model responses

**URL:** llms-txt#function-to-generate-model-responses

def call_model(state: MessagesState):
    messages = state["messages"]
    response = model.invoke(messages)
    return {"messages": [response]}

---

## Generic type var for any Enum

**URL:** llms-txt#generic-type-var-for-any-enum

EnumT = TypeVar('EnumT', bound=Enum)

---

## Update a Webset

**URL:** llms-txt#update-a-webset

Source: https://docs.exa.ai/websets/api/websets/update-a-webset

post /v0/websets/{id}

---

## Get Import

**URL:** llms-txt#get-import

Source: https://docs.exa.ai/websets/api/imports/get-import

get /v0/imports/{id}
Gets a specific import.

---

## to just see the 10 titles and urls

**URL:** llms-txt#to-just-see-the-10-titles-and-urls

**Contents:**
- Finding additional info for each company

urls = {}
for c in companies:
  print(c.title + ':' + c.url)
rumie - College Marketplace:https://www.rumieapp.com/ theme={null}
The Airbnb of Storage:https://www.mystorestash.com/
Bunction.net:https://bunction.net/
Home - Community Gearbox:https://communitygearbox.com/
NOVA SHOPPING:https://www.novashoppingapp.com/
Re-Fridge: Buy, sell, or store your college fridge - Re-Fridge:https://www.refridge.com/
Jamble: Social Fashion Resale:https://www.jambleapp.com/
Branded Resale | Treet:https://www.treet.co/
Swapskis:https://www.swapskis.co/
Earn Money for Used Clothing:https://www.thredup.com/cleanout?redirectPath=%2Fcleanout%2Fsell
python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown

```

Example 2 (unknown):
```unknown
Looks pretty darn good! As a bonus specifically for companies data, specifying `category="company"` in the SDK will search across a curated, larger companies dataset - if you're interested in this, let us know at [hello@exa.ai](mailto:hello@exa.ai)!

Now that we have 10 companies we want to dig into further, let’s do some research on each of these companies.

## Finding additional info for each company

Now let's get more information by finding additional webpages about each company. To do this, we're going to search for each company's URL. We can do this with the `search_and_contents` function, and specify `num_results=5`. This will give me 5 websites about each company.
```

---

## Exclude Results

**URL:** llms-txt#exclude-results

**Contents:**
- Overview
- How it works
- When to use exclusions

Source: https://docs.exa.ai/websets/dashboard/exclude-results

Avoid duplicate results in your new searches by excluding URLs from previous Websets or CSV files.

The Exclude Results feature ensures you don't get duplicate results when creating new searches. By specifying URLs to exclude based on previous Websets or uploaded CSV files, you can focus on discovering fresh, unique results that complement your existing data.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/exclude-flow.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=b28ac0441991bc4543571ffc2a900963" alt="" data-og-width="1466" width="1466" data-og-height="857" height="857" data-path="images/websets/exclude-flow.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/exclude-flow.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=12e092e96fd14f7a3a47011df19ed82a 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/exclude-flow.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=d765d90f0acb78ce6eb5475c93774b86 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/exclude-flow.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=2e600f13c376f8c337c1f4eacfc6153a 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/exclude-flow.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=dce6f17e56657a73f2b5e458020e5aef 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/exclude-flow.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=43694ec4f60ae4256389c165e4dcea4a 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/exclude-flow.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=b83edca49e3aef8ecf01bf7433f6e212 2500w" />

1. Begin creating a new Webset
2. Below the criteria in the sidepanel, click "Exclude"
3. Select from past Websets or upload a CSV with URLs to exclude. You can select multiple sources to exclude from.
4. Start your search, with only new results that don't match your exclusions

The maximum number of results you can exclude is determined by your plan.

## When to use exclusions

* Finding leads that aren't already in your CRM
* Following up on previous searches with refined criteria
* Excluding results you already know about

---

## Initialize memory

**URL:** llms-txt#initialize-memory

checkpointer = MemorySaver()

---

## Building a News Summarizer

**URL:** llms-txt#building-a-news-summarizer

**Contents:**
- Get Started

Source: https://docs.exa.ai/examples/recent-news-summarizer

Learn how to build an AI-powered news summarizer that searches and summarizes recent articles using Exa and GPT.

In this example, we will build an LLM-based news summarizer with the Exa API to keep us up-to-date with the latest news on a given topic. We'll do this in three steps:

1. Generate search queries for Exa using an LLM
2. Retrieve relevant URLs and their contents using Exa
3. Summarize webpage contents using GPT-3.5 Turbo

This is a form of Retrieval Augmented Generation (RAG), combining Exa's search capabilities with GPT's summarization abilities.

The Jupyter notebook for this tutorial is available on [Colab](https://colab.research.google.com/drive/1uZ0kxFCWmCqozl3ArTJohNpRbeEYlwlT?usp=sharing) for easy experimentation. You can also [check it out on Github](https://github.com/exa-labs/exa-py/tree/master/examples/newssummarizer/summarizer.ipynb), including a [plain Python version](https://github.com/exa-labs/exa-py/tree/master/examples/newssummarizer/summarizer.py) if you want to skip to the complete product.

<Steps>
  <Step title="Pre-requisites and installation">
    Install the required packages:

<Note> You'll need both an Exa API key and an OpenAI API key to run this example. You can get your OpenAI API key [here](https://platform.openai.com/api-keys).</Note>

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

Set up your API keys:

<Step title="Initialize the clients">
    Import and set up both the OpenAI and Exa clients:

<Step title="Generate a search query">
    First, we'll use GPT to generate an optimized search query based on the user's question:

<Step title="Search for recent articles">
    Now we'll use Exa to search for recent articles, filtering by publication date:

<Note>
      We use `start_published_date` to filter for recent content.
    </Note>
  </Step>

<Step title="Get article contents">
    Exa's `search_and_contents` already retrieved the article contents for us, so we can access them directly:

<Note>
      Unlike traditional search engines that only return URLs, Exa gives us direct access to the webpage contents, eliminating the need for web scraping.
    </Note>
  </Step>

<Step title="Generate a summary">
    Finally, we'll use GPT to create a concise summary of the article:

And we're done! We've built an app that translates a question into a search query, uses Exa to search for useful links and their contents, and summarizes the content to effortlessly answer questions about the latest news.

**Through Exa, we have given our LLM access to the entire Internet.** The possibilities are endless.
  </Step>
</Steps>

**Examples:**

Example 1 (unknown):
```unknown
<Note> You'll need both an Exa API key and an OpenAI API key to run this example. You can get your OpenAI API key [here](https://platform.openai.com/api-keys).</Note>

    <Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

    Set up your API keys:
```

Example 2 (unknown):
```unknown
</Step>

  <Step title="Initialize the clients">
    Import and set up both the OpenAI and Exa clients:
```

Example 3 (unknown):
```unknown
</Step>

  <Step title="Generate a search query">
    First, we'll use GPT to generate an optimized search query based on the user's question:
```

Example 4 (unknown):
```unknown
</Step>

  <Step title="Search for recent articles">
    Now we'll use Exa to search for recent articles, filtering by publication date:
```

---

## null

**URL:** llms-txt#null

Source: https://docs.exa.ai/websets/api/websets/overview

---

## Custom JSON encoder for handling AnyUrl

**URL:** llms-txt#custom-json-encoder-for-handling-anyurl

class ExaJSONEncoder(json.JSONEncoder):

def default(self, obj):

if isinstance(obj, AnyUrl):

return super().default(obj)

class ExaBaseModel(BaseModel):

"""Base model for all Exa models with common configuration."""

model_config = ConfigDict(

populate_by_name=True,

use_enum_values=True,

coerce_numbers_to_str=False,  # Don't convert numbers to strings

str_strip_whitespace=True,  # Strip whitespace from strings

str_to_lower=False,  # Don't convert strings to lowercase

str_to_upper=False,  # Don't convert strings to uppercase

from_attributes=True,  # Allow initialization from attributes

validate_assignment=True,  # Validate on assignment

extra='forbid',  # Forbid extra fields

json_encoders={AnyUrl: str}  # Convert AnyUrl to string when serializing to JSON

class WebsetsBaseClient:

"""Base client for Exa API resources."""

def **init**(self, client):

"""Initialize the client.

client: The parent Exa client.

self.\_client = client

def _prepare_data(self, data: Union[Dict[str, Any], ExaBaseModel, str], model_class: Optional[Type[ModelT]] = None) -\> Union[Dict[str, Any], str]:

"""Prepare data for API request, converting dict to model if needed.

data: Either a dictionary, model instance, or string

model_class: The model class to use if data is a dictionary

Dictionary prepared for API request or string if string data was provided

if isinstance(data, str):

# Return string as is

elif isinstance(data, dict) and model_class:

# Convert dict to model instance

model_instance = model_class.model_validate(data)

return model_instance.model_dump(by_alias=True, exclude_none=True)

elif isinstance(data, ExaBaseModel):

# Use model's dump method

return data.model_dump(by_alias=True, exclude_none=True)

elif isinstance(data, dict):

raise TypeError(f"Expected dict, ExaBaseModel, or str, got {type(data)}")

def request(self, endpoint: str, data: Optional[Union[Dict[str, Any], ExaBaseModel, str]] = None,

method: str = "POST", params: Optional[Dict[str, Any]] = None) -\> Dict[str, Any]:

"""Make a request to the Exa API.

endpoint (str): The API endpoint to request.

data (Union[Dict[str, Any], ExaBaseModel, str], optional): The request data. Can be a dictionary, model instance, or string. Defaults to None.

method (str, optional): The HTTP method. Defaults to "POST".

params (Dict[str, Any], optional): The query parameters. Defaults to None.

Dict[str, Any]: The API response.

if isinstance(data, str):

# If data is a string, pass it as is

elif data is not None and isinstance(data, ExaBaseModel):

# If data is a model instance, convert it to a dict

data = data.model_dump(by_alias=True, exclude_none=True)

return self.\_client.request("/websets/" \+ endpoint, data=data, method=method, params=params)

enrichments/[client.py](http://client.py)

from **future** import annotations

from typing import Dict, Any, Union

from ..types import (

CreateEnrichmentParameters,

from ..core.base import WebsetsBaseClient

class WebsetEnrichmentsClient(WebsetsBaseClient):

"""Client for managing Webset Enrichments."""

def **init**(self, client):

super().\__init_\_(client)

def create(self, webset_id: str, params: Union[Dict[str, Any], CreateEnrichmentParameters]) -\> WebsetEnrichment:

"""Create an Enrichment for a Webset.

webset_id (str): The id of the Webset.

params (CreateEnrichmentParameters): The parameters for creating an enrichment.

WebsetEnrichment: The created enrichment.

response = self.request(f"/v0/websets/{webset_id}/enrichments", data=params)

return WebsetEnrichment.model_validate(response)

def get(self, webset_id: str, id: str) -\> WebsetEnrichment:

"""Get an Enrichment by ID.

webset_id (str): The id of the Webset.

id (str): The id of the Enrichment.

WebsetEnrichment: The retrieved enrichment.

response = self.request(f"/v0/websets/{webset_id}/enrichments/{id}", method="GET")

return WebsetEnrichment.model_validate(response)

def delete(self, webset_id: str, id: str) -\> WebsetEnrichment:

"""Delete an Enrichment.

webset_id (str): The id of the Webset.

id (str): The id of the Enrichment.

WebsetEnrichment: The deleted enrichment.

response = self.request(f"/v0/websets/{webset_id}/enrichments/{id}", method="DELETE")

return WebsetEnrichment.model_validate(response)

def cancel(self, webset_id: str, id: str) -\> WebsetEnrichment:

"""Cancel a running Enrichment.

webset_id (str): The id of the Webset.

id (str): The id of the Enrichment.

WebsetEnrichment: The canceled enrichment.

response = self.request(f"/v0/websets/{webset_id}/enrichments/{id}/cancel", method="POST")

return WebsetEnrichment.model_validate(response)

enrichments/\__init_\_.py

from .client import WebsetEnrichmentsClient

**all** = ["WebsetEnrichmentsClient"]

\_generator/pydantic/BaseModel.jinja2

{% for decorator in decorators -%}

class {{ class_name }}({{ base_class }}):{% if comment is defined %}  # {{ comment }}{% endif %}

{%- if description %}

{{ description | indent(4) }}

{%- if not fields and not description %}

{%- filter indent(4) %}

{%- for field in fields -%}

{%- if [field.name](http://field.name) == "type" and field.field %}

type: Literal['{{ field.default }}']

{%- elif [field.name](http://field.name) == "object" and field.field %}

object: Literal['{{ field.default }}']

{%- elif not field.annotated and field.field %}

{{ [field.name](http://field.name) }}: {{ field.type_hint }} = {{ field.field }}

{%- if field.annotated %}

{{ [field.name](http://field.name) }}: {{ field.annotated }}

{{ [field.name](http://field.name) }}: {{ field.type_hint }}

{%- if not (field.required or (field.represented_default == 'None' and field.strip_default_none)) or [field.data](http://field.data)\_[type.is](http://type.is)\_optional

%} = {{ field.represented_default }}

{%- if field.docstring %}

{{ field.docstring | indent(4) }}

{%- for method in methods -%}

items/[client.py](http://client.py)

from **future** import annotations

from typing import  Optional, Iterator

from ..types import (

ListWebsetItemResponse,

from ..core.base import WebsetsBaseClient

class WebsetItemsClient(WebsetsBaseClient):

"""Client for managing Webset Items."""

def **init**(self, client):

super().\__init_\_(client)

def list(self, webset_id: str, \*, cursor: Optional[str] = None,

limit: Optional[int] = None) -\> ListWebsetItemResponse:

"""List all Items for a Webset.

webset_id (str): The id or externalId of the Webset.

cursor (str, optional): The cursor to paginate through the results.

limit (int, optional): The number of results to return (max 200).

ListWebsetItemResponse: List of webset items.

params = {k: v for k, v in {"cursor": cursor, "limit": limit}.items() if v is not None}

response = self.request(f"/v0/websets/{webset_id}/items", params=params, method="GET")

return ListWebsetItemResponse.model_validate(response)

def list_all(self, webset_id: str, \*, limit: Optional[int] = None) -\> Iterator[WebsetItem]:

"""Iterate through all Items in a Webset, handling pagination automatically.

webset_id (str): The id or externalId of the Webset.

limit (int, optional): The number of results to return per page (max 200).

WebsetItem: Each item in the webset.

response = self.list(webset_id, cursor=cursor, limit=limit)

for item in [response.data](http://response.data):

if not response.has_more or not [response.next](http://response.next)\_cursor:

cursor = [response.next](http://response.next)\_cursor

def get(self, webset_id: str, id: str) -\> WebsetItem:

"""Get an Item by ID.

webset_id (str): The id or externalId of the Webset.

id (str): The id of the Webset item.

WebsetItem: The retrieved item.

response = self.request(f"/v0/websets/{webset_id}/items/{id}", method="GET")

return WebsetItem.model_validate(response)

def delete(self, webset_id: str, id: str) -\> WebsetItem:

webset_id (str): The id or externalId of the Webset.

id (str): The id of the Webset item.

WebsetItem: The deleted item.

response = self.request(f"/v0/websets/{webset_id}/items/{id}", method="DELETE")

return WebsetItem.model_validate(response)

from .client import WebsetItemsClient

**all** = ["WebsetItemsClient"]

webhooks/[client.py](http://client.py)

from **future** import annotations

from typing import Optional, Dict, Any, Union, Literal

from ..types import (

CreateWebhookParameters,

ListWebhooksResponse,

UpdateWebhookParameters,

ListWebhookAttemptsResponse,

from ..core.base import WebsetsBaseClient

class WebhookAttemptsClient(WebsetsBaseClient):

"""Client for managing Webhook Attempts."""

def **init**(self, client):

super().\__init_\_(client)

def list(self, webhook_id: str, \*, cursor: Optional[str] = None,

limit: Optional[int] = None, event_type: Optional[Union[EventType, str]] = None) -\> ListWebhookAttemptsResponse:

"""List all attempts made by a Webhook ordered in descending order.

webhook_id (str): The ID of the webhook.

cursor (str, optional): The cursor to paginate through the results.

limit (int, optional): The number of results to return (max 200).

event_type (Union[EventType, str], optional): The type of event to filter by.

ListWebhookAttemptsResponse: List of webhook attempts.

event_type_value = None

if event_type is not None:

if isinstance(event_type, EventType):

event_type_value = event_type.value

event_type_value = event_type

params = {k: v for k, v in {

"eventType": event_type_value

}.items() if v is not None}

response = self.request(f"/v0/webhooks/{webhook_id}/attempts", params=params, method="GET")

return ListWebhookAttemptsResponse.model_validate(response)

class WebsetWebhooksClient(WebsetsBaseClient):

"""Client for managing Webset Webhooks."""

def **init**(self, client):

super().\__init_\_(client)

self.attempts = WebhookAttemptsClient(client)

def create(self, params: Union[Dict[str, Any], CreateWebhookParameters]) -\> Webhook:

params (CreateWebhookParameters): The parameters for creating a webhook.

Webhook: The created webhook.

response = self.request("/v0/webhooks", data=params)

return Webhook.model_validate(response)

def get(self, id: str) -\> Webhook:

"""Get a Webhook by ID.

id (str): The id of the webhook.

Webhook: The retrieved webhook.

response = self.request(f"/v0/webhooks/{id}", method="GET")

return Webhook.model_validate(response)

def list(self, \*, cursor: Optional[str] = None, limit: Optional[int] = None) -\> ListWebhooksResponse:

"""List all Webhooks.

cursor (str, optional): The cursor to paginate through the results.

limit (int, optional): The number of results to return (max 200).

ListWebhooksResponse: List of webhooks.

params = {k: v for k, v in {"cursor": cursor, "limit": limit}.items() if v is not None}

response = self.request("/v0/webhooks", params=params, method="GET")

return ListWebhooksResponse.model_validate(response)

def update(self, id: str, params: Union[Dict[str, Any], UpdateWebhookParameters]) -\> Webhook:

id (str): The id of the webhook.

params (UpdateWebhookParameters): The parameters for updating a webhook.

Webhook: The updated webhook.

response = self.request(f"/v0/webhooks/{id}", data=params, method="PATCH")

return Webhook.model_validate(response)

def delete(self, id: str) -\> Webhook:

id (str): The id of the webhook.

Webhook: The deleted webhook.

response = self.request(f"/v0/webhooks/{id}", method="DELETE")

return Webhook.model_validate(response)

webhooks/\__init_\_.py

from .client import WebsetWebhooksClient

**all** = ["WebsetWebhooksClient"]

from exa_py import Exa

exa = Exa(os.environ.get("EXA_API_KEY"))
```

where websets is accessed via exa.websets….

**Examples:**

Example 1 (unknown):
```unknown
\--END--

Help me answer anything about Exa Websets API using Python. If is first user’s message, begin with python instructions to import
```

---

## Example usage

**URL:** llms-txt#example-usage

**Contents:**
- About Exa Code
- Use with MCP

context = get_code_context("Express.js middleware for authentication")
print(context)
javascript  theme={null}
async function getCodeContext(query, tokensNum = "dynamic") {
  const response = await fetch("https://api.exa.ai/context", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "x-api-key": "YOUR_API_KEY"
    },
    body: JSON.stringify({
      query,
      tokensNum
    })
  });
  
  const result = await response.json();
  return result.response;
}

// Example usage
const context = await getCodeContext("Svelte component lifecycle methods");
console.log(context);
```

Vibe coding should never have a bad vibe. `exa-code` is a huge step towards coding agents that never hallucinate.

When your coding agent makes a search query, `exa-code` searches over billions of GitHub repos, docs pages, Stack Overflow posts, and more, to find the perfect, token-efficient context that the agent needs to code correctly. It's powered by the Exa search engine.

You can also use `exa-code` through the [Exa MCP server](https://docs.exa.ai/reference/exa-mcp) for seamless integration with AI coding assistants like Claude, Cursor, and other MCP-compatible clients.

The MCP integration provides the same powerful code context search capabilities directly within your development environment without needing to make direct API calls.

**Examples:**

Example 1 (unknown):
```unknown
**Using with JavaScript/Node.js**
```

---

## Parse the structured summary (returned as a JSON string)

**URL:** llms-txt#parse-the-structured-summary-(returned-as-a-json-string)

**Contents:**
  - Input Parameters:
  - Returns Example:
  - Return Parameters:
  - `SearchResponse[ResultWithTextAndHighlights]`
  - `ResultWithTextAndHighlights` Object
- `find_similar` Method
  - Input Example:
  - Input Parameters:
  - Returns Example:
  - Return Parameters:

first_result = result_with_structured_summary.results[0]
if first_result.summary:
    import json
    structured_data = json.loads(first_result.summary)
    print(structured_data["name"])        # e.g. "OpenAI"
    print(structured_data["industry"])    # e.g. "Artificial Intelligence"
    print(structured_data["keyProducts"]) # e.g. ["GPT-4", "DALL-E", "ChatGPT"]
JSON JSON theme={null}
`{
  "results": [
    {

"title": "2023 AI Trends in Health Care",
      "id": "https://aibusiness.com/verticals/2023-ai-trends-in-health-care-",
      "url": "https://aibusiness.com/verticals/2023-ai-trends-in-health-care-",
      "publishedDate": "2022-12-29",
      "author": "Wylie Wong",
      "text": "While the health care industry was initially slow to [... TRUNCATED IN THESE DOCS FOR BREVITY ...]",
      "highlights": [
        "But to do so, many health care institutions would like to share data, so they can build a more comprehensive dataset to use to train an AI model. Traditionally, they would have to move the data to one central repository. However, with federated or swarm learning, the data does not have to move. Instead, the AI model goes to each individual health care facility and trains on the data, he said. This way, health care providers can maintain security and governance over their data."
      ],
      "highlightScores": [
        0.5566554069519043
      ]
    },
    {

"title": "AI in healthcare: Innovative use cases and applications",
      "id": "https://www.leewayhertz.com/ai-use-cases-in-healthcare",
      "url": "https://www.leewayhertz.com/ai-use-cases-in-healthcare",
      "publishedDate": "2023-02-13",
      "author": "Akash Takyar",
      "text": "The integration of AI in healthcare is not [... TRUNCATED IN THESE DOCS FOR BREVITY ...]",
      "highlights": [
        "The ability of AI to analyze large amounts of medical data and identify patterns has led to more accurate and timely diagnoses. This has been especially helpful in identifying complex medical conditions, which may be difficult to detect using traditional methods. Here are some examples of successful implementation of AI in healthcare. IBM Watson Health: IBM Watson Health is an AI-powered system used in healthcare to improve patient care and outcomes. The system uses natural language processing and machine learning to analyze large amounts of data and provide personalized treatment plans for patients."
      ],
      "highlightScores": [
        0.6563674807548523
      ]
    }
  ],
  "requestId": "d8fd59c78d34afc9da173f1fe5aa8965"
}
Python Python theme={null}
similar_results = exa.find_similar(
    "miniclip.com",
    num_results=2,
    exclude_source_domain=True
)
JSON JSON theme={null}
{
  "results": [
    {

"title": "Play New Free Online Games Every Day",
      "id": "https://www.minigames.com/new-games",
      "url": "https://www.minigames.com/new-games",
      "publishedDate": "2000-01-01",
      "author": null
    },
    {

"title": "Play The best Online Games",
      "id": "https://www.minigames.com/",
      "url": "https://www.minigames.com/",
      "publishedDate": "2000-01-01",
      "author": null
    }
  ],
  "requestId": "08fdc6f20e9f3ea87f860af3f6ccc30f"
}
Python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
### Input Parameters:

| Parameter              | Type                                              | Description                                                                                                                                                                                                                                | Default  |
| ---------------------- | ------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------- |
| query                  | str                                               | The input query string.                                                                                                                                                                                                                    | Required |
| text                   | Union\[TextContentsOptions, Literal\[True]]       | If provided, includes the full text of the content in the results.                                                                                                                                                                         | None     |
| highlights             | Union\[HighlightsContentsOptions, Literal\[True]] | If provided, includes highlights of the content in the results.                                                                                                                                                                            | None     |
| num\_results           | Optional\[int]                                    | Number of search results to return. Limits vary by search type: with "neural": max 100. If you want to increase the num results, contact sales ([hello@exa.ai](mailto:hello@exa.ai))                                                       | 10       |
| include\_domains       | Optional\[List\[str]]                             | List of domains to include in the search.                                                                                                                                                                                                  | None     |
| exclude\_domains       | Optional\[List\[str]]                             | List of domains to exclude in the search.                                                                                                                                                                                                  | None     |
| start\_crawl\_date     | Optional\[str]                                    | Results will only include links **crawled** after this date.                                                                                                                                                                               | None     |
| end\_crawl\_date       | Optional\[str]                                    | Results will only include links **crawled** before this date.                                                                                                                                                                              | None     |
| start\_published\_date | Optional\[str]                                    | Results will only include links with a **published** date after this date.                                                                                                                                                                 | None     |
| end\_published\_date   | Optional\[str]                                    | Results will only include links with a **published** date before this date.                                                                                                                                                                | None     |
| type                   | Optional\[str]                                    | The type of search: "auto", "neural", "fast", or "deep".                                                                                                                                                                                   | "auto"   |
| category               | Optional\[str]                                    | A data category to focus on when searching, with higher comprehensivity and data cleanliness. Currently, the available categories are: company, research paper, news, github, tweet, personal site, pdf, financial report, and people.     | None     |
| include\_text          | Optional\[List\[str]]                             | List of strings that must be present in webpage text of results. Currently, only 1 string is supported, of up to 5 words.                                                                                                                  | None     |
| exclude\_text          | Optional\[List\[str]]                             | List of strings that must not be present in webpage text of results. Currently, only 1 string is supported, of up to 5 words. Checks from the first 1000 words of the webpage text.                                                        | None     |
| context                | Union\[ContextContentsOptions, Literal\[True]]    | Return page contents as a context string for LLM RAG. When true, combines all result contents into one string. We recommend 10000+ characters for best results. Context strings often perform better than highlights for RAG applications. | None     |

### Returns Example:
```

Example 2 (unknown):
```unknown
### Return Parameters:

The return type depends on the combination of `text` and `highlights` parameters:

* `SearchResponse[ResultWithText]`: When only `text` is provided.
* `SearchResponse[ResultWithHighlights]`: When only `highlights` is provided.
* `SearchResponse[ResultWithTextAndHighlights]`: When both `text` and `highlights` are provided.

### `SearchResponse[ResultWithTextAndHighlights]`

| Field   | Type                               | Description                                 |
| ------- | ---------------------------------- | ------------------------------------------- |
| results | List\[ResultWithTextAndHighlights] | List of ResultWithTextAndHighlights objects |
| context | Optional\[str]                     | Results concatenated into a string          |

### `ResultWithTextAndHighlights` Object

| Field | Type           | Description                   |
| ----- | -------------- | ----------------------------- |
| url   | str            | URL of the search result      |
| id    | str            | Temporary ID for the document |
| title | Optional\[str] | Title of the search result    |

\| published\_date   | Optional\[str]   | Estimated creation date                          |
\| author           | Optional\[str]   | Author of the content, if available              |
\| text             | str             | Text of the search result page (always present)  |
\| highlights       | List\[str]       | Highlights of the search result (always present) |
\| highlight\_scores | List\[float]     | Scores of the highlights (always present)        |

Note: If neither `text` nor `highlights` is specified, the method defaults to including the full text content.

## `find_similar` Method

Find a list of similar results based on a webpage's URL.

### Input Example:
```

Example 3 (unknown):
```unknown
### Input Parameters:

| Parameter               | Type                                           | Description                                                                                                                                                                                                                                | Default  |
| ----------------------- | ---------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------- |
| url                     | str                                            | The URL of the webpage to find similar results for.                                                                                                                                                                                        | Required |
| num\_results            | Optional\[int]                                 | Number of similar results to return.                                                                                                                                                                                                       | None     |
| include\_domains        | Optional\[List\[str]]                          | List of domains to include in the search.                                                                                                                                                                                                  | None     |
| exclude\_domains        | Optional\[List\[str]]                          | List of domains to exclude from the search.                                                                                                                                                                                                | None     |
| start\_crawl\_date      | Optional\[str]                                 | Results will only include links **crawled** after this date.                                                                                                                                                                               | None     |
| end\_crawl\_date        | Optional\[str]                                 | Results will only include links **crawled** before this date.                                                                                                                                                                              | None     |
| start\_published\_date  | Optional\[str]                                 | Results will only include links with a **published** date after this date.                                                                                                                                                                 | None     |
| end\_published\_date    | Optional\[str]                                 | Results will only include links with a **published** date before this date.                                                                                                                                                                | None     |
| exclude\_source\_domain | Optional\[bool]                                | If true, excludes results from the same domain as the input URL.                                                                                                                                                                           | None     |
| category                | Optional\[str]                                 | A data category to focus on when searching, with higher comprehensivity and data cleanliness.                                                                                                                                              | None     |
| context                 | Union\[ContextContentsOptions, Literal\[True]] | Return page contents as a context string for LLM RAG. When true, combines all result contents into one string. We recommend 10000+ characters for best results. Context strings often perform better than highlights for RAG applications. | None     |

### Returns Example:
```

Example 4 (unknown):
```unknown
### Return Parameters:

`SearchResponse[_Result]`: The response containing similar results and optional autoprompt string.

### `SearchResponse[Results]`

| Field   | Type                               | Description                                 |
| ------- | ---------------------------------- | ------------------------------------------- |
| results | List\[ResultWithTextAndHighlights] | List of ResultWithTextAndHighlights objects |
| context | Optional\[String]                  | Results concatentated into a string         |

### `Results` Object

| Field | Type           | Description                   |
| ----- | -------------- | ----------------------------- |
| url   | str            | URL of the search result      |
| id    | str            | Temporary ID for the document |
| title | Optional\[str] | Title of the search result    |

\| published\_date | Optional\[str]   | Estimated creation date                       |
\| author         | Optional\[str]   | Author of the content, if available           |

## `find_similar_and_contents` Method

Find a list of similar results based on a webpage's URL, optionally including the text content or highlights of each result.

### Input Example:
```

---

## Storyline Deduplication

**URL:** llms-txt#storyline-deduplication

A common issue when monitoring news is handling multiple articles about the same storyline. Often you want to group articles by storyline or remove duplicates so users don't see repeated content.

In our demo, we solve this using embeddings, vector search, and an LLM to classify duplicates.

<Steps>
  <Step title="Embed the Article Title">
    First, we'll embed the article's title using OpenAI's embedding API. We'll use the `text-embedding-3-small` model that produces vectors optimized for similarity comparisons.

<Step title="Search for Similar Articles">
    Next, we use PostgreSQL's `pgvector` extension to find the 10 most similar articles from the last week.

<Step title="Classify Duplicates with an LLM">
    Finally, we'll use an LLM with structured outputs to classify whether the article is a duplicate. The LLM will look at the titles of similar articles and determine if they are about the same event.

You can view the complete deduplication implementation [here](https://github.com/exa-labs/websets-news-monitor/blob/main/src/lib/dedupe.ts).

**Examples:**

Example 1 (unknown):
```unknown
</Step>

  <Step title="Search for Similar Articles">
    Next, we use PostgreSQL's `pgvector` extension to find the 10 most similar articles from the last week.
```

Example 2 (unknown):
```unknown
</Step>

  <Step title="Classify Duplicates with an LLM">
    Finally, we'll use an LLM with structured outputs to classify whether the article is a duplicate. The LLM will look at the titles of similar articles and determine if they are about the same event.
```

---

## create the rich console

**URL:** llms-txt#create-the-rich-console

---

## Example queries

**URL:** llms-txt#example-queries

**Contents:**
- Sales
- Recruiting
- Market Research/Investing
- Sourcing
- Research Papers

Source: https://docs.exa.ai/websets/dashboard/websets-example-queries

Here are some examples for things to search for, to get you started!

1. Heads of Sales at companies with less than 500 employees, based in Europe
2. Marketing agencies, based in the US, with less than 30 employees.
3. Research labs, with at least 3 researchers, that have a biochemistry focus
4. Engineering managers at fortune 500 companies in traditional (non tech focused) industries
5. Startups that raised a series B in 2024 and have a head of people

1. Engineers with startup experience, that have contributed to open source projects
2. Candidate with strong analytical and operational skills, that has worked at a startup before
3. SDR, with experience selling healthcare products, based in the East Coast
4. ML Software engineers or computer science PhD students that went to a top 20 US university.
5. Investment banker or consultant, attended an Ivy League, has been at their role for over 2 years.

## Market Research/Investing

1. Linkedin profile of person that has changed their title to “Stealth Founder” in 2025
2. Companies in the agrotech space focused on hardware solutions
3. Financial reports of food & beverage companies that mention team downsizing
4. Fintech startups that raised a series A in 2024 from a major US based VC fund

1. Hydrochlorous acid manufacturers that have sustainability angles
2. High end clothing, low minimum order quantity manufacturers in Asia or Europe
3. Software solutions for fleet management automation
4. Cool agentic AI tools to help with productivity

1. Research papers, published in a major US journal, focused on cell generation technology
2. Research papers that disagree with transformer based model methodology for AI training
3. Research papers written by someone with a phd, focused on astrophysics.

---

## List Imports

**URL:** llms-txt#list-imports

Source: https://docs.exa.ai/websets/api/imports/list-imports

get /v0/imports
Lists all imports for the Webset.

---

## Get started

**URL:** llms-txt#get-started

**Contents:**
- 1. Sign up
- 2. Get started
- 3. Inside your Webset
- 4. Interacting with your Webset
- 5. Add more result criteria and custom columns
- 6. Share and export your Webset
- 7. Search history

Source: https://docs.exa.ai/websets/dashboard/get-started

Welcome to the Websets Dashboard! Find anything you want on the web, no matter how complex.

Websets is now generally available at [https://websets.exa.ai/](https://websets.exa.ai/)!

If you'd like to ask us about it, [book a call here](https://cal.com/team/exa/websets-enterprise-plan).

Websets is very easy to use.

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-landing.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=8573cf90a9e9f98c757ac0fa56c8a64d" alt="" data-og-width="2870" width="2870" data-og-height="1726" height="1726" data-path="images/websets/websets-landing.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-landing.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=de66ed748846f9a651802304ad3d1614 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-landing.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=ebd78ea5324bf8b6a34e01c4dbe3d245 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-landing.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=03d046869c31153e2824216bb2c819b8 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-landing.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=de166a44e9d9ac2e1152e014e07bf013 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-landing.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=fdefe60df2859535da64b5f0c2ad294f 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-landing.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=b3e4379c6869344e27dc38cfcce154ea 2500w" />

1. Describe what you want in plain English - make it as complicated as you'd like!

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-preview.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=15c47c556750ad0f1cebfb78b1ea52aa" alt="" data-og-width="2870" width="2870" data-og-height="1726" height="1726" data-path="images/websets/websets-preview.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-preview.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=7d558944e9b2fc701a8220617322320d 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-preview.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=483fc1d5befb2dffa2304f8a38972d10 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-preview.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=12332b3f51f36a234b9ac4d10168f97d 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-preview.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=d681978e7dba250827e3ac285d42c200 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-preview.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=56005be584421d0a645f0d28231a1b05 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-preview.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=7d4baf55a8b82257df6713a3bb970a71 2500w" />

2. Confirm your criteria and data category look good.

3. Confirm how many results you want, then start your search.

## 3. Inside your Webset

In brief, Websets does the following:

1. Break down what you're asking for

2. Find promising data that might satisfy your ask

3. Verify all criteria using AI agents and finding parallel sources

4. Adjust search based on feedback you provide our agent

<Info>
  If you're not satisfied with the initial results you see, refine the criteria
  in "Edit criteria" or inside the chat.
</Info>

## 4. Interacting with your Webset

Once the Webset is complete, you can interact with the components!

Click on a result to see:

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-result.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=793c040207129ee6c2efc1c8d922d6fe" alt="" data-og-width="2870" width="2870" data-og-height="1734" height="1734" data-path="images/websets/websets-result.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-result.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=f2d32b47558cb2b943956067b27978e9 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-result.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=90f1c0de595dae2684fa7183bb4d9d8b 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-result.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=6cd5c5beea505f898c4908631a9353c7 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-result.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=e31601ab8ec44fc3d6e9a8d6590a3412 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-result.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=d1ed7aad186a9edf47bf41cf35a75298 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/websets-result.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=d7c156953de4c11b8107d5ff4342d6a0 2500w" />

1. Its AI-generated summary

2. The criteria it met to be included in the Webset

3. The sources that informed the matching (you can click through the sources here)

You can manually delete results, to clean up your Webset before exporting it.

## 5. Add more result criteria and custom columns

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/add-enrichment.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=5d94338cdb1931e9afced3c196acf075" alt="" data-og-width="2870" width="2870" data-og-height="1734" height="1734" data-path="images/websets/add-enrichment.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/add-enrichment.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=46c8e83abb6deae456ac6ec0d04862f1 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/add-enrichment.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=44c885f1c984f1851a930ee7aa10558a 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/add-enrichment.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=3f44c132d543f7f25ccac000c7dc95b7 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/add-enrichment.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=b93f2443c8365f3e237dab1fa017d378 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/add-enrichment.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=d24f3acfd54f33826be03810739457e5 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/websets/add-enrichment.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=7adbd96107c5f6a633311752ae5948f6 2500w" />

1. **Add enrichments:** You can create custom enrichment columns, asking for any information you want. Think contact information (email & phone number), revenue, employee count, sentiment analysis, summary of the paper, etc. Fill in:

* The name of the column (e.g. 'Revenue')

* The column type (e.g. 'Number')

* Instructions for Websets to find the data (e.g. 'Find the annual revenue of the company')

* Or click "fill in for me" for the instructions to be generated automatically by our agent

## 6. Share and export your Webset

1. Click export to download your Webset as a CSV file.

2. Click share to get a link for your Webset.

If you click on the sidebar icon in the top left, you'll see your full history with all past Websets in the left panel.

---
