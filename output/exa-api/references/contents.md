# Exa-Api - Contents

**Pages:** 27

---

## Before - fails when crawling fails

**URL:** llms-txt#before---fails-when-crawling-fails

result = exa.get_contents(urls, livecrawl="always")

---

## Contents Endpoint Status Changes

**URL:** llms-txt#contents-endpoint-status-changes

**Contents:**
- What Changed
- Response Structure
  - Status Fields Explained
- How to Update Your Code

Source: https://docs.exa.ai/changelog/contents-endpoint-status-changes

The /contents endpoint now returns detailed status information for each URL instead of HTTP error codes, providing better visibility into individual content fetch results.

**Date: 22 May 2025**

We've updated the `/contents` endpoint to provide more granular status information for each URL you request. Instead of returning HTTP error codes directly, the endpoint now includes a `statuses` field that gives you detailed information about each content fetch operation.

<Info>
  The `/contents` endpoint will now only return an error if there's an internal issue on our end. All other cases are handled through the new `statuses` field.
</Info>

Previously, the `/contents` endpoint would return HTTP error codes when content fetching failed. This approach had limitations when multiple URLs failed for different reasons, making it unclear which specific error to return.

Now, the endpoint returns a `statuses` field containing individual status information for each URL, allowing you to handle different failure scenarios appropriately.

## Response Structure

The new response structure includes:

### Status Fields Explained

* **id**: The URL that was requested
* **status**: Either `"success"` or `"error"`
* **error** (optional): Only present when status is `"error"`
  * **tag**: Specific error type
    * `CRAWL_NOT_FOUND`: Content not found (404)
    * `CRAWL_TIMEOUT`: Request timed out (408)
    * `SOURCE_NOT_AVAILABLE`: Access forbidden or source unavailable (403)
    * `CRAWL_UNKNOWN_ERROR`: Other errors (500+)
  * **httpStatusCode**: The corresponding HTTP status code

## How to Update Your Code

Instead of catching HTTP errors, you should now check the `statuses` field:

```python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
### Status Fields Explained

* **id**: The URL that was requested
* **status**: Either `"success"` or `"error"`
* **error** (optional): Only present when status is `"error"`
  * **tag**: Specific error type
    * `CRAWL_NOT_FOUND`: Content not found (404)
    * `CRAWL_TIMEOUT`: Request timed out (408)
    * `SOURCE_NOT_AVAILABLE`: Access forbidden or source unavailable (403)
    * `CRAWL_UNKNOWN_ERROR`: Other errors (500+)
  * **httpStatusCode**: The corresponding HTTP status code

## How to Update Your Code

Instead of catching HTTP errors, you should now check the `statuses` field:
```

---

## If you want the full text of the citations in the response:

**URL:** llms-txt#if-you-want-the-full-text-of-the-citations-in-the-response:

**Contents:**
  - Input Parameters:
  - Returns Example:
  - Return Parameters:
  - `AnswerResult` object
- `stream_answer` Method
  - Input Example:
  - Input Parameters:
  - Return Type:
  - `StreamChunk`
- `research.create_task` Method

response_with_text = exa.answer(
    "What is the capital of France?",
    text=True
)
print(response_with_text.citations[0].text)  # Full page text
JSON JSON theme={null}
{
  "answer": "The capital of France is Paris.",
  "citations": [
    {
      "id": "https://www.example.com/france",
      "url": "https://www.example.com/france",
      "title": "France - Wikipedia",
      "publishedDate": "2023-01-01",
      "author": null,
      "text": "France, officially the French Republic, is a country in... [truncated for brevity]"
    }
  ]
}
Python Python theme={null}
stream = exa.stream_answer("What is the capital of France?", text=True)

for chunk in stream:
    if chunk.content:
        print("Partial answer:", chunk.content)
    if chunk.citations:
        for citation in chunk.citations:
            print("Citation found:", citation.url)
Python Python theme={null}
from exa_py import Exa
import os

exa = Exa(os.environ["EXA_API_KEY"])

**Examples:**

Example 1 (unknown):
```unknown
### Input Parameters:

| Parameter | Type            | Description                                                                              | Default  |
| --------- | --------------- | ---------------------------------------------------------------------------------------- | -------- |
| query     | str             | The question to answer.                                                                  | Required |
| text      | Optional\[bool] | If true, the full text of each citation is included in the result.                       | False    |
| stream    | Optional\[bool] | Note: If true, an error is thrown. Use stream\_answer() instead for streaming responses. | None     |

### Returns Example:
```

Example 2 (unknown):
```unknown
### Return Parameters:

Returns an `AnswerResponse` object:

| Field     | Type                | Description                                   |
| --------- | ------------------- | --------------------------------------------- |
| answer    | str                 | The generated answer text                     |
| citations | List\[AnswerResult] | List of citations used to generate the answer |

### `AnswerResult` object

| Field           | Type           | Description                                 |
| --------------- | -------------- | ------------------------------------------- |
| id              | str            | Temporary ID for the document               |
| url             | str            | URL of the citation                         |
| title           | Optional\[str] | Title of the content, if available          |
| published\_date | Optional\[str] | Estimated creation date                     |
| author          | Optional\[str] | The author of the content, if available     |
| text            | Optional\[str] | The full text of the content (if text=True) |

***

## `stream_answer` Method

Generate a streaming answer to a query with Exa's LLM capabilities. Instead of returning a single response, this method yields chunks of text and/or citations as they become available.

### Input Example:
```

Example 3 (unknown):
```unknown
### Input Parameters:

| Parameter | Type            | Description                                                            | Default  |
| --------- | --------------- | ---------------------------------------------------------------------- | -------- |
| query     | str             | The question to answer.                                                | Required |
| text      | Optional\[bool] | If true, includes full text of each citation in the streamed response. | False    |

### Return Type:

A `StreamAnswerResponse` object, which is iterable. Iterating over it yields `StreamChunk` objects:

### `StreamChunk`

| Field     | Type                           | Description                                 |
| --------- | ------------------------------ | ------------------------------------------- |
| content   | Optional\[str]                 | Partial text content of the answer so far.  |
| citations | Optional\[List\[AnswerResult]] | Citations discovered in this chunk, if any. |

Use `stream.close()` to end the streaming session if needed.

## `research.create_task` Method

Create an asynchronous research task that performs multi-step web research and returns structured JSON results with citations.

### Input Example:
```

---

## 2. Answer synthesis (downstream LLM restricted to retrieved context)

**URL:** llms-txt#2.-answer-synthesis-(downstream-llm-restricted-to-retrieved-context)

context = "\n\n".join([r.text for r in results.results])
answer = llm.generate(
    f"Answer the question using only the provided context.\n\n"
    f"Context: {context}\n\n"
    f"Question: {query}\n\n"
    f"Answer:"
)

---

## LLM prompt for writing Python

**URL:** llms-txt#llm-prompt-for-writing-python

Source: https://docs.exa.ai/websets/api/LLM

To teach LLMs how to use the Websets API. Best with powerful reasoning models.

The following text is a Git repository with code. The structure of the text are sections that begin with ----, followed by a single line containing the file path and file name, followed by a variable amount of lines containing the file contents. The text representing the Git repository ends when the symbols --END-- are encounted. Any further text beyond --END-- are meant to be interpreted as instructions using the aforementioned Git repository as context.

[client.py](http://client.py)

from **future** import annotations

from datetime import datetime

from typing import List, Optional, Literal, Dict, Any, Union

CreateWebsetParameters,

from .core.base import WebsetsBaseClient

from .items import WebsetItemsClient

from .searches import WebsetSearchesClient

from .enrichments import WebsetEnrichmentsClient

from .webhooks import WebsetWebhooksClient

class WebsetsClient(WebsetsBaseClient):

"""Client for managing Websets."""

def **init**(self, client):

super().\__init_\_(client)

self.items = WebsetItemsClient(client)

self.searches = WebsetSearchesClient(client)

self.enrichments = WebsetEnrichmentsClient(client)

self.webhooks = WebsetWebhooksClient(client)

def create(self, params: Union[Dict[str, Any], CreateWebsetParameters]) -\> Webset:

"""Create a new Webset.

params (CreateWebsetParameters): The parameters for creating a webset.

Webset: The created webset.

response = self.request("/v0/websets", data=params)

return Webset.model_validate(response)

def get(self, id: str, \*, expand: Optional[List[Literal["items"]]] = None) -\> GetWebsetResponse:

"""Get a Webset by ID.

id (str): The id or externalId of the Webset.

expand (List[Literal["items"]], optional): Expand the response with specified resources.

Allowed values: ["items"]

GetWebsetResponse: The retrieved webset.

params = {"expand": expand} if expand else {}

response = self.request(f"/v0/websets/{id}", params=params, method="GET")

return GetWebsetResponse.model_validate(response)

def list(self, \*, cursor: Optional[str] = None, limit: Optional[int] = None) -\> ListWebsetsResponse:

cursor (str, optional): The cursor to paginate through the results.

limit (int, optional): The number of results to return (max 200).

ListWebsetsResponse: List of websets.

params = {k: v for k, v in {"cursor": cursor, "limit": limit}.items() if v is not None}

response = self.request("/v0/websets", params=params, method="GET")

return ListWebsetsResponse.model_validate(response)

def update(self, id: str, params: Union[Dict[str, Any], UpdateWebsetRequest]) -\> Webset:

id (str): The id or externalId of the Webset.

params (UpdateWebsetRequest): The parameters for updating a webset.

Webset: The updated webset.

response = self.request(f"/v0/websets/{id}", data=params, method="POST")

return Webset.model_validate(response)

def delete(self, id: str) -\> Webset:

id (str): The id or externalId of the Webset.

Webset: The deleted webset.

response = self.request(f"/v0/websets/{id}", method="DELETE")

return Webset.model_validate(response)

def cancel(self, id: str) -\> Webset:

"""Cancel a running Webset.

id (str): The id or externalId of the Webset.

Webset: The canceled webset.

response = self.request(f"/v0/websets/{id}/cancel", method="POST")

return Webset.model_validate(response)

def wait_until_idle(self, id: str, \*, timeout: int = 3600, poll_interval: int = 5) -\> Webset:

"""Wait until a Webset is idle.

id (str): The id or externalId of the Webset.

timeout (int, optional): Maximum time to wait in seconds. Defaults to 3600.

poll_interval (int, optional): Time to wait between polls in seconds. Defaults to 5.

Webset: The webset once it's idle.

TimeoutError: If the webset does not become idle within the timeout period.

start_time = time.time()

webset = self.get(id)

if webset.status == WebsetStatus.idle.value:

if time.time() - start_time \> timeout:

raise TimeoutError(f"Webset {id} did not become idle within {timeout} seconds")

time.sleep(poll_interval)

from .client import WebsetsClient

[types.py](http://types.py)

from **future** import annotations

from datetime import datetime

from enum import Enum

from typing import Any, Dict, List, Literal, Optional, Union

from pydantic import AnyUrl, Field, confloat, constr

from .core.base import ExaBaseModel

class CanceledReason(Enum):

The reason the search was canceled

webset_deleted = 'webset_deleted'

webset_canceled = 'webset_canceled'

class CreateCriterionParameters(ExaBaseModel):

description: constr(min_length=1)

The description of the criterion

class CreateEnrichmentParameters(ExaBaseModel):

description: constr(min_length=1)

Provide a description of the enrichment task you want to perform to each Webset Item.

format: Optional[Format] = None

Format of the enrichment response.

We automatically select the best format based on the description. If you want to explicitly specify the format, you can do so here.

options: Optional[List[Option]] = Field(None, max_items=20, min_items=1)

When the format is options, the different options for the enrichment agent to choose from.

metadata: Optional[Dict[str, Any]] = None

Set of key-value pairs you want to associate with this object.

class CreateWebhookParameters(ExaBaseModel):

events: List[EventType] = Field(..., max_items=12, min_items=1)

The events to trigger the webhook

The URL to send the webhook to

metadata: Optional[Dict[str, Any]] = None

Set of key-value pairs you want to associate with this object.

class CreateWebsetParameters(ExaBaseModel):

Create initial search for the Webset.

enrichments: Optional[List[CreateEnrichmentParameters]] = Field(None, max_items=10)

Add Enrichments for the Webset.

external_id: Optional[str] = Field(None, alias='externalId')

The external identifier for the webset.

You can use this to reference the Webset by your own internal identifiers.

metadata: Optional[Dict[str, Any]] = None

Set of key-value pairs you want to associate with this object.

class CreateWebsetSearchParameters(ExaBaseModel):

count: confloat(ge=1.0)

Number of Items the Search will attempt to find.

The actual number of Items found may be less than this number depending on the query complexity.

query: constr(min_length=1) = Field(

'Marketing agencies based in the US, that focus on consumer products. Get brands worked with and city'

Query describing what you are looking for.

Any URL provided will be crawled and used as context for the search.

WebsetResearchPaperEntity,

Entity the Webset will return results for.

It is not required to provide it, we automatically detect the entity from all the information provided in the query.

criteria: Optional[List[CreateCriterionParameters]] = Field(

None, max_items=5, min_items=1

Criteria every item is evaluated against.

It's not required to provide your own criteria, we automatically detect the criteria from all the information provided in the query.

behaviour: Optional[WebsetSearchBehaviour] = Field(

'override', title='WebsetSearchBehaviour'

The behaviour of the Search when it is added to a Webset.

- `override`: the search will reuse the existing Items found in the Webset and evaluate them against the new criteria. Any Items that don't match the new criteria will be discarded.

metadata: Optional[Dict[str, Any]] = None

Set of key-value pairs you want to associate with this object.

class Criterion(ExaBaseModel):

description: constr(min_length=1)

The description of the criterion

success_rate: confloat(ge=0.0, le=100.0) = Field(..., alias='successRate')

Value between 0 and 100 representing the percentage of results that meet the criterion.

class EnrichmentResult(ExaBaseModel):

object: Literal['enrichment_result']

format: WebsetEnrichmentFormat

result: Optional[List[str]] = None

The result of the enrichment. None if the enrichment wasn't successful.

reasoning: Optional[str] = None

The reasoning for the result when an Agent is used.

references: List[Reference]

The references used to generate the result.

enrichment_id: str = Field(..., alias='enrichmentId')

The id of the Enrichment that generated the result

class EventType(Enum):

webset_created = 'webset.created'

webset_deleted = 'webset.deleted'

webset_paused = 'webset.paused'

webset_idle = 'webset.idle'

webset_search_created = '[webset.search](http://webset.search).created'

webset_search_canceled = '[webset.search](http://webset.search).canceled'

webset_search_completed = '[webset.search](http://webset.search).completed'

webset_search_updated = '[webset.search](http://webset.search).updated'

webset_export_created = 'webset.export.created'

webset_export_completed = 'webset.export.completed'

webset_item_created = 'webset.item.created'

webset_item_enriched = 'webset.item.enriched'

Format of the enrichment response.

We automatically select the best format based on the description. If you want to explicitly specify the format, you can do so here.

class ListEventsResponse(ExaBaseModel):

WebsetItemCreatedEvent,

WebsetItemEnrichedEvent,

WebsetSearchCreatedEvent,

WebsetSearchUpdatedEvent,

WebsetSearchCanceledEvent,

WebsetSearchCompletedEvent,

] = Field(..., discriminator='type')

has_more: bool = Field(..., alias='hasMore')

Whether there are more results to paginate through

next_cursor: Optional[str] = Field(..., alias='nextCursor')

The cursor to paginate through the next set of results

class ListWebhookAttemptsResponse(ExaBaseModel):

data: List[WebhookAttempt]

The list of webhook attempts

has_more: bool = Field(..., alias='hasMore')

Whether there are more results to paginate through

next_cursor: Optional[str] = Field(..., alias='nextCursor')

The cursor to paginate through the next set of results

class ListWebhooksResponse(ExaBaseModel):

has_more: bool = Field(..., alias='hasMore')

Whether there are more results to paginate through

next_cursor: Optional[str] = Field(..., alias='nextCursor')

The cursor to paginate through the next set of results

class ListWebsetItemResponse(ExaBaseModel):

data: List[WebsetItem]

The list of webset items

has_more: bool = Field(..., alias='hasMore')

Whether there are more Items to paginate through

next_cursor: Optional[str] = Field(..., alias='nextCursor')

The cursor to paginate through the next set of Items

class ListWebsetsResponse(ExaBaseModel):

has_more: bool = Field(..., alias='hasMore')

Whether there are more results to paginate through

next_cursor: Optional[str] = Field(..., alias='nextCursor')

The cursor to paginate through the next set of results

class Option(ExaBaseModel):

The label of the option

class Progress(ExaBaseModel):

The progress of the search

The number of results found so far

completion: confloat(ge=0.0, le=100.0)

The completion percentage of the search

class Reference(ExaBaseModel):

title: Optional[str] = None

The title of the reference

snippet: Optional[str] = None

The relevant snippet of the reference content

The URL of the reference

class Satisfied(Enum):

The satisfaction of the criterion

class Search(ExaBaseModel):

Create initial search for the Webset.

query: constr(min_length=1) = Field(

'Marketing agencies based in the US, that focus on consumer products.'

Use this to describe what you are looking for.

Any URL provided will be crawled and used as context for the search.

count: Optional[confloat(ge=1.0)] = 10

Number of Items the Webset will attempt to find.

The actual number of Items found may be less than this number depending on the search complexity.

WebsetResearchPaperEntity,

] = Field(None, discriminator='type')

Entity the Webset will return results for.

It is not required to provide it, we automatically detect the entity from all the information provided in the query. Only use this when you need more fine control.

criteria: Optional[List[CreateCriterionParameters]] = Field(

None, max_items=5, min_items=1

Criteria every item is evaluated against.

It's not required to provide your own criteria, we automatically detect the criteria from all the information provided in the query. Only use this when you need more fine control.

The source of the Item

class UpdateWebhookParameters(ExaBaseModel):

events: Optional[List[EventType]] = Field(None, max_items=12, min_items=1)

The events to trigger the webhook

url: Optional[AnyUrl] = None

The URL to send the webhook to

metadata: Optional[Dict[str, Any]] = None

Set of key-value pairs you want to associate with this object.

class UpdateWebsetRequest(ExaBaseModel):

metadata: Optional[Dict[str, str]] = None

Set of key-value pairs you want to associate with this object.

class Webhook(ExaBaseModel):

The unique identifier for the webhook

object: Literal['webhook']

status: WebhookStatus = Field(..., title='WebhookStatus')

The status of the webhook

events: List[EventType] = Field(..., min_items=1)

The events to trigger the webhook

The URL to send the webhook to

secret: Optional[str] = None

The secret to verify the webhook signature. Only returned on Webhook creation.

metadata: Optional[Dict[str, Any]] = {}

The metadata of the webhook

created_at: datetime = Field(..., alias='createdAt')

The date and time the webhook was created

updated_at: datetime = Field(..., alias='updatedAt')

The date and time the webhook was last updated

class WebhookAttempt(ExaBaseModel):

The unique identifier for the webhook attempt

object: Literal['webhook_attempt']

event_id: str = Field(..., alias='eventId')

The unique identifier for the event

event_type: EventType = Field(..., alias='eventType')

webhook_id: str = Field(..., alias='webhookId')

The unique identifier for the webhook

The URL that was used during the attempt

Whether the attempt was successful

response_headers: Dict[str, Any] = Field(..., alias='responseHeaders')

The headers of the response

response_body: str = Field(..., alias='responseBody')

The body of the response

response_status_code: float = Field(..., alias='responseStatusCode')

The status code of the response

The attempt number of the webhook

attempted_at: datetime = Field(..., alias='attemptedAt')

The date and time the webhook attempt was made

class WebhookStatus(Enum):

The status of the webhook

inactive = 'inactive'

class Webset(ExaBaseModel):

The unique identifier for the webset

object: Literal['webset']

status: WebsetStatus = Field(..., title='WebsetStatus')

The status of the webset

external_id: Optional[str] = Field(..., alias='externalId')

The external identifier for the webset

searches: List[WebsetSearch]

The searches that have been performed on the webset.

enrichments: List[WebsetEnrichment]

The Enrichments to apply to the Webset Items.

metadata: Optional[Dict[str, Any]] = {}

Set of key-value pairs you want to associate with this object.

created_at: datetime = Field(..., alias='createdAt')

The date and time the webset was created

updated_at: datetime = Field(..., alias='updatedAt')

The date and time the webset was updated

class WebsetArticleEntity(ExaBaseModel):

type: Literal['article']

class WebsetCompanyEntity(ExaBaseModel):

type: Literal['company']

class WebsetCreatedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['webset.created']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetCustomEntity(ExaBaseModel):

type: Literal['custom']

description: constr(min_length=2)

When you decide to use a custom entity, this is the description of the entity.

The entity represents what type of results the Webset will return. For example, if you want results to be Job Postings, you might use "Job Postings" as the entity description.

class WebsetDeletedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['webset.deleted']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetEnrichment(ExaBaseModel):

The unique identifier for the enrichment

object: Literal['webset_enrichment']

status: WebsetEnrichmentStatus = Field(..., title='WebsetEnrichmentStatus')

The status of the enrichment

webset_id: str = Field(..., alias='websetId')

The unique identifier for the Webset this enrichment belongs to.

title: Optional[str] = None

The title of the enrichment.

This will be automatically generated based on the description and format.

The description of the enrichment task provided during the creation of the enrichment.

format: Optional[WebsetEnrichmentFormat]

The format of the enrichment response.

options: Optional[List[WebsetEnrichmentOption]] = Field(

..., title='WebsetEnrichmentOptions'

When the format is options, the different options for the enrichment agent to choose from.

instructions: Optional[str] = None

The instructions for the enrichment Agent.

This will be automatically generated based on the description and format.

metadata: Optional[Dict[str, Any]] = {}

The metadata of the enrichment

created_at: datetime = Field(..., alias='createdAt')

The date and time the enrichment was created

updated_at: datetime = Field(..., alias='updatedAt')

The date and time the enrichment was updated

class WebsetEnrichmentFormat(Enum):

class WebsetEnrichmentOption(Option):

class WebsetEnrichmentStatus(Enum):

The status of the enrichment

canceled = 'canceled'

completed = 'completed'

class WebsetIdleEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['webset.idle']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetItem(ExaBaseModel):

The unique identifier for the Webset Item

object: Literal['webset_item']

The source of the Item

source_id: str = Field(..., alias='sourceId')

The unique identifier for the source

webset_id: str = Field(..., alias='websetId')

The unique identifier for the Webset this Item belongs to.

WebsetItemPersonProperties,

WebsetItemCompanyProperties,

WebsetItemArticleProperties,

WebsetItemResearchPaperProperties,

WebsetItemCustomProperties,

The properties of the Item

evaluations: List[WebsetItemEvaluation]

The criteria evaluations of the item

enrichments: List[EnrichmentResult]

The enrichments results of the Webset item

created_at: datetime = Field(..., alias='createdAt')

The date and time the item was created

updated_at: datetime = Field(..., alias='updatedAt')

The date and time the item was last updated

class WebsetItemArticleProperties(ExaBaseModel):

type: Literal['article']

The URL of the article

Short description of the relevance of the article

content: Optional[str] = None

The text content for the article

article: WebsetItemArticlePropertiesFields = Field(

..., title='WebsetItemArticlePropertiesFields'

class WebsetItemArticlePropertiesFields(ExaBaseModel):

author: Optional[str] = None

The author(s) of the article

published_at: Optional[str] = Field(..., alias='publishedAt')

The date and time the article was published

class WebsetItemCompanyProperties(ExaBaseModel):

type: Literal['company']

The URL of the company website

Short description of the relevance of the company

content: Optional[str] = None

The text content of the company website

company: WebsetItemCompanyPropertiesFields = Field(

..., title='WebsetItemCompanyPropertiesFields'

class WebsetItemCompanyPropertiesFields(ExaBaseModel):

The name of the company

location: Optional[str] = None

The main location of the company

employees: Optional[float] = None

The number of employees of the company

industry: Optional[str] = None

The industry of the company

about: Optional[str] = None

A short description of the company

logo_url: Optional[AnyUrl] = Field(..., alias='logoUrl')

The logo URL of the company

class WebsetItemCreatedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['webset.item.created']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetItemCustomProperties(ExaBaseModel):

type: Literal['custom']

Short description of the Item

content: Optional[str] = None

The text content of the Item

custom: WebsetItemCustomPropertiesFields = Field(

..., title='WebsetItemCustomPropertiesFields'

class WebsetItemCustomPropertiesFields(ExaBaseModel):

author: Optional[str] = None

The author(s) of the website

published_at: Optional[str] = Field(..., alias='publishedAt')

The date and time the website was published

class WebsetItemEnrichedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['webset.item.enriched']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetItemEvaluation(ExaBaseModel):

The description of the criterion

The reasoning for the result of the evaluation

The satisfaction of the criterion

references: List[Reference] = []

The references used to generate the result. `null` if the evaluation is not yet completed.

class WebsetItemPersonProperties(ExaBaseModel):

type: Literal['person']

The URL of the person profile

Short description of the relevance of the person

person: WebsetItemPersonPropertiesFields = Field(

..., title='WebsetItemPersonPropertiesFields'

class WebsetItemPersonPropertiesFields(ExaBaseModel):

The name of the person

location: Optional[str] = None

The location of the person

position: Optional[str] = None

The current work position of the person

picture_url: Optional[AnyUrl] = Field(..., alias='pictureUrl')

The image URL of the person

class WebsetItemResearchPaperProperties(ExaBaseModel):

type: Literal['research_paper']

The URL of the research paper

Short description of the relevance of the research paper

content: Optional[str] = None

The text content of the research paper

research_paper: WebsetItemResearchPaperPropertiesFields = Field(

..., alias='researchPaper', title='WebsetItemResearchPaperPropertiesFields'

class WebsetItemResearchPaperPropertiesFields(ExaBaseModel):

author: Optional[str] = None

The author(s) of the research paper

published_at: Optional[str] = Field(..., alias='publishedAt')

The date and time the research paper was published

class WebsetPausedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['webset.paused']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetPersonEntity(ExaBaseModel):

type: Literal['person']

class WebsetResearchPaperEntity(ExaBaseModel):

type: Literal['research_paper']

class WebsetSearch(ExaBaseModel):

The unique identifier for the search

object: Literal['webset_search']

status: WebsetSearchStatus = Field(..., title='WebsetSearchStatus')

The status of the search

query: constr(min_length=1)

The query used to create the search.

WebsetResearchPaperEntity,

The entity the search will return results for.

When no entity is provided during creation, we will automatically select the best entity based on the query.

criteria: List[Criterion]

The criteria the search will use to evaluate the results. If not provided, we will automatically generate them for you.

count: confloat(ge=1.0)

The number of results the search will attempt to find. The actual number of results may be less than this number depending on the search complexity.

The progress of the search

metadata: Optional[Dict[str, Any]] = {}

Set of key-value pairs you want to associate with this object.

canceled_at: Optional[datetime] = Field(..., alias='canceledAt')

The date and time the search was canceled

canceled_reason: Optional[CanceledReason] = Field(..., alias='canceledReason')

The reason the search was canceled

created_at: datetime = Field(..., alias='createdAt')

The date and time the search was created

updated_at: datetime = Field(..., alias='updatedAt')

The date and time the search was updated

class WebsetSearchBehaviour(Enum):

The behaviour of the Search when it is added to a Webset.

- `override`: the search will reuse the existing Items found in the Webset and evaluate them against the new criteria. Any Items that don't match the new criteria will be discarded.

override = 'override'

class WebsetSearchCanceledEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['[webset.search](http://webset.search).canceled']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetSearchCompletedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['[webset.search](http://webset.search).completed']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetSearchCreatedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['[webset.search](http://webset.search).created']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetSearchStatus(Enum):

The status of the search

completed = 'completed'

canceled = 'canceled'

class WebsetSearchUpdatedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['[webset.search](http://webset.search).updated']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetStatus(Enum):

The status of the webset

class GetWebsetResponse(Webset):

items: Optional[List[WebsetItem]] = None

When expand query parameter contains `items`, this will contain the items in the webset

The following text is a Git repository with code. The structure of the text are sections that begin with ----, followed by a single line containing the file path and file name, followed by a variable amount of lines containing the file contents. The text representing the Git repository ends when the symbols --END-- are encounted. Any further text beyond --END-- are meant to be interpreted as instructions using the aforementioned Git repository as context.

[client.py](http://client.py)

from **future** import annotations

from datetime import datetime

from typing import List, Optional, Literal, Dict, Any, Union

CreateWebsetParameters,

from .core.base import WebsetsBaseClient

from .items import WebsetItemsClient

from .searches import WebsetSearchesClient

from .enrichments import WebsetEnrichmentsClient

from .webhooks import WebsetWebhooksClient

class WebsetsClient(WebsetsBaseClient):

"""Client for managing Websets."""

def **init**(self, client):

super().\__init_\_(client)

self.items = WebsetItemsClient(client)

self.searches = WebsetSearchesClient(client)

self.enrichments = WebsetEnrichmentsClient(client)

self.webhooks = WebsetWebhooksClient(client)

def create(self, params: Union[Dict[str, Any], CreateWebsetParameters]) -\> Webset:

"""Create a new Webset.

params (CreateWebsetParameters): The parameters for creating a webset.

Webset: The created webset.

response = self.request("/v0/websets", data=params)

return Webset.model_validate(response)

def get(self, id: str, \*, expand: Optional[List[Literal["items"]]] = None) -\> GetWebsetResponse:

"""Get a Webset by ID.

id (str): The id or externalId of the Webset.

expand (List[Literal["items"]], optional): Expand the response with specified resources.

Allowed values: ["items"]

GetWebsetResponse: The retrieved webset.

params = {"expand": expand} if expand else {}

response = self.request(f"/v0/websets/{id}", params=params, method="GET")

return GetWebsetResponse.model_validate(response)

def list(self, \*, cursor: Optional[str] = None, limit: Optional[int] = None) -\> ListWebsetsResponse:

cursor (str, optional): The cursor to paginate through the results.

limit (int, optional): The number of results to return (max 200).

ListWebsetsResponse: List of websets.

params = {k: v for k, v in {"cursor": cursor, "limit": limit}.items() if v is not None}

response = self.request("/v0/websets", params=params, method="GET")

return ListWebsetsResponse.model_validate(response)

def update(self, id: str, params: Union[Dict[str, Any], UpdateWebsetRequest]) -\> Webset:

id (str): The id or externalId of the Webset.

params (UpdateWebsetRequest): The parameters for updating a webset.

Webset: The updated webset.

response = self.request(f"/v0/websets/{id}", data=params, method="POST")

return Webset.model_validate(response)

def delete(self, id: str) -\> Webset:

id (str): The id or externalId of the Webset.

Webset: The deleted webset.

response = self.request(f"/v0/websets/{id}", method="DELETE")

return Webset.model_validate(response)

def cancel(self, id: str) -\> Webset:

"""Cancel a running Webset.

id (str): The id or externalId of the Webset.

Webset: The canceled webset.

response = self.request(f"/v0/websets/{id}/cancel", method="POST")

return Webset.model_validate(response)

def wait_until_idle(self, id: str, \*, timeout: int = 3600, poll_interval: int = 5) -\> Webset:

"""Wait until a Webset is idle.

id (str): The id or externalId of the Webset.

timeout (int, optional): Maximum time to wait in seconds. Defaults to 3600.

poll_interval (int, optional): Time to wait between polls in seconds. Defaults to 5.

Webset: The webset once it's idle.

TimeoutError: If the webset does not become idle within the timeout period.

start_time = time.time()

webset = self.get(id)

if webset.status == WebsetStatus.idle.value:

if time.time() - start_time \> timeout:

raise TimeoutError(f"Webset {id} did not become idle within {timeout} seconds")

time.sleep(poll_interval)

from .client import WebsetsClient

[types.py](http://types.py)

from **future** import annotations

from datetime import datetime

from enum import Enum

from typing import Any, Dict, List, Literal, Optional, Union

from pydantic import AnyUrl, Field, confloat, constr

from .core.base import ExaBaseModel

class CanceledReason(Enum):

The reason the search was canceled

webset_deleted = 'webset_deleted'

webset_canceled = 'webset_canceled'

class CreateCriterionParameters(ExaBaseModel):

description: constr(min_length=1)

The description of the criterion

class CreateEnrichmentParameters(ExaBaseModel):

description: constr(min_length=1)

Provide a description of the enrichment task you want to perform to each Webset Item.

format: Optional[Format] = None

Format of the enrichment response.

We automatically select the best format based on the description. If you want to explicitly specify the format, you can do so here.

options: Optional[List[Option]] = Field(None, max_items=20, min_items=1)

When the format is options, the different options for the enrichment agent to choose from.

metadata: Optional[Dict[str, Any]] = None

Set of key-value pairs you want to associate with this object.

class CreateWebhookParameters(ExaBaseModel):

events: List[EventType] = Field(..., max_items=12, min_items=1)

The events to trigger the webhook

The URL to send the webhook to

metadata: Optional[Dict[str, Any]] = None

Set of key-value pairs you want to associate with this object.

class CreateWebsetParameters(ExaBaseModel):

Create initial search for the Webset.

enrichments: Optional[List[CreateEnrichmentParameters]] = Field(None, max_items=10)

Add Enrichments for the Webset.

external_id: Optional[str] = Field(None, alias='externalId')

The external identifier for the webset.

You can use this to reference the Webset by your own internal identifiers.

metadata: Optional[Dict[str, Any]] = None

Set of key-value pairs you want to associate with this object.

class CreateWebsetSearchParameters(ExaBaseModel):

count: confloat(ge=1.0)

Number of Items the Search will attempt to find.

The actual number of Items found may be less than this number depending on the query complexity.

query: constr(min_length=1) = Field(

'Marketing agencies based in the US, that focus on consumer products. Get brands worked with and city'

Query describing what you are looking for.

Any URL provided will be crawled and used as context for the search.

WebsetResearchPaperEntity,

Entity the Webset will return results for.

It is not required to provide it, we automatically detect the entity from all the information provided in the query.

criteria: Optional[List[CreateCriterionParameters]] = Field(

None, max_items=5, min_items=1

Criteria every item is evaluated against.

It's not required to provide your own criteria, we automatically detect the criteria from all the information provided in the query.

behaviour: Optional[WebsetSearchBehaviour] = Field(

'override', title='WebsetSearchBehaviour'

The behaviour of the Search when it is added to a Webset.

- `override`: the search will reuse the existing Items found in the Webset and evaluate them against the new criteria. Any Items that don't match the new criteria will be discarded.

metadata: Optional[Dict[str, Any]] = None

Set of key-value pairs you want to associate with this object.

class Criterion(ExaBaseModel):

description: constr(min_length=1)

The description of the criterion

success_rate: confloat(ge=0.0, le=100.0) = Field(..., alias='successRate')

Value between 0 and 100 representing the percentage of results that meet the criterion.

class EnrichmentResult(ExaBaseModel):

object: Literal['enrichment_result']

format: WebsetEnrichmentFormat

result: Optional[List[str]] = None

The result of the enrichment. None if the enrichment wasn't successful.

reasoning: Optional[str] = None

The reasoning for the result when an Agent is used.

references: List[Reference]

The references used to generate the result.

enrichment_id: str = Field(..., alias='enrichmentId')

The id of the Enrichment that generated the result

class EventType(Enum):

webset_created = 'webset.created'

webset_deleted = 'webset.deleted'

webset_paused = 'webset.paused'

webset_idle = 'webset.idle'

webset_search_created = '[webset.search](http://webset.search).created'

webset_search_canceled = '[webset.search](http://webset.search).canceled'

webset_search_completed = '[webset.search](http://webset.search).completed'

webset_search_updated = '[webset.search](http://webset.search).updated'

webset_export_created = 'webset.export.created'

webset_export_completed = 'webset.export.completed'

webset_item_created = 'webset.item.created'

webset_item_enriched = 'webset.item.enriched'

Format of the enrichment response.

We automatically select the best format based on the description. If you want to explicitly specify the format, you can do so here.

class ListEventsResponse(ExaBaseModel):

WebsetItemCreatedEvent,

WebsetItemEnrichedEvent,

WebsetSearchCreatedEvent,

WebsetSearchUpdatedEvent,

WebsetSearchCanceledEvent,

WebsetSearchCompletedEvent,

] = Field(..., discriminator='type')

has_more: bool = Field(..., alias='hasMore')

Whether there are more results to paginate through

next_cursor: Optional[str] = Field(..., alias='nextCursor')

The cursor to paginate through the next set of results

class ListWebhookAttemptsResponse(ExaBaseModel):

data: List[WebhookAttempt]

The list of webhook attempts

has_more: bool = Field(..., alias='hasMore')

Whether there are more results to paginate through

next_cursor: Optional[str] = Field(..., alias='nextCursor')

The cursor to paginate through the next set of results

class ListWebhooksResponse(ExaBaseModel):

has_more: bool = Field(..., alias='hasMore')

Whether there are more results to paginate through

next_cursor: Optional[str] = Field(..., alias='nextCursor')

The cursor to paginate through the next set of results

class ListWebsetItemResponse(ExaBaseModel):

data: List[WebsetItem]

The list of webset items

has_more: bool = Field(..., alias='hasMore')

Whether there are more Items to paginate through

next_cursor: Optional[str] = Field(..., alias='nextCursor')

The cursor to paginate through the next set of Items

class ListWebsetsResponse(ExaBaseModel):

has_more: bool = Field(..., alias='hasMore')

Whether there are more results to paginate through

next_cursor: Optional[str] = Field(..., alias='nextCursor')

The cursor to paginate through the next set of results

class Option(ExaBaseModel):

The label of the option

class Progress(ExaBaseModel):

The progress of the search

The number of results found so far

completion: confloat(ge=0.0, le=100.0)

The completion percentage of the search

class Reference(ExaBaseModel):

title: Optional[str] = None

The title of the reference

snippet: Optional[str] = None

The relevant snippet of the reference content

The URL of the reference

class Satisfied(Enum):

The satisfaction of the criterion

class Search(ExaBaseModel):

Create initial search for the Webset.

query: constr(min_length=1) = Field(

'Marketing agencies based in the US, that focus on consumer products.'

Use this to describe what you are looking for.

Any URL provided will be crawled and used as context for the search.

count: Optional[confloat(ge=1.0)] = 10

Number of Items the Webset will attempt to find.

The actual number of Items found may be less than this number depending on the search complexity.

WebsetResearchPaperEntity,

] = Field(None, discriminator='type')

Entity the Webset will return results for.

It is not required to provide it, we automatically detect the entity from all the information provided in the query. Only use this when you need more fine control.

criteria: Optional[List[CreateCriterionParameters]] = Field(

None, max_items=5, min_items=1

Criteria every item is evaluated against.

It's not required to provide your own criteria, we automatically detect the criteria from all the information provided in the query. Only use this when you need more fine control.

The source of the Item

class UpdateWebhookParameters(ExaBaseModel):

events: Optional[List[EventType]] = Field(None, max_items=12, min_items=1)

The events to trigger the webhook

url: Optional[AnyUrl] = None

The URL to send the webhook to

metadata: Optional[Dict[str, Any]] = None

Set of key-value pairs you want to associate with this object.

class UpdateWebsetRequest(ExaBaseModel):

metadata: Optional[Dict[str, str]] = None

Set of key-value pairs you want to associate with this object.

class Webhook(ExaBaseModel):

The unique identifier for the webhook

object: Literal['webhook']

status: WebhookStatus = Field(..., title='WebhookStatus')

The status of the webhook

events: List[EventType] = Field(..., min_items=1)

The events to trigger the webhook

The URL to send the webhook to

secret: Optional[str] = None

The secret to verify the webhook signature. Only returned on Webhook creation.

metadata: Optional[Dict[str, Any]] = {}

The metadata of the webhook

created_at: datetime = Field(..., alias='createdAt')

The date and time the webhook was created

updated_at: datetime = Field(..., alias='updatedAt')

The date and time the webhook was last updated

class WebhookAttempt(ExaBaseModel):

The unique identifier for the webhook attempt

object: Literal['webhook_attempt']

event_id: str = Field(..., alias='eventId')

The unique identifier for the event

event_type: EventType = Field(..., alias='eventType')

webhook_id: str = Field(..., alias='webhookId')

The unique identifier for the webhook

The URL that was used during the attempt

Whether the attempt was successful

response_headers: Dict[str, Any] = Field(..., alias='responseHeaders')

The headers of the response

response_body: str = Field(..., alias='responseBody')

The body of the response

response_status_code: float = Field(..., alias='responseStatusCode')

The status code of the response

The attempt number of the webhook

attempted_at: datetime = Field(..., alias='attemptedAt')

The date and time the webhook attempt was made

class WebhookStatus(Enum):

The status of the webhook

inactive = 'inactive'

class Webset(ExaBaseModel):

The unique identifier for the webset

object: Literal['webset']

status: WebsetStatus = Field(..., title='WebsetStatus')

The status of the webset

external_id: Optional[str] = Field(..., alias='externalId')

The external identifier for the webset

searches: List[WebsetSearch]

The searches that have been performed on the webset.

enrichments: List[WebsetEnrichment]

The Enrichments to apply to the Webset Items.

metadata: Optional[Dict[str, Any]] = {}

Set of key-value pairs you want to associate with this object.

created_at: datetime = Field(..., alias='createdAt')

The date and time the webset was created

updated_at: datetime = Field(..., alias='updatedAt')

The date and time the webset was updated

class WebsetArticleEntity(ExaBaseModel):

type: Literal['article']

class WebsetCompanyEntity(ExaBaseModel):

type: Literal['company']

class WebsetCreatedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['webset.created']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetCustomEntity(ExaBaseModel):

type: Literal['custom']

description: constr(min_length=2)

When you decide to use a custom entity, this is the description of the entity.

The entity represents what type of results the Webset will return. For example, if you want results to be Job Postings, you might use "Job Postings" as the entity description.

class WebsetDeletedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['webset.deleted']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetEnrichment(ExaBaseModel):

The unique identifier for the enrichment

object: Literal['webset_enrichment']

status: WebsetEnrichmentStatus = Field(..., title='WebsetEnrichmentStatus')

The status of the enrichment

webset_id: str = Field(..., alias='websetId')

The unique identifier for the Webset this enrichment belongs to.

title: Optional[str] = None

The title of the enrichment.

This will be automatically generated based on the description and format.

The description of the enrichment task provided during the creation of the enrichment.

format: Optional[WebsetEnrichmentFormat]

The format of the enrichment response.

options: Optional[List[WebsetEnrichmentOption]] = Field(

..., title='WebsetEnrichmentOptions'

When the format is options, the different options for the enrichment agent to choose from.

instructions: Optional[str] = None

The instructions for the enrichment Agent.

This will be automatically generated based on the description and format.

metadata: Optional[Dict[str, Any]] = {}

The metadata of the enrichment

created_at: datetime = Field(..., alias='createdAt')

The date and time the enrichment was created

updated_at: datetime = Field(..., alias='updatedAt')

The date and time the enrichment was updated

class WebsetEnrichmentFormat(Enum):

class WebsetEnrichmentOption(Option):

class WebsetEnrichmentStatus(Enum):

The status of the enrichment

canceled = 'canceled'

completed = 'completed'

class WebsetIdleEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['webset.idle']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetItem(ExaBaseModel):

The unique identifier for the Webset Item

object: Literal['webset_item']

The source of the Item

source_id: str = Field(..., alias='sourceId')

The unique identifier for the source

webset_id: str = Field(..., alias='websetId')

The unique identifier for the Webset this Item belongs to.

WebsetItemPersonProperties,

WebsetItemCompanyProperties,

WebsetItemArticleProperties,

WebsetItemResearchPaperProperties,

WebsetItemCustomProperties,

The properties of the Item

evaluations: List[WebsetItemEvaluation]

The criteria evaluations of the item

enrichments: List[EnrichmentResult]

The enrichments results of the Webset item

created_at: datetime = Field(..., alias='createdAt')

The date and time the item was created

updated_at: datetime = Field(..., alias='updatedAt')

The date and time the item was last updated

class WebsetItemArticleProperties(ExaBaseModel):

type: Literal['article']

The URL of the article

Short description of the relevance of the article

content: Optional[str] = None

The text content for the article

article: WebsetItemArticlePropertiesFields = Field(

..., title='WebsetItemArticlePropertiesFields'

class WebsetItemArticlePropertiesFields(ExaBaseModel):

author: Optional[str] = None

The author(s) of the article

published_at: Optional[str] = Field(..., alias='publishedAt')

The date and time the article was published

class WebsetItemCompanyProperties(ExaBaseModel):

type: Literal['company']

The URL of the company website

Short description of the relevance of the company

content: Optional[str] = None

The text content of the company website

company: WebsetItemCompanyPropertiesFields = Field(

..., title='WebsetItemCompanyPropertiesFields'

class WebsetItemCompanyPropertiesFields(ExaBaseModel):

The name of the company

location: Optional[str] = None

The main location of the company

employees: Optional[float] = None

The number of employees of the company

industry: Optional[str] = None

The industry of the company

about: Optional[str] = None

A short description of the company

logo_url: Optional[AnyUrl] = Field(..., alias='logoUrl')

The logo URL of the company

class WebsetItemCreatedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['webset.item.created']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetItemCustomProperties(ExaBaseModel):

type: Literal['custom']

Short description of the Item

content: Optional[str] = None

The text content of the Item

custom: WebsetItemCustomPropertiesFields = Field(

..., title='WebsetItemCustomPropertiesFields'

class WebsetItemCustomPropertiesFields(ExaBaseModel):

author: Optional[str] = None

The author(s) of the website

published_at: Optional[str] = Field(..., alias='publishedAt')

The date and time the website was published

class WebsetItemEnrichedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['webset.item.enriched']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetItemEvaluation(ExaBaseModel):

The description of the criterion

The reasoning for the result of the evaluation

The satisfaction of the criterion

references: List[Reference] = []

The references used to generate the result. `null` if the evaluation is not yet completed.

class WebsetItemPersonProperties(ExaBaseModel):

type: Literal['person']

The URL of the person profile

Short description of the relevance of the person

person: WebsetItemPersonPropertiesFields = Field(

..., title='WebsetItemPersonPropertiesFields'

class WebsetItemPersonPropertiesFields(ExaBaseModel):

The name of the person

location: Optional[str] = None

The location of the person

position: Optional[str] = None

The current work position of the person

picture_url: Optional[AnyUrl] = Field(..., alias='pictureUrl')

The image URL of the person

class WebsetItemResearchPaperProperties(ExaBaseModel):

type: Literal['research_paper']

The URL of the research paper

Short description of the relevance of the research paper

content: Optional[str] = None

The text content of the research paper

research_paper: WebsetItemResearchPaperPropertiesFields = Field(

..., alias='researchPaper', title='WebsetItemResearchPaperPropertiesFields'

class WebsetItemResearchPaperPropertiesFields(ExaBaseModel):

author: Optional[str] = None

The author(s) of the research paper

published_at: Optional[str] = Field(..., alias='publishedAt')

The date and time the research paper was published

class WebsetPausedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['webset.paused']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetPersonEntity(ExaBaseModel):

type: Literal['person']

class WebsetResearchPaperEntity(ExaBaseModel):

type: Literal['research_paper']

class WebsetSearch(ExaBaseModel):

The unique identifier for the search

object: Literal['webset_search']

status: WebsetSearchStatus = Field(..., title='WebsetSearchStatus')

The status of the search

query: constr(min_length=1)

The query used to create the search.

WebsetResearchPaperEntity,

The entity the search will return results for.

When no entity is provided during creation, we will automatically select the best entity based on the query.

criteria: List[Criterion]

The criteria the search will use to evaluate the results. If not provided, we will automatically generate them for you.

count: confloat(ge=1.0)

The number of results the search will attempt to find. The actual number of results may be less than this number depending on the search complexity.

The progress of the search

metadata: Optional[Dict[str, Any]] = {}

Set of key-value pairs you want to associate with this object.

canceled_at: Optional[datetime] = Field(..., alias='canceledAt')

The date and time the search was canceled

canceled_reason: Optional[CanceledReason] = Field(..., alias='canceledReason')

The reason the search was canceled

created_at: datetime = Field(..., alias='createdAt')

The date and time the search was created

updated_at: datetime = Field(..., alias='updatedAt')

The date and time the search was updated

class WebsetSearchBehaviour(Enum):

The behaviour of the Search when it is added to a Webset.

- `override`: the search will reuse the existing Items found in the Webset and evaluate them against the new criteria. Any Items that don't match the new criteria will be discarded.

override = 'override'

class WebsetSearchCanceledEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['[webset.search](http://webset.search).canceled']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetSearchCompletedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['[webset.search](http://webset.search).completed']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetSearchCreatedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['[webset.search](http://webset.search).created']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetSearchStatus(Enum):

The status of the search

completed = 'completed'

canceled = 'canceled'

class WebsetSearchUpdatedEvent(ExaBaseModel):

The unique identifier for the event

object: Literal['event']

type: Literal['[webset.search](http://webset.search).updated']

created_at: datetime = Field(..., alias='createdAt')

The date and time the event was created

class WebsetStatus(Enum):

The status of the webset

class GetWebsetResponse(Webset):

items: Optional[List[WebsetItem]] = None

When expand query parameter contains `items`, this will contain the items in the webset

searches/[client.py](http://client.py)

from **future** import annotations

from typing import Dict, Any, Union

from ..types import (

CreateWebsetSearchParameters,

from ..core.base import WebsetsBaseClient

class WebsetSearchesClient(WebsetsBaseClient):

"""Client for managing Webset Searches."""

def **init**(self, client):

super().\__init_\_(client)

def create(self, webset_id: str, params: Union[Dict[str, Any], CreateWebsetSearchParameters]) -\> WebsetSearch:

"""Create a new Search for the Webset.

webset_id (str): The id of the Webset.

params (CreateWebsetSearchParameters): The parameters for creating a search.

WebsetSearch: The created search.

response = self.request(f"/v0/websets/{webset_id}/searches", data=params)

return WebsetSearch.model_validate(response)

def get(self, webset_id: str, id: str) -\> WebsetSearch:

"""Get a Search by ID.

webset_id (str): The id of the Webset.

id (str): The id of the Search.

WebsetSearch: The retrieved search.

response = self.request(f"/v0/websets/{webset_id}/searches/{id}", method="GET")

return WebsetSearch.model_validate(response)

def cancel(self, webset_id: str, id: str) -\> WebsetSearch:

"""Cancel a running Search.

webset_id (str): The id of the Webset.

id (str): The id of the Search.

WebsetSearch: The canceled search.

response = self.request(f"/v0/websets/{webset_id}/searches/{id}/cancel", method="POST")

return WebsetSearch.model_validate(response)

searches/\__init_\_.py

from .client import WebsetSearchesClient

**all** = ["WebsetSearchesClient"]

from ..types import \*

---

## Get contents

**URL:** llms-txt#get-contents

Source: https://docs.exa.ai/reference/get-contents

post /contents
Get the full page contents, summaries, and metadata for a list of URLs.

Returns instant results from our cache, with automatic live crawling as fallback for uncached pages.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

---

## Context (Exa Code)

**URL:** llms-txt#context-(exa-code)

**Contents:**
- Overview
- Example Use Cases
- Response Format
- Parameters
  - `query` (required)
  - `tokensNum` (optional)
- Integration Examples

Source: https://docs.exa.ai/reference/context

Get relevant code snippets and examples from open source libraries and repositories. Search through code repositories to find contextual examples that help developers understand how specific libraries, frameworks, or programming concepts are implemented in practice.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

The Context API (also called **Exa Code**) is a powerful tool for coding agents that need fast, efficient web context. It searches over billions of GitHub repos, docs pages, Stack Overflow posts, and more to find the perfect, token-efficient context that agents need to code correctly.

This endpoint helps eliminate hallucinations in coding agents by providing real, working code examples from the open source community.

The Context API excels at finding practical code examples for:

* **Framework usage**: "use Exa search in python and request `livecrawl=\"preferred\"` with a 12s `livecrawlTimeout`"
* **API syntax**: "use correct syntax for vercel ai sdk to call gpt-5 nano asking it how are you"
* **Development setup**: "how to set up a reproducible Nix Rust development environment"
* **Library implementation**: "React hooks for state management examples"
* **Best practices**: "authentication patterns in NextJS applications"

**Basic Code Search**

**Example Response:**

\nimport React, {\n  useState\n} from 'react';\n\nfunction InputField() {\n  const [name, setName] = useState('');\n\n  const handleChange = (event) => {\n    setName(event.target.value);\n  }\n\n  return (\n    <div>\n      Name:\n      <input onChange={handleChange} />\n      Entered name: {name}\n    </div>\n  );\n}\n\nexport default InputField;\n\nimport { useState } from 'react';\n\nfunction Example() {\n  const [count, setCount] = useState(0);\n\n  return (\n    <div>\n      <p>You clicked {count} times</p>\n      <button onClick={() => setCount(count + 1)}>\n        Click me\n      </button>\n    </div>\n  );\n}\n\nimport { useState } from \"react\";\n\nconst useCounter = () => {\n  const [count, setCount] = useState(0);\n\n  const increment = () => {\n    setCount((prevCount) => prevCount + 1);\n  };\n\n  const decrement = () => {\n    setCount((prevCount) => prevCount - 1);\n  };\n\n  return { count, increment, decrement };\n};\n\nexport default useCounter;\n`

**Library Usage Examples**

**Framework Setup and Configuration**

The API returns a JSON response with the following structure:

### `query` (required)

* **Type**: `string`
* **Description**: Search query to find relevant code snippets
* **Example**: `"how to use React hooks for state management"`
* **Min Length**: 1 character
* **Max Length**: 2000 characters

### `tokensNum` (optional)

* **Type**: `string | integer`
* **Default**: `"dynamic"`
* **Description**: Token limit for the response
* **Options**:
  * `"dynamic"`: Automatically determine optimal response length
  * `50-100000`: Specific number of tokens to return (5000 is good default for most queries, and use 10000 when 5k doesn't provide enough context)

* Use `"dynamic"` for most queries to get optimal, token-efficient responses
* Specify exact token counts when you need precise output length control
* Higher token counts return more comprehensive examples but cost more

## Integration Examples

**Using with Python**

```python  theme={null}
import requests

def get_code_context(query, tokens="dynamic"):
    response = requests.post(
        "https://api.exa.ai/context",
        headers={
            "Content-Type": "application/json",
            "x-api-key": "YOUR_API_KEY"
        },
        json={
            "query": query,
            "tokensNum": tokens
        }
    )
    
    result = response.json()
    return result["response"]

**Examples:**

Example 1 (unknown):
```unknown
**Example Response:**
```

Example 2 (unknown):
```unknown
**Library Usage Examples**
```

Example 3 (unknown):
```unknown
**Framework Setup and Configuration**
```

Example 4 (unknown):
```unknown
## Response Format

The API returns a JSON response with the following structure:
```

---

## we can already get things like role and education, but we need to get the name and email this time

**URL:** llms-txt#we-can-already-get-things-like-role-and-education,-but-we-need-to-get-the-name-and-email-this-time

def get_name_from_contents(contents):
    content = f"""I'm going to give you some information I found online about a person. Based on the provided information, figure out their full name.
    Some examples are \"Sarah Chieng\" or \"Will Bryk.\" You should answer only in the example format, or return \"not sure\" if you're not sure. Do not return any other text. Here is the information I have scraped: {contents}."""
    return get_openai_response(content)

def get_email_from_contents(contents):
    content = f"""I'm going to give you some information I found online about a person. Based on the provided information, figure out their email.
    Some examples are \"[[email protected]](/cdn-cgi/l/email-protection)\" or \"[[email protected]](/cdn-cgi/l/email-protection).\" You should answer only in the example format, or return \"not sure\" if you're not sure. Do not return any other text. Here is the information I have scraped: {contents}."""
    return get_openai_response(content)

---

## Find similar with both text and highlights

**URL:** llms-txt#find-similar-with-both-text-and-highlights

**Contents:**
  - Input Parameters:
  - Returns:
- `answer` Method
  - Input Example:

similar_with_text_and_highlights = exa.find_similar_and_contents(
    "https://example.com/article",
    text=True,
    highlights=True,
    num_results=2
)
Python Python theme={null}
response = exa.answer("What is the capital of France?")

print(response.answer)       # e.g. "Paris"
print(response.citations)    # list of citations used

**Examples:**

Example 1 (unknown):
```unknown
### Input Parameters:

| Parameter               | Type                                              | Description                                                                                   | Default  |
| ----------------------- | ------------------------------------------------- | --------------------------------------------------------------------------------------------- | -------- |
| url                     | str                                               | The URL of the webpage to find similar results for.                                           | Required |
| text                    | Union\[TextContentsOptions, Literal\[True]]       | If provided, includes the full text of the content in the results.                            | None     |
| highlights              | Union\[HighlightsContentsOptions, Literal\[True]] | If provided, includes highlights of the content in the results.                               | None     |
| num\_results            | Optional\[int]                                    | Number of similar results to return.                                                          | None     |
| include\_domains        | Optional\[List\[str]]                             | List of domains to include in the search.                                                     | None     |
| exclude\_domains        | Optional\[List\[str]]                             | List of domains to exclude from the search.                                                   | None     |
| start\_crawl\_date      | Optional\[str]                                    | Results will only include links **crawled** after this date.                                  | None     |
| end\_crawl\_date        | Optional\[str]                                    | Results will only include links **crawled** before this date.                                 | None     |
| start\_published\_date  | Optional\[str]                                    | Results will only include links with a **published** date after this date.                    | None     |
| end\_published\_date    | Optional\[str]                                    | Results will only include links with a **published** date before this date.                   | None     |
| exclude\_source\_domain | Optional\[bool]                                   | If true, excludes results from the same domain as the input URL.                              | None     |
| category                | Optional\[str]                                    | A data category to focus on when searching, with higher comprehensivity and data cleanliness. | None     |
| context                 | Union\[ContextContentsOptions, Literal\[True]]    | If true, concatentates results into a context string.                                         | None     |

### Returns:

The return type depends on the combination of `text` and `highlights` parameters:

* `SearchResponse[ResultWithText]`: When only `text` is provided or when neither `text` nor `highlights` is provided (defaults to including text).
* `SearchResponse[ResultWithHighlights]`: When only `highlights` is provided.
* `SearchResponse[ResultWithTextAndHighlights]`: When both `text` and `highlights` are provided.

The response contains similar results and an optional autoprompt string.

Note: If neither `text` nor `highlights` is specified, the method defaults to including the full text content.

## `answer` Method

Generate an answer to a query using Exa's search and LLM capabilities. This method returns an AnswerResponse with the answer and a list of citations. You can optionally retrieve the full text of each citation by setting text=True.

### Input Example:
```

---

## text=True

**URL:** llms-txt#text=true

---

## context={"max_characters": 20000}

**URL:** llms-txt#context={"max_characters":-20000}

---

## Option 2: Use context string for RAG (single string with total max characters)

**URL:** llms-txt#option-2:-use-context-string-for-rag-(single-string-with-total-max-characters)

---

## After - more resilient with cache fallback

**URL:** llms-txt#after---more-resilient-with-cache-fallback

result = exa.get_contents(urls, livecrawl="preferred")
```

This change maintains your preference for fresh content while improving reliability.

---

## and the retrieval of the result highlights.

**URL:** llms-txt#and-the-retrieval-of-the-result-highlights.

---

## Welcome to Exa

**URL:** llms-txt#welcome-to-exa

**Contents:**
- Get Started

Source: https://docs.exa.ai/reference/getting-started

Exa is a search engine made for AIs.

Exa finds the exact content you're looking for on the web, with five core functionalities:

<a href="./search" target="_self" className="endpoint-link">/search -></a>\
Find webpages using Exa's embeddings-based search and other intelligent methods.

<a href="./get-contents" target="_self" className="endpoint-link">/contents -></a>\
Obtain clean, up-to-date, parsed HTML from Exa search results.

<a href="./find-similar-links" target="_self" className="endpoint-link">/findsimilar -></a>\
Based on a link, find and return pages that are similar in meaning.

<a href="./answer" target="_self" className="endpoint-link">/answer -></a>\
Get direct answers to questions using Exa's Answer API.

<a href="./research/create-a-task" target="_self" className="endpoint-link">/research -></a>\
Automate in-depth web research and receive structured JSON results with citations.

<CardGroup cols={2}>
  <Card title={<div className="card-title">API Playground</div>} icon="code" href="https://dashboard.exa.ai">
    <div className="text-lg">
      Explore the API playground and try Exa API.
    </div>
  </Card>

<Card title={<div className="card-title">QuickStart</div>} icon="bolt-lightning" href="./quickstart">
    <div className="text-lg">
      Use our SDKs to do your first Exa search.
    </div>
  </Card>

<Card title={<div className="card-title">Tool Calling with Exa</div>} icon="magnifying-glass" href="./rag-quickstart">
    <div className="text-lg">
      Give LLMs the ability to search the web with Exa.
    </div>
  </Card>

<Card title={<div className="card-title">Examples</div>} icon="lightbulb" href="../examples">
    <div className="text-lg">
      Learn from our pre-built tutorials and live demos.
    </div>
  </Card>
</CardGroup>

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/be0cab3-blue-wanderer.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=ad0d68efd38e9f5e794474adea0f3a68" alt="" data-og-width="1024" width="1024" data-og-height="615" height="615" data-path="images/be0cab3-blue-wanderer.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/be0cab3-blue-wanderer.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=7967dfd3cb9bb98a2bffc66d763cfa2e 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/be0cab3-blue-wanderer.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=6cdcf27e4cda9ab1641c4c4c4f85333c 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/be0cab3-blue-wanderer.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=8c58fce20e785b7bd2f205b0531dc2c1 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/be0cab3-blue-wanderer.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=463a5f8e5596df3fcd82c9803c4e1a94 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/be0cab3-blue-wanderer.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=aadd8fde4f54f9ebe68b3f64785110c6 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/be0cab3-blue-wanderer.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=6de1508a386d4206b6f6af84bf2361a1 2500w" />

---

## New Livecrawl Option: Preferred

**URL:** llms-txt#new-livecrawl-option:-preferred

**Contents:**
- What's New
- How It Differs from "Always"
- When to Use "Preferred"
- Complete Livecrawl Options Overview
- Migration Guide

Source: https://docs.exa.ai/changelog/livecrawl-preferred-option

Introducing the 'preferred' livecrawl option that tries to fetch fresh content but gracefully falls back to cached results when crawling fails, providing the best of both worlds.

**Date: 7 June 2025**

We've added a new `livecrawl` option called `"preferred"` that provides a more resilient approach to content fetching. This option attempts to crawl fresh content but gracefully falls back to cached results when live crawling fails.

<Info>
  The `preferred` option is now available in both `/contents` and `/search_and_contents` endpoints.
</Info>

The new `livecrawl: "preferred"` option provides intelligent fallback behavior:

* **First**: Attempts to crawl fresh content from the live webpage
* **If crawling succeeds**: Returns the fresh, up-to-date content
* **If crawling fails but cached content exists**: Returns cached content instead of failing
* **If crawling fails and no cached content exists**: Returns the crawl error

## How It Differs from "Always"

The key difference between `"preferred"` and `"always"`:

| Option        | Crawl Fails + Cache Available | Crawl Fails + No Cache |
| ------------- | ----------------------------- | ---------------------- |
| `"preferred"` | Returns cached content        | Returns crawl error    |
| `"always"`    | Returns crawl error           | Returns crawl error    |

This makes `"preferred"` more resilient for production applications where you want fresh content when possible, but don't want requests to fail when websites are temporarily unavailable.

If content freshness is critical and you want nothing else, then using `"always"` might be better.

## When to Use "Preferred"

The `"preferred"` option is ideal when:

* You want the freshest content available but need reliability
* Building production applications that can't afford to fail on crawl errors
* Content freshness is important but not critical enough to fail the request
* You're crawling websites that might be occasionally unavailable

## Complete Livecrawl Options Overview

Here are all four livecrawl options and their behaviors:

| Option        | Crawl Behavior   | Cache Fallback              | Best For                                            |
| ------------- | ---------------- | --------------------------- | --------------------------------------------------- |
| `"always"`    | Always crawls    | Never falls back            | Critical real-time data, willing to accept failures |
| `"preferred"` | Always crawls    | Falls back on crawl failure | Fresh content with reliability                      |
| `"fallback"`  | Only if no cache | Uses cache first            | Balanced speed and freshness                        |
| `"never"`     | Never crawls     | Always uses cache           | Maximum speed                                       |

If you're currently using `livecrawl: "always"` but experiencing reliability issues:

```python  theme={null}

---

## given a homepage, get homepages of similar candidates

**URL:** llms-txt#given-a-homepage,-get-homepages-of-similar-candidates

def get_more_candidates(homepageURL):
  new_homepages = []
  if not homepageURL:
    return None
  similarity_search = exa.find_similar_and_contents(homepageURL, num_results=3, text={"include_html_tags": False}, exclude_domains=['linkedin.com', 'github.com', 'twitter.com'])

#return a list of emails
  for res in similarity_search.results:
    new_homepages.append((res.url, res.text))
  return new_homepages

---

## Find similar with full text content

**URL:** llms-txt#find-similar-with-full-text-content

similar_with_text = exa.find_similar_and_contents(
    "https://example.com/article",
    text=True,
    num_results=2
)

---

## Option 3: Use full text (may result in very long content)

**URL:** llms-txt#option-3:-use-full-text-(may-result-in-very-long-content)

---

## Find similar with highlights

**URL:** llms-txt#find-similar-with-highlights

similar_with_highlights = exa.find_similar_and_contents(
    "https://example.com/article",
    highlights=True,
    num_results=2
)

---

## Markdown Contents as Default

**URL:** llms-txt#markdown-contents-as-default

**Contents:**
- What Changed
- Content Processing Behavior
- Benefits of Markdown Default

Source: https://docs.exa.ai/changelog/markdown-contents-as-default

Markdown content is now the default format for all Exa API endpoints, providing cleaner, more readable content that's ideal for AI applications and text processing.

**Date: 23 June 2025**

We've updated all Exa API endpoints to return content in markdown format by default. This change provides cleaner, more structured content that's optimized for AI applications, RAG systems, and general text processing workflows.

<Info>
  All endpoints now process webpage content into clean markdown format by default. Use the `includeHtmlTags` parameter to control content formatting.
</Info>

Previously, our endpoints returned content in various formats depending on the specific endpoint configuration. Now, all endpoints consistently return content processed into clean markdown format, making it easier to work with the data across different use cases.

## Content Processing Behavior

The `includeHtmlTags` parameter now controls how we process webpage content:

* **`includeHtmlTags=false` (default)**: We process webpage content into clean markdown format
* **`includeHtmlTags=true`**: We return content as HTML without processing to markdown

In all cases, we remove extraneous data, advertisements, navigation elements, and other boilerplate content, keeping only what we detect as the main content of the page.

**No action required** if you want the new markdown format - it's now the default! If you need HTML content instead:

## Benefits of Markdown Default

1. **Better for AI applications**: Markdown format is more structured and easier for LLMs to process
2. **Improved readability**: Clean formatting without HTML tags makes content more readable
3. **RAG optimization**: Markdown content chunks more naturally for retrieval systems

If you have any questions about this change or need help adapting your implementation, please reach out to [hello@exa.ai](mailto:hello@exa.ai).

We're excited for you to experience the improved content quality with markdown as the default!

---

## Let the magic happen!

**URL:** llms-txt#let-the-magic-happen!

**Contents:**
- Beyond Question Answering: Text Similarity Search

info_for_llm = []
for question in questions:
    search_response = exa.search_and_contents(question, highlights=highlights_options, num_results=3)
    info = [sr.highlights[0] for sr in search_response.results]
    info_for_llm.append(info)
Python Python theme={null}
info_for_llm
[['As the only mammals with powered flight, the evolutionary\xa0history of their wings has been poorly understood. However, research published Monday in Nature and PLoS Genetics has provided the first comprehensive look at the genetic origins of their incredible wings.But to appreciate the genetics of their wing development, it’s important to know how crazy a bat in flight truly\xa0looks.Try a little experiment: Stick your arms out to the side, palms facing forward, thumbs pointing up toward the ceiling. Now imagine that your fingers are\xa0long, arching down toward the floor like impossibly unkempt fingernails — but still made of bone, sturdy and spread apart. Picture the sides of your body connecting to your hands, a rubbery membrane attaching your leg and torso to those long fingers, binding you with strong, stretchy skin. Then, finally, imagine using your muscles to flap those enormous hands.Bats, man.As marvelous as bat flight is to behold, the genetic origins of their storied wings has remained murky. However, new findings from an international team of researchers led by Nadav Ahituv, PhD, of the University of California at San Francisco, Nicola Illing, PhD, of the University of Cape Town\xa0in\xa0South Africa\xa0and Katie Pollard, PhD of the UCSF-affiliated Gladstone Institutes has shed new light on how, 50 million years ago, bats took a tetrapod blueprint for arms and legs and went up into the sky.Using a sophisticated set of genetic tools, researchers approached the question of how bats evolved flight by looking not only at which genes were used in the embryonic development of wings, but at what point during development the genes were turned on and off, and — critically — what elements in the genome were regulating the expression of these genes. Genes do not just turn themselves on without input; genetic switches, called enhancers, act to regulate the timing and levels of gene expression in the body.', theme={null}
  "Since flight evolved millions of years ago in all of the groups  that are capable of flight today, we can't observe the changes in behavior and much of the  morphology that the evolution of flight involves. We do have the fossil record, though, and  it is fairly good for the three main groups that evolved true flight. We'll spare you an in-depth description of how each group evolved flight for now;  see the later exhibits for a description of each group and how they developed flight.",
  "It's easy to forget that one in five species of mammal on this planet have wings capable of delivering spectacularly acrobatic flying abilities. Equally incredibly, two-thirds of these 1,200 species of flying mammal can fly in the dark, using exquisite echolocation to avoid obstacles and snatch airborne prey with stunning deftness. These amazing feats have helped make bats the focus not only of folkloric fascination, but also of biological enquiry and mimicry by human engineers from Leonardo da Vinci onwards. Recent research in PLOS journals continues to add surprising new findings to what we know about bats, and how they might inspire us to engineer manmade machines such as drones to emulate their skills. Bats, unlike most birds and flying insects, have relatively heavy wings – something that might appear disadvantageous. But a recent study in PLOS Biology by Kenny Breuer and colleagues shows that bats can exploit the inertia of the wings to make sharp turns that would be near-impossible using aerodynamic forces alone. The authors combined high-speed film of real bats landing upside-down on ceiling roosts with computational modelling to tease apart aerodynamic and inertial effects."],
 ["things, gold and silver, could buy a victory. And this Other Italian cities, inspired by Rome's example, overpowered occupying troops, shut their gates again and invited a second siege. Hannibal could not punish them without dividing his he had no competent leadership to do so, what with one member of",
  'A group of Celts known as the Senone was led through Italy by their commander, Brennus. The Senone Gauls were threatening the nearby town of Clusium, when Roman Ambassadors from the Fabii family were sent to negotiate peace for Clusium. The Romans were notoriously aggressive, and so it is only a little surprising that when a scuffle broke out between the Gauls and Clusians, the Fabii joined in and actually killed a Senone chieftain. The Roman people voted to decide the fate of those who broke the sacred conduct of ambassadors, but the Fabii were so popular that they were instead voted to some of the highest positions in Rome. This absolutely infuriated Brennus and his people and they abandoned everything and headed straight for Rome. Rome was woefully unprepared for this sudden attack. The Gauls had marched with purpose, declaring to all the towns they passed that they would not harm them, they were heading straight for Rome.',
  "Hannibal had no intention to sit and recieve the romans in spain.Hannibal clearly considered the nature of roman power-and came to the conclusion that Rome could only be defeated in Italy.The cornerstone of Rome's power was a strategic manpower base that in theory could produce 7,00,000 infantry and 70,000 cavalry.More than half of this manpower base (4,00,000) was provided by rome's Italian allies,who paid no taxes but had to render military service to rome's armies.Not all were content.Carthage on the other hand rarely used its own citizens for war,bulk of its army being mercenaries.In any case its manpower could never even come close to Rome,the fact that had aided roman victory in the 1st Punic war.Hannibal thus understood that Rome could afford to raise and send army after army to spain and take losses. Meanwhile any carthiginian losses in spain would encourage the recently conquered iberian tribes to defect. The only way to defeat Rome,was to fight in italy itself.By winning battle after battle on italian soil and demonstrating to the italian allies rome's inability to protect them and weakness,he could encourage them to break free of Rome eroding Rome's manpower to sizeable proportions. But there was one problem,his fleet was tiny and Rome ruled the seas.By land,the coastal route would be blocked by Roman forces and her ally-the great walled city of massalia.Hannibal thus resolved to think and do the impossible - move thousands of miles by land through the pyranees mountains,uncharted territory inhabited by the fierce gauls ,then through the Alps mountains and invade italy. Even before the siege of Saguntum had concluded,Hannibal had set things in motion.Having sent a number of embassies to the Gallic tribes in the Po valley with the mission of establishing a safe place for Hannibal to debouch from the Alps into the Po valley. He did not desire to cross this rugged mountain chain and to descend into the Po valley with exhausted troops only to have to fight a battle.Additionally the fierce gauls would provide a source of manpower for Hannibal's army.The romans had recently conquered much territory from the gauls in this area,brutally subjagating them ,seizing their land and redistributing it to roman colonists.Thus securing an alliance proved to be easy. After the sack of Saguntum he dismissed his troops to their own localities."]]
Python Python theme={null}
responses = []
for question, info in zip(questions, info_for_llm):
  system_prompt = "You are RAG researcher. Read the provided contexts and, if relevant, use them to answer the user's question."
  user_prompt = f"""Sources: {info}

Question: {question}"""

completion = openai_client.chat.completions.create(
    model="gpt-3.5-turbo",
    messages=[
      {"role": "system", "content": system_prompt},
      {"role": "user", "content": user_prompt},
    ]
  )
  response = f"""
  Question: {question}
  Answer: {completion.choices[0].message.content}
  """
  responses.append(response)
Python Python theme={null}
from pprint import pprint # pretty print
pprint(responses)
['\n'  theme={null}
 '  Question: How did bats evolve their wings?\n'
 '  Answer: Recent research has shed new light on how bats evolved their '
 'wings. An international team of researchers used genetic tools to study the '
 'embryonic development of bat wings and the genes involved in their '
 'formation. They also investigated the regulatory elements in the genome that '
 'control the expression of these genes. By analyzing these factors, the '
 'researchers discovered that bats took a tetrapod blueprint for arms and legs '
 'and adapted it to develop wings, allowing them to fly. This research '
 'provides a comprehensive understanding of the genetic origins of bat wings '
 'and how they evolved over 50 million years ago.\n'
 '  ',
 '\n'
 '  Question: How did Rome defend Italy from Hannibal?\n'
 '  Answer: Rome defended Italy from Hannibal by using various strategies. One '
 'of the main defenses relied on the Roman manpower base, which consisted of a '
 'large army made up of Roman citizens and Italian allies who were obligated '
 "to render military service. Rome's strategic manpower base was a cornerstone "
 'of their power, as it could produce a significant number of infantry and '
 'cavalry. This posed a challenge for Hannibal, as Carthage relied heavily on '
 "mercenaries and could not match Rome's manpower.\n"
 '\n'
 'Hannibal realized that in order to defeat Rome, he needed to fight them in '
 'Italy itself. His plan was to win battles on Italian soil and demonstrate '
 "Rome's inability to protect their Italian allies, with the intention of "
 "encouraging them to break free from Rome. This would erode Rome's manpower "
 'base to a sizeable proportion. However, Hannibal faced several obstacles. '
 'Rome ruled the seas, making it difficult for him to transport troops and '
 'supplies by sea. Additionally, the coastal route to Italy would be blocked '
 'by Roman forces and their ally, the walled city of Massalia.\n'
 '\n'
 'To overcome these challenges, Hannibal devised a daring plan. He decided to '
 'lead his troops on a treacherous journey through the Pyrenees mountains, '
 'inhabited by fierce Gauls, and then through the Alps mountains to invade '
 'Italy. He sent embassies to Gallic tribes in the Po valley, securing '
 'alliances and establishing a safe place for his army to enter the Po valley '
 'from the Alps.\n'
 '\n'
 'Overall, Rome defended Italy from Hannibal by leveraging their manpower '
 'base, their control of the seas, and their strategic alliances with Italian '
 'allies. They also had the advantage of better infrastructure and control '
 'over resources within Italy itself. These factors ultimately played a '
 "significant role in Rome's defense against Hannibal's invasion.\n"
 '  ']
Python Python theme={null}
paragraph = """
Georgism, also known as Geoism, is an economic philosophy and ideology named after the American
political economist Henry George (1839–1897).This doctrine advocates for the societal collective,
rather than individual property owners, to capture the economic value derived from land and other
ural resources. To this end, Georgism proposes a single tax on the unimproved value of land, known
as a "land value tax," asserting that this would deter speculative land holding and promote efficient
use of valuable resources. Adherents argue that because the supply of land is fundamentally inelastic,
taxing it will not deter its availability or use, unlike other forms of taxation. Georgism differs
from Marxism and capitalism, underscoring the distinction between common and private property while
largely contending that individuals should own the fruits of their labor."""
query = f"The best academic source about {paragraph} is (paper: "
georgism_search_response = exa.search_and_contents(paragraph, highlights=highlights_options, num_results=5)
Python Python theme={null}
for result in georgism_search_response.results:
    print(result.title)
    print(result.url)
    pprint(result.highlights)
Henry George theme={null}
https://www.newworldencyclopedia.org/entry/Henry_George
["George's theory of interest is nowadays dismissed even by some otherwise "
 'Georgist authors, who see it as mistaken and irrelevant to his ideas about '
 'land and free trade. The separation of the value of land into improved and '
 "unimproved is problematic in George's theory. Once construction has taken "
 'place, not only the land on which such improvements were made is affected, '
 'the value of neighboring, as yet unimproved, land is impacted. Thus, while '
 'the construction of a major attraction nearby may increase the value of '
 'land, the construction of factories or nuclear power plants decreases its '
 'value. Indeed, location is the single most important asset in real estate. '
 'George intended to propose a tax that would have the least negative impact '
 'on productive activity. However, even unimproved land turns out to be '
 'affected in value by productive activity in the neighborhood.']
Wikiwand
https://www.wikiwand.com/en/Georgism
['Georgism is concerned with the distribution of economic rent caused by land '
 'ownership, natural monopolies, pollution rights, and control of the commons, '
 'including title of ownership for natural resources and other contrived '
 'privileges (e.g. intellectual property). Any natural resource which is '
 'inherently limited in supply can generate economic rent, but the classical '
 'and most significant example of land monopoly involves the extraction of '
 'common ground rent from valuable urban locations. Georgists argue that '
 'taxing economic rent is efficient, fair and equitable. The main Georgist '
 'policy recommendation is a tax assessed on land value, arguing that revenues '
 'from a land value tax (LVT) can be used to reduce or eliminate existing '
 'taxes (such as on income, trade, or purchases) that are unfair and '
 'inefficient. Some Georgists also advocate for the return of surplus public '
 "revenue to the people by means of a basic income or citizen's dividend. The "
 'concept of gaining public revenues mainly from land and natural resource '
 'privileges was widely popularized by Henry George through his first book, '
 'Progress and Poverty (1879).']
Henry George
https://www.conservapedia.com/Henry_George
['He argued that land, unlike other factors of production, is supplied by '
 'nature and that rent is unearned surplus. The landless deserve their share '
 'of this surplus as a birthright, according to George. Henry George was born '
 'in Philadelphia, Pennsylvania, on the 2nd of September 1839. He settled in '
 'California in 1858; then later removed to New York in 1880; was first a '
 'printer, then an editor, but finally devoted all his life to economic and '
 'social questions. In 1860, George met Annie Corsina Fox. Her family was very '
 'opposed to the relationship, and in 1861 they eloped. In 1871 he published '
 'Our Land Policy, which, as further developed in 1879 under the title of '
 'Progress and Poverty, speedily attracted the widest attention both in '
 'America and in Europe.']
Georgism - Wikipedia
https://en.wikipedia.org/wiki/Georgism
['A key issue to the popular adoption of Georgism is that homes are illiquid '
 'yet governments need cash every year. Some economists have proposed other '
 'ways of extracting value from land such as building government housing and '
 'selling homes to new buyers in areas of fast-rising land value. The '
 'government would theoretically collect revenue from home sales without much '
 'cost to current homeowners while slowing down land value appreciation in '
 'high-demand areas. Henry George, whose writings and advocacy form the basis '
 'for Georgism Georgist ideas heavily influenced the politics of the early '
 '20th century. Political parties that were formed based on Georgist ideas '
 'include the Commonwealth Land Party in the United States, the Henry George '
 'Justice Party in Victoria, the Single Tax League in South Australia, and the '
 "Justice Party in Denmark. In the United Kingdom, George's writings were "
 'praised by emerging socialist groups in 1890s such as the Independent Labour '
 'Party and the Fabian Society, which would each go on to help form the '
 'modern-day Labour Party.']
Georgism
https://rationalwiki.org/wiki/Georgism
['Even with mostly primitive methods, land values are already assessed around '
 'the world wherever property/council taxes exist, and some municipalities '
 'even collect all their revenue from land values. Though these are '
 'market-based measures, they can still prove difficult and require upfront '
 'investment. Georgists believe that the potential value of land is greater '
 'than the current sum of government spending, since the abolition of taxes on '
 'labor and investment would further increase the value of land. Conversely, '
 'the libertarian strain in Georgism is evident in the notion that their land '
 'tax utopia also entails reducing or eliminating the need for many of the '
 'things governments currently supply, such as welfare, infrastructure to '
 'support urban sprawl, and military & foreign aid spending to secure '
 "resources abroad. Therefore, many Georgists propose a citizen's dividend. "
 'This is a similar concept to basic income but its proponents project its '
 'potential to be much larger due to supposedly huge takings from the land '
 'tax, combined with lowered government spending. It has been recognized since '
 'Adam Smith and David Ricardo that a tax on land value itself cannot be '
 'passed on to tenants, but instead would be paid for by the owners of the '
 'land:']
```

Using Exa, we can easily find related papers, either for further research or to provide a source for our claims. This is just a brief intro into what Exa can do. For a look at how you can leverage getting full contents, check out [Contents Retrieval](/reference/contents-retrieval).

**Examples:**

Example 1 (unknown):
```unknown

```

Example 2 (unknown):
```unknown

```

Example 3 (unknown):
```unknown
Now, let's give the context we got to our LLM so it can answer our questions with solid sources backing them up!
```

Example 4 (unknown):
```unknown

```

---

## doing an example with the first companies

**URL:** llms-txt#doing-an-example-with-the-first-companies

**Contents:**
- Creating a report with LLMs

c = companies[0]
all_contents = ""
search_response = exa.search_and_contents(
  c.url, # input the company's URL
  num_results=5
)
research_response = search_response.results
for r in research_response:
  all_contents += r.text

<div><div><div><div><p><a href="https://www.rumieapp.com/"></a></p></div><div><p>The <strong>key</strong> to <strong>your</strong> college experience. </p><p><br/>Access the largest college exclusive marketplace to buy, sell, and rent with other students.</p></div></div><div><h2>320,000+</h2><p>Users in Our Network</p></div><div><div><p><h2>Selling is just a away.</h2></p><p>Snap a pic, post a listing, and message buyers all from one intuitive app.</p><div><p></p><p>Quick setup and .edu verification</p></div><div><p></p><p>Sell locally or ship to other campuses</p></div><div><p></p><p>Trade with other students like you</p></div></div><div><p><h2>. From local businesses around your campus</h2></p><h4>Get access to student exclusive discounts</h4><p>rumie students get access to student exclusive discounts from local and national businesses around their campus.</p></div></div><div><p><h2>Rent dresses from   </h2></p><p>Wear a new dress every weekend! Just rent it directly from a student on your campus.</p><div><p></p><p>Make money off of the dresses you've already worn</p></div><div><p></p><p>rumie rental guarantee ensures your dress won't be damaged</p></div><div><p></p><p>Find a new dress every weekend and save money</p></div></div><div><p><h2>. The only place to buy student tickets at student prices</h2></p><h4>Buy or Sell students Football and Basketball tickets with your campus</h4><p>rumie students get access to the first-ever student ticket marketplace. No more getting scammed trying to buy tickets from strangers on the internet.</p></div><div><div><div><p></p><h4>Secure</h4><p>.edu authentication and buyer protection on purchases.</p></div><div><p></p><h4>Lightning-fast</h4><p>Post your first listing in under a minute.</p></div><div><p></p><h4>Verified Students</h4><p>Trade with other students, not strangers.</p></div><div><p></p><h4>Intuitive</h4><p>List an item in a few simple steps. Message sellers with ease.</p></div></div><p><a href="https://apps.apple.com/us/app/rumie-college-marketplace/id1602465206">Download the app now</a></p></div><div><p><h2>Trusted by students.</h2></p><div><div><p></p><p>Saves me money</p><p>Facebook Marketplace and Amazon are great but often times you have to drive a long way to meet up or pay for shipping. rumie let’s me know what is available at my school… literally at walking distance. </p></div><div><p></p><p>5 stars!</p><p>Having this app as a freshman is great! It makes buying and selling things so safe and easy! Much more efficient than other buy/sell platforms!</p></div><div><p></p><p>Amazing!</p><p>5 stars for being simple, organized, safe, and a great way to buy and sell in your college community.. much more effective than posting on Facebook or Instagram!</p></div><div><p></p><p>The BEST marketplace for college students!!!</p><p>Once rumie got to my campus, I was excited to see what is has to offer! Not only is it safe for students like me, but the app just has a great feel and is really easy to use. The ONLY place I’ll be buying and selling while I’m a student.</p></div></div></div><div><p><h2>Easier to than GroupMe or Instagram.</h2></p><p>Forget clothing instas, selling groupme's, and stress when buying and selling. Do it all from the rumie app.</p></div></div></div>
Python python theme={null}
import textwrap
import openai
import os

SYSTEM_MESSAGE = "You are a helpful assistant writing a research report about a company. Summarize the users input into multiple paragraphs. Be extremely concise, professional, and factual as possible. The first paragraph should be an introduction and summary of the company. The second paragraph should include pros and cons of the company. Things like what are they doing well, things they are doing poorly or struggling with. And ideally, suggestions to make the company better."
openai.api_key = os.environ.get("OPENAI_API_KEY")

completion = openai.chat.completions.create(
    model="gpt-4",
    messages=[
        {"role": "system", "content": SYSTEM_MESSAGE},
        {"role": "user", "content": all_contents},
    ],
)

summary = completion.choices[0].message.content

print(f"Summary for {c.url}:")
print(textwrap.fill(summary, 80))

Summary for https://www.rumieapp.com/:
Rumie is a college-exclusive marketplace app that allows students to buy, sell,
and rent items with other students. It has over 320,000 users in its network and
offers features such as quick setup, .edu verification, local and campus-wide
selling options, and exclusive discounts from local businesses. Students can
also rent dresses from other students, buy or sell student tickets at student
prices, and enjoy secure and intuitive transactions. The app has received
positive feedback from users for its convenience, safety, and effectiveness in
buying and selling within the college community.

Pros of Rumie include its focus on college students' needs, such as providing a
safe platform and exclusive deals for students. The app offers an intuitive and
fast setup process, making it easy for students to start buying and selling.
The option to trade with other students is also appreciated. Users find it convenient
that they can sell locally or ship items to other campuses. The app's rental
guarantee for dresses provides assurance to users that their dresses won't be
damaged. Overall, Rumie is highly regarded as a simple, organized, and safe
platform for college students to buy and sell within their community.
Suggestions to improve Rumie include expanding its reach to more colleges and
universities across the nation and eventually internationally. Enhancing
marketing efforts and fundraising can aid in raising awareness among college
students. Additionally, incorporating features such as improved search filters
and a rating/review system for buyers and sellers could enhance the user
experience. Continual updates and improvements to the app's interface and
functionality can also ensure that it remains user-friendly and efficient.
```

And we’re done! We’ve built an app that takes in a company webpage and uses Exa to

1. Discover similar startups
2. Find information about each of those startups
3. Gather useful content and summarize it with OpenAI

Hopefully you found this tutorial helpful and are ready to start building your very own company analyst! Whether you want to generate sales leads or research competitors to your own company, Exa's got you covered.

**Examples:**

Example 1 (unknown):
```unknown
Here's an example of the first result for the first company, Rumie App. You can see the first result is the actual link contents itself.
```

Example 2 (unknown):
```unknown
## Creating a report with LLMs

Finally, let's create a summarized report that lists our 10 companies and gives us an easily digestible summary of each company. We can input all of this web content into an LLM and have it generate a nice report!
```

Example 3 (unknown):
```unknown

```

---

## New approach

**URL:** llms-txt#new-approach

**Contents:**
- Need More Information?

result = exa.get_contents(["https://example.com"])
for status in result.statuses:
    if status.status == "error":
        print(f"Error for {status.id}: {status.error.tag} ({status.error.httpStatusCode})")
```

## Need More Information?

If you'd like more information about the status of a crawl or have specific use cases that require additional status details, please contact us at [hello@exa.ai](mailto:hello@exa.ai) with your use case.

---

## Creating the DataFrame

**URL:** llms-txt#creating-the-dataframe

**Contents:**
- Information Enrichment

students_df = pd.DataFrame(sample_data)
students_df

Python Python theme={null}
def get_openai_response(input_text):
    # if contents is empty
    if not input_text:
        return ""
    completion = openai.chat.completions.create(
            model="gpt-3.5-turbo-0125",
            messages=[
                {"role": "system", "content": "You are a helpful assistant."},
                {"role": "user", "content": input_text},
            ],
            temperature=0
        )
    return completion.choices[0].message.content

Python Python theme={null}
def extract_school_from_email(email):
  content =  f"I'm going to give you a student's email. I want you to figure out what school they go to. For example, if the email is [[email protected]](/cdn-cgi/l/email-protection) you should return 'CMU' and nothing else. Only return the name of the school. Here is their email: {email}"
  return get_openai_response(content)

**Examples:**

Example 1 (unknown):
```unknown
## Information Enrichment

Now, let's add more information about the candidates: current school, LinkedIn, and personal website.

First, we'll define a helper function to call OpenAI -- we'll use this for many of our later functions.
```

Example 2 (unknown):
```unknown
We'll ask GPT to extract the candidate's school from their email address.
```

---

## Contents Retrieval

**URL:** llms-txt#contents-retrieval

**Contents:**
- Text (text=True)
- Summary (summary=True)
  - Structured Summaries
- Highlights
- Context String
  - How it works:
  - Configuration:
- Images and favicons
- Crawl Errors

Source: https://docs.exa.ai/reference/contents-retrieval

When using the Exa API, you can request different types of content to be returned for each search result.

Returns the full text content of the result, formatted as markdown. It extracts the main content (like article body text) while filtering out navigation elements, pop-ups, and other peripheral text. This is extractive content taken directly from the page's source.

## Summary (summary=True)

Provides a concise summary generated from the text, tailored to a specific query you provide. This is abstractive content created by processing the source text using Gemini Flash.

### Structured Summaries

You can also request structured summaries by providing a JSON schema:

The API will return the summary as a JSON string that matches your schema structure, which you can parse to access the structured data.

Delivers key excerpts from the text that are most relevant to your search query, emphasizing important information within the content. This is also extractive content from the source.

You can configure highlights in two ways:

1. **Simple boolean** (`highlights=True`): Returns default highlights based on the search query

2. **Detailed configuration** (pass as an object):
   
   * `query`: The specific query to use for generating highlights (if different from search query)
   * `numSentences`: Number of sentences per highlight (minimum: 1)
   * `highlightsPerUrl`: Maximum number of highlights to return per URL (minimum: 1)

Returns page contents as a single combined string ready for LLM RAG applications. When you set `context=True`, all result contents are joined together into one text block.

**Performance Note**: Context strings often perform better than highlights for RAG applications because they provide more complete information from each page.

* If you have 5 results and set a 1000 character limit, each result gets about 200 characters
* We recommend using 10000+ characters for best results
* No character limit works best when possible

1. **Simple boolean** (`context=True`): Returns all content combined with no character limit
2. **With character limit** (pass as an object):

## Images and favicons

You can get images from webpages by setting `imageLinks` (under `contents.extras.imageLinks`) to specify how many images you want per result. Each result also includes the website's `favicon` URL and a representative `image` URL when available.

The contents endpoint provides detailed status information for each URL through the `statuses` field in the response. The endpoint only returns an error if there's an internal issue on Exa's end - all other cases are reported through individual URL statuses.

Each response includes a `statuses` array with status information for each requested URL:

The error tags correspond to different failure scenarios:

* `CRAWL_NOT_FOUND`: Content not found (HTTP 404)
* `CRAWL_TIMEOUT`: The target page returned a timeout error (HTTP 408)
* `CRAWL_LIVECRAWL_TIMEOUT`: The `livecrawlTimeout` parameter limit was reached during crawling
* `SOURCE_NOT_AVAILABLE`: Access forbidden or source unavailable (HTTP 403)
* `CRAWL_UNKNOWN_ERROR`: Other errors (HTTP 500+)

To handle errors, check the `statuses` field for each URL:

This allows you to handle different failure scenarios appropriately for each URL in your request.

**Examples:**

Example 1 (unknown):
```unknown
The API will return the summary as a JSON string that matches your schema structure, which you can parse to access the structured data.

## Highlights

Delivers key excerpts from the text that are most relevant to your search query, emphasizing important information within the content. This is also extractive content from the source.

You can configure highlights in two ways:

1. **Simple boolean** (`highlights=True`): Returns default highlights based on the search query

2. **Detailed configuration** (pass as an object):
```

Example 2 (unknown):
```unknown
* `query`: The specific query to use for generating highlights (if different from search query)
   * `numSentences`: Number of sentences per highlight (minimum: 1)
   * `highlightsPerUrl`: Maximum number of highlights to return per URL (minimum: 1)

## Context String

Returns page contents as a single combined string ready for LLM RAG applications. When you set `context=True`, all result contents are joined together into one text block.

**Performance Note**: Context strings often perform better than highlights for RAG applications because they provide more complete information from each page.

### How it works:

* If you have 5 results and set a 1000 character limit, each result gets about 200 characters
* We recommend using 10000+ characters for best results
* No character limit works best when possible

### Configuration:

1. **Simple boolean** (`context=True`): Returns all content combined with no character limit
2. **With character limit** (pass as an object):
```

Example 3 (unknown):
```unknown
## Images and favicons

You can get images from webpages by setting `imageLinks` (under `contents.extras.imageLinks`) to specify how many images you want per result. Each result also includes the website's `favicon` URL and a representative `image` URL when available.

## Crawl Errors

The contents endpoint provides detailed status information for each URL through the `statuses` field in the response. The endpoint only returns an error if there's an internal issue on Exa's end - all other cases are reported through individual URL statuses.

Each response includes a `statuses` array with status information for each requested URL:
```

Example 4 (unknown):
```unknown
The error tags correspond to different failure scenarios:

* `CRAWL_NOT_FOUND`: Content not found (HTTP 404)
* `CRAWL_TIMEOUT`: The target page returned a timeout error (HTTP 408)
* `CRAWL_LIVECRAWL_TIMEOUT`: The `livecrawlTimeout` parameter limit was reached during crawling
* `SOURCE_NOT_AVAILABLE`: Access forbidden or source unavailable (HTTP 403)
* `CRAWL_UNKNOWN_ERROR`: Other errors (HTTP 500+)

To handle errors, check the `statuses` field for each URL:
```

---

## JS SDK: highlights restored

**URL:** llms-txt#js-sdk:-highlights-restored

**Contents:**
- What's Back
- Usage Examples
- Scope
- Installation

Source: https://docs.exa.ai/changelog/highlights-restored-js-sdk

The highlights feature has been reintroduced in the JavaScript SDK (exa-js) as of version 2.0.11.

**Date: November 26, 2025**

The highlights feature is back in the JavaScript SDK. Following user feedback, we've reintroduced highlights in `exa-js` v2.0.11, allowing you to extract key sentences from search results with relevance scores.

The `highlights` option is now available in search and contents operations:

* `highlights: true` - Returns highlighted sentences with default settings
* `highlights: { numSentences, highlightsPerUrl, query }` - Customize extraction behavior

* `highlights: string[]` - Array of extracted key sentences
* `highlightScores: number[]` - Relevance scores for each highlight

**Basic highlights:**

**Combined with text:**

This update applies only to the JavaScript SDK (`exa-js`). Other SDKs can access highlights via direct API calls.

**Examples:**

Example 1 (unknown):
```unknown
**With options:**
```

Example 2 (unknown):
```unknown
**Combined with text:**
```

Example 3 (unknown):
```unknown
## Scope

This update applies only to the JavaScript SDK (`exa-js`). Other SDKs can access highlights via direct API calls.

## Installation
```

---
