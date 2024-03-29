---
layout: markdown_page
title: "Section Direction - Analytics"
canonical_path: "/direction/analytics/"
---

- TOC
{:toc}

#### The Analytics section DOES NOT INCLUDE all analytics in GitLab
Despite the name, the Analytics section doesn't encompass all analytics capabilities in GitLab. Whether categories like [Value Stream Analytics](/handbook/product/categories/features/#manageoptimize-group), or capabilities like [Issue](https://docs.gitlab.com/ee/user/group/#issues-analytics), [Release](https://docs.gitlab.com/ee/user/project/releases/#release-metrics), or [CI/CD](https://docs.gitlab.com/ee/user/analytics/ci_cd_analytics.html) analytics those are not within the scope of the Analytics section. 

# What we do

## Vision
The Analytics Section closes the DevOps loop. It provides developers the tools to engage with users so they can move beyond improving their efficiency, to accelerating their effectiveness. Our vision is to continue to extend DevOps across its most painful gap - measuring user value. 

## Composition
The Analytics Section is comprised of a single Stage, the Analyze stage. This stage has two groups:
- [Product Analytics](https://about.gitlab.com/direction/analytics/product-analytics) 
- [Product Intelligence](https://about.gitlab.com/direction/analytics/product-intelligence) 

## Competitors
The market is divided between big tech entrants building on top of complete Marketing Automation platforms marketed towards enterprise marketing orgs and stand-alone tools user engagement tools that are marketed towards Product (and occasionally Development) teams.

* **Enterprise Marketing Automation** - Some examples of these are Adobe’s [RT CDP](https://business.adobe.com/products/real-time-customer-data-platform/RTCDP.html), Oracle’s [Unity](https://www.oracle.com/cx/customer-data-platform/), Twilio’s [Segment](https://segment.com/) and Microsofts [Dynamic 365 CDP](https://dynamics.microsoft.com/en-us/customer-data-platform/). This class of products all focus on customer data collection for the purposes of marketing automation with limited direct customer engagement tools. The primary buyer for this class of tools is a CMO. Interestingly, **many of these tools focus their attention on developer-enabled data management** as that is a critical stepping stone to enabling Marketing and Product teams ([mParticle](https://www.mparticle.com/?)). 
* **User Engagement** - Another class of products is targeting smaller organizations and Product and Development teams directly. These include [Pendo](https://www.pendo.io/), [Amplitude](https://amplitude.com/), [PostHog](https://posthog.com/), [LogRocket](https://logrocket.com/), [GlassBox](https://www.glassbox.com/?utm_source=ppc&utm_medium=google&utm_campaign=brand&lsd=OA-PPC-Adwords&gclid=CjwKCAiA9aKQBhBREiwAyGP5lSLyGJZUQIIli9pacrvj18QYa4SXm2XPSZnI9twyNEjD-WulIgN1qBoC1a4QAvD_BwE) and Google’s [Firebase Engage](https://firebase.google.com/products-engage). The primary buyer of this class of tools is a CTO/CPO. Interestingly, **few of these products offer both a SaaS and Self-Managed option**.

### Competitor Pricing
Due to the heavy emphasis on SaaS and the high data volumes - most pricing in this market is consumption-based. 
- [MixPanel](https://mixpanel.com/pricing/) - SaaS - Pay by the Monthly Tracked User
- [Heap](https://heap.io/pricing) - SaaS - Single Fee sessions/year limits
- [Pendo](https://www.pendo.io/pricing/) - SaaS - Unlimited Seats - tiered by sophistication of capabilities (Roadmapping, feedback in higher tiers)
- [LogRocket](https://logrocket.com/pricing) - SaaS - Seats + Session Limits for lower tiers - features in higher tiers.
- [PostHog](https://posthog.com/pricing) - Self-Managed - By Event Volume

# How we do it

## Performance Indicators
Our Performance Indicators [are TBD](https://gitlab.com/gitlab-com/Product/-/issues/4272). 

## Jobs to Be Done
We are [conducting research on critical jobs to be done](https://gitlab.com/gitlab-com/Product/-/issues/4274) for the Analytics section.

## Personas
We will likely [need additional personas](https://gitlab.com/gitlab-com/Product/-/issues/4273) but the existing personas we serve are (in priority order):
1. [Sasha - Software Developer](/handbook/product/personas/#sasha-software-developer)
1. [Parker - Product Manager](/handbook/product/personas/#parker-product-manager)

Some nuance can be added to our personas and how we approach them. Nearly all analytics questions, workflows, funnels, or any metrics gathering will require technical work to add instrumentation, test, and deploy it. This is the reason we are focusing on Sasha as our primary persona before Parker. We are addressing Sasha in the context that they are supporting Analytics efforts for their team. This means they are interested in how to do tasks related to adding instrumentation code, deploying it, and debugging it in support of analytics-related questions and projects. This is a more focused version of the Sasha overall persona.

As part of considering these personas, consider what personas we are _not_ including in this initial list. Specifically, we are not targeting executive personas or Directors with the initial offering. Sasha and Parker are individual contributors and have unique needs different than Directors or executives. They are focused mainly on specific applications and the analytics related to them, whereas executives and Directors will be concerned about multiple, or a "fleet", of applications. We intend to go after these personas eventually and will not intentionally create capabilities that exclude them, but they are not our primary focus at this point.

## Right to Win
We have the right to win in this new Section because:
- **The value stream delivery process is integrating** - Gartner’s market definition of Value Stream Delivery Platforms ends at Deployment today. We expect it to extend to Monitor and then the outer-loop. If we don’t capture this market as part of our platform - someone else will. 
- **Developer experience is key** - The current market is broken by poor developer experience. Capturing User Engagement insights in digital products requires developers. We already capture developer workflow, and we know how to delight developers. 
- **Our distribution models are disruptive** - Our bottom’s up distribution model allows for adoption without displacement. Developers in larger organizations can instrument and utilize GitLab’s outer-loop categories alongside existing tools. In smaller organizations, they can utilize outer-loop tools as an alternative to using no tool. 
- **We are trusted** - User data, like code - is sensitive data. The focus against third-party ownership of user data, and our availability as a SaaS and self-managed platform allow us to leverage the trust we’ve built as an open-source and transparent company. We are able to develop open-standards for data-storage, and enable contribution to how we handle data to ensure our users can trust it is safe.
- **The single DevOps Platform unlocks unique technical possibilities** - GitLab stores our users source code, issues, vulnerability records, and other project info. This gives us the opportunity to do associations and correlations that will not be possible to do (or at least not easily) on a standalone analytics product.

## 1 Year Plan
Our 1 year plan is to:
- Phase 1 - **Establish Vision** - Create the Analytics Section as a completion of our existing DevOps loop.  Publish this direction, creating the above categories and re-evaluate TBH roles and existing investment in other groups to seed the Product Analytics groups.
- Phase 2 - **Build for initial use cases we can dogfood** - Build product capabilities that allow us to dogfood [initial Product Analytics uses cases](#initial-use-cases) using GitLab.com's existing instrumentation and utilize our existing minimal [Product Analytics capabilities](https://docs.gitlab.com/ee/operations/product_analytics.html). Enable on GitLab.com for the `gitlab-com` group as initial testers. 
- Phase 3 - **Enable general availability of Product Analytics capabilities** - Ensure Product Analytics capabilities are available by default, backed by GitLab's Clickhouse cluster enabling users to submit their own Product Analytics events. 
- Phase 4 - **Increase investment in the Analytics section** - Pursue MVCs of next [use cases](#use-cases) and [categories](#categories) after Product Analytics instrumentation such as Experimentation and Session Recording.

We are tracking next steps for the overall section in this [issue](https://gitlab.com/gitlab-com/Product/-/issues/3785)

# Why we do it

## Impact
The Analytics section will further extend GitLab's lead in being the One DevOps platform by consolidating yet another set of existing tools required to deliver software value to users. 

## Market
All current DevOps platforms define their water's edge at Monitoring - ensuring a deployed idea is available and performant for users. The process of visualizing and learning from usage, collecting and organizing feedback, engaging and enabling users - those are all left to specialist vendors positioning their products at Marketing, Growth and Product teams. 

### Trends
One critical trend in this market is a clear [move to first-party data](https://www.idc.com/getdoc.jsp?containerId=US48052920) (partially a result of [ITP](https://webkit.org/blog/7675/intelligent-tracking-prevention/)) as the use of third-party SaaS services to store user data increasingly causes data privacy compliance and brand concerns.

From [conversations analysts](https://docs.google.com/document/d/1ibZ1VocKbqLQA3SLPU1do9vvkbOLquCpB5Y0YMjBy84/edit#heading=h.9gzwyv29agtf) we expect the market definitions to become crisper and to see a new segmentation that includes developer-focused user engagement products called Product Analytics. 

### Size
The traditional markets for this stage are fragmented across IT Operations, Marketing Automation, and Customer Data Platform markets. The market most closely aligned to our intent is Customer Data Platforms - a market that IDC states was **$1.3B in 2020 and expected to grow to [$3B by 2025](https://www.idc.com/getdoc.jsp?containerId=US48054421) (18% CAGR)**. 

## Product Principles
We will pursue this opportunity with the following principles:
- [Focus on Developers](/handbook/product/product-principles/#developer-first) - We have established relationships with them, and they are key to building an onramp to the product and a [dual flywheel](/company/strategy/#dual-flywheels) to our strategy.
- [Works by Default](/handbook/product/product-principles/#configuration-principles) - The way we can establish bottom-up disruption is by making outer-loop categories available, on-by-default in every GitLab instance.
- [Focus on Next Generation Adopters](/handbook/product/product-principles/#prioritize-current-adopters) - Every company is becoming a software company, there are many more software experiences to be written than our written today. The market of tools spanning the outer-loop is segmenting and consolidating, there are many organizations who will be new to it. Focusing on them will allow us to concentrate our R&D effort on future platform growth rather than integration with existing vendors.
- [Integrate Open Source Standards](/handbook/product/product-principles/#avoid-not-invented-here-syndrome) - We will stand on the shoulders of giants and use open-source standards, particularly when considering product analytics instrumentation. 
- [Dogfood](/handbook/product/product-processes/#dogfood-everything) - We should be our own first customer, utilizing our outer-loop capabilities to drive GitLab’s Product Led Growth amongst developers in order to accelerate our learning cycles.
- [Start with the problem, not the solution.](/handbook/product/product-principles/#our-product-principles) - We will focus on what is impactful for our users and solves real problems for them. There will be temptations to record more data or create more views but we will not do so unless we can first identify who would want to use that and what they would use it for.

## Handbook Pages
- [Product Intelligence Group Engineering](/handbook/engineering/development/analytics/product-intelligence/)
