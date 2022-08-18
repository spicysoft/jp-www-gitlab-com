---
layout: markdown_page
title: "Category Direction - Status Page"
description: "A common need for many companies is to communicate the availability of a software service they provide. Learn more here!"
canonical_path: "/direction/monitor/debugging_and_health/status_page/"
---

- TOC
{:toc}

## Introduction and how you can help
Thanks for visiting this category strategy page on Status Page in GitLab. This category belongs to the [Health](/handbook/product/categories/#health-group) group of the Monitor stage and is maintained by [Kevin Chu](https://gitlab.com/kbychu) who can be contacted directly via [email](mailto:kchu@gitlab.com).

This strategy is a work in progress, and everyone can contribute:

 - Please comment and contribute in the linked [issues](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3AStatus%20Page) and [epics](https://gitlab.com/groups/gitlab-org/-/epics?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3AStatus%20Page) on this page. Sharing your feedback directly on GitLab.com is the best way to contribute to our strategy and vision.
 - Please share feedback directly via email, Twitter, or on a video call. If you're a GitLab user and have direct knowledge of your need for a status page, we'd especially love to hear from you.

## Overview
A common need for many companies is to communicate the availability of a software service they provide. This could be to internal users, customers, or the general public. These will be collectively referred to as **Stakeholders**. A typical Status Page publicly lists services that it provides and the **status** of that service. It's main purpose is for Stakeholders to self-serve information to determine if a service is unavailable while internal teams work to restore services that have been disrupted. In the event there is an outage, the Status Page also provides explanation for the outages as well as any known timelines for restoration. Stakeholders generally have the option of subscribing to different services to be proactively alerted to changes in Status.

In an age where systems must be [highly available](https://en.wikipedia.org/wiki/High_availability) and uptime is guaranteed on the order of [six 9's](https://en.wikipedia.org/wiki/High_availability#%22Nines%22), it's crucial that the time and effort of response teams are not wasted updating Stakeholders in multiple ways.

### Mission
Our mission is to reduce MTTR for DevOps response teams by making it simple to keep business and customer stakeholders informed on incident status and progress.

### Challenges to address
We are just beginning research cycles to validate the need and desire for a Status Page as part of GitLab's product offering in the Monitor Stage.

Once we have begun research efforts, it will be documented [here](https://gitlab.com/gitlab-org/gitlab/issues/35430).

## Target Audience
A Status Page needs to make it simple to understand the state of services someone is a Stakeholder of and it must be easy to manage and update internally. The target audience of Status Page can be divided into the following categories:

[Users](https://about.gitlab.com/handbook/product/personas/#user-personas) are in charge of maintaining the critical services that their stakeholders depend upon. They are responsible for updating the Status Page during outages.
* [Delaney (Development Team Lead)](https://about.gitlab.com/handbook/product/personas/#delaney-development-team-lead)
* [Sasha (Software Developer)](https://about.gitlab.com/handbook/product/personas/#sasha-software-developer)
* [Devon (DevOps Engineer)](https://about.gitlab.com/handbook/product/personas/#devon-devops-engineer)
* [Sidney (Systems Administrator)](https://about.gitlab.com/handbook/product/personas/#sidney-systems-administrator)
* [Sam (Security Analyst)](https://about.gitlab.com/handbook/product/personas/#sam-security-analyst)


[Buyers](https://about.gitlab.com/handbook/product/personas/#buyer-personas) manage the teams who maintain the software services the company provides to customers.

**Consumers** are the Stakeholders that care about the availability of provided software services. These individuals can be internal or external, individual contributors, management, or customers.

## Strategy
### Maturity Plan
This category is currently at the Planned maturity level, and our next maturity target is Minimal (see our [definitions of maturity levels](https://about.gitlab.com/direction/maturity/)). Please check out the [MVC for Status Page](https://gitlab.com/gitlab-org/gitlab/issues/6134).

### Where we are headed
Our vision is to build a portal for maintainers and Stakeholders that is simple to update, easy to consume, and has a customizable UI. A mature Status Page contains a list of services provided, description, and status as well as the ability for stakeholders to subscribe to notifications on services as there are changes.

GitLab is in a unique position to offer compelling value here:
1. We can generate alerts based on a wide array of observability data: [metrics](https://docs.gitlab.com/ee/administration/monitoring/prometheus/gitlab_metrics.html#gitlab-prometheus-metrics), [traces](https://docs.gitlab.com/ee/operations/tracing.html), and [logs](https://docs.gitlab.com/ee/user/project/clusters/kubernetes_pod_logs.html).
1. We can consume alerts from any monitoring tool via our [generic alert endpoint](https://docs.gitlab.com/ee/operations/incident_management/integrations.html#generic-alerts-integration)
1. [We are adding comprehensive Incident Management in 12.6](https://gitlab.com/groups/gitlab-org/-/epics/349)
1. GitLab has a [decentralized runner architecture](https://docs.gitlab.com/ee/ci/runners/#configuring-gitlab-runners) which can run tests from across the world (or via a potential SaaS service) to detect reachability problems
1. We have an opportunity to [dogfood](/handbook/values/#dogfooding) this tool with our GitLab.com service. In our past we've used a [home-grown tool](https://gitlab.com/gitlab-org/status-gitlab-com) for a Status Page service, and since switched to a SaaS provider.

### What's Next & Why

We've planned an initial minimal release of Status Page for 12.10. To begin with, we are targeting one narrow use case. We'll design Status Page to publish information from issues in a dedicated incident management project on a private GitLab instance out to public status detail pages. We believe in [dogfooding everything](https://about.gitlab.com/handbook/product/product-processes/#dogfood-everything). The initial MVC will enable the GitLab SRE team to start using Status Page and by extension unblock them from dogfooding several monitor capabilities.

See what's planned and what's shipping in 12.10 in the [Status Page MVC epic](
https://gitlab.com/groups/gitlab-org/-/epics/2479).

### What is Not Planned Right Now
Scope of work and timeline for Status Page is still being determined at this time. After further research, we will populate this section with functionality that is out of scope.

### User success metrics
We will know we are on the right trajectory for Status Page when we are able to observe the following changes. Please note that these metrics are based on our vision for the product and may change as we start working on it.

* GitLab can replace the it's [current status page hosted on status.io](https://status.gitlab.com/) (i.e. we are [dogfooding](https://about.gitlab.com/handbook/values/#dogfooding))
* Increase in status update subscribers
* Increase in the number of services a given customer integrates into the page

### Why is this important?
Managing stakeholders is an important part of the job for any DevOps engineer and a Status Page has become a critical part of the services a software company provides to their customers. It provides a public portal for broad communication during an outage. It helps to reduce the number of related support tickets that come pouring in or the negative blasts on social media. Updating a single portal is much faster than responding to individual inquiries from each customer. This is a natural addition to the GitLab product suite on top of our Incident Management offering. It eliminates yet another integration and additional tool.

At this time, we have not completed due diligence to confirm this is the most pressing functionality to add to the Monitor Stage. Further research and validation is required to confirm that we will be investing in a GitLab hosted **Status Page**. A fully featured Status Page would likely take 4-5 milestones to build.

## Competitive Landscape
* [Statuspage](https://www.statuspage.io)
* [status.io](https://status.io)
* [Cachet](https://cachethq.io)

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
