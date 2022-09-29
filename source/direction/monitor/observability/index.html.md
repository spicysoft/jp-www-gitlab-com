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

## Overview

[Observability](https://en.wikipedia.org/wiki/Observability) is a measure of how well internal states of a system can be inferred from knowledge of its external outputs. In the (recent) past, simply monitoring your application and related systems may have been sufficient, e.g. watching for specific metrics to track whether performance and health are within expectations. Today, with the rapid adoption of cloud-native technologies and distributed systems, it is no longer sufficient to only look for known indicators. An observable system is one that enables operators to efficiently drill in and understand what went wrong even for previously unencountered problems.

## Mission & Vision

### Mission

Make data useful for every stage of the DevOps process.

### Vision

GitLab users and customers use GitLab Observability to improve the outcome of their software investment. They process, store, manage, provide access to, query, visualize, collaborate on, and operationalize on data collected throughout the entire DevOps process. 

The practice of observability is typically done for only production applications. Our vision is broader. How teams build software, how the software operates, and ultimately how users interface and use our software, all generate meaningful data that can help software teams to better infer the states of a system and thus make meaningful improvements. As such, we are aiming to build an observability capability that not only helps enable teams to ensure the health and performance of production systems, but also enable teams to continuously improve outcome in each stage of the DevOps process. 

## Strategy

On Dec 14, 2021, GitLab [acquired Opstrace](https://about.gitlab.com/press/releases/2021-12-14-gitlab-acquires-opstrace-to-expand-its-devops-platform-with-open-source-observability-solution.html) to jumpstart the plan to offer an observability solution in the One DevOps platform.

Opstrace added two foundational capabilities to the GitLab platform: the [GitLab Observability Platform](./platform) and the [GitLab Observability UI](./ui). We plan to build features that help us achieve our Observability [mission and vision](#mission--vision) by leveraging these platform capabilities.

### Principles

We plan to work toward our vision with the following principles:

#### On by Default

We want developers to have immediate access to an available observability solution. That means we will ensure it is on by default, starts with convention over configuration, and is easy to use. 

#### Unified Data Store

Data is most valuable when it is easy to glean insights across data types. As a result, we're working to store all types of data in a [unified datastore - Clickhouse](/handbook/engineering/development/ops/monitor/observability/#clickhouse-datastore), from metrics, logs, traces, and errors, to analytics data and other data types across the entire DevOps process. 

#### Integrated UI

We plan to create an [integrated UI](/handbook/engineering/development/ops/monitor/observability/#gitlab-observability-ui-previously-known-as-opstrace-ui) that allows for visualization and collaboration of data directly within GitLab.

#### Play well with the community

There is a vibrant open-source community working on observability and related toolings. We intend to leverage, augment, and work with what people already use and love. For example, we intend to adopt [OpenTelemetry](https://opentelemetry.io/) as the primary way to instrument, generate, collect, and export telemetry data. We also rely on Prometheus APIs and metric labeling as conventions. 

#### Reduce operational complexity

We plan to follow our FY23 investment theme of [GitLab Hosted First](https://about.gitlab.com/direction/#gitlab-hosted-first) in bringing our observability solution first as a SaaS solution. We plan to offer the same solution, specifically designed to ease the toil of operation, to our self-managed customers. As we mature the product, maintainability and operability will continue to be built into the product based on our learnings operating GitLab SaaS.


### How we are different

Organizations have the choice of using an observability vendor or building their own observability platform. With the former, teams outsource the problems of operating a system that needs to be scaled and consistently updated but are locked-in to proprietary software and APIs. With the latter, teams not only have to manage the complexity of operating an observability platform at scale, they have to also figure out how to make the components work together, and up to date. We want that choice to be easy to make by offering a completely open, yet managed platform.

We are different because by first focusing on making the toil of operating open-source observability tools easy. Instead of staffing a team to keep toolings up to date, you can easily and confidently upgrade with each GitLab release if you are self-managing a GitLab instance (or simply use our SaaS offering). Furthermore, this observability solution is integrated with the rest of GitLab so you have a single tool to build, test, collaborate, deploy, and monitor your applications. 

The decisions we made in architecting the GitLab observability stack also enable a level of flexibility that other solutions don't have. GitLab customers can how they want to operate to maintain data ownership and governance. We plan to enable the following capabilities in the future

1. GitLab Observability SaaS using long-term storage in own cloud account
1. GitLab Observability as a managed service
1. GitLab Observability as a self-managed service

### Go to Market

We have an ambitious [vision](#vision), but we're not going to get there overnight. We intend to leverage GitLab's strength as a comprehensive DevOps platform that our users already trust and use to create, build, test, and deploy software, to bring users into our observability solution. During our next phase of development, we are going to focus on bringing users into the observability solution. We intend to iteratively do so by solving specific jobs to be done that are outlined below.

### Jobs to be Done

#### Current Focus

##### When addressing performance problems of GitLab CI/CD, I want to understand what is happening in a pipeline, so that I can help developers be more productive

One of the [issue](https://gitlab.com/groups/gitlab-org/-/epics/5071) today with the GitLab CI/CD is there is no out-of-the-box solution to visualize where bottlenecks are in the pipeline. Inspired by the [OpenTelemetry Jenkins plugin](https://plugins.jenkins.io/opentelemetry/) we should enable runners to instrument pipeline jobs using OpenTelemetry, provide traces to the GitLab Observability Platform, and help users understand what is happening in the GitLab Observability UI. Given that GitLab CI/CD is one of the most used features, we believe we can drive observability usage by providing a solution for this job.  

Focusing on this job, we will also lay down the plumbing needed for the generic tracing use case. We want to make it easy for our users and customers to port over existing tracing jobs. We also want to make it easier for all GitLab users to start gaining the benefits of tracing.

##### When deploying to a Kubernetes cluster, I want insights into on the deployment, so that I can intervene and troubleshoot as needed

Kubernetes is the operating platform or the future platform for many organizations. As such, we want to [lower the cost to operate in Kubernetes via GitLab](https://about.gitlab.com/direction/configure/kubernetes_management/#vision). We can create a solution for the job by creating a [Kubernetes Dashboard](https://gitlab.com/groups/gitlab-org/-/epics/2493). By building the Kubernetes Dashboard on top of the observability stack, we can help the Configure and Release team to have less code to maintain, and build generic plumbing for generic data that changes frequently that should be displayed in dashboards. 

##### When managing defects in my code, I want to prioritize and address the most impactful bug, so that I can release the highest quality software

GitLab previously relied on the wrong tool (relational database) to store errors. The spiky nature of errors caused unfortunate outages to our service. We are working to move errors to the GitLab Observability Platform, and create dedicated visualization in the GitLab Observability UI. We plan to use GitLab error tracking internally and make it available to our users and customers.

#### Future Focus

##### When managing my self-managed GitLab instance, I want to monitor the key metrics, so I can ensure the health and performance of GitLab for my teams

Details TBD

### Planning
Planning happens in the [planning board](https://gitlab.com/groups/gitlab-org/opstrace/-/boards/3657448) where issues are arranged by release. Over time this will become more populated with a further look into the upcoming releases.

There are located in this [project](https://gitlab.com/gitlab-org/opstrace/general).

## Demo Video

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/c1a_KJtYesU" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

[Staging Demo](https://www.youtube.com/watch?v=c1a_KJtYesU)

[June 2022 Ops Engineering Showcase (AMER/EMEA)](https://www.youtube.com/embed/WLTHvv6z1B8)

## Video FAQ

1. **Is this the way to deploy the Observability Component?** _No this video is a demo of the local development environment. A new video will be posted soon using our terraform installer to GCP._
1. **API credentials are now linked to personal GitLab account, are the plans using the GitLab Agent permissions?** _That is something we can discuss with the GitLab Agent team of course._
1. **The users now need Kubectl, are there plans to only need the GitLab interface by leveraging the GitLab Agent?** _The users don't need kubectl, this is only because the above demo is for a development environment. The fact that we use Kubernetes to run the observability and Clickhouse is transparent to the end user._
1. **Why does the user have to press an enable button? What is preventing us from automatically enabling it?** _This will be automatic in the future and just the current state of the development code._
1. **What is the plan to have the Grafana interface iframed in GitLab instead of completely separate?** _This will be worked on here: [Integrating GitLab Observability UI (provided by Opstrace) into GitLab UI as an Iframe
](https://gitlab.com/gitlab-org/opstrace/opstrace/-/issues/1743)_
1. **Can we add to API key to Graphana automatically?** _Yes this will be automatic (just like the GitLab pages one)._
1. **Is it possible to replace the docker compose step with something part of the initial helm chart? Or is this for the example app that generates data?** _It's an example app. docker compose is only for deploying a local test app for testing this during dev and demos. The actual system is deployed with terraform and can be wrapped in helm in the future._
1. **Are datasources going to be added automatically?** _Yes of course. As a general rule we don't want to leave anything to the user that could be done for them._

## FAQ

1. **Does Opstrace only work with kubernetes?** _While it’s true that we built a lot of kubernetes features, all that is needed is compatibility with APIs such as prometheus, not running kubernetes oneself. We do use kubernetes to deploy opstrace itself but that is not something the user has to manage and it’s separate from their infrastructure.
1. **How is this going to be deployed?** _As mentioned above, all we require is a cloud account. We deploy and configure everything with our terraform installer. Kubernetes is used to run the system, but that is transparent to the user, operators are deployed on the kubernetes cluster to maintain the rest of the stack. Terraform will be used to rollout new upgrades. For omnibus users, since this kind of stack is bigger than what a single machine/VM can provide, this will also be available through the same manner. They would deploy it into one of their cloud accounts.
1. **We say we will have an integrated UI - do we believe there will also be a separate UI? Will you be able to view dashboards and charts in a distinct non-GitLab UI as well as have them embedded in the GitLab UI or will it all be framed as the GitLab UI?** _At first, there will be a separate UI. This is because we are using Grafana as a base and we need to use its technologies (react...) to build our UI. To bring data into the GitLab UI we will use iframes. The simplest thing to start with first would be to Iframe our entire UI (this keeps the feeling for the user of not leaving GitLab) and later allow framing and more directly embedding single dashboards & more.
1. **We say "unified data store" but there still is a separate relational database (another instance of Postgres) what are we storing there? Will we remove/migrate away from it?** _There are two types of datastores. Clickhouse for storing the observability data. Postgres is used for our settings and users. This will disappear over time as we could use the existing GitLab one. No timelines yet as we first focus on other parts.
1. **What is going to happen with Cortex/Metrics?** _We are going to move away from supporting Cortex. We will be finding another Prometheus API and we are going to use Clickhouse as our metrics storage backend.
1. **With integrated Auth - where does permissioning occur? Are we creating a separate permissioning levels for observability or mapping GitLab ones?** _We are mapping to the GitLab ones.
1. **What is going to happen with the "Opstrace" name?** _We are going to archive the name "Opstrace" as a standalone product, and instead focus on Observability features on the GitLab DevOps platform. Timeline and work that needs to be done are tracked in [this issue](https://gitlab.com/gitlab-org/opstrace/opstrace/-/issues/1761).
