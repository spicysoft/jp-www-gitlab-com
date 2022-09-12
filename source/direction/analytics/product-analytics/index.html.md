---
layout: markdown_page
title: "Group Direction - Product Analytics"
description: "The Product Direction for GitLab's Product Analytics Group."
canonical_path: "/direction/analytics/product-analytics/"
---

- TOC
{:toc}

Welcome to the GitLab Product Analytics group direction. 

# What we do

## Categories
Given our focus on developers, the software delivery value stream, and DevOps - we will compose our new DevOps stage, Analyze, based on the set of categories we commonly see in User Engagement [competitors](#competitors).

Currently the Product Analytics group includes a single category, Product Analytics. This category is focused on understanding and gaining insight from usage patterns.

In the future we envision more categories as we broaden our scope to cover additional personas and use cases. Those new categories include (in priority order):
- Experiments - Crafting hypothesis driven tests to determine product improvement success
- Session Recording - Understanding and analyzing detailed individual usage patterns
- In-App Messaging - Engage users from directly within your product
- Customer Surveys - Conduct polls and other inquiries to determine customer preference, reaction and satisfaction

### Additional Categories
There are a number of existing (or considered) product categories in GitLab that could be considered part of the outer loop that the Analytics section will partner closely with to ensure we provide a cohesive experience. Those include:
- Error Tracking - For user experienced errors
- Feature Flags - For experiments and A/B testing
- Service Desk - For Customer Surveys and feedback
- Real User Monitoring - For Error Tracking and Session Recording

We plan to collaborate and build with these categories where possible, rather than re-inventing new solutions for these related use cases.

## Use Cases
There are many use cases for Product Analytics. One way you can think about these is to segment them by the type of digital product analyzes and the subsequent questions those who create it would seek to be answer. For example, a team that publishes a blog is primarily interested in page views of blog posts.

### Initial Use Cases
Our initial use case is focused on our ability to [dogfood](/handbook/values/#dogfooding). As a result they focus on Web Apps. Our initial use case is:
- Web applications (specifically Ruby on Rails)
- With a particular interest in views, funnels, and conversion
- Those that are already instrumented with Snowplow events

#### Use Cases and Personas We Are Not Pursuing
It is important to identify the use cases and personas that we want to pursue and it is equally important to identify those that we do not wish to pursue. Because analytics can mean many things to many different people, this is especially important.

We do not plan at this time to pursue use cases and personas around:

* Marketing analytics for marketing and sales organizations
    * This might include capabilities such as page clicks or traffic trends over time and how they relate to the effecitiveness of a marketing campaign or lead generation strategy.
    * Example companies in this space: [Google Analytics](https://analytics.google.com/analytics/web)
* Application performance monitoring for software reliability engineering organizations
    * This might include capabilities such as crash debugging and error tracking analytics and feeding it into product health measures, uptime measurements, and reliability dashboard
    * Example companies in this space: [Sentry](https://sentry.io/welcome/), [Firebase Crashlytics](https://firebase.google.com/products/crashlytics), [Raygun](https://raygun.com/), and [Rollbar](https://rollbar.com/)
    * The [Monitor stage](/direction/monitor/) is better positioned to address those use cases.

Note that while the above are use cases and personas we are not actively pursuing, this does not mean that those personas will not find some value in what we provide. It means that they are not our primary focus. We do not intend to block functionality around these, just that they are not our primary focus. For example, page views and traffic trends are also useful for marketing personas, but we intend to use them for guiding product-related use cases, not for addressing marketing-related use cases. Similarly, understanding error reporting for a given feature may be important to understand a feature, but we are not focused on making a product quality or bug tracking platform using those pieces of data.

## What's Next
- [What's Next for Product Intelligence](/direction/product-intelligence/#our-roadmap-as-of-2022-03-24)
- [Analytics Section Next Steps](https://gitlab.com/gitlab-com/Product/-/issues/3785)

### Competitors
The market is divided between big tech entrants building on top of complete Marketing Automation platforms marketed towards enterprise marketing orgs and stand-alone tools user engagement tools that are marketed towards Product (and occasionally Development) teams.

* **Enterprise Marketing Automation** - Some examples of these are Adobe’s [RT CDP](https://business.adobe.com/products/real-time-customer-data-platform/RTCDP.html), Oracle’s [Unity](https://www.oracle.com/cx/customer-data-platform/), Twilio’s [Segment](https://segment.com/) and Microsofts [Dynamic 365 CDP](https://dynamics.microsoft.com/en-us/customer-data-platform/). This class of products all focus on customer data collection for the purposes of marketing automation with limited direct customer engagement tools. The primary buyer for this class of tools is a CMO. Interestingly, **many of these tools focus their attention on developer-enabled data management** as that is a critical stepping stone to enabling Marketing and Product teams ([mParticle](https://www.mparticle.com/?)). 
* **User Engagement** - Another class of products is targeting smaller organizations and Product and Development teams directly. These include [Pendo](https://www.pendo.io/), [Amplitude](https://amplitude.com/), [PostHog](https://posthog.com/), [LogRocket](https://logrocket.com/), [GlassBox](https://www.glassbox.com/?utm_source=ppc&utm_medium=google&utm_campaign=brand&lsd=OA-PPC-Adwords&gclid=CjwKCAiA9aKQBhBREiwAyGP5lSLyGJZUQIIli9pacrvj18QYa4SXm2XPSZnI9twyNEjD-WulIgN1qBoC1a4QAvD_BwE) and Google’s [Firebase Engage](https://firebase.google.com/products-engage). The primary buyer of this class of tools is a CTO/CPO. Interestingly, **few of these products offer both a SaaS and Self-Managed option**.

#### Competitor Pricing
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
The existing personas we serve are below, in priority order. We will likely [need additional personas](https://gitlab.com/gitlab-com/Product/-/issues/4273) in the future.

1. [Sasha - Software Developer](/handbook/product/personas/#sasha-software-developer)
1. [Parker - Product Manager](/handbook/product/personas/#parker-product-manager)

Some nuance can be added to our personas and how we approach them. Nearly all analytics questions, workflows, funnels, or any metrics gathering will require technical work to add instrumentation, test, and deploy it. This is the reason we are focusing on Sasha as our primary persona before Parker. We are addressing Sasha in the context that they are supporting Analytics efforts for their team. This means they are interested in how to do tasks related to adding instrumentation code, deploying it, and debugging it in support of analytics-related questions and projects. This is a more focused version of the Sasha overall persona.

As part of considering these personas, consider what personas we are _not_ including in this initial list. Specifically, we are not targeting executive personas or Directors with the initial offering. Sasha and Parker are individual contributors and have unique needs different than Directors or executives. They are focused mainly on specific applications and the analytics related to them, whereas executives and Directors will be concerned about multiple, or a "fleet", of applications. We intend to go after these personas eventually and will not intentionally create capabilities that exclude them, but they are not our primary focus at this point.

## Pricing
Our tiering plan will leverage our buyer-based model. The Analytics section, as a bridge from Ops to Dev (Plan) is an inherently collaborative stage. As a result, there are significant Paid Tier possibilities. Core will be seen primarily as a developer on-ramp.
- **Core - Developer Buyer**
    - Instrumentation
    - Collection
    - Data Debugging
    - Standard Dashboards
- **Premium - Development Team Buyer**
    - Custom Dashboards
    - A/B Testing
    - Cohorts
- **Ultimate - Growth Director / CPO / CTO Buyer**
    - Experiments
    - In-App Messaging
    - Experimentation Dashboards
    - KPI Designation
    - Surveys
    - Session Recording
- **Beyond Ultimate Considerations**
    - Experiment Optimization
    - Usage Insights
    - Sentiment Trends
