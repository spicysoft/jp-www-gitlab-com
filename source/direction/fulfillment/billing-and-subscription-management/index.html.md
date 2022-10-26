---
layout: markdown_page
title: "Product Direction - Fulfillment: Billing and Subscription Management"
description: "The Billing and Subscription Management team at GitLab is focused on providing self-service subscriptions management functionality for existing customers."
canonical_path: "/direction/fulfillment/billing-and-subscription-management/"
---
 
## On this page
{:.no_toc .hidden-md .hidden-lg}
 
- TOC
{:toc}

## Mission

Provide customers with an easy, informed and reliable experience to view and manage their subscriptions, billing details, and contacts.

## Overview

Once customer purchases a GitLab subscription - whether they worked with a sales rep or purchased directly from our website with a credit card - they should be able to view that subscription, modify it, and manage all of their billing information in one place (**[Customers Portal](https://customers.gitlab.com/)**). Customers that purchase via an authorized GitLab Channel Partner should be able to view purchased subscriptions, but will need to contact their reseller to make subscription changes.

Some subscription changes are automated: Quarterly Subscription Reconciliation (QSR) automatically bills for overages; and Auto-Renewal automatically renews eligible subscriptions. Both are geared towards creating a hands-off subscription management experience for our customers and internal teams.

<!--
### How you can help

### Useful resources
-->

## Vision 

To be added

<!--
Customer should never be surprised when they receive a bill from GitLab

Transparency for Sales and Customer Success teams 

-->

## Target audience and experience

- Self-service customers
- Sales assisted customers
- Channel Partner customers
- Internal teams (Sales, Customer Success, Billing, Compliance)

## Feature overview and maturity

| Feature | Maturity | Description | To reach the next Maturity level |
|---------|:--------:|-------------|----------------------------------|
| View subscriptions | 😊 | SaaS and SM subscriptions can be viewed in Customers Portal. | |
| Renew subscription | 😊 | SaaS and SM subscriptions can be renewed with a credit card. | |
| Auto-Renew subscription | 🙂 | SaaS subscriptions can be auto-renewed. | |
| Add seats to a subscription | 😊 | SaaS and SM subscriptions can have seats added with a credit card. | |
| Remove seats from a subscription | ✖️  | Not Planned  | |
| Upgrade a subscription | 😊 | SaaS and SM Premium subscriptions can be upgraded to Ultimate with a credit card. | |
| Downgrade a subscription | ✖️ | Not planned | |
| View invoices | 😊 | All customers that purchased directly from GitLab can view their invoices. | |
| Pay for the invoice | ✖️ | Not planned, but evaluating the need. | |
| Manage payment methods | 😊 | All customers that purchased directly from GitLab can view and manage their credit cards. | |
| Quarterly Subscription Reconciliation (QSR) process | 🙂 | QSR will process for some use cases of SaaS and SM subscriptions (Self-Service and Sales Assisted) that are opted into QSR.  | |
| Special UX for Channel Partner customers  | 🌱 | Channel customers will be able to login, view their subscriptions, and directed to the GitLab Partner to make changes manage that subscription)  | [Epic](https://gitlab.com/groups/gitlab-org/-/epics/8941) |
| Emails/In-app notifications related to subscription management | 🙂 | | |

**Legend:**

- ✖️ **Not Planned**: Not planned right now.
- 🌱 **Planned**: Not yet implemented, but on our roadmap.
- 🙂 **Minimal**: Available and works for a small number of use cases. Some transparency for internal teams.
- 😊 **Viable**: Available and works for majority of use cases. Some transparency for internal teams.
- 😁 **Complete**: Fully functional for all eligible use cases. Full transparency for internal teams.
- 😍 **Lovable**: Glowing review from external and internal users.
   
## Roadmap and Planning

### What we're currently working on

1. Improving SaaS auto-renewal process by addressing recently discovered edge cases and creating transparency for internal teams.
1. Creating transparency into QSR process for internal teams, so that they can better assist our customers.
1. Improving transparency into the overages and related billing for SaaS customers (at the time of adding users).
1. [Enabling self-service renewal for Community Programs](https://gitlab.com/groups/gitlab-org/-/epics/5711).
1. Ongoing research on the Renewal experience and existing processes (both internal teams and GitLab customers), so we can understand and improve the Renewal process for all.

### What's next and why

1. Enabling Self-Managed subscriptions to auto-renew. **Why?** We are continuing to iterate on Auto-Renew functionality. SM subscriptions that are enrolled in auto-renewal are our next biggest use case to solve for.
1. [Allowing customers that puchased via Reseller to access Customers Portal](https://gitlab.com/groups/gitlab-org/-/epics/7230). **Why?** Reseller customers are unable to self-serve their access to what they purchased, having to contact Support for help.

### 1 Year Plan

To be added

### Reference to Epics, Issues and Boards

Some content is confidential and therefore won't be visible.

* [Fulfillment Roadmap > Billing and Subscription Management](https://gitlab.com/groups/gitlab-org/-/roadmap?state=all&sort=end_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&label_name%5B%5D=Fulfillment+Roadmap&label_name%5B%5D=group%3A%3Abilling+and+subscription+management&progress=COUNT&show_progress=true&show_milestones=false&milestones_type=GROUP)
* All Billing and Subscription Management epics
   * [List of epics](https://gitlab.com/groups/gitlab-org/-/epics?state=opened&page=1&sort=start_date_desc&label_name[]=group::billing+and+subscription+management)
   * [Organized epics board](https://gitlab.com/groups/gitlab-org/-/epic_boards/31408?label_name[]=group%3A%3Abilling%20and%20subscription%20management)
* All Billing and Subscription Management issues
   * [List of issues](https://gitlab.com/groups/gitlab-org/-/issues/?sort=updated_desc&state=opened&label_name%5B%5D=group%3A%3Abilling%20and%20subscription%20management&first_page_size=20)
   * [Organized issues board](https://gitlab.com/groups/gitlab-org/-/boards/4282426?label_name[]=group%3A%3Abilling%20and%20subscription%20management)
