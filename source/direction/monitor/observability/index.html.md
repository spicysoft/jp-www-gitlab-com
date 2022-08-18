---
layout: markdown_page
title: "Product Direction - Monitor:Observability"
description: "A unified observability platform for your DevOps needs"
canonical_path: "/direction/monitor/observability/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

This is the product direction for Monitor:Observability. If you'd like to discuss this direction
directly with the product managers for Monitor:Observability, feel free to reach out to Sebastien Pahl (Principal PM of Monitor:Observability) ([GitLab](https://gitlab.com/sebastienpahl), [Email](mailto:spahl@gitlab.com)).

## Vision
We aim to democratize access to open-source observability tools and APIs in order to create a world where developers and operators can easily, and seemlessly collaborate to ensure production applications are availble and responsive to their users.

## Newsworthy
On Dec 14, 2021, GitLab announced the [acquisition of Opstrace](https://about.gitlab.com/press/releases/2021-12-14-gitlab-acquires-opstrace-to-expand-its-devops-platform-with-open-source-observability-solution.html). Opstrace is an observability distribution that will become integrated and usable out-of-the-box for all GitLab users. Using Opstrace, users gain the benefit of having a full observability platform, starting with Metrics, powered by Prometheus. 

On March 29, 2021 we pubished a [blog post](https://opstrace.com/blog/gitlabobsvervabilityui) outlining our vision for a new UI to be fully integrated with the devops platform.

## Direction

Over the coming months, we will focus on integrating Opstrace into GitLab. Observability will be available, by default, for both GitLab SaaS and Self-Managed users, starting at the free tier.
Using GitLab’s observability capability, you will be using a completely open-sourced platform. You do not have to worry about vendor lock-in from instrumentation to alerting. 

Organizations often have the choice of using an observability vendor or building their own observability platform. With the former, teams outsource the problems of operating a system that needs to be scaled and consistently updated but are locked-in to proprietary software and APIs. With the latter, teams have to manage the complexity of an observability platform, figure out how to make all the open-source components work together and keep them running up to date. We want that choice to be easy to make.

We are different because we will focus on making the toil of operating open-source observability tools easy. Instead of staffing a team to keep toolings up to date, you can easily and confidently upgrade with the observability distribution. Furthermore, this observability tool is integrated with the rest of GitLab so you have a single tool to build, test, collaborate, deploy, and monitor your applications.

Over time, we’ll add additional delightful experiences such as:

1. Add tracing to the Opstrace/GitLab stack. Tracing helps users understand the flow of requests and is particularly useful when you need to debug microservices-based applications.
1. Add error tracking support to the Opstrace/Gitlab stack. Error tracking is a great way to enable quick action on recurring issues happening in production code. This is easier than searching through logs for stack traces.
1. Add logging to the Opstrace/GitLab stack. Aggregating logs in a single, searchable interface helps operators find the relevant log message quickly.
1. Cross-reference different observability data types. Making it easy to go from a metric to the related log messages or to jump from a long-running trace to the impacted metric, will help teams understand more holistically what is happening with their application.
1. Enable more collaboration for teams when triaging and investigating issues using observability data. Using observability tools has mostly been a siloed activity until now. We want to enable teams to be able to tag each other, and easily show observability data into GitLab issues and MRs, so that teams can collaborate more effectively without having to rely on synchronous communication.

## Principles
We'll pursue our vision based on the following principles:

### On by Default
We want developers to have immediate access to a robust observability platform as a first principle. That means we will ensure it is available by default, starts with convention over configuration, and is easy to utilize. 

### Unified Data Store
We believe that observability data is most valuable when it is easy to glean insights across data types of metrics, logs, traces and errors. As a result we're working to store all types of observability data in a [unified datastore - Clickhouse](/handbook/engineering/development/ops/monitor/observability/#clickhouse-datastore).

### Integrated UI
A common interface, and most importantly a common collaboration space is key to bringing observability to where developers work. We'll create an [integrated UI](/handbook/engineering/development/ops/monitor/observability/#gitlab-observability-ui-previously-known-as-opstrace-ui) that allows for collaboration on observability data directly within GitLab.


## Diagram of future vision

![Image](https://docs.google.com/drawings/d/e/2PACX-1vQOyn0_xoVU7OEN6F8NnfLIa3FMgr-ZeeTzs3Ilzg5zcvIRQ7IzI5LZebhR4ZpWsSwGMiEChiNaG7bw/pub?w=1719&amp;h=792)

## Demo Video

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/c1a_KJtYesU" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

[Staging Demo](https://www.youtube.com/watch?v=c1a_KJtYesU)

[June 2022 Ops Engineering Showcase (AMER/EMEA)](https://www.youtube.com/embed/WLTHvv6z1B8)

## Video FAQ

##### Is this the way to deploy the Observability Component?
No this video is a demo of the local development environment. A new video will be posted soon using our terraform installer to GCP.

##### API credentials are now linked to personal GitLab account, are the plans using the GitLab Agent permissions?
That is something we can discuss with the GitLab Agent team of course.

##### The users now need Kubectl, are there plans to only need the GitLab interface by leveraging the GitLab Agent?
The users don't need kubectl, this is only because the above demo is for a development environment. The fact that we use Kubernetes to run the observability and Clickhouse is transparent to the end user.

##### Why does the user have to press an enable button? What is preventing us from automatically enabling it?
This will be automatic in the future and just the current state of the development code.

##### What is the plan to have the Grafana interface iframed in GitLab instead of completely separate?
This will be worked on here: [Integrating GitLab Observability UI (provided by Opstrace) into GitLab UI as an Iframe
](https://gitlab.com/gitlab-org/opstrace/opstrace/-/issues/1743)

##### Can we add to API key to Graphana automatically?
Yes this will be automatic (just like the GitLab pages one).

##### Is it possible to replace the docker compose step with something part of the initial helm chart? Or is this for the example app that generates data?
It's an example app. docker compose is only for deploying a local test app for testing this during dev and demos. The actual system is deployed with terraform and can be wrapped in helm in the future.

##### Are datasources going to be added automatically?
Yes of course. As a general rule we don't want to leave anything to the user that could be done for them.


## Performance Indicators
The Monitor:Observability will work to help all GitLab customers Monitor their apps by providing a simple on-by-default observability stack. We'll focus first on more users, and more contributors' adoption in our [dual flywheel strategy](/company/strategy/#dual-flywheels). We'll know if we are trending in the right direction by looking at the Monitor:Observability Monthly Active Users adoption, which will grow if we are providing value to our users. 

## Market
While SaaS is the first goal to be able to have a good testing ground and enable quick on-boarding, we want to quickly focus on self-managed enterpise users.

### Scope
The Observability group will be focused on bringing observability, including Metrics, Tracing, Error tracking and Logging to market within the GitLab platform.

## Timelines

### What’s next?
Now that Opstrace is part of GitLab, the first thing we’ll do is integrate Opstrace into GitLab. For additional details on the integration progress, follow this [GitLab epic](https://gitlab.com/groups/gitlab-org/-/epics/6976).

We are currently focused on integrating the first pieces with the Gitlab platform.

1. [Integration Milestone 1 - Foundational Integration](https://gitlab.com/groups/gitlab-org/opstrace/-/epics/3)
1. [Integration Milestone 2 - Initial SaaS with Integrated Auth](https://gitlab.com/groups/gitlab-org/opstrace/-/epics/11)
1. [Integration Milestone 3 - Beta SaaS Available with Error Tracking + Tracing](https://gitlab.com/groups/gitlab-org/opstrace/-/epics/19)

First features coming in 15.2.

### Planning
Planning happens in planning issues and the [planning board](https://gitlab.com/groups/gitlab-org/opstrace/-/boards/3657448) where issues are arranged by release.

There are located in this [project](https://gitlab.com/gitlab-org/opstrace/general)

#### Issues
1. 15.2 [Rollout Plan for Error Tracking backed by Clickhouse
](https://gitlab.com/gitlab-org/opstrace/opstrace/-/issues/1728)
1. [15.3](https://gitlab.com/gitlab-org/opstrace/general/-/issues/32)
1. [15.4](https://gitlab.com/gitlab-org/opstrace/general/-/issues/33)


## FAQ

### What is our high-level definition and "North Star" goal(s) for "Observability" at GitLab?
Our goal is to make Open-source Observability as easy as SaaS offerings. Having a fully usable observability Saas that one can also deploy in a dedicated manner.

Build an alternative Open Source UI for observability with different paradigms and goals than the current single offering (grafana). More here.

Open Source observability has many popular APIs such as Prometheus, Opentelemetry, … But metrics, logs, traces and other observability events all go into separate databases. Treating them as separate systems prevents building new higher level applications. We are working on getting all the data in a single backend based on 
clickhouse to enable richer user experience in the future.

### Does Opstrace only work with kubernetes?

While it’s true that we built a lot of kubernetes features, all that is needed is compatibility with APIs such as prometheus, not running kubernetes oneself.

We do use kubernetes to deploy opstrace itself but that is not something the user has to manage and it’s separate from their infrastructure.

### How is this going to be deployed?

As mentioned above, all we require is a cloud account. We deploy and configure everything with our terraform installer. 

Kubernetes is used to run the system, but that is transparent to the user, operators are deployed on the kubernetes cluster to maintain the rest of the stack.

Terraform will be used to rollout new upgrades.

For omnibus users, since this kind of stack is bigger than what a single machine/VM can provide, this will also be available through the same manner. They would deploy it into one of their cloud accounts.

### We say we will have an integrated UI - do we believe there will also be a separate UI? Will you be able to view dashboards and charts in a distinct non-GitLab UI as well as have them embedded in the GitLab UI or will it all be framed as the GitLab UI?

At first, there will be a separate UI. This is because we are using Grafana as a base and we need to use its technologies (react...) to build our UI. To bring data into the GitLab UI we will use iframes. The simplest thing to start with first would be to Iframe our entire UI (this keeps the feeling for the user of not leaving GitLab) and later allow framing and more directly embedding single dashboards & more.

### We say "unified data store" but there still is a separate relational database (another instance of Postgres) what are we storing there? Will we remove/migrate away from it?

There are two types of datastores.

Clickhouse for storing the observability data.

Postgres is used for our settings and users. This will disappear over time as we could use the existing GitLab one. No timelines yet as we first focus on other parts.

### What is going to happen with Cortex/Metrics?

We are going to move away from supporting Cortex. We will be finding another Prometheus API and we are going to use Clickhouse as our metrics storage backend.

### With integrated Auth - where does permissioning occur? Are we creating a separate permissioning levels for observability or mapping GitLab ones?

We are mapping to the GitLab ones.

### What is going to happen with the "Opstrace" name?

We are going to archive the name "Opstrace" as a standalone product, and instead focus on Observability features on the GitLab DevOps platform. Timeline and work that needs to be done are tracked in [this issue](https://gitlab.com/gitlab-org/opstrace/opstrace/-/issues/1761).



