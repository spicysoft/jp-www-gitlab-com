---
layout: markdown_page
title: Product Direction - Product Intelligence
description: "Product Intelligence manages a variety of technologies that are important for GitLab's understanding of how our users use our products. Learn more here!"
canonical_path: "/direction/anlytics/product-intelligence/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Vision

As part of our overall [3 year Strategy](https://about.gitlab.com/company/strategy/#three-year-strategy) GitLab is striving to build a [Customer Centric](https://about.gitlab.com/company/strategy/#3-customer-centricity) DevOps platform through Strong Data Insights. In order to empower our customers to achieve their goals, and ultimately enable GitLab to ship a world class DevOps product, we must provide the necessary data and reporting so all teams within the business can identify opportunities, mitigate risks, and make the right decisions. By providing robust and accurate reporting we can reduce the cycle time from when we release a change, to when we know its impact to overall product usage, and customer experience, helping all of GitLab reach our goals through operational efficiencies, R&D allocation/investment, development priority, etc.

To accomplish this, we aim to leverage our deep expertise, tied with investments in a strong technical foundation to enable all teams within GitLab to produce, analyze, and report on product data by FY23-Q4. Like many top software/SaaS companies we are moving to be a product-led and data-driven organization. Through a partnership with our Data Team and collaboration with Product and Engineering we are cultivating a strong data focused culture within GitLab, driving to support our 30 year [BHAG company goal](https://about.gitlab.com/company/mission/#big-hairy-audacious-goal) of "becoming the most popular collaboration tool for knowledge workers in any industry".

## Guiding Principles

In order to build the best DevOps product we can, and provide the most value for our customers, we need to collect and analyze usage data across the entire platform so we can investigate trends, patterns, and opportunities. Insights generated from our Product Intelligence program enable GitLab to identify the best place to invest people and resources, what categories to push to maturity faster, where our UI experience can be improved and how product changes effect the business.

We understand that usage tracking is a sensitive subject, and we respect and acknowledge our customers' concerns around what we track, how we track it, and what we use it for. We will always be transparent about what we track and how we track it. In line with our company's value of [transparency](https://about.gitlab.com/handbook/values/#transparency), and our [commitment to individual user privacy](https://about.gitlab.com/handbook/product/product-intelligence-guide/service-usage-data-commitment/), our tracking source code and documentation will always be public.



## Challenges we face in Product Intelligence

- GitLab's [single application approach to DevOps](/handbook/product/single-application/) creates a product that is both wide and deep, encompassing a large collection of features used by many teams within an organization, which are composed of different types of users.

- That depth/breadth makes it exceedingly complex to properly map out and understand how our diverse customer set is using the product and gaining value.
- We currently are unable to provide GitLab the required data to identify opportunities and make the right decisions against them.
- GitLab's MVC approach to product development introduces frequent changes to the product stages and what data is available, making historical trend analysis difficult.



## Our Roadmap (As of 2022-03-24)

[Watch](https://youtu.be/dtICtV3zvCs) a walk-through of our [FY23 roadmap](https://docs.google.com/presentation/d/1lAJviw82c6F13gpCZjbyVKlMQxk1pENX9R3Bb2VbF78/edit?usp=sharing) (recorded 2022-03-24), or access a live and up-to-date view of where we're headed in [this epic roadmap view](https://gitlab.com/groups/gitlab-org/-/roadmap?state=all&sort=end_date_asc&layout=MONTHS&label_name%5B%5D=group%3A%3Aproduct+intelligence&label_name%5B%5D=FY23&progress=WEIGHT&show_progress=true&show_milestones=false&milestones_type=GROUP) in GitLab.

| 12 Month Vision |3 Year Vision|
|---|---|
|Build reliable and scalable data instrumentation, collection and delivery tools across platforms,which enable developers and product teams to glean insights from their development efforts.|Build a product usage data framework which sits at the core of how we build product at GitLab; powered by intelligent instrumentation, exhaustive events collection, reliable and understandable data outputs with self-serve discovery and analysis capability.|


### Scalability

**Business Outcome.** In rapid development environment GitLab team members needs as broad data available as possible in order to flexibly adapt to new features, stages and use cases emerging without need to manually instrument tracking.
**Teams Involved.** Product Intelligence, Data, Infrastructure

**Problems to Solve.**

1. We want to [significantly expand event collection](https://gitlab.com/gitlab-org/gitlab/-/issues/355451) in order to allow product teams to have the insights they need fast. With today’s infrastructure, we simply cannot scale the order of magnitude necessary to run a modern data collection program.
1. Instrumentation is not easy nor intuitive, this slows the dev cycle and delays data getting to those who need it.


**FY23 Roadmap.**

1. [Expand Snowplow event tracking for immediate funnel analysis](https://gitlab.com/gitlab-org/gitlab/-/issues/355451)
1. [Implementation of Clickhouse](https://gitlab.com/gitlab-org/gitlab/-/issues/352987) 
1. [Service Ping enhancements](https://gitlab.com/groups/gitlab-org/-/epics/5279)
1. [Snowplow development workflow improvements](https://gitlab.com/groups/gitlab-org/-/epics/6102)


 
### Reliability

**Business Outcome.** GitLab team members needs trust worthy data to build analysis upon. Whenever data is lost it causes distortion and reduce trust. 
**Teams Involved.** Product Intelligence, Data, Infrastructure

**Problems to Solve.**

1. Our data pipelines are fragile, with minimal monitoring, and we catch failures late in the process. This leads to an “all hands on deck” reactive response and disrupts work in progress.
1. As part of  Project Horse, we need to implement a product usage data collection process to share data with GitLab so we can measure customer health.


**FY23 Roadmap.**

1. [Snowplow SaaS Infrastructure transition to Product Intelligence](https://gitlab.com/groups/gitlab-org/-/epics/5161)
1. [Support PGP 2.0 Efforts](https://gitlab.com/groups/gitlab-data/-/epics/329)
1. Data pipelines for Project Horse
1. [Monitoring & Reliability](https://gitlab.com/groups/gitlab-org/-/epics/7030)
1. [VersionApp Maintenance](https://gitlab.com/groups/gitlab-org/-/epics/6371)




### Adoption

**Business Outcome.** Increase product usage data coverage. Comprehensive product usage data will allow us to make better product decisions.
**Teams Involved.** Product Intelligence, Data, Product, Product Data Analysts 

**Problems to Solve.**

1. We need to overcome concerns related to privacy, sending data over the internet and internal company policies which restrict data sharing in order to have a holistic view of product usage for our customers.
1. We need to reduce dev cost required for instrumentation, improve team member confidence in our data and make it easier to discover data so our product teams can embrace a common product usage data framework.



**FY23 Roadmap.**

1. [Offline Usage Reporting MVC](https://gitlab.com/groups/gitlab-org/-/epics/7388)
1. [Offline Usage Reporting v2](https://gitlab.com/groups/gitlab-org/-/epics/6417)
1. [In-app versioning of Service Ping and version upgrade acceptance](https://gitlab.com/groups/gitlab-org/-/epics/6419)
1. [Independent Metrics App](https://gitlab.com/groups/gitlab-org/-/epics/7490)
1. [Connect hashed user_id with DWHhttps://gitlab.com/gitlab-org/gitlab/-/issues/339891#note_671382083
1. [Improve getting started experience for Product Intelligence at GitLab](https://gitlab.com/groups/gitlab-org/-/epics/7352)
1. [Usage Metrics Hygiene](https://gitlab.com/groups/gitlab-org/-/epics/6086)
1. [Improve review process for metrics related changes](https://gitlab.com/groups/gitlab-org/-/epics/6115)
1. [Metrics Dictionary iterations](https://gitlab.com/groups/gitlab-org/-/epics/6522)




### Product Usage Data Parity

**Business Outcome.** GitLab team members need the ability to measure product usage using a common method for customers on both self-managed and SaaS platforms.
**Teams Involved.** Product Intelligence, Data, Customer Success

**Problems to Solve.**

1. 40% of product metrics returning “0” for SaaS (redis counters)
1. Customer Success team cannot perform comprehensive Onboarding, Enablement and Retention activities for SaaS customers.

**FY23 Roadmap.**

1. [Counter-based metrics in SaaS](https://gitlab.com/groups/gitlab-org/-/epics/7387) 
1. [Event level tracking in self-managed instances](https://gitlab.com/groups/gitlab-org/-/epics/6869)
1. Obtain 99% of SaaS data for customers
1. Where else are we not consistent between SM and SaaS?

## How We Work

For more information on Product Intelligence, you can checkout our [Product Intelligence Guide](https://about.gitlab.com/handbook/product/product-intelligence-guide/) which details a [high-level overview of how we make data usable](https://about.gitlab.com/handbook/product/product-intelligence-guide/#product-intelligence-overview), the [Collection Frameworks](https://about.gitlab.com/handbook/product/product-intelligence-guide/#collection-framework) we leverage, our [Metrics Dictionary](https://about.gitlab.com/handbook/product/product-intelligence-guide/#metrics-dictionary), and much more!


## Working Groups and Cross-Functional Initiatives

Product Intelligence provides the necessary frameworks, tooling, and expertise to help us build a better GitLab. Naturally we sit in the middle of many projects, initiatives and OKRs at GitLab. In order to provide clarity and realistic expectations to our stakeholders and customers we practice ruthless prioritization([per Product Principle #6](https://about.gitlab.com/handbook/product/product-principles/)), identifying what is above the line, what is below, and what is unfunded and not possible for us to action on in a given timeline.

This table lists recurring activities that are part of [working groups and cross-functional initiatives](https://about.gitlab.com/company/team/structure/working-groups/). Use [this spreadsheet](https://docs.google.com/spreadsheets/d/16mPUmFe7g8VWC-b137mWiCcy6s3e_JbD6i4nE1igSOM/edit#gid=463091797) to edit this markdown table.

| Activity                                                                                                                           | Cadence       | Type | Teams Involved                                                              |
|------------------------------------------------------------------------------------------------------------------------------------|---------------|------|-----------------------------------------------------------------------------|
| [GTM Product Usage Data Working Group](https://docs.google.com/document/d/1riUXq1GdavnSWJklrebBeZnzcAl6XATyLod9tR6-AlQ/edit)       | Weekly        | Sync | Fulfillment PMs, Product Intelligence, Data, Customer Success, Sales        |
| [Data & Analytics Program for R&D Teams](https://docs.google.com/document/d/1CRIGdNATvRAuBsYnhpEfOJ6C64B7j8hPAI0g5C8EdlU/edit)     | Every 2 Weeks | Sync | Fulfillment PMs, Product Intelligence, Growth, Data                         |
| [Product ARR Drivers Sync](https://docs.google.com/document/d/1TxcJqOPWo4pP1S48OSMBnb4rysky8dRrRWJFflQkmlM/edit)                   | Monthly       | Sync | Customer Success, Sales, Product Leadership   


## Quick Links

| Resource                                                                                                                          | Description                                               |
|-----------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------|
| [Product Intelligence Guide](/handbook/product/product-intelligence-guide)                                                                              | A guide to Product Intelligence                   |
| [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/)                                              | An implementation guide for Usage Ping                    |
| [Snowplow Guide](https://docs.gitlab.com/ee/development/snowplow/index.html)                                                  | An implementation guide for Snowplow                      |
| [Metrics Dictionary](/handbook/product/product-intelligence-guide#metrics-dictionary)                                        | A SSoT for all collected metrics from Usage Ping               |
| [Privacy Policy](/privacy/)                                                                                                       | Our privacy policy outlining what data we collect and how we handle it     |
| [Implementing Product Performance Indicators](/handbook/product/product-intelligence-guide#implementing-product-performance-indicators)                                   | The workflow for putting product performance indicators in place   |
| [Product Intelligence Direction](/direction/product-intelligence/)                                                                              | The roadmap for Product Intelligence at GitLab                       |
| [Product Intelligence Development Process](/handbook/engineering/development/analytics/product-intelligence/) | The development process for the Product Intelligence groups         |
