---
layout: markdown_page
title: "Category Direction - Digital Experience Management"
description: "The GitLab digital experience management direction page."
canonical_path: "/direction/monitor/debugging_and_health/digital_experience_management/"
---

- TOC
{:toc}

## Introduction and how you can help
Thanks for visiting this category page on Digital Experience Management in GitLab. This page belongs to the Health group of the Monitor stage, and is maintained by [Kevin Chu](https://gitlab.com/kbychu) who can be contacted directly via [email](mailto:kchu@gitlab.com). This vision is a work in progress and everyone can contribute. Sharing your feedback directly on issues and epics at GitLab.com is the best way to contribute to our vision. If you’re a GitLab user and have direct knowledge of your need for Digital Experience Management, we’d especially love to hear from you.

## Overview
Determining service level quality and preventing degraded user experience is a difficult task. Tracking user interactions across distributed systems and proactively monitoring user experience cannot be accomplished with manual tools. At the same time, downtime avoidance remains critical for businesses. This is why having an automated tool constantly monitor service availability can help ensure a reliable and enjoyable digital experience for users.

At a high level there are two ways to achieve this: [Passive monitoring](https://en.wikipedia.org/wiki/Passive_monitoring) and [active monitoring](https://en.wikipedia.org/wiki/Synthetic_monitoring) of defined user journeys in software. Passive Monitoring gathers actual user data and analyzes it over time. Active monitoring simulates user behavior to complement passive monitoring to help provide visibility on application health during off peak hours when transaction volume is low.

The Digital Experience Management category at GitLab encompasses the following types of user experience monitoring:
* [Ping/Uptime](https://en.wikipedia.org/wiki/Uptime): A single URL monitor, which ensures that web services are up and performing.
* [Website speed test](https://en.wikipedia.org/wiki/Website_monitoring#Website_monitoring_services): A single call to a web page using a full browser, which provides information about element page, including HTML, CSS, Javascript, and images. It can also provide screenshots of the loading process, waterfall charts, and actionable information on how to speed up the web page.
* [API monitoring](https://en.wikipedia.org/wiki/API_testing): A single or multi-step API check which collects metrics such as status code and response time, in addition to a correctness check, which retrieves the payload and goes beyond text validation on body or header, (e.g. field value, types, number of fields, array subscripts checks and more...), API monitors supports different types of APIs such as REST and SOAP.
* [Real User Monitoring](https://en.wikipedia.org/wiki/Real_user_monitoring): Website monitoring that tracks user behavior in real-time and reports on performance and availability of services as experienced by the end user.
* [Synthetic monitoring](https://en.wikipedia.org/wiki/Synthetic_monitoring): Proactive website monitoring that is done by deploying behavioral scripts to simulate the path a user takes through a website, such as logging in, adding items to a shopping cart, etc. Performance and availability data (along with other defined metrics) are reported for each step. The scripts are typically deployed in multiple geographical locations to gain a broader understanding of the end user experience across data centers.

**We recognize that this category covers many types of monitoring. In the future we may choose to break out the different types of monitoring into separate categories.**

### Mission
Our mission is to enable DevOps engineers and Developers to efficiently identify and resolve experience degradations in the software services they own. It is no longer just about performance and availability. It is ensuring that our users customers can successfully perform desired workflows from anywhere in the world on whatever platform they wish.

### Challenges
As we invest R&D in building out Digital Experience Management tools at GitLab, we are faced with the following challenges:
* The observability market is crowded by players that have been here for a long time. See [Competitive Landscape](#competitive_landscape) below.
* We lack brand identification with Enterprise Ops buyers (also mentioned on the [Ops Vision page](https://about.gitlab.com/direction/ops/#challenges))
* Customers are not going to purchase GitLab for the Digital Experience Management product alone because it is dependent upon many other GitLab features.

### Opportunities
We are uniquely positioned to take advantage of the following opportunities:
* [GitLab CI](https://docs.gitlab.com/ee/ci/) is well used and loved in market. We can extend these tools to offer synthetic and real user monitoring leveraging already existing test suites. This will afford us:
   * Accelerated time to market
   * Quick iterations
   * Faster feature adoption we are building on known workflows and concepts
* Colocation of code and metrics significantly reduces context switching and accelerates [MTTR](https://en.wikipedia.org/wiki/Mean_time_to_repair). We are easily able to correlate development events such as merge requests and deploys with incidents, shortening the time it takes to find the root cause.
* We are well-practiced in building [boring solutions](/handbook/values/#boring-solutions) and [iteration](/handbook/values/#iteration). We will quickly and iteratively add features and functionality to our Digital Experience Management product suite.


### High-level Design
To accelerate time to market and value for customers, we are considering an MVC that allows us to leverage the scripted tests and actions that are built as part of a customers existing CI test suite. This will allow companies to get extra mileage out of their existing investments in CI. For example, E-Commerce sites are likely testing the end-to-end workflow for a user browsing for items, adding them to a cart, checking out, paying, etc. The tests written to test this pathways can be used for synthetics. These tests can then serve as the proverbial canary in the coal mine, detecting problems within workflows that simple page load tests would not.

A potential solution could look like:
* Provide a [turnkey](https://en.wikipedia.org/wiki/Turnkey) solution for testing availability and performance, perhaps using [sitespeed](https://www.sitespeed.io/).
* Enable customers to utilize [GitLab CI YML](https://docs.gitlab.com/ee/ci/yaml/) to provide a flexible starting point, and re-use of investments, for full scripted testing
* Offer [GitLab.com's shared runners](https://docs.gitlab.com/ee/ci/runners/#shared-runners) as an easy external testing point
* [Testing SSL expirations and potentially ciphers](https://gitlab.com/gitlab-org/gitlab-ee/issues/5701)
* Build out global infrastructure to offer shared runners in multiple locations, and the ability to select which ones are desired

## Target Audience and Experience
The MVC of Digital Experience Management will be aimed at enabling users who align with the [Application Ops](https://about.gitlab.com/handbook/product/personas/#allison-application-ops) persona to quickly identify and fix performance degradations in the products that they own. These individuals work for smaller organizations and are responsible for writing application code and maintaining them.

## Strategy
### What is Next & Why?
We are not investing in Digital Experience Management tools now (as of March 2020). The following categories are not yet competitive in market: [Metrics](https://about.gitlab.com/direction/monitor/apm/metrics/), [Logging](https://about.gitlab.com/direction/monitor/apm/logging/), [Tracing](https://about.gitlab.com/direction/monitor/apm/tracing/), and [Incident Management](https://about.gitlab.com/direction/monitor/debugging_and_health/incident_management/). Before we invest in Digital Experience management, we need a foundation on which users can visualize and investigate performance problems.

### Maturity Plan
Digital Experience Management is `planned` but it is not currently a priority. Definitions of these maturity levels can be found on [GitLab's Maturity page](https://about.gitlab.com/direction/maturity/). In the meantime, please contribute to the [MVC epic](https://gitlab.com/groups/gitlab-org/-/epics/1989) for Digital Experience Management to see what we are considering for the first iteration.

## Competitive Landscape
We recognize that Digital Experience Management is an expansive category. The following list of competitors is not an exhaustive list. There are more competitors in market for the types of monitoring detailed in the [overview](#overview).

|Competitor|Ping/Uptime|API|Website Speed/load time|Real User|Synthetics|
|----------|-----------|---|-----------------------|---------|----------|
|[Pingdom](https://www.pingdom.com/)|:white_check_mark: [Link](https://www.pingdom.com/product/uptime-monitoring/)|:x:|:white_check_mark: [Link](https://www.pingdom.com/product/page-speed/)|:white_check_mark: [Link](https://www.pingdom.com/product/performance-monitoring/)|:white_check_mark: [Link](https://www.pingdom.com/product/transaction-monitoring/)|
|[StatusCake](https://www.statuscake.com/)|:white_check_mark: [Link](https://www.statuscake.com/kb/knowledge-base/what-is-an-uptime-test/)|:x:|:white_check_mark: [Link](https://www.statuscake.com/pagespeed-monitoring/)|:x:|:x:|
|[Datadog](https://www.datadoghq.com/)|:white_check_mark: [Link](https://docs.datadoghq.com/integrations/uptime/)|:x:|:x:|:white_check_mark: [Link](https://docs.datadoghq.com/real_user_monitoring/)|:white_check_mark: [Link](https://docs.datadoghq.com/synthetics/)|
|[Dynatrace](https://www.dynatrace.com/)|:white_check_mark: [Link](https://www.dynatrace.com/support/help/how-to-use-dynatrace/synthetic-monitoring/browser-monitors/create-a-single-url-browser-monitor/)|:white_check_mark: [Link](https://www.dynatrace.com/support/help/shortlink/http-monitor)|:white_check_mark: [Link](https://www.dynatrace.com/support/help/how-to-use-dynatrace/synthetic-monitoring/browser-monitors/create-a-single-url-browser-monitor/)|:white_check_mark: [Link](https://www.dynatrace.com/support/help/how-to-use-dynatrace/real-user-monitoring/)|:white_check_mark: [Link](https://www.dynatrace.com/support/help/how-to-use-dynatrace/synthetic-monitoring/)|
|[New Relic](https://newrelic.com/)|:white_check_mark: [Link](https://docs.newrelic.com/docs/synthetics/new-relic-synthetics/using-monitors/add-edit-monitors#monitor-type-ping)|:white_check_mark: [Link](https://docs.newrelic.com/docs/synthetics/new-relic-synthetics/scripting-monitors/write-synthetics-api-tests)|:white_check_mark: [Link](https://docs.newrelic.com/docs/synthetics/new-relic-synthetics/getting-started/types-synthetics-monitors)|:white_check_mark: [Link](https://docs.newrelic.com/docs/browser/new-relic-browser/getting-started/introduction-new-relic-browser)|:white_check_mark: [Link](https://docs.newrelic.com/docs/synthetics/new-relic-synthetics/getting-started/introduction-new-relic-synthetics)|
|[AppDynamics](https://www.appdynamics.com/)|:white_check_mark: [Link](https://docs.appdynamics.com/display/PRO45/Service+Availability+Monitoring)|:white_check_mark: [Link](https://docs.appdynamics.com/display/PRO45/Service+Availability+Monitoring)|:white_check_mark: [Link](https://docs.appdynamics.com/display/PRO45/Browser+Monitoring)|:white_check_mark: [Link](https://docs.appdynamics.com/display/PRO45/Browser+Real+User+Monitoring)|:white_check_mark: [Link](https://docs.appdynamics.com/display/PRO45/Browser+Synthetic+Monitoring)|
|[Elastic](https://www.elastic.co/)|:white_check_mark: [Link](https://www.elastic.co/uptime-monitoring)|:white_check_mark: [Link](https://www.elastic.co/guide/en/logstash/6.8/monitoring.html)|:x:|:x:|:x:|

## Analyst Landscape
Not yet, but accepting merge requests to this document.

## Top Customer Success/Sales Issue(s)
Not yet, but accepting merge requests to this document.

## Top Customer Issue(s)
Not yet, but accepting merge requests to this document.

## Top Internal Customer Issue(s)
Not yet, but accepting merge requests to this document.

## Top Vision Item(s)
Not yet, but accepting merge requests to this document.
