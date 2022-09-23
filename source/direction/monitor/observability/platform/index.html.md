---
layout: markdown_page
title: "Observability Platform Direction"
description: "GitLab Observability Platform"
canonical_path: "/direction/monitor/observability/platform/"
---

- TOC
{:toc}

We would appreciate your feedback on this direction page. Please create an issue to collaborate with us or propose a MR to this page!

## Overview

Data is everywhere. From observability telemetry (metrics, traces, and logs), to application events, to DevOps metrics, to product analytics data, organizations need a way to process, store, and manage this explosion of data. Furthermore, organizations need the data to be available, without expensive or time-consuming ELT processes, for analysis. Historically, organizations hired observability vendors, built and deployed their own monitoring/observability platforms, set up enterprise data buses, or even used functionalities contained within GitLab. This is expensive to maintain and manage, and organizations often run into additional problems created by data silos. Just as important, having access to data is a critical ingredient in the DevOps feedback loop. We view having the capability to process, store, manage, and access data as a critical part of the DevOps platform.

## Mission & Vision

### Mission

Process, store, manage, and access the data from your entire software development life-cycle in the complete DevOps platform.

### Vision

GitLab Observability Platform is an open-source, flexible data solution for your entire software development life-cycle. We enable you to easily integrate with data emitters, process data, store your data for analysis and cost-effective long-term storage, control what you keep, and responsively serve up data when you need it. It is an integral part of the GitLab DevOps platform, so you save time and money not having to integrate additional 3rd-party or open-source data solutions. For the end-users, data is made intuitively available in the appropriate workflow. It also integrates tightly with the [GitLab Observability UI](/direction/monitor/observability/ui/) for a seamless experience for users.
