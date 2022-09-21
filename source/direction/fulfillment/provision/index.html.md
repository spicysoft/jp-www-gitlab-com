---
layout: markdown_page
title: "Product Direction - Fulfillment: Provision"
description: "The Provision team at GitLab focuses on providing a seamless activation experience for customers."
canonical_path: "/direction/fulfillment/provision"
---
 
## On this page
{:.no_toc .hidden-md .hidden-lg}
 
- TOC
{:toc}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />
 
## Mission
Provide customers with a seamless experience activating paid plan features that's easy to understand for all involved parties, across both self-managed and SaaS subscriptions.

## Overview
The Provision Group within Fulfillment owns the process that provides customers with access to GitLab paid products. This includes every step from point-of-purchase to a customer having access to their GitLab subscription. We also improve the subscription management experience of GitLab customers and internal team members.

For GitLab customers, we provide tools for subscription activation, de-activation, and reporting license usage. For self-managed customers, this includes Cloud License sync and offline usage data reporting. For SaaS customers, this includes namespace association and usage data syncs. 
 
For internal GitLab team members working in support and operational roles, our group strives to reduce the need for their involvement in provisioning and subscription usage management. This is achieved through automating inefficient processes, clearer documentation, and customer empowerment. 

For internal GitLab team members working in sales and customer-success roles, we work to provide real-time insight into the current state of subscription provisioning and customer usage data. This allows these teams to facilitate accurate renewals, add-ons and upgrades with the latest subscription information.

## Performance Indicators
We use performance indicators to track our progress towards our team's mission. Currently, our PI's include the three metrics outlined below. The status of these PI's are reviewed monthly with product leadership. For the latest metrics, see our [GitLab Internal Handbook](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/fulfillment-section/).

#### Cloud Licensing Adoption Rate
* **What?** The percent of self-managed customers activating a new or renewal subscription with Cloud Licensing on a weekly basis.
* **Why?** Cloud Licensing provides an improved billing and subscription management experience for customers, while also providing key usage data to internal team members to help facilitate smoother renewals and add-ons.

#### Seat Utilization Data Syncs for Cloud License Customers
* **What?** The percent of customers on Cloud Licensing who are sharing license usage data on a regular basis.
* **Why?** The benefits of Cloud Licensing are seen when customers sync their license usage with GitLab successfully.

#### (Minimize) % of License & Renewal Support Tickets Related to Provision
* **What?** The percent of overall support tickets received by the L&R Support team related to processes owned by the Provision team. 
* **Why?** Fewer provisioning-related support tickets received by the L&R team indicate more customers are able to activate their subscriptions without issue. 

## 1 Year Plan
Over the next 12 months, the Provision team has three primary objectives:

1. Increase Cloud Licensing Adoption
2. Improve Internal Team Efficiency
3. Reduce Code Complexity to Address Longstanding Bugs

For a full list of our upcoming and ongoing projects, check out our [GitLab Epic Roadmap](https://gitlab.com/groups/gitlab-org/-/roadmap?state=all&sort=start_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&label_name%5B%5D=Fulfillment+Roadmap&label_name%5B%5D=group%3A%3Aprovision&progress=COUNT&show_progress=true&show_milestones=false&milestones_type=GROUP).

### Increase Cloud Licensing Adoption
In August 2021, we introduced Cloud Licensing. Cloud Licensing provides an improved activation and subscription management experience for self-managed customers. This year, we're focused on increasing Cloud Licensing adoption to ensure more GitLab customers are able to benefit from this functionality. This is being done with the release of [Offline Cloud Licensing](https://gitlab.com/groups/gitlab-org/-/epics/7095) and [making Cloud Licensing the default activation method](https://gitlab.com/groups/gitlab-org/-/epics/7550).
 
### Improve Internal Team Efficiency
A major focus this year is on providing our internal customer-facing team members with the information they need to facilitate a positive customer experience. This includes visibility into provisioning status and [license usage data](https://gitlab.com/groups/gitlab-org/-/epics/8133) collected as part of Cloud Licensing.

### Reduce Code Complexity to Address Longstanding Bugs
Another primary focus this year is on addressing some of the common license-related bugs impacting customers and our internal support teams. As GitLab has scaled, the complexity of our licensing logic has grown as well, resulting in multiple customer and support pain points. We hope to take the time this year to [identify areas for reducing complexity in our code](https://gitlab.com/groups/gitlab-org/-/epics/8129), as we believe this will help to address many longstanding bugs. Some of the primary pain points we are working to address are are outlined in more detail in our [internal handbook page](https://internal-handbook.gitlab.io/handbook/product/fulfillment/licensingissues/).
 
## Looking Forward
As outlined above, the Provision team is focused this year on key efficiency gains and reducing complexity in our current processes. As we are able to complete these improvements, the team is planning to shift focus towards building a state-of-the-art provisioning system.

Some initiatives related to this effort we are currently looking into are:

1. [Multi-instance license management for enterprises](https://gitlab.com/groups/gitlab-org/-/epics/6467)
1. [Simplification of the SaaS sales-assisted new subscription provisioning process](https://gitlab.com/groups/gitlab-org/-/epics/5012)
1. [Real-time usage data in SFDC and Gainsight](https://gitlab.com/groups/gitlab-org/-/epics/8133)
1. [Improving proof of license delivery for channel partners](https://gitlab.com/groups/gitlab-org/-/epics/6404)
