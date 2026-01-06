# Tavily-Api - Introduction

**Pages:** 1

---

## Introduction

**URL:** llms-txt#introduction

Every data science enthusiast knows that a vital first step to building a successful model or algorithm is having a reliable evaluation set to aspire to. In the rapidly evolving landscape of **Retrieval-Augmented Generation (RAG)** and AI-driven search systems, the importance of high-quality eval datasets is crucial.

In this article, we introduce an agentic workflow designed to **generate** subject-specific dynamic **evaluation datasets**, enabling precise validation of web search augmented agents' performance.

**Known RAG evaluation datasets**, such as [HotPotQA](https://hotpotqa.github.io), [CRAG](https://github.com/facebookresearch/CRAG), and [MultiHop-RAG](https://github.com/yixuantt/MultiHop-RAG), have been pivotal in benchmarking and fine-tuning models. However, these datasets primarily focus on evaluating performance with **static, pre-defined document sets**. As a result, they fall short when it comes to evaluating **web-based RAG systems**, where data is dynamic, contextual, and ever-changing.

This gap presents a significant challenge: how do we effectively test and refine RAG systems designed for real-world web search scenarios? **Enter the Real-Time Dataset Generator for RAG Evals** — an agentic tool leveraging [Tavily’s Search Layer](https://tavily.com) and the **LangGraph framework** to create diverse, relevant, and dynamic datasets tailored specifically for web based RAG agents.

---
