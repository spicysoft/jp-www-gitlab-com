---
layout: markdown_page
title: "Product Direction - Fulfillment: Platform"
description: "The Fulfillment Platform team at GitLab focuses on providing the foundations to our billing system."
canonical_path: "/direction/fulfillment/provision"
---
 
## On this page
{:.no_toc .hidden-md .hidden-lg}
 
- TOC
{:toc}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />
 
## Mission
Fulfillment Platform maintains and evolves our underlying order-to-cash infrastructure, including integrations with Zuora to help accelerate our goals as a section.

## Fulfillment Platform vision

Fulfillment Platform team supports all of the teams in Fulfillment by abstracting complex integration with Zuora, improving CustomersDot architecture to better align with order-to-cash systems, focusing on developer productivity, and working on support and maintenance of the CustomersDot infrastructure.

### InfraDev Roadmap and Vision

Fulfillment platform works on availability, reliability, performance, scalability, delivery, and observability efforts with help from the [Infrastructure department](https://about.gitlab.com/handbook/engineering/infrastructure/).

We aim for [CustomersDot](https://gitlab.com/gitlab-org/customers-gitlab-com/) to have the [same service agreements as GitLab.com](https://about.gitlab.com/handbook/engineering/infrastructure/performance-indicators/#key-performance-indicators), with a `99.95%` targeted availability.

We have recently [migrated to GCP](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/6114), [added CustomersDot error budgets to Grafana](https://gitlab.com/gitlab-com/gl-infra/customersdot-ansible/-/issues/32), and [SLI tracking](https://gitlab.com/gitlab-com/gl-infra/customersdot-ansible/-/issues/126).

Next, we want to get to a higher [level maturity](https://about.gitlab.com/handbook/engineering/infrastructure/service-maturity-model/#customersdot-detail) and continue improving our availability and observability:

| What                                                                                                                                 | Why                                                                             | When            |
|--------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|-----------------|
| [Add a SLA (uptime/availability) dashboard](https://gitlab.com/gitlab-com/gl-infra/customersdot-ansible/-/issues/148)                | Add more visibility and tracking around CustomersDot SLA and availability       | In-progress     |
| [Improve current CustomersDot runbooks](https://gitlab.com/gitlab-com/runbooks/-/issues/99)                                          | Eliminate dependency on Fulfillment when troubleshooting CustomersDot           | 1-3 milestones  |
| (HA) [Migrate from postgreSQL to Cloud SQL](https://gitlab.com/gitlab-com/gl-infra/customersdot-ansible/-/issues/152)                | Less maintenance and better availability for the CustomersDot DB                | 1-3 milestones  |
| Improve redundancy between CustomersDot and Zuora                                                                                    | Adds a better caching layer to have no downtime due to frequent Zuora outages   | 1-3 milestones  |
| (HA) [Iteratively migrate CustomersDot to a HA environment](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/807)               | Move CustomersDot services/components to HA in order to improve reliability     | 3-12 milestones |
| [Add logs to Kibana](https://gitlab.com/gitlab-com/gl-infra/customersdot-ansible/-/issues/42)                                        | We have GCP logs but Kibana is more complete and part of the maturity levels    | 3-6 milestones  |
| [Implement auto-rollback on error](https://gitlab.com/gitlab-com/gl-infra/customersdot-ansible/-/issues/156)                         | Minimize disruption if an outage occurs after a deployment                      | 3-6 milestones  |
| (Business Metrics) [Alerting of failed jobs for critical SaaS metrics](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/808)    | Move away from noisy Sentry alerts to critical alerts for accurate SaaS billing | 3-6 milestones  |
| (Business Metrics) [Alerting of failed jobs for critical SM metrics](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/809)      | Move away from noisy Sentry alerts to critical alerts for accurate SM billing   | 3-6 milestones  |
| (Business Metrics) [Alerting over a threshold of payment failures](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4145) | Encounter payment problems as they occur                                        | 3-6 milestones  |
