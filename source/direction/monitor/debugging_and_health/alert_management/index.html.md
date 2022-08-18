---
layout: markdown_page
title: "Category Direction - Alert Management"
description: "The GitLab alert management direction page."
canonical_path: "/direction/monitor/debugging_and_health/alert_management/"
---

- TOC
{:toc}

## Introduction and how you can help

Thanks for visiting this category page on Alert Management in GitLab. This page belongs to the Health group of the Monitor stage, and is maintained by [Sarah Waldner](https://gitlab.com/sarahwaldner) who can be contacted directly via [email](mailto:swaldner@gitlab.com). This vision is a work in progress and everyone can contribute. Sharing your feedback directly on issues and epics at GitLab.com is the best way to contribute to our vision. If you’re a GitLab user and have direct knowledge of your need for Alert Management, we’d especially love to hear from you.

## Overview

The cost of IT service disruptions continues to increase exponentially as every company becomes a tech company. Services that were previously offered during "business hours only" are now 24/7 and are expected to adhere to [6 nine's of uptime](https://en.wikipedia.org/wiki/High_availability#%22Nines%22). Moreover, operating these services becomes increasingly complex in this age of digital change. New technologies are emerging in the market on a daily basis, software development teams are moving to [CI/CD frameworks](https://about.gitlab.com/stages-devops-lifecycle/continuous-integration/), and [legacy platforms are evolving into globally distributed networks of micro-services](https://www.gartner.com/smarterwithgartner/4-steps-to-design-microservices-for-agile-architecture/). It is critical for [modern operations teams](https://www.gartner.com/smarterwithgartner/5-steps-to-build-agile-infrastructure-operations/) to implement an accurate and flexible IT alerting system that enables them to detect problems and solve them proactively.

Teams responsible for maintaining available and reliable services require a stack of tools to monitor the different layers of technology that comprise software services. These tools capture events (changes in the state of an IT environment) and generate alerts for critical events that indicate a degradation in application or system behavior. The complexity of IT applications, systems, and architectures and the many tools required to monitor them causes multiple problems for operators with regards to alerting. First, it is very challenging to figure out the correct metrics to monitor and track and the right thresholds to alert on. Most teams end up defining alerts too broadly in fear of missing critical issues. This results in a constant barrage of alert notifications where the problem is further exacerbated when multiple tools are concurrently alerting. When this happens, teams are forced to react to problems versus proactively mitigating them because they can't keep up with the stream of alerts and are always switching in between tools and interfaces. This causes 'alert fatigue' and leads to high stress and low morale. What these teams need is a single central interface where they can easily add new alerts and fine-tune existing ones as soon as they learn that their system needs to be improved.

### Mission

Our mission is to reduce alert fatigue for responders of IT incidents by offering tools that make it simple to continuously improve their alerting systems alongside the applications that they maintain.

### Challenges

As we invest R&D in adding Alert Management to GitLab, we are faced with the following challenges:

* Well-entrenched market leaders want to own [alerting](https://www.datadoghq.com/alerts/) and want their platform to be the single (and only) place their customers have to manage alerts. They are incentivized to make alert fatigue a thing of the past.
* The alerting on metrics functionality in GitLab is based on Prometheus monitoring and is therefore this functionality within Alert Management will not useful to customers who do not use Prometheus.
* Customers are not going to purchase GitLab for Alert Management alone because it is dependent upon many other GitLab features.

### Opportunities

We are uniquely positioned to take advantage of the following opportunities:

* Alert Management in GitLab is for Prometheus time series monitoring - a popular and well-entrenched tool in market.
* Alerting is a table stake of incident management platforms. In addition to being the place where users configure their alerts, we are also where they investigate and remediate outages. This means that we can significantly reduce the amount of time it takes for a responder to understand improvements needed in their alerting systems and implement them.
* We are well-practiced in building [boring solutions](https://about.gitlab.com/handbook/values/#boring-solutions) and [iteration](https://about.gitlab.com/handbook/values/#iteration). This will enable us to quickly add an interface to GitLab that aggregates alerts and immediately eliminates triage across multiple tools.

## Target Audience and Experience
While Alert Management matures through minimal and viable, we are creating an intuitive and streamlined experience for [Allison (Application Ops)](https://about.gitlab.com/handbook/product/personas/#allison-application-ops) and [Devon (DevOps Engineer)](https://about.gitlab.com/handbook/product/personas/#devon-devops-engineer).
Initially, this experience will be oriented towards DevOps teams at smaller companies where it is common for the engineers to be on-call and responding to alerts for the software that they also write code for.

## Strategy
### Maturity Plan
We are currently focused on moving **Alert Management** from the `minimal` to the `viable` maturity level and that work is captured in this [epic](https://gitlab.com/groups/gitlab-org/-/epics/3066). Definitions of these maturity levels can be found on [GitLab's Maturity page](https://about.gitlab.com/direction/maturity/).

### What is Next & Why?
The complexity of IT applications, systems, and architectures and the many tools required to monitor ultimately leads to too many alerts with broad thresholds. Next up we will be pursuing functionality that will ease the configuration of alerts and provide operators with more visibility into their alerting rules. This is a new category and we do not have all of the issues and epics created for implementation just yet. Once we do, we will populate this section with direct links to those issues so that you can contribute to the plan.

### What is not planned right now
This is a new category and we are still refining our vision. We will add items to this section as we move through research and prioritization.

## Competitive Landscape
* [Splunk Alert Manager](http://docs.alertmanager.info/en/latest/)
* [MoogSoft Alerting](https://docs.moogsoft.com/AIOps.7.0.0/Alerts_Overview.html)
* [Prometheus Alert Manager](https://prometheus.io/docs/alerting/latest/alertmanager/)
* [BigPanda](https://docs.bigpanda.io/docs/reference-incidents-tab#section-alerts-tab)

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
