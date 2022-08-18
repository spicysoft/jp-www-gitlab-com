---
layout: markdown_page
title: Product Direction - Product Data Insights
canonical_path: "/direction/product-analysis/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Product Data Insights Group Overview

The Product Data Insights Group (formerally known as "Product Analysis") was created in October 
2020 to provide dedicated, specialized analytics resources for the GitLab Product organization 
and to support product data-related analysis. This group, consisting of product analysts, reports 
to the Senior Director, Product Monetization & Operations. The group's primary customers are 
Product Managers across all sections, stages, and groups. 

In addition to working with the Product organization, Product Data Insights is part of the 
[Research & Development (R&D) Data Fusion Team](/handbook/business-technology/data-team/#data-fusion-teams), 
enabling collaboration between the product analysts and the [Central Data team](/handbook/business-technology/data-team/). 
Product Data Insights is also a member of the [Functional Analytics Center of Excellence (FACE)](/handbook/business-technology/data-team/functional-analytics-center-of-excellence/), 
a cross-functional group comprised of functional analytics teams across GitLab.

## Vision

Simply put, the Product Data Insights group is charged with supporting product-related data needs 
across GitLab. While the scope is quite broad, the team cleanly fits into GitLab's [3-year strategy](/company/strategy/), 
namely the effort to be more [customer centric](/company/strategy/#3-customer-centricity). The 
Product Data Insights team will continue to deliver actionable insights that will help the 
Product organization make responsible decisions in feature development, prioritization, and help 
build foundations that allow GitLab to provide those insights directly to our customers. In 
addition, the team continues to support improving our free-to-paid conversion, optimizing new 
user onboarding and increasing retention. Part of Product Data Insights' role will be to enable 
greater self-service of product-related data and follow GitLab's [handbook-first approach](/company/culture/all-remote/handbook-first-documentation/) 
to building a strong remote culture.

### One-year plan/Upcoming and WIP Initiatives

FY23 themes and initiatives

#### Generate Analysis to Drive Strategic Efforts

- Support the development of [data-driven PQLs](/direction/growth/#theme-2-build-out-product-qualified-leadspql-programs-to-become-a-scalable-and-effective-leads-source)
  - Analysis conducted by the team should help focus our PQL efforts to maximize conversion and 
  identify customers who would benefit from GitLab's paid feature set
- Conduct feature-level analysis, including impact on conversion and retention
  - Other stages of the product could benefit from understanding the impact that specific features 
  have on conversion, sustained usage, and retention. In addition, this can inform which features 
  we should highlight during onboarding and throughout a user's lifecycle.
- Generate user experience analyses to help Product and UX understand typical user behavior
  - While dependent on improved instrumentation (and potentially a product analytics tool), this 
  type of analysis will unlock new insights and help drive towards higher SUS scores
- Create and analyze the customer purchase funnel, including both SaaS and Self-Managed purchases
  - Gaining visibility into and understanding the purchase funnel will enable the organization 
  to make improvements and increase conversion rate

#### Improve Product Data Collection and Usability

_All of these intiatives will be done while maintaining our [commitment to user privacy](/handbook/product/product-intelligence-guide/service-usage-data-commitment/)._

- Collaborate with Central Data Team to finish remodeling GitLab's product data
  - Product Data Insights will be in a place to confidently own GitLab's [Product KPIs](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/) 
  (including xMAU) and support analysis of usage trends
- Collaborate with Product Intelligence and product teams to improve product instrumentation 
(i.e., Snowplow) quality, consistency, and coverage
  - Without reliable and thorough instrumentation, GitLab cannot 
  make fully-informed product decisions
- Participate in a product analytics tool implementation
  - The introduction of a product analytics tool will unlock new types of analysis, reduce 
  time-to-insights, and enable PMs to self-serve on product data and conduct more in-depth data 
  exploration and analysis

#### Scale Support of the GitLab Product Organization

Until FY23-Q1, the Product Data Insights team, then known as "Product Analysis", was heavily 
focused on supporting the Growth section, with fewer resources dedicated to support the 
[other product sections, stages, and groups](/handbook/product/categories/). Starting FY23-Q2, 
the Product Data Insights team will scale its support of the Product organization by embedding 
an analyst into each section. The team will work with respective section leaders to identify 
the areas with the largest need for product analyst support. Not only will the analysts learn 
the nuances of the product, they will lead efforts to document and improve instrumentation, 
enabling even further analysis of product usage.

While product analysts will be embedded in different sections/stages/groups, they should plan to 
allocate ~25% of their capacity for broader strategic work and initiatives.

### Data Program Collaboration

As a functional analytics team, Product Data Insights is reliant on other teams within the Data 
Program to provide high-quality, easily-accessible data. As such, the team collaborates 
closely with the [Central Data team](/handbook/business-technology/data-team/) and 
[Product Intelligence group](/handbook/product/product-intelligence-guide/). 
Here is a quick summary of the responsbilities of each of these 3 teams: 

| Team Name | DRI | Goal | Example Tasks |
| --- | --- | --- | --- |
|Product Data Insights|Carolyn Braza: Manager, Product Data Analysis|Perform analysis to unlock product insights when the data is available|Ad hoc product analysis, experiment analysis, Product KPI tracking, and creation and maintenance of standardized Product metric dashboards|
|Product Intelligence|Amanda Rueda: Senior Product Manager, Product Intelligence|Define and improve capabilities of product data set|Ensure our product data set is comprehensive, available, and accurate, and that team members are enabled to create new instrumentation, charts, and dashboards in a self-service fashion|
|Data Team|Rob Parker: Senior Director, Data and Analytics|Build and maintain product data models and infrastructure to support data analysis|Create repeatable and reliable product data sets & models & related data pipelines/processes|

 
#### High level Collaboration Workflow between the 3 teams

1. A data question needs to be answered with product data, the requester [opens a Product Data Insights 
issue](https://gitlab.com/gitlab-data/product-analytics/-/issues/new?issuable_template=Ad%20Hoc%20Request)
1. Product Analyst triages issue and determines if the required data is available and accessible
  1. If the required data is not currently collected (or there is an issue with the collection), 
  work with Product Intelligence and/or Product teams to start collecting it
  1. If the required data is collected but not exposed (ex: it is in the PREP database), work 
  with the central Data team to surface and/or model the data
1. Product Analyst performs the analysis, creates a dashboard, etc
1. Product Analyst determines if the analysis needs to be repeatable or there is an opportunity 
to improve data modeling
  1. If applicable, work with the central Data Team to create a trusted data model to enable 
  future analysis

## Working with Us

You can read about the Product Data Insights group's issue intake, prioritization, and team 
processes on their [handbook page](/handbook/product/product-analysis/).

## Helpful resources & links
1. [Product Data Insights handbook](/handbook/product/product-analysis/)
1. [Product Data Insights project](https://gitlab.com/gitlab-data/product-analytics)
1. [Growth Data Guide](/handbook/product/product-analysis/growth-data-guide/)
1. [Data for product managers](/handbook/business-technology/data-team/programs/data-for-product-managers/)
1. [Data team handbook](/handbook/business-technology/data-team/)
1. [Functional Analytics Center of Excellence (FACE)](/handbook/business-technology/data-team/functional-analytics-center-of-excellence/)

