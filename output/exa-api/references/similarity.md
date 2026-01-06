# Exa-Api - Similarity

**Pages:** 2

---

## Find similar links

**URL:** llms-txt#find-similar-links

Source: https://docs.exa.ai/reference/find-similar-links

post /findSimilar
Find similar links to the link provided and optionally return the contents of the pages.

<Card title="Get your Exa API key" icon="key" horizontal href="https://dashboard.exa.ai/api-keys" />

---

## Company Analyst

**URL:** llms-txt#company-analyst

**Contents:**
- What this doc covers
- Shortcomings of Traditional Search
- What is neural search?
- Finding companies with Exa link similarity search

Source: https://docs.exa.ai/examples/company-analyst

Example project using the Exa Python SDK.

## What this doc covers

1. Using Exa's link similarity search to find related links
2. Using Exa search\_and\_contents to find additional company information

In this example, we'll build a company analyst tool that researches companies relevant to what you're interested in. If you just want to see the code, check out the [Colab notebook](https://colab.research.google.com/drive/1VROD6zsaDh%5FrSmogSpSn9FJCwmJO8TSi?here).

The code requires an [Exa API key](https://dashboard.exa.ai/api-keys) and an [OpenAI API key](https://platform.openai.com/api-keys). Get 1000 free Exa searches per month just for [signing up](https://dashboard.exa.ai/overview)!

## Shortcomings of Traditional Search

Say we want to find companies similar to [Thrifthouse](https://thrift.house/), a platform for selling secondhand goods on college campuses. Unfortunately, traditional search engines don't do a very good job with this type of query. Traditional search engines rely heavily on exact matching. In this case we get results about physical thrift stores. Hm, that's not really what I want.

Let's try again, this time searching based on a description of the company, like "community based resale apps." But, this isn't very helpful either and just returns premade SEO-optimized listicles...

<img src="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0bb023a-Screenshot_2024-02-06_at_11.22.28_AM.png?fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=7133ae74e708901dd17d9b1e0f4c25c1" alt="" data-og-width="654" width="654" data-og-height="515" height="515" data-path="images/0bb023a-Screenshot_2024-02-06_at_11.22.28_AM.png" data-optimize="true" data-opv="3" srcset="https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0bb023a-Screenshot_2024-02-06_at_11.22.28_AM.png?w=280&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=badf43280108843fd4a047d1bdcd62da 280w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0bb023a-Screenshot_2024-02-06_at_11.22.28_AM.png?w=560&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=cef395cc2b26206902fc0ad1abcad0ad 560w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0bb023a-Screenshot_2024-02-06_at_11.22.28_AM.png?w=840&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=86837175f02cab137664afd6d45ad425 840w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0bb023a-Screenshot_2024-02-06_at_11.22.28_AM.png?w=1100&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=0f3a75f2230ba7ac1856f569e05c41b7 1100w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0bb023a-Screenshot_2024-02-06_at_11.22.28_AM.png?w=1650&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=0b1696a298521427899e461a807008b1 1650w, https://mintcdn.com/exa-52/tmzyKnsgpKLGddKC/images/0bb023a-Screenshot_2024-02-06_at_11.22.28_AM.png?w=2500&fit=max&auto=format&n=tmzyKnsgpKLGddKC&q=85&s=9656bf46109f45e89eb29655a0255d7e 2500w" />

What we really need is neural search.

## What is neural search?

Exa is a fully neural search engine built using a foundational embeddings model trained for webpage retrieval. It's capable of understanding entity types (company, blog post, Github repo), descriptors (funny, scholastic, authoritative), and any other semantic qualities inside of a query. Neural search can be far more useful than traditional searches for these complex queries.

## Finding companies with Exa link similarity search

Let's try Exa, using the Python SDK! We can use the`find_similar_and_contents` function to find similar links and get contents from each link. The input is simply a URL, [https://thrift.house](https://thrift.house) and we set `num_results=10`(this is customizable up to thousands of results in Exa).

By specifying `highlights={"num_sentences":2}` for each search result, Exa will also identify and return a two sentence excerpt from the content that's relevant to our query. This will allow us to quickly understand each website that we find.

This is an example of the full first result:

And here are the 10 titles and URLs I got:

```Python Python theme={null}

**Examples:**

Example 1 (unknown):
```unknown
This is an example of the full first result:
```

Example 2 (unknown):
```unknown
And here are the 10 titles and URLs I got:
```

---
