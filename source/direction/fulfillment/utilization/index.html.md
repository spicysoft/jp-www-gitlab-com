---
layout: markdown_page
title: "Category Direction - Utilization"
description: "The Utilization strategy page belongs to the Utilization group of the Fulfillment stage"
---

- TOC
{:toc}

## Introduction and how you can help

Thanks for visiting this direction page on Utilization in GitLab. This page belongs to the [Utilization](/handbook/product/categories/#utilization-group) group of the Fulfillment stage and is maintained by Donique Smit ([E-Mail](mailto:dsmit@gitlab.com)). 

This direction is constantly evolving and everyone can contribute:

- Please comment and contribute in the linked [issues](https://gitlab.com/groups/gitlab-org/-/issues/?sort=updated_desc&state=opened&label_name%5B%5D=group%3A%3Autilization) and [epics](https://gitlab.com/groups/gitlab-org/-/epics?state=opened&page=1&sort=start_date_desc&label_name[]=group::utilization) on this page. Sharing your feedback directly on GitLab.com or submitting a merge request to this page are the best ways to contribute to our strategy.
- Please share feedback directly on relevant issues and epics or via email, we'd love to hear from you!

### Overview

Utilization data is the key that unlocks efficiency and optimization of the sales cycle. When a sales team member or a user themselves have access to usage data, they can make decisions on their own which greatly increase probability of sale and delivers an amazing user experience. The Utilization group endeavors to capture and deliver usage data to internal team members, prospects, and customers so that they can make the best decision for their business needs. The Utilization group builds products that support the following phases of the sales and renewal/Fulfillment cycle:

#### Pre-sale: 

The user is making use of our Free product or on a Trial. During this phase, we want to provide sufficient information about current usage and what the user can expect to order when they are ready to make a purchase.

The minimum order the user needs to make to cover their current usage should be very clear, and we should provide clarity around what a paid subscription looks like - in other words, how will they be billed for their usage. There should be no surprises about when users are billable, how CI minutes are billed and which storage types are consuming the storage allocation.

#### Post-sale & purchase management: 

Once a product has been purchased, the user should have visibility into the usage of the purchase as well as have tools to manage the usage of that purchase. For example, when buying a subscription with seats, the user will want to know which users are taking up those seats and how many unallocated seats are still available to use before additional costs are incurred. When buying CI minutes or storage, the user should be informed about consumption of the CI minutes and storage relative to what they have available, in order to take action to purchase more, reduce consumption or consider the next product tier (Ultimate).

Further to having visibility into the usage, the user should also have controls and tools to manage the usage. The management actions can include: removing billable members, setting restrictions on projects for the CI minutes and storage they can consume and requiring approvals for users who can take up a seat.

#### Pre-renewal: 

For this phase, historical data becomes important as it informs the user about what their renewal order should look like. It can also give a view of their trajectory over the last 12 months so that they can renew with their anticipated future growth in mind.

The accuracy and reliability of our data, presented in a clear and understandable manner, will allow for a frictionless order process as conversations about the renewal is supported and informed by historical usage information.

### Vision

In short, a sophisticated Utilization product would provide predictability - either our own systems monitoring and suggesting purchasing actions based on usage behaviour, or empowering our sales team to have a conversation about growth with detailed usage data as a foundation for that conversation.

Since there is not 1:1 parity for our self-managed and SaaS offerings, Utilization will consider the needs of the users of each offering and try to solve for them specifically, while maintaining a consistent, reliable user experience across GitLab.

### Target Audience and Experience

Utilization serves customers and internal teams.

For customers, at a high-level we serve: 
- Self-service customers
- Sales assisted customers
- Channel Partners and their customers

More specifically, our customers can be described with the help of [buyer personas](https://about.gitlab.com/handbook/marketing/strategic-marketing/roles-personas/buyer-persona) and may play a different role in the decision-making and purchasing process depending on their company size and their role.

- For SMB and mid-market company: [The application development manager](https://about.gitlab.com/handbook/marketing/strategic-marketing/roles-personas/buyer-persona/#alex---the-application-development-manager) needs to have visibility into usage across their teams and be able to control usage in a way that fits their company preferences/processes/budget.
- For large or enterprise company: [The release and change management director](https://about.gitlab.com/handbook/marketing/strategic-marketing/roles-personas/buyer-persona/#casey---the-release-and-change-management-director) is concerned with acurate billing and being able to make purchasing decisions based on usage information.

Internal teams are:

- [support](https://about.gitlab.com/handbook/support/) 
- [customer success](https://about.gitlab.com/handbook/customer-success/)
- [sales](https://about.gitlab.com/handbook/sales/)

#### Challenges to address

### Utilization Group Responsibilities

The Utilization group is responsible for all managerial accounting of usage and other reporting including CI minutes, storage types, and related admin controls.

#### Key responsibilities
- Features related to tracking and visualization of seat usage, CI minutes, and storage
- Billable users, max users calculations in SM & SaaS
- Emails/In-app notification related to consumption (users/CI/storage)
- Create transparency for internal teams in customer subscription, billing, and licensing.
- Reporting and analysis of usage (users, storage, CI minutes, etc.)

#### Example projects
- Cost management 
- Usage quota budgets
- Free User Efficiency: Storage Limits
- Billing admin console 

#### What we're not responsible for

The Utilization Group relies on calculations provided by other teams as part of building the right reporting and visualization for customers and admins. However, Utilization is not responsible for the collection or raw calculations of this underlying data. Specifically, Utilization relies on Enablement teams to provide accurate data around things such as: 
1. Project-level storage calculations (git repo + git LFS)
1. Namespace storage calculation: git repo, LFS, artifacts, container registry, etc. 
1. CI minutes


### Where we are headed


### What's Next & Why


### Maturity Plan

Maturity scorecard not yet completed - TBD.

### Competitive Landscape


### Top Customer Success/Sales and user issue(s)


### Top Vision Item(s)
