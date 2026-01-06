# Exa-Api - Websets

**Pages:** 28

---

## List Monitors

**URL:** llms-txt#list-monitors

Source: https://docs.exa.ai/websets/api/monitors/list-monitors

get /v0/monitors
Lists all monitors for the Webset.

---

## Welcome to Websets

**URL:** llms-txt#welcome-to-websets

**Contents:**
- Get Started

Source: https://docs.exa.ai/websets/overview

Our goal is to help you find anything you want on the web, no matter how complex.

You can use Websets in two ways:

1. Through our intuitive Dashboard interface - perfect for quickly finding what you need without any coding
2. Via our powerful API - ideal for programmatic access and integration into your workflow

<CardGroup cols={2}>
  <Card title={<div className="card-title">Dashboard</div>} icon="bolt-lightning" href="./dashboard">
    <div className="text-lg">Use Websets through our Dashboard.</div>
  </Card>

<Card title={<div className="card-title">API</div>} icon="magnifying-glass" href="./api">
    <div className="text-lg">Use Websets programatically through our API.</div>
  </Card>
</CardGroup>

---

## List all Websets

**URL:** llms-txt#list-all-websets

Source: https://docs.exa.ai/websets/api/websets/list-all-websets

get /v0/websets
Returns a list of Websets.

You can paginate through the results using the `cursor` parameter.

---

## Websets

**URL:** llms-txt#websets

Source: https://docs.exa.ai/reference/websets-api

---

## List webhooks

**URL:** llms-txt#list-webhooks

Source: https://docs.exa.ai/websets/api/webhooks/list-webhooks

get /v0/webhooks
Get a list of all webhooks in your account.
The results come in pages. Use `limit` to set how many webhooks to get per page (up to 200). Use `cursor` to get the next page of results.

---

## Update Monitor

**URL:** llms-txt#update-monitor

Source: https://docs.exa.ai/websets/api/monitors/update-monitor

patch /v0/monitors/{id}
Updates a monitor configuration.

---

## Get an Enrichment

**URL:** llms-txt#get-an-enrichment

Source: https://docs.exa.ai/websets/api/websets/enrichments/get-an-enrichment

get /v0/websets/{webset}/enrichments/{id}

---

## Get Monitor

**URL:** llms-txt#get-monitor

Source: https://docs.exa.ai/websets/api/monitors/get-monitor

get /v0/monitors/{id}
Gets a specific monitor.

---

## Websets News Monitor

**URL:** llms-txt#websets-news-monitor

Source: https://docs.exa.ai/examples/demo-websets-news-monitor

A live demo that monitors the web semantically using the Websets API.

<Card title="Click here to try it out." href="https://demo.exa.ai/websets-news-monitor" img="https://exa.imgix.net/websets-news-monitor.png" />

---

## Get Monitor Run

**URL:** llms-txt#get-monitor-run

Source: https://docs.exa.ai/websets/api/monitors/runs/get-monitor-run

get /v0/monitors/{monitor}/runs/{id}
Gets a specific monitor run.

---

## Adding and Managing Your Team Members in Websets

**URL:** llms-txt#adding-and-managing-your-team-members-in-websets

Source: https://docs.exa.ai/websets/dashboard/walkthroughs/Managing-Team-Members

Here's how to manage your team.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/fveEzbgR5X4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen referrerpolicy="strict-origin-when-cross-origin" />

* Click on the top right-hand side icon. Go to team settings.

* Edit permissions per team member or add emails at the bottom.

* Your team member will receive an email confirmation to be added.

---

## Update an Enrichment

**URL:** llms-txt#update-an-enrichment

Source: https://docs.exa.ai/websets/api/websets/enrichments/update-an-enrichment

patch /v0/websets/{webset}/enrichments/{id}
Update an Enrichment configuration for a Webset.

---

## Get a Webhook

**URL:** llms-txt#get-a-webhook

Source: https://docs.exa.ai/websets/api/webhooks/get-a-webhook

get /v0/webhooks/{id}
Get information about a webhook using its ID.
The webhook secret is not shown here for security - you only get it when you first create the webhook.

---

## List Monitor Runs

**URL:** llms-txt#list-monitor-runs

Source: https://docs.exa.ai/websets/api/monitors/runs/list-monitor-runs

get /v0/monitors/{monitor}/runs
Lists all runs for the Monitor.

---

## Verifying Signatures

**URL:** llms-txt#verifying-signatures

**Contents:**
- How Webhook Signatures Work
- Verification Process
- Security Best Practices
- Troubleshooting
  - Invalid Signature Errors
  - Testing Signatures Locally

Source: https://docs.exa.ai/websets/api/webhooks/verifying-signatures

Learn how to securely verify webhook signatures to ensure requests are from Exa

When you receive a webhook from Exa, you should verify that it came from us to ensure the integrity and authenticity of the data. Exa signs all webhook payloads with a secret key that's unique to your webhook endpoint.

## How Webhook Signatures Work

Exa uses HMAC SHA256 to sign webhook payloads. The signature is included in the `Exa-Signature` header, which contains:

* A timestamp (`t=`) indicating when the webhook was sent
* One or more signatures (`v1=`) computed using the timestamp and payload

The signature format looks like this:

## Verification Process

To verify a webhook signature:

1. Extract the timestamp and signatures from the `Exa-Signature` header
2. Create the signed payload by concatenating the timestamp, a period, and the raw request body
3. Compute the expected signature using HMAC SHA256 with your webhook secret
4. Compare your computed signature with the provided signatures

<Tabs>
  <Tab title="Python">
    
  </Tab>

<Tab title="JavaScript/Node.js">
    
  </Tab>

<Tab title="Java">
    
  </Tab>
</Tabs>

## Security Best Practices

Following these practices will help ensure your webhook implementation is secure and robust:

* **Always Verify Signatures** - Never process webhook data without first verifying the signature. This prevents attackers from sending fake webhooks to your endpoint.

* **Use Timing-Safe Comparison** - When comparing signatures, use functions like `hmac.compare_digest()` in Python or `crypto.timingSafeEqual()` in Node.js to prevent timing attacks.

* **Check Timestamp Freshness** - Consider rejecting webhooks with timestamps that are too old (e.g., older than 5 minutes) to prevent replay attacks.

* **Store Secrets Securely** - Store your webhook secrets in environment variables or a secure secret management system. Never hardcode them in your application. **Important**: The webhook secret is only returned when you [create a webhook](https://docs.exa.ai/websets/api/webhooks/create-a-webhook) - make sure to save it securely as it cannot be retrieved later.

* **Use HTTPS** - Always use HTTPS endpoints for your webhooks to ensure the data is encrypted in transit.

### Invalid Signature Errors

If you're getting signature verification failures:

1. **Check the raw payload**: Make sure you're using the raw request body, not a parsed JSON object
2. **Verify the secret**: Ensure you're using the correct webhook secret from when the webhook was created
3. **Check header parsing**: Make sure you're correctly extracting the timestamp and signatures from the header
4. **Encoding issues**: Ensure consistent UTF-8 encoding throughout the verification process

### Testing Signatures Locally

You can test your signature verification logic using the webhook secret and a sample payload:

```python python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
Exa-Signature: t=1234567890,v1=5257a869e7ecebeda32affa62cdca3fa51cad7e77a0e56ff536d0ce8e108d8bd
```

Example 2 (unknown):
```unknown
</Tab>

  <Tab title="JavaScript/Node.js">
```

Example 3 (unknown):
```unknown
</Tab>

  <Tab title="Java">
```

Example 4 (unknown):
```unknown
</Tab>
</Tabs>

***

<br />

## Security Best Practices

Following these practices will help ensure your webhook implementation is secure and robust:

* **Always Verify Signatures** - Never process webhook data without first verifying the signature. This prevents attackers from sending fake webhooks to your endpoint.

* **Use Timing-Safe Comparison** - When comparing signatures, use functions like `hmac.compare_digest()` in Python or `crypto.timingSafeEqual()` in Node.js to prevent timing attacks.

* **Check Timestamp Freshness** - Consider rejecting webhooks with timestamps that are too old (e.g., older than 5 minutes) to prevent replay attacks.

* **Store Secrets Securely** - Store your webhook secrets in environment variables or a secure secret management system. Never hardcode them in your application. **Important**: The webhook secret is only returned when you [create a webhook](https://docs.exa.ai/websets/api/webhooks/create-a-webhook) - make sure to save it securely as it cannot be retrieved later.

* **Use HTTPS** - Always use HTTPS endpoints for your webhooks to ensure the data is encrypted in transit.

***

<br />

## Troubleshooting

### Invalid Signature Errors

If you're getting signature verification failures:

1. **Check the raw payload**: Make sure you're using the raw request body, not a parsed JSON object
2. **Verify the secret**: Ensure you're using the correct webhook secret from when the webhook was created
3. **Check header parsing**: Make sure you're correctly extracting the timestamp and signatures from the header
4. **Encoding issues**: Ensure consistent UTF-8 encoding throughout the verification process

### Testing Signatures Locally

You can test your signature verification logic using the webhook secret and a sample payload:
```

---

## Update a Webhook

**URL:** llms-txt#update-a-webhook

Source: https://docs.exa.ai/websets/api/webhooks/update-a-webhook

patch /v0/webhooks/{id}
Change a webhook's settings. You can update:
- Events: Add or remove which events you want to hear about - URL: Change where notifications are sent - Metadata: Update custom data linked to the webhook

Changes happen right away. If you change the events list, the webhook will start or stop getting notifications for those events immediately.

The webhook keeps its current status (`active` or `inactive`) when you update it.

---

## List webhook attempts

**URL:** llms-txt#list-webhook-attempts

Source: https://docs.exa.ai/websets/api/webhooks/attempts/list-webhook-attempts

get /v0/webhooks/{id}/attempts
List all attempts made by a Webhook ordered in descending order.

---

## Delete Monitor

**URL:** llms-txt#delete-monitor

Source: https://docs.exa.ai/websets/api/monitors/delete-monitor

delete /v0/monitors/{id}
Deletes a monitor.

---

## Cancel a running Enrichment

**URL:** llms-txt#cancel-a-running-enrichment

Source: https://docs.exa.ai/websets/api/websets/enrichments/cancel-a-running-enrichment

post /v0/websets/{webset}/enrichments/{id}/cancel
All running enrichments will be canceled. You can not resume an Enrichment after it has been canceled.

---

## Event Types

**URL:** llms-txt#event-types

**Contents:**
- Webset
- Search
- Item
- Import
- Monitor

Source: https://docs.exa.ai/websets/api/events/types

Learn about the events that occur within the Webset API

The Websets API uses events to notify you about changes in your Websets. You can monitor these events through our [events endpoint](/websets/api/events/list-all-events) or by setting up [webhooks](/websets/api/webhooks/create-a-webhook).

Events are retained for 60 days before being automatically deleted.

* `webset.created` - Emitted when a new Webset is created.
* `webset.deleted` - Emitted when a Webset is deleted.
* `webset.paused` - Emitted when a Webset's operations are paused.
* `webset.idle` - Emitted when a Webset has no running operations.

* `webset.search.created` - Emitted when a new search is initiated.
* `webset.search.updated` - Emitted when search progress is updated.
* `webset.search.completed` - Emitted when a search finishes finding all items.
* `webset.search.canceled` - Emitted when a search is manually canceled.

* `webset.item.created` - Emitted when a new item has been added to the Webset.
* `webset.item.enriched` - Emitted when an item's enrichment is completed.

* `import.created` - Emitted when a new import is initiated.
* `import.completed` - Emitted when an import has been completed.

* `monitor.created` - Emitted when a new monitor is created.
* `monitor.updated` - Emitted when a monitor's configuration is updated.
* `monitor.deleted` - Emitted when a monitor is deleted.
* `monitor.run.created` - Emitted when a monitor run starts.
* `monitor.run.completed` - Emitted when a monitor run finishes.

* A unique `id`
* The event `type`
* A `data` object containing the full resource that triggered the event
* A `createdAt` timestamp

You can use these events to:

* Track the progress of searches and enrichments
* Build real-time dashboards
* Trigger workflows when new items are found
* Monitor the status of your exports

---

## Create a Webhook

**URL:** llms-txt#create-a-webhook

Source: https://docs.exa.ai/websets/api/webhooks/create-a-webhook

post /v0/webhooks
Webhooks let you get notifications when things happen in your Websets. When you create a webhook, you choose which events you want to know about and where to send the notifications.

When an event happens, Exa sends an HTTP POST request to your webhook URL with:
- Event details (type, time, ID)
- Full data of what triggered the event
- A signature to verify the request came from Exa

The webhook starts as `active` and begins getting notifications right away. You'll get a secret key for checking webhook signatures - save this safely as it's only shown once when you create the webhook.

---

## Create an Enrichment

**URL:** llms-txt#create-an-enrichment

Source: https://docs.exa.ai/websets/api/websets/enrichments/create-an-enrichment

post /v0/websets/{webset}/enrichments
Create an Enrichment for a Webset.

---

## Downloading and Sharing Your Results

**URL:** llms-txt#downloading-and-sharing-your-results

**Contents:**
  - Share
  - Download

Source: https://docs.exa.ai/websets/dashboard/walkthroughs/Sharing-and-Downloading-Your-Results

Here's how to share or download your results and enrichments.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/81sJFD66XMU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen referrerpolicy="strict-origin-when-cross-origin" />

Click the share icon, switch on the toggle to make your Webset public and share the link.

<Note>
  *Starter*, *Pro* and *Enterprise* Plans Websets are default private. *Free Plan* Websets are default public.
</Note>

Download a CSV by clicking the "Download" button. You can easily upload the CSV to any CRM, candidate management systems, etc.

---

## Creating Enrichments

**URL:** llms-txt#creating-enrichments

Source: https://docs.exa.ai/websets/dashboard/walkthroughs/Creating-enrichments

Here's how to create enrichments (also known as Adding Columns).

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/5Zgb0qcRRsg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen referrerpolicy="strict-origin-when-cross-origin" />

**Open the enrichment modal**

<Tip>
  Use the chat: you can add enrichments by prompting directly in the Chat! Or click on "Add Enrichment" in the top-right corner.
</Tip>

**Fill in your prompt:** Prompt the AI generator to have our agent fill in the fields for you, or fill in the enrichment type, title and prompt directly.

**Enrichment types:** text, contact information (email & phone number), date, number, options (think of these as tags!)

<Tip>
  Cool examples of enrichments:&#x20;

* "Find me this candidate's contact information" - Contact

* "Do a sentiment analysis on each article" - Text or Options

* "Categorize these companies by B2B or B2C" - Options

* "Create a custom email based on this company's main product"- Text

* "Give me this candidate's years of experience" - Number

* "Find any public data on this company's revenue or valuation" - Text

* "What is the most powerful data point mentioned in each research paper?" - Text
</Tip>

---

## Delete an Enrichment

**URL:** llms-txt#delete-an-enrichment

Source: https://docs.exa.ai/websets/api/websets/enrichments/delete-an-enrichment

delete /v0/websets/{webset}/enrichments/{id}
When deleting an Enrichment, any running enrichments will be canceled and all existing `enrichment_result` generated by this Enrichment will no longer be available.

---

## Verify it works

**URL:** llms-txt#verify-it-works

**Contents:**
- What's Next?

is_valid = verify_webhook_signature(test_payload, test_header, test_secret)
print(f"Test signature valid: {is_valid}")  # Should print True
```

* Learn about [webhook events](/websets/api/events) and their payloads
* Set up [webhook retries and monitoring](/websets/api/webhooks/attempts/list-webhook-attempts)
* Explore [webhook management endpoints](/websets/api/webhooks/create-a-webhook)

---

## Delete a Webhook

**URL:** llms-txt#delete-a-webhook

Source: https://docs.exa.ai/websets/api/webhooks/delete-a-webhook

delete /v0/webhooks/{id}
Remove a webhook from your account. Once deleted, the webhook stops getting notifications right away and cannot be brought back.

Important notes: - The webhook stops working as soon as you delete it - You cannot undo this - you'll need to create a new webhook if you want it back - Any notifications currently being sent may still complete

---

## Criteria vs Enrichments

**URL:** llms-txt#criteria-vs-enrichments

**Contents:**
- When to Use Criteria
- When to Use Enrichments
- Example: Senior Software Engineers

Source: https://docs.exa.ai/websets/dashboard/criteria-versus-enrichments

**Criteria** are filters that determine which results are included in your search. Every result must satisfy all criteria to be included in your final list. Criteria are binary - a result either meets the criterion or it doesn't. If a result fails even one criterion, it's excluded from your results. Criteria are included in the base search cost.

**Enrichments** are data extractors that pull additional information from results that have already passed your criteria. Enrichments don't affect which results you get - they only add columns of data to the results you've already found. Enrichments cost additional credits per result.

## When to Use Criteria

Use criteria for any requirement that should filter your results. If a characteristic is essential to whether you want to see a result, it should be a criterion.

**Examples of good criteria usage:**

* "Currently employed as a software engineer" - filters for people in that role
* "Has 5+ years of experience" - filters for seniority level
* "Located in San Francisco" - filters for geography
* "Previously worked at Google" - filters for specific employment history
* "Has experience with React and Node.js" - filters for technical skills

**Common mistake: Using optional preferences as criteria**

If you're not getting enough results, you may have turned "nice-to-have" preferences into hard filters:

* "Has 5+ years of experience" when you'd accept 3+ years - consider making this an enrichment so you can sort by it
* "Knows Node.js" when React is the only must-have - move optional skills to enrichments
* "Previously worked at a startup" when it's just a preference - use as an enrichment to prioritize, not filter

When a criterion is optional or flexible, move it to enrichments. This lets you see all qualified candidates and manually prioritize based on nice-to-have attributes.

## When to Use Enrichments

Use enrichments for any additional information you want to extract from results that have already passed your criteria. Enrichments are for data you need for outreach, qualification, or deeper research, but that don't affect whether you want to see the result.

**Examples of good enrichment usage:**

* "Email address" - extracts contact information from qualified candidates
* "Current company size" - adds context about their employer
* "Years of experience" - provides the exact number after you've already filtered for 5+ years
* "Key skills" - lists their technical stack
* "LinkedIn profile URL" - provides a link for further research

## Example: Senior Software Engineers

Let's say you're looking for senior software engineers with specific experience.

**Query:** "Senior software engineers with 5+ years of experience in machine learning. Get their email and current company."

**Criteria (for filtering):**

* Currently employed as a software engineer
* Has 5+ years of experience
* Has experience in machine learning

**Enrichments (for data extraction):**

* Email address
* Current company name

This structure ensures you only get candidates who meet your requirements, and then extracts the additional contact information you need from those qualified results.

---
