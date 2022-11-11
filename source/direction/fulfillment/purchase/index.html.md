---
layout: markdown_page
title: Product Direction - Fulfillment - Purchase
description: "The Fulfillment team at GitLab focuses on creating and supporting the enablement of our customers to purchase, upgrade, downgrade, and renew licenses and subscriptions."
canonical_path: "/direction/fulfillment/purchase/"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

Last reviewed: 2022-11

## Fulfillment: Purchase Overview

Purchase, a [Fulfillment](https://about.gitlab.com/direction/fulfillment/) subgroup, is responsible for our primary e-commerce experience, with the goal of increasing the number of first-orders we receive through our self-service purchase flow and in turn, reducing the need for a GitLab team member to manually intervene.

## Vision, Mission, Strategy, and Outcomes

|   | **What does it mean?** | **What does it look like for Purchase?** |
| :--------------- | :----------------- | :----------------- | 
| **Mission** | Our problem space: what is the mountain we're trying to climb? | Purchasing GitLab online should be flexible, asynchronous enabled, and transparent. |
| **Vision** | Our solution concept: what will it look like at the top of the mountain? | Provide a simple, easy-to-use, and reliable purchase experience: we get out of customers' way and get them back to quickly adopting GitLab. |
| **Strategy** | How we'll do it: what is the route we'll take up the mountain? | 1. **Improve Existing Opportunities**: What have customers, sales, and support told us are the problems with our existing experience? <br> 2. **Become a Human**: What are the gaps between our online purchasing experience and our direct channel? What features bring us to parity? <br> 3. **Best in Class**: What features are we used to seeing in the B2C experience? What are our competitors doing?  |
| **Outcomes** | How we'll know we've achieved our vision: what signs tell us we've reached the top of the mountain? | Find our performance indicators [here](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/fulfillment-section/).  |

## Company Positioning

_How does the Purchase mission align to GitLab's broader mission, vision, and strategy?_

- **GitLab Mission & Vision**: [GitLab's mission](https://about.gitlab.com/company/mission/#mission) to make it so that everyone can contribute. The first phase of [GitLab's vision](https://about.gitlab.com/company/vision/#vision) is: DevSecOps Platform. Move market from best-in-class / do-it-yourself solutions to the DevSecOps Platform. **Platforms are the majority of DevOps tooling revenue.**
- **Company Strategy**: [Our strategic goal](https://about.gitlab.com/company/strategy/) is to be the leading complete DevSecOps Platform. **We help our customers build better software faster** including developing cloud native applications, building mobile applications, and incorporating machine learning and artificial intelligence into their products and solutions. 
- **[Product Strategy](https://about.gitlab.com/direction/#product-strategy)**:
   - Focus on increasing Stages per Organization: There is a **strong correlation between the number of stages customers use and their propensity to upgrade to a paid package**. In fact, adding a stage triples conversion!
   - Harness the unique power of a single application
   - Increase wider-community contributions
   - Make our core journey categories lovable
   - GitLab-hosted first
- **Fulfillment Mission**: Provide customers with a consistently great experience by **making it easy for them to purchase GitLab paid subscriptions**, provision the features they pay for, and manage any subscription changes needed such as increasing seat count, purchasing consumables, and renewing their subscription.
- **Purchase Mission**: Purchasing GitLab online should be flexible, asynchronous enabled, and transparent.

## Principles and Illustrative Outputs

_What are [the principles](https://about.gitlab.com/handbook/product/fulfillment-guide/#principles) that describe how we build and guide us through choices and trade-offs?_ 

| **Principle** | **What are some illustrative Purchase outputs that align to this principle?** |
| :--------------- | :----------------- |
| Make conducting business with GitLab seamless | **Becoming a Human**: creating a centralized, singular experience (as opposed to 2 – CDot and GitLab.com) will be like having 1 AE to go to for account and subscription management questions  |
| Build a strong foundation so GitLab can scale | **Best in Class**: consider leveraging a vendor for core e-comm functionality like shopping carts  |
| Iterate, especially when the impact of a change is sizeable | **Becoming a Human**: add additional payment methods.  |
| Minimize and remove business logic from the GitLab application code | **Improve Existing Opportunities**: purchasing/subscription management code should not live in gitlab.com  application code  |

## 1-year Plan

_Where are we focused over the next 12 months to make meaningful steps towards achieving our vision?_

### Roadmap

_What are we building?_


- Find our roadmap [here](https://gitlab.com/groups/gitlab-org/-/roadmap?state=all&sort=end_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&label_name%5B%5D=Fulfillment+Roadmap&label_name%5B%5D=group%3A%3Apurchase&progress=COUNT&show_progress=true&show_milestones=false&milestones_type=GROUP).
- We also have [Fulfillment Roadmap](https://docs.google.com/presentation/d/1eTH09QZqnazJ4jh-jVGTEYEFA3m6R2jwWuhY5_EtPL4/edit?usp=sharing) by Group (Not Public), that internal team members can reference for executive reviews.

### Vendor Eval: Overview
_What are we considering [leveraging a vendor](/direction/fulfillment/#increase-new-customer-acquisition-via-self-service) for?_

  > In FY23, we began an effort to evaluate, procure, and integrate a vendor solution for subscription commerce and management. This will enable GitLab to provide internal teams and our customers with the benefits of typical e-commerce functionality, without building and maintaining standard e-commerce and subscription management functionality that a vendor solution can provide. We will focus our team's e-commerce efforts on differentiated functionality that enhances what the vendor solution can provide. We will also enable other teams, such as Growth, to contribute more to our webstore experience.

#### Vendor Eval: Criteria for Vendor Selection

_What criteria are we using to evaluate a vendor?_

1. **Direction**: What are the attributes associated with our north star buying experience? Can a vendor seamlessly fit into that end state? What are the user/business e-commerce problems?
2. **Usability**: What is the experience like for the user across vendors and current experience?
3. **Feature Set**: Does a vendor provide the necessary features to solve our user/business e-commerce problems? Does the vendor have our show-stopping features built?
4. **Systems Mapping**: What is our systems/data current state architecture map? What would it look like with a vendor? Zuora Audit: Is Zuora in a state that “plays well” with these vendors? Technical Feasibility: can we technically implement basic and GitLab specific e-commerce test use cases?
5. **Time to Value**: With/without a vendor, when will we be able to unlock business requirements? What is the opportunity cost (excess capacity) we get for each option?
6. **Financial Cost**: What is the cost of a vendor v. the cost to build & maintain ourselves?
7. **Risk Tolerance**: What is the risk with each pathway?


#### Vendor Eval: Timeline 

- FY'23-Q4: Continue to work through proof of concept sandbox use cases. Make [vendor no-go / go decision](https://about.gitlab.com/direction/fulfillment/#increase-new-customer-acquisition-via-self-service) by Nov 17th. Define MVP. 
- FY'24-Q1: Assuming we pick a vendor, execute upon MVP. Vendor integration, build & launch.
- FY'24-Q2: Vendor integration, build & launch.
- FY'24-Q3: Vendor integration, build & launch.


## Key Links

- [Performance Indicators](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/fulfillment-section/)
- [Internal Handbook Page](https://internal-handbook.gitlab.io/handbook/product/fulfillment/self-service-purchase/)
