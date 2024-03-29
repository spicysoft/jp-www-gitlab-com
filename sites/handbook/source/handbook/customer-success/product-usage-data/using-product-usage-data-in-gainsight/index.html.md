---
layout: handbook-page-toc
title: "How to Use Product Usage Reporting"
description: "Effective ways to apply product usage reporting for Sales and Customer Success teams to support their customers' top initiatives and business objectives."
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}
{::options parse_block_html="true" /}

- TOC
{:toc .hidden-md .hidden-lg}

---

## Purpose

To guide users in how to use the customer's product usage reporting within Gainsight, review use case adoption strategies, and understand how the data connects and what to do with data quality concerns.

For a richer explanation of the purpose and intended outcomes, see the [Product Usage Reporting Vision](https://about.gitlab.com/handbook/customer-success/product-usage-data/) page for more information.

For the overall 3-year vision, see [Product Usage Reporting Roadmap](https://docs.google.com/presentation/d/1_v4hxKdbL6--UjpjVdveGEGD_MjmUnBg0-OIU1R14m8/edit#slide=id.p) (internal GitLab document). 

## Videos

For a high level overview (7 minutes), see the [Using Product Usage Reporting in Gainsight - Introduction](https://youtu.be/bny-SoH-MNc) video.

- [What is Product Usage Reporting and Health Scoring and How to Find it in Gainsight](https://www.youtube.com/watch?v=H6l3_AmQif8)
- [How to Find License Utilization and What it Means in Gainsight](https://www.youtube.com/watch?v=Mezt6knBxI0)

## Quick links

<div class="flex-row" markdown="0" style="height:80px">
<a href="/handbook/customer-success/product-usage-data/" class="btn btn-purple" style="width:50%;height:100%;margin:5px;display:flex;justify-content:center;align-items:center;">Operational Data <br> Vision Page</a>
<a href="https://metrics.gitlab.com/" class="btn btn-purple" style="width:50%;height:100%;margin:5px;display:flex;justify-content:center;align-items:center;">Metrics Dictionary</a>
</div>
<div class="flex-row" markdown="0" style="height:80px">
<a href="/handbook/sales/field-operations/sales-systems/license-usage-app/" class="btn btn-purple" style="width:50%;height:100%;margin:5px;display:flex;justify-content:center;align-items:center;">Salesforce License <br> Utilizaton App</a>
<a href="/handbook/business-technology/data-team/data-catalog/product-usage-data/" class="btn btn-purple" style="width:50%;height:100%;margin:5px;left;display:flex;justify-content:center;align-items:center;">Data Team Handbook</a>
</div>
<div class="flex-row" markdown="0" style="height:80px">
<a href="/handbook/customer-success/product-usage-data/use-case-adoption/" class="btn btn-purple" style="width:50%;height:100%;margin:5px;left;display:flex;justify-content:center;align-items:center;">Health Scoring - Calculations and Methodology</a>
<a href="/handbook/customer-success/product-usage-data/using-gainsight-data-in-sfdc/" class="btn btn-purple" style="width:50%;height:100%;margin:5px;left;display:flex;justify-content:center;align-items:center;">Using Gainsight Usage Reporting <br> in Salesforce</a>
</div>
<div class="flex-row" markdown="0" style="height:80px">
<a href="/handbook/customer-success/product-usage-data/use-case-adoption/#license-utilization-in-gainsight" class="btn btn-purple" style="width:50%;height:100%;margin:5px;left;display:flex;justify-content:center;align-items:center;">License Utilization <br> in Gainsight</a>
<a href="/handbook/customer-success/csm/health-score-triage/#gainsight-scorecard-attributes-and-calculations" class="btn btn-purple" style="width:50%;height:100%;margin:5px;left;display:flex;justify-content:center;align-items:center;">Gainsight Scorecard <br> Attributes and Calculations</a>
</div>
<div class="flex-row" markdown="0" style="height:80px">
<a href="/handbook/customer-success/product-usage-data/freemium-saas-usage-data/" class="btn btn-purple" style="width:50%;height:100%;margin:5px;left;display:flex;justify-content:center;align-items:center;">SaaS Free/Trial <br>Usage Reporting</a>
<a href="/handbook/customer-success/product-usage-data/product-usage-data-FAQs" class="btn btn-purple" style="width:50%;height:100%;margin:5px;left;display:flex;justify-content:center;align-items:center;">Product Usage Reporting FAQs</a>
</div>


<br>



## Gainsight reports and dashboards

Use the [Product Usage Reporting - v2](https://gitlab.gainsightcloud.com/v1/ui/home#/191fa30f-7632-4000-b57a-edb62d9bb81b) Dashboard to see the full list of your accounts.

When using the Account C360 page, these topics are most relevant for evaluating usage:

| Report Name | Description | Application |
| ------ | ------ | ------ |
| **Summary** | Shows Company-wide License Utilization and Total Licenses Sold | Use this to quickly identify the depth of adoption, if the account is Reporting  |
| **User Adoption Metrics** | Contextually-based metrics to graph the adoption percentage of the account (e.g., users who ran a pipeline divided by monthly active users). | Metrics to help the account team understand monthly use case and license usage to assess for expansion or enablement decisions. Toggle through the different reports to see different graphs. |
| **Product Usage Trends** | Month-over-Month trend analyses for use cases such as SCM, CI, DevSecOps, and License Utilization | Monthly data points for use case-specific metrics. To be used to help the account team learn feature and deployment depth and adoption — use this in conjunction with the Monthly Distilled Metrics. Toggle through the reports to analyze the top metrcs on a per use case basis. |
| **Instance and Namespace Details** | List of all instances related to the account with `Instance Type` meta data | Use [Updating Self Managed Instance Type to update the hostname](#updating-self-managed-instance-type) |

## Ways to use these metrics

There will be several limitations with the MVC deployment. As you come across use cases, please [open an issue](https://gitlab.com/gitlab-com/sales-team/field-operations/customer-success-operations/-/issues) or [request a new metric](#requesting-new-metrics) as needed. Here are several potential use cases for utilizing data:

| Topic | Description | Questions to Address | References |
| :--- | --- | --- | --- |
| **Understand my customer's basic usage** | With data syncing to Gainsight, we can quickly and easily look up an account and see instances where we are receiving their usage data. <br> Use this to see all instances and namespaces related to your account (Production and non-Production) and their activity. <br> **Note*- : This only works for instances that are tied to an active subscription. | - Who is sending us their service ping data? <br> &bull; Are they sending Production data? <br> &bull; Is their activity in line with my expectations? <br>&bull; Does the activity found in the product usage data agree with what I know about their usage? | <br>&bull; [VIDEO: Using Product Usage Data in Gainsight - Introduction](https://www.youtube.com/watch?v=bny-SoH-MNc)<br> &bull; [VIDEO: What is Product Usage Data and How to Find it in Gainsight](https://youtu.be/H6l3_AmQif8) |
| **C360: Instance and Namespace Details** | To better support my customer, I need to know what GitLab version they're on so I can help them upgrade or patch their self-managed instance. | <br>&bull; What version(s) are my customers on?<br>&bull; If multiple instances, how do I know which instance is on which version?<br>&bull; What is their namespace? | C360: Instance and Namespace<br><br> Product Usage Data Dashboard (`Self Managed Instances - Current GitLab Version Details` report) |
| **How many licenses has my customer deployed?** | Understand my customers' License Utilization (see above) to know how many licenses have been deployed  `billable_user_count/licensed seats`. <br> For example, a customer may have purchased 200 licenses and have only deployed 80 after 9 months. | <br>&bull; What trends can I see?<br>&bull; How do I understand my customer's License Utilization? | <br>&bull; [VIDEO: How to Find License Utilization and What it Means in Gainsight](https://youtu.be/Mezt6knBxI0)<br>&bull; C360: User Adoption Metrics<br>&bull; Product Usage Data dashboard<br>&bull; [License Utilization Handbook](/handbook/customer-success/product-usage-data/use-case-adoption/)<br>&bull; [VIDEO: Using Product Usage Data in Gainsight - Introduction](https://www.youtube.com/watch?v=bny-SoH-MNc) |
| **Understand my customer's GitLab adoption** | Know the metrics mapped to use cases SCM (Create), CI (Verify), and DevSecOps (Secure) to understand their adoption.<br> Use the [Use Case Adoption guide](/handbook/customer-success/product-usage-data/use-case-adoption/) for specific definitions around whether a customer has adopted a specific stage. <br> See the [GitLab Adoption Journey](/handbook/customer-success/vision/#high-level-visual-of-gitlab-adoption-journey) for an explanation on the adoption of SCM, CI, and Secure. | <br>&bull; Which use cases has my customer adopted?<br>&bull; To what degree have they adopted?<br>&bull; Which features of each use case have they adopted?</li><li>Does feature adoption align to customer purchase intent? | C360: Scorecard<br><br>Product Usage Data dashboard |
| **How do I understand the health score with Product Usage Reporting?** | Use Gainsight for a quick, high level roll-up of the customer's adoption per use case. Use it to identify if the customer is on track for each GitLab use case. |<br>&bull; My customer’s Use Case health is red, yellow, or green — how is that calculated?<br>&bull; How is Product Usage Data weighted?<br>&bull; What is "good" health? | [Use Case Adoption methodology](https://about.gitlab.com/handbook/customer-success/product-usage-data/use-case-adoption/)<br><br>[Health Score Measure Weightings](https://about.gitlab.com/handbook/customer-success/csm/health-score-triage/#enterprise)<br><br>[VIDEO: What is Product Usage Reporting and How to Find it in Gainsight](https://youtu.be/H6l3_AmQif8)<br><br>[Product Usage Data v2 dashboard](https://gitlab.gainsightcloud.com/v1/ui/home#/191fa30f-7632-4000-b57a-edb62d9bb81b) |

<br>

Remember, this is an MVC — please [create an issue to suggest new metrics](#requesting-new-metrics), different ways to evaluate the customer's journey, or other ideas. 

For specifics on use cases and their health methodology, see [Use Case Adoption](https://about.gitlab.com/handbook/customer-success/product-usage-data/use-case-adoption/).

<br>

## Using Gainsight data in Salesforce

A variety of product usage statistics are pushed back from Gainsight to Salesforce. To see a complete list of customer health related fields that are synced back from Gainsight to Salesforce, please review [Customer Health](https://about.gitlab.com/handbook/customer-success/product-usage-data/using-gainsight-data-in-sfdc/#customer-health) within the [Using Gainsight Data in SFDC](https://about.gitlab.com/handbook/customer-success/product-usage-data/using-gainsight-data-in-sfdc/) page.

<br>

## CSM/CSE Actions

### Viewing all unknown self-managed instances

New self-managed instances come online all the time. The different types include:

- Production: The production instance tied to the subscription
- Non-production: A test, staging, or dev server
- Obsolete: No longer in use server
- Unknown: Not yet labeled server
- Geo Secondary Node: a secondary or mirror server

To make sure we're correctly identifying Production vs. other types, use these instructions to see a full list of instances yet to be labeled:

1. Go to Product Usage Data Dashboard.
1. Filter to your name.
1. Review Hostnames under Accounts with Unknown Instance Names Report. Click **Maximize Report** to enhance viewing.
   1. Optional: If you want to view hostname usage, use this dashboard and filter via Hostname to see the usage for any specific hostnames.

This process is critical, as a customer can have multiple subscriptions and each subscription can have multiple instances. See example diagram:

![Fictitious Self-Managed diagram](https://lucid.app/publicSegments/view/74e7b4aa-6e71-4f60-83bb-6439c459358c/image.png)

### Updating self-managed instance type

For your self-managed customers, label your customers' instances as Production, Staging, or Obsolete. Steps:

1. Go to the customer in Gainsight.
1. In the left nav panel, click **Instance and Namespace Details** at the bottom.
1. Click ***...*** for the instance you want to update.
1. Click **Edit**.
1. For the field `Instance Type`, select the proper option.

**Note**: Anything labeled as "Unknown" should be treated as a _temporary_ holding title that needs to be updated to Production, Non-Production, or Obsolete.

## Field definitions

The Product Stage definitions have been extracted from the [Metrics Dictionary](https://docs.gitlab.com/ee/development/usage_ping/dictionary.html). For more information on Stage metrics, please review the dictionary.

Eventually, the metrics list and definitions will be embedded directly in the handbook. As a first iteration, the list of metrics and their definitions are in the [Data Mart - Table Definitions](https://docs.google.com/spreadsheets/d/1EhSXqx6YXcpqHg2TpS0ZN5Rk_d2hhrTPrW5FTbmuZjw/edit#gid=0) spreadsheet.

See our technical documentation for our [instance of Gainsight's Adoption Explorer](https://docs.google.com/document/d/1TvSCT_yj73AS0PuLxPonuF5QHWyM3dqG_i8H1U1cwf0/edit).

### User and project adoption metrics

See the `User & Project Adoption Metrics` tab on [Product Usage Reporting for Gainsight Definitions](https://docs.google.com/spreadsheets/d/1EhSXqx6YXcpqHg2TpS0ZN5Rk_d2hhrTPrW5FTbmuZjw/edit#gid=650262484) for calculated metrics.

## Data

### Data integrations

Data is integrated from Snowflake to Gainsight on a monthly basis. Over time, this will move to bi-weekly and then weekly.

![Product Usage Data Flow Diagram](https://lucid.app/publicSegments/view/cba91861-d0aa-4f96-8848-56a2eec5798b/image.jpeg)

### Triaging data quality

1. Confirm with CS Operations whether the data quality issue is specific to Gainsight or upstream (post in #cs-product-analytics).
   1. Alternatively, compare Gainsight to LicensesDot.
1. If the data quality issue is upstream, create a data quality issue in the [Data project](https://gitlab.com/gitlab-data/analytics/-/issues).
   1. Attach to the [data quality epic](https://gitlab.com/groups/gitlab-data/-/epics/216).
   1. Please include screenshots for troubleshooting and _mark issue as confidential_.

### Data sources and application

Below are the various data sources, their definitions, and uses.

#### Cloud licensing and operational metrics (self-managed only)

When they activate with Cloud Licensing, customers share `Subscription Data`, which contains basic license usage and instance version information. This data helps to automate activation, provisioning, co-terms and renewals. The sharing of `Subscription Data` is a standard part of GitLab's subscription agreement. `Operational Metrics` contains more detailed product usage metrics and is a subset of Service Ping. This data enable us to serve and support our customers through guiding them with [use case adoption scores](https://about.gitlab.com/handbook/customer-success/product-usage-data/maturity-scoring/), assisting with best practices, offering guidance, and assisting with upgrade recommendations. See this [7-min video on the data](https://youtu.be/8kbuZ-6Z5gs) (internal only) for more information. Customers are able to seek an exemption of sharing `Operational Metrics`, if national security is a risk.

#### What is the relationship between Cloud Licensing, Service Ping and Operational Metrics?

- **Cloud Licensing**: an activation method that allows a customer to share `Subscription Data`
   - Available on 14.1+
   - [Cloud Licensing Overview](https://about.gitlab.com/pricing/licensing-faq/cloud-licensing/)
- **Service Ping**: a service that collects the payload including Subscription, Operational, and Optional Metrics
   - [Operational Service Data](https://internal-handbook.gitlab.io/handbook/product/fulfillment/archive/operational-service-data/#register) - internal handbook
- **Operational Metrics**: a subset of Service Ping containing product usage data that is required to collect the core metrics required metrics per [Customer Success Services](https://about.gitlab.com/services/customer-success-services/))
  -. Available on 14.1+

**References**:

- [Customer Success Services](https://about.gitlab.com/services/customer-success-services/) (client facing)
- [Operational Data Vision](https://about.gitlab.com/handbook/customer-success/product-usage-data/)
- [Cloud Licensing Documentation](https://internal-handbook.gitlab.io/handbook/product/fulfillment/cloudlicensing/cloud-licensing/) (internal handbook)
- [Strict Cloud Licensing](https://internal-handbook.gitlab.io/handbook/product/fulfillment/cloudlicensing/strictcloudlicensing/) (internal handbook)
- [Service Ping Metrics list](https://metrics.gitlab.com/) (subscription, operational, and optional)
- [Operational Service Data](https://internal-handbook.gitlab.io/handbook/product/fulfillment/archive/operational-service-data/#register) (internal handbook)

#### Service Ping (self-managed)

We utilize Service Ping to derive self-managed customer usage reporting. For more details, see [Service Ping FAQs](/handbook/customer-success/csm/service-ping-faq/). Any references to "Service Ping" in Gainsight explicitly refers to self-managed product usage data (licenses + feature use).

#### SaaS (Snowplow)

SaaS customer usage is in Gainsight and collected via the Snowplow collector.

#### Mapping licenses to subscriptions

When licenses are automatically generated (either via WebStore or Deal Desk) a Zuora subscription ID is mapped to a license. This mapping enables the data to link in Gainsight to create a complete picture of an account. 

If there is ever an issue where that data is not mapped, follow the steps below:

1. Confirm the account has Service Ping enabled by checking the VersionApp.
1. Check to see if their license key has a Zuora subscription linked in CustomersDot.
1. If the Zuora subscription is missing, [open a support issue](https://about.gitlab.com/handbook/support/internal-support/#regarding-licensing-and-subscriptions) to generate a new license with the correct Zuora subscription ID.

Example Issue where this issue was discovered: https://gitlab.com/gitlab-data/analytics/-/issues/8518

## Requesting new metrics 

To request a new metric, please open an issue in the [Product Analytics project](https://gitlab.com/gitlab-org/product-analytics/-/issues/new) and at-mention Product Analytics PM. You can see [Add per project count](https://gitlab.com/gitlab-org/product-analytics/-/issues/425) as an example. However, before you create an issue, please confirm the metric does not already exist in the [Event Dictionary](https://docs.google.com/spreadsheets/d/1VzE8R72Px_Y_LlE3Z05LxUlG_dumWe3vl-HeUo70TPw/edit#gid=618391485&fvid=1422977269). 

Examples of new metrics can include:

- Tracking a new feature
- Looking at feature use in a different context (raw count, activity per user, per project, etc.)
- Expanding an existing metric to track usage at different product tiers (e.g., specifically tracking the feature component used in Core vs. a paid tier)

## Frequently asked questions

### Data availability

#### Why does my customer not have any product usage stats?

- Self-managed - They are not opted into Service Ping, or they turned it off.
- Self-managed - None of their instances are labeled as Production. [Here are instructions](https://about.gitlab.com/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/#updating-self-managed-instance-type) on how to label instances as Production.

#### What does it mean if I see details in instance and namespace details but no usage trends?

If the customer is self-managed, check if they have an instance labeled `Production`. They must have an instance labeled as `Production` to appear in the Usage Trends report.

The purpose of the Instance and Namespace Details report section is to show:

- If we have any SaaS or Self-Managed instances reporting stats.
- The GitLab version (for Self-Managed).
- The last reporting stats. For example, they sent us stats and then stopped on 2021-07-01.

#### Why is a metric is missing from my self-managed customer?

If a metric was implemented in a later release, it will not appear. Check the Data Mart Table definitions to identify the release for the metric in question. You can check the instance and namespace details to confirm which release version the customer is on. Example: `Billable Users` was instrumented in 14.0, and if a customer is on 13.9 or earlier, then this field will appear as `NULL`.

### What is Service Ping?

Service Ping is a GitLab process that collects customer analytics on self-managed instances and sends a weekly payload to GitLab. The payload provides important high-level statistics that helps our product, support, and sales teams understand how GitLab is used.

- [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/)
- [Service Ping FAQ](https://about.gitlab.com/handbook/customer-success/csm/service-ping-faq/)

#### How can we confirm that a customer has opted into Service Ping?

The only way to confirm if they have opted into Service Ping is if we have data for them. See the [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/) for more information. 

#### Can my customer opt out of Service Ping?

Yes.

#### Can my customer opt out of Cloud Licensing?

No, unless they do a contractual exemption (limited to certain PubSec orgs).

#### What stats comes from Cloud Licensing?

Operational metrics.

#### How does Service Ping work for Usage Stats in Gainsight?

Usage Statistics are received and collected weekly, and those stats are added to Gainsight every week. Even though the metrics are received and added weekly, the metrics are still shown as monthly, such as `Last 28 Days (L28)` or `All-Time`. 

### How often is the data updated in Gainsight?

- SaaS - Usage Ping is manually pulled weekly on a schedule for the entire instance, for all customers/namespaces at once, typically on Mondays. It's loaded and passed through Snowflake into Gainsight, and those processes can take a day or two to complete.
- Self-Managed - Each self-managed instance usage ping is updated weekly, and the schedule of the weekly ping varies from instance to instance. It's loaded and passed through Snowflake into Gainsight, and those processes can take a day or two to complete.

### How do Last 28 Days metrics work?

- Shows the data for the last 28 days, including the most recent usage ping date.<br>

**Example:**<br>
- Jan 9th ping shows data for Dec 12 - Jan 9
- Jan 16th ping shows data for Dec 19 - Jan 16
- Jan 23th ping shows data for Dec 26 - Jan 23
- Jan 30th ping shows data for Jan 3 - Jan 30
- Since this is the final ping, January data is Jan 3 - Jan 30.
- January data in Gainsight would include Jan 3 - Jan 30 and exclude Jan 1, 2, 31.
- Feb 6th ping shows data for Jan 9 - Feb 6 <br>
<details>
  <summary markdown="span"> Refer to the visual for example: </summary>
 ![28d Logic](https://lucid.app/publicSegments/view/0de4f2de-99f8-44a1-a47d-a7b31cab896e/image.png)
</details>

### Do we have metrics for the calendar week/month?

No. Please refer to [How do Last 28 Days metrics work?](#how-do-last-28-days-metrics-work) 

### Why are usage stats missing at the beginning of the month?

You may notice usage stats missing for the first week of a month up until a ping is collected from the customer. The ping snapshot date will differ for each customer.

---

## Data Definitions

### What’s the best way to understand what a metric is measuring?

Check the [Product Usage Data for Gainsight Definitions](https://docs.google.com/spreadsheets/d/1EhSXqx6YXcpqHg2TpS0ZN5Rk_d2hhrTPrW5FTbmuZjw/edit?usp=sharing).

### What’s the best way to understand details about a metric, including availability for SaaS, and in which release we started measuring that metric?

Check the [Product Usage Data for Gainsight Definitions](https://docs.google.com/spreadsheets/d/1EhSXqx6YXcpqHg2TpS0ZN5Rk_d2hhrTPrW5FTbmuZjw/edit?usp=sharing).

### What are the differences between billable user, licensed user, and active user?

- Active user count was removed because it includes bots, guest users. 
- Billable user includes active users, excluding bots and guests. We can accurately compare this to the number of licenses sold to determine license utilization.
- Licensed user is number of licenses provisioned in CustomersDOT.

### What is UUID?

UUID is the GitLab-assigned ID of a server. There can be more than one server for one hostname.

### What is the difference between Product Usage Stats and telemetry?

Telemetry has the connotation of third-party analytics, so we avoid using this word. See more information and alternatives on the [Top Misused Terms Handbook Page](https://about.gitlab.com/handbook/communication/top-misused-terms/#telemetry).

---

## Multiple hostnames and subscriptions

The following reports are not effective for accounts with multiple hostnames and subscriptions:

- Product Usage Scorecard Calcs
- Scorecard Product Usage Metrics
