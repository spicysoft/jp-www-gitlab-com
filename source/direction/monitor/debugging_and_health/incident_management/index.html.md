---
layout: markdown_page
title: "Category Direction - Incident Management"
description: "A robust incident management platform consumes inputs from all sources and empowers the response team to quickly understand and remediate the problem at hand."
canonical_path: "/direction/monitor/debugging_and_health/incident_management/"
---

- TOC
{:toc}

## Overview

Downtime is expensive - it costs companies hundreds of thousands of dollars, or more, in a single hour.

While downtime avoidance is preferable, downtime is not avoidable. As such, it is imperative that organizations are geared towards being able to respond to production problems efficiently and effectively. Put another way, organizations need to be resilient.

The majority of investment and focus of the DevOps industry (including GitLab) to date has been on downtime avoidance. There are some entrenched competitors approaching incident management from the perspective of workflows (ServiceNow), or incident notification (Pager Duty, OpsGenie). Despite this, holistic incident management products are lacking resulting in many organizations stitching together point solutions mixed with a healthy dose of DIY. We believe that many organizations are looking for ways to avoid reinventing the wheel on incident management

### Demo
Check out this short demo that highlights what we've built so far.

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube-nocookie.com/embed/MIjGyoTh7hQ" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

### Vision

GitLab Incident Management helps teams build resiliency in their software and processes against downtime, outages, and other unexpected situations.

We plan to achieve this by:

- Capturing the single source of truth (SSOT) with **[incident timelines](https://gitlab.com/groups/gitlab-org/-/epics/6376)**.
- Continuously improving software and process resiliency through **incident reviews** and **[incident dashboards](https://gitlab.com/groups/gitlab-org/-/epics/3961)**.
- Facilitating planning and coordination through the use **[on-call schedule management](/direction/monitor/debugging_and_health/on-call_schedule_management/)**.
- Boosting signals and notifying on-call responders through the use of **[alert integration](/direction/monitor/debugging_and_health/alert_management/)** and **[escalations](https://gitlab.com/groups/gitlab-org/-/epics/4638)**.
- Empowering efficient and repeatable **incident response** through **[runbook automation](/direction/monitor/debugging_and_health/runbooks/)** and other coordination enhancements.
- Communicating with customers via **[status pages](https://gitlab.com/groups/gitlab-org/-/epics/2479)**.

We've also created a series of vision items for the category, which are visible in this [issue](https://gitlab.com/gitlab-org/monitor/monitor/-/issues/41). A video walk-through of our vision items is also available on [YouTube](https://www.youtube.com/watch?v=wq-JCueATZQ).

### Challenges

As we invest R&D in building out Incident Management at GitLab, we are faced with the following challenges:

- The market is dominated by incident management companies that have been around for longer. Specific examples are included in the [Competitive Landscape](#competitive-landscape) section.
- We lack brand identification with Enterprise Ops buyers (also mentioned on the [Ops Vision page](https://about.gitlab.com/direction/ops/#challenges))
- Incident management tools typically work in conjunction with other monitoring tools. Having a robust ecosystem of integration with monitoring tools is an expensive investment.

### Opportunities

We are uniquely positioned to take advantage of the following opportunities:

- Colocation of code and incidents significantly reduces context switching and accelerates [MTTR](https://en.wikipedia.org/wiki/Mean_time_to_repair). We can correlate development events such as merge requests or deployments with incidents, shortening the time it takes to find the root cause and automates some of the work required to prepare a timeline of events necessary for Post Incident Reviews
- We are well-practiced in building [boring solutions](/handbook/values/#boring-solutions) and [iteration](/handbook/values/#iteration). This will enable us to quickly produce a simple version of Incident Management "just-good-enough" to displace DIY solutions
- We can uniquely serve the needs of Operations Managers who struggle to answer the question - "Are my teams spending all their time firefighting, or are they proactively managing the health of their applications?"

## Target Audience and Experience

Our current Incident Management tools have been built for users who align with our [Allison (Application Ops)](https://about.gitlab.com/handbook/product/personas/#allison-application-ops) and [Ingrid (Infrastructure Operator)](https://about.gitlab.com/handbook/product/personas/#ingrid-infrastructure-operator) personas. The experience targets DevOps teams at smaller companies where it is common for the engineers to be on-call and responding to alerts for the software that they also write code for. As we mature this category, we will evolve the experience to appeal to and serve the enterprise customer.

## Strategy

### Today - (FY23Q3)

#### GitLab Incidents are the single source of truth (SSOT)

- We are continuing to build out more incident management features with a focus on dogfooding [Incidents](https://docs.gitlab.com/ee/operations/incident_management/incidents.html#incidents) for our internal Infrastructure and Reliability Teams as the SSOT.

**_How are we tracking success?_**

- We are focused on dogfooding, and we are measuring the number of [Incident Management features the Infrastructure team is currently Dogfooding](https://about.gitlab.com/direction/monitor/debugging_and_health/incident_management/#incident-management-features-the-infrastructure-team-is-currently-dogfooding).
- [Incident timeline](https://gitlab.com/groups/gitlab-org/-/epics/6376) plays an important role in establishing incidents as the SSOT. We plan to track monthly active users using timelines and expect user adoption to increase over time.

### Near Term (6 months - 1 year, ~ FY23Q4 - FY24Q1)

#### _Empower team collaboration_

- The vast majority of do it yourself (DIY) users use Slack or similar apps as the main collaboration tool during an incident. We want to make it easy for incident response teams to use Slack _and_ GitLab incident management. For example, users should be able to easily capture the most pertinent information in Slack and have it be recorded in an incident or visa versa; users receive a notification in Slack with an update on the GitLab incident. For our internal team, we plan to replace [woodhouse](https://gitlab.com/gitlab-com/gl-infra/woodhouse) with a productized Slack integration.
- Teams to conduct [incident reviews](https://gitlab.com/gitlab-org/gitlab-design/-/issues/1945) so users can improve their incident response posture.

**_How are we tracking success?_**

- Ship [Slack App for Incident Management](https://gitlab.com/groups/gitlab-org/-/epics/8545); measure the number of integrations setup and work on a [go to market (GTM) effort directly with Slack](https://gitlab.com/groups/gitlab-org/-/epics/8545#note_1084388282).
- Ship [Incident Review](https://gitlab.com/gitlab-org/gitlab-design/-/issues/1945). We will track usage, particularly percentage of incident reviews conducted relative to the number of severity one incidents created.

### Medium Term (1-2 years, ~ FY24)

#### _Customers are interested in replacing expensive incident tools with GitLab._

- GitLab Incident Management reaches [complete maturity](https://gitlab.com/groups/gitlab-org/-/epics/1494)!

### Long Term (3+ years, FY25 and beyond)

#### _Customers come to GitLab for their incident management solution._

- Strengthen bi-directional product tie-in to other GitLab stages and Monitor categories inclduing, Error Tracking, Tracing, Logging, Metric and Runbooks.
- A sound integration strategy has been identified and validated for Monitor tools that will allow users to more quickly communicate and resolve incidents.
- Customers can quantify and show a decrease in MTTR.

### Workflow

Incident Management is a broad category. The following diagram explains all functionality that is currently within scope for our vision of the category.

![image.png](./incident_management.png)

### Maturity Plan

We are currently working to mature the **Incident Management** category from `viable` to `complete`. Definitions of these maturity levels can be found on [GitLab's Maturity page](https://about.gitlab.com/direction/maturity/). The following epics group the functionality we have planned to mature Incident Management.
- [Complete](https://gitlab.com/groups/gitlab-org/-/epics/1494)
- [Lovable](https://gitlab.com/groups/gitlab-org/-/epics/1539)

### What is Next & Why?

- Continue working on [Incident Timelines](https://gitlab.com/groups/gitlab-org/-/epics/6376) and shipping the [Links widget](https://gitlab.com/groups/gitlab-org/-/epics/3994) to ensure the most relevant information is visible so stakeholders can track progress during an on-going incident.
- Ship [Links widget](https://gitlab.com/groups/gitlab-org/-/epics/3994)
- [Introduce incident management workflow to GitLab Slack App](https://gitlab.com/gitlab-org/gitlab/-/issues/359322) to ensure Slack-to-GitLab workflows are seamless to minimize repetitive, manual work for incident response teams.

### Dogfooding Plan

We are actively [dogfooding](https://about.gitlab.com/handbook/product/product-processes/#when-do-we-dogfood) Incident Management features with the [Infrastructure team](https://about.gitlab.com/handbook/engineering/infrastructure/team/). Today, the Infrastructure team relies partially on PagerDuty to maintain GitLab.com and the other services they are responsible for. Ultimately the joint goal of the Infrastructure team and the Respond group is for the Infrastructure team to rely soley on GitLab Incident Management. Our plan to achieve this goal is as follows:

1. Prioritize new functionality based on the [gap analysis](https://gitlab.com/gitlab-org/monitor/health/-/issues/36)
1. Meet with the Infrastructure team on a monthly cadence to gather feedback and incorporate changes into upcoming milestones.
1. Incrementally dogfood new features via simulation days ([example](https://gitlab.com/gitlab-org/gitlab/-/issues/231518)) to gather immediate feedback on for improvements
1. Begin a full migration once we have completed filling in the gap analysis - view migration plan [here](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/322)

<details><summary><h3>Incident Management features the Infrastructure team is currently Dogfooding</h3></summary>

| General Feature | Specific Feature | Dogfooding? | Example | Feature needs 'x' to dogfood |
| --------------- | ---------------- | ----------- | ------- | ------------------ |
|**Incidents**| [Incident issue Type](https://docs.gitlab.com/ee/operations/incident_management/incidents.html)| ✅ |         |                    |
|| [Creating incidents manually](https://docs.gitlab.com/ee/operations/incident_management/incidents.html#create-incidents-manually)| ✅ |         |
|| [Creating incidents automatically](https://docs.gitlab.com/ee/operations/incident_management/incidents.html#create-incidents-automatically)| ✅ | [Sample incident](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/6159) created via ops.gitlab.net |
|| [Incident Timelines](https://docs.gitlab.com/ee/operations/incident_management/incidents.html#timeline-events)| 🔴 | [Incident Timeline Quick Actions ] (https://gitlab.com/gitlab-org/gitlab/-/issues/368721), [Dogfood issue](https://gitlab.com/gitlab-org/gitlab/-/issues/360452)      |
|| [Linked Resources](https://docs.gitlab.com/ee/operations/incident_management/linked_resources.html)| 🔴 | TBD, just released, [Dogfood issue](https://gitlab.com/gitlab-org/gitlab/-/issues/370133)      |
|| [Creating incidents via the PagerDuty webhook](https://docs.gitlab.com/ee/operations/incident_management/incidents.html#create-incidents-via-the-pagerduty-webhook)| 🔴 |         |        |
|| [Incident List](https://docs.gitlab.com/ee/operations/incident_management/incidents.html#incident-list)| 🔴 || Labels need to be included on the incident list.|
|| [Metrics Tab](https://docs.gitlab.com/ee/operations/incident_management/incidents.html#metrics)| 🔴 ||There isn't a working integration with our observability vendor.  Metrics are added as screen shots ([example](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/6159#note_808876372)) to the incident.|
|| [Alert details Tab](https://docs.gitlab.com/ee/operations/incident_management/incidents.html#alert-details)| 🔴 || Not currently dogfooding GitLab alerts|
|| [Service Level Agreement countdown timer](https://docs.gitlab.com/ee/operations/incident_management/incidents.html#service-level-agreement-countdown-timer)|🔴||SLAs aren't based on a per incident basis|
|**Alerts**| [GitLab Alerts](https://docs.gitlab.com/ee/operations/incident_management/alerts.html)| 🔴 |         | Alert improvments are noted [here](https://gitlab.com/gitlab-org/monitor/respond/-/issues/149#opportunities-for-alert-improvements)                   |
|| [Alert List](https://docs.gitlab.com/ee/operations/incident_management/alerts.html#alert-list)| 🔴 || Dependent on dogfooding alerts.|
|| [Alert Details Tab](https://docs.gitlab.com/ee/operations/incident_management/alerts.html#alert-details-tab)| 🔴 || Dependent on dogfooding alerts.|
|| [Metrics Tab](https://docs.gitlab.com/ee/operations/incident_management/alerts.html#metrics-tab)| 🔴 || Dependent on dogfooding alerts.|
|| [HTTP Endpoints](https://docs.gitlab.com/ee/operations/incident_management/integrations.html#http-endpoints)| 🔴 || Mapping a complex payload to the custom mapping was cumbersome.  Alerts showed a new alert when the payload changed.|
|| [Prometheus Integration](https://docs.gitlab.com/ee/operations/metrics/alerts.html#external-prometheus-instances)| 🔴 || |
|| [Grouping of identical alerts](https://docs.gitlab.com/ee/operations/metrics/alerts.html#external-prometheus-instances)| 🔴 ||Dependent on dogfooding alerts.  Looking for the ability to manually add similar alerts to the same incident. |

</details>

### Marketing & Sales Enablement

Marketing and Sales Enablement material can be found [here](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/incident-management/).

### Pricing

Features in the Incident Management category have been placed in tiers based on GitLab's [Buyer Based Tiering](https://about.gitlab.com/company/pricing/#buyer-based-tiering-clarification) strategy. The following pricing plan represents existing and future features.

| Functionality| Free | Premium | Ultimate |
| ------------ | ---- | ------- | -------- |
|**ALERT INTEGRATIONS**||||
|[Generic HTTP Endpoint](https://docs.gitlab.com/ee/operations/incident_management/alert_integrations.html#generic-http-endpoint)| ✅ |✅ |✅|
|[Multiple HTTP endpoints](https://gitlab.com/groups/gitlab-org/-/epics/4442)||✅ |✅|
|[Email integration](https://gitlab.com/groups/gitlab-org/-/epics/4056)| |✅ |✅|
|Multiple email endpoints||✅ |✅|
|[External Prometheus integration](https://docs.gitlab.com/ee/operations/incident_management/alert_integrations.html#external-prometheus-integration)|✅  |✅ |✅|
|[Add custom mapping for alert formats to endpoints](https://gitlab.com/groups/gitlab-org/-/epics/4443)||✅ |✅|
|Special bi-directional out of the box integrations with popular monitoring tools|||✅|
|**INCIDENTS**||||
|[Manual Incident Creation](https://docs.gitlab.com/ee/operations/incident_management/incidents.html#create-incidents-manually)|✅ |✅ |✅|
|Incident creation based on limited criteria (e.g. integration or severity)||✅ |✅ |
|Incident creation based on extensive criteria|||✅|
|Incident payload transformations|||✅|
|Incident Timelines|✅ |✅ |✅|
|Incident Reviews||✅ |✅|
|Incident Dashboards|||✅|
|**ON-CALL SCHEDULE MANAGEMENT**||||
|Create multiple schedules||✅ |✅ |
|[Escalation policies](https://gitlab.com/groups/gitlab-org/-/epics/4638)||✅ (single)|✅ (multiple)|
|Routing rules for alerts|||✅ |
|**RUNBOOKS**||||
|Link runbooks to alerts via simple URL input - link appears in alert|✅ |✅ |✅ |
|Automatically render linked runbooks in alerts/incidents||✅ |✅ |
|Create new runbook when creating alert||✅ |✅ |

## Competitive Landscape

| Name of Competitor | Year Founded | Relative Links|
| ------------------ | ------------ |---------------|
| Atlassian Opsgenie | 2012 | [Website Link](https://www.opsgenie.com/) |
| Grafana OnCall (Previously Amixr) | 2018, acquired by Grafana in 2021 | [Website Link](https://www.opsgenie.com/) <br> [Competitive Analysis](https://gitlab.com/gitlab-com/Product/-/issues/3380) |
| PagerDuty | 2009 | [Website Link](https://www.pagerduty.com/) |
| Rootly | 2020 | [Website Link](https://rootly.io/) <br> [Competitive Analysis](https://gitlab.com/gitlab-com/Product/-/issues/2943) |
| ServiceNOW | 2003 | [Website Link](https://www.servicenow.com/products/incident-management.html) |
| Splunk On-Call (Previously VictorOps) | 2021, acquired by Splunk in 2018 | [Website Link](https://www.splunk.com/en_us/software/splunk-on-call.html) |
| XMatters | 2000 | [Website Link](https://www.xmatters.com/use-cases/major-incident-management-mim/) |
| FireHydrant | 2018 | [Website Link](https://firehydrant.com/) <br> [Competitive Analysis](https://gitlab.com/gitlab-org/monitor/respond/-/issues/117) |
| Blameless | 2017 | [Website Link](https://blameless.com/) <br> [Competitive Analysis](https://gitlab.com/gitlab-org/monitor/respond/-/issues/117) |

## Analyst Landscape

Analyst firms such Gartner and 451 have recently published articles on the rising prevalence of automation in incident response workflows.

### Gartner

Gartner's recent research study titled **Automate Incident Response to Enhance Incident management**, focuses on the importance of leveling up manual incident response processes with automation: "Organizations targeting best-in-class incident management must address the manual processes and collaboration challenges between teams.” They go on to outline some of their key findings which highlight that “I&O organizations are looking to enhance incident response by focusing on automation, third-party integration, stakeholder management and improved detection response feedback loops.”

Their recommendations include the following:

- "Invest in a centralized on-call management system and automate incident response workflows with wide integrations that create a holistic incident response management solution."
- "Integrate monitoring solutions and Service Desk systems with bidirectional synchronization to incident response systems, which keeps the incident status synchronized across systems."
- "Leverage automation to extend incident response capabilities that can integrate with DevOps toolchain monitoring."
- "Improve incident communication and collaboration by integrating incident workflow processes with ChatOps tools like Slack or Microsoft Teams."

_Gartner, Automate Incident Response to Enhance Incident management, By: Venkat Rayapudi & Steve White, Published 18 September 2020_

Competitors (listed above in [competitive landscape](#competitive_landscape)) enable the automation of these processes to different extents. Automattion functionality is typically offered with higher pricing tiers across the board. In order to take advantage of these automation features, companies must invest significant time in the configuration and fine-tuning of systems and processes.

In the near term, GitLab is positioned to enable Gartner’s recommendations for a best in-class incident management platform via the centralization of [on-call schedule management](https://gitlab.com/groups/gitlab-org/-/epics/3960) to enable the automatic routing of alerts to the right responders at the right time. When we begin working on maturing Incident Management to Lovable ([plan](https://gitlab.com/groups/gitlab-org/-/epics/1539)) we will be adding [rule sets that enable users to automate the creation of actionable incidents](https://gitlab.com/groups/gitlab-org/-/epics/3975).

### 451 Research

451 Research published an article on the acquisition of Rundeck by PagerDuty in September 2020. Read more about this on Rundecks [website](https://www.rundeck.com/pagerduty). This was a strategic move to meet the demands of the enterprise for more automation in incident response.

GitLab has plans to investigate using Rundeck for Runbooks via [gitlab#36655](https://gitlab.com/gitlab-org/gitlab/-/issues/36655), this will be interesting opportunity to connect the PagerDuty lifecycle into GitLab Runbooks and Monitoring capabilities.

There is an existing landscape of comparable tools and even "ServiceNow and xMatters have orchestration engines that can be deployed to build workflows across tools, but they aren't typically extensively used to execute remediations." VictorOps (owned by Splunk) and OpsGenie (owned by Atlassian) are other similar tools with visions like PagerDuty.
