---
layout: handbook-page-toc
title: Demonstrations
description: "Solutions Architects are occasionally called on at a moments notice to give a demo or join a call to show a prospect or customer specific GitLab functionality"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

[**SA Practices**](/handbook/customer-success/solutions-architects/sa-practices/) - [**Sales Plays**](/handbook/customer-success/solutions-architects/sales-plays/) - [**Tools and Resources**](/handbook/customer-success/solutions-architects/tools-and-resources/) - [**Career Development**](/handbook/customer-success/solutions-architects/career-development/) - [**Demonstration**](/handbook/customer-success/solutions-architects/demonstrations/) - [**Processes**](/handbook/customer-success/solutions-architects/processes/) - [**Education and Enablement**](/handbook/customer-success/education-enablement/)

# Demonstrations
{:.no_toc}

## Demo Systems Overview and Specific Environments

The [Demo Systems Handbook page](/handbook/customer-success/demo-systems/) provides an overview of the demo system infrastructure used for demonstrating GitLab features, value propositions, and workflows.

See the [Environments sub-page](/handbook/customer-success/demo-systems/#shared-environments) for specific details on how to access the environments for use in your demos.

## Demo Readiness

Solutions Architects are occasionally called on at a moments notice to give a demo or join a call to show a prospect or customer specific GitLab functionality. A best practice for being prepared for these demo requests is to have a minimized browser window with various content preloaded into the browser tabs. Examples of common environments utilized are listed below. Note that accessing some of these links are only enabled for GitLab team-members.  (To-do: port this list to the demo catalog)

- The [GitLab Demo Systems](/handbook/customer-success/demo-systems/) provides a catalog of demos and the sandbox infrastructure for performing demos.
- The [GitLab.org Group level](https://gitlab.com/groups/gitlab-org/-/roadmap) clearly represents GitLab Epics, Roadmaps and cross-project issue views used for planning releases
- A [GitLab.com project](https://gitlab.com/jkrooswyk/joel-springsample/boards/579466) driven by Auto DevOps which includes a populated issue board as well as an active Merge Request is highly useful for describing value of workflow utilizing GitLab Auto DevOps for build, test, security and review
- This [GitLab.com project](https://gitlab.com/gitlab-examples/security/security-reports/merge_requests/2) is commonly utilized specifically for security discussions
- The [production monitoring for GitLab.com](https://gitlab.com/charts/gitlab/environments/190276/metrics) is useful for any discussion regarding custom and in-app monitoring
- The [production Grafana instance](https://dashboards.gitlab.com/d/000000159/ci?refresh=5m&orgId=1) showing GitLab Runner details is a great way to represent the art of the possible as it relates to monitoring and dashboards
- The GitLab [Direction](/direction/) page in the Handbook is often beneficial for future-looking product vision questions and discussions about upcoming features
- Optional: [Integrations](/handbook/marketing/strategic-marketing/demo/integrations/) may be loaded and ready to discuss by leveraging the standard demo environments
- Other Existing demo groups and projects are listed in the next section

## Repeatable process for maintenance of recording GitLab Flow-style demos

Back in FY23-Q1 we've started an OKR to create a [repeatable process for maintenance of recording GitLab P2M-style demos](https://gitlab.com/gitlab-com/customer-success/solutions-architecture-leaders/sa-initiatives/-/issues/89), which, in turn, resulted in a followup OKR in FY23-Q3 to [Document the repeatable process for maintenance of recording GitLab Flow-style demos](https://gitlab.com/gitlab-com/customer-success/solutions-architecture-leaders/sa-initiatives/-/issues/137).


### Setup the demo and environment

All GitLab assets are available in [this group](https://gitlab.com/tanuki-workshops/emea-sa-tam/p2m), refer to the [README](https://gitlab.com/tanuki-workshops/emea-sa-tam/p2m/README/-/blob/main/README.md) for more information on how to Get Started.
<!-- - (**TODO**): Add video on how to *setup* the demo -->

<div style="position: relative; padding-bottom: 54.79166666666666%; height: 0;"><iframe src="https://www.loom.com/embed/5ed6bda810fa4dba83e2da1614b08521" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

### GitLab Flow-scenario

We should have a short presentation that acts as an intro and guides our viewers through the demo. [This presentation](https://docs.google.com/presentation/d/1wpxOE5Sq1fRE2bv_7x5uF3wLx0KJwTxVNDkCukEVEWY/edit?usp=sharing) (located in the [CS->Demo Script](https://drive.google.com/drive/folders/0B6HCxjyEpdXRR0FSQXMwVjI3bFE?resourcekey=0-IAm5RyKLwi-1uAZ4hgZcjQ&usp=sharing) folder in GDrive) could be used as a base for this.

The main flow should be:
- Introduction to the One GitLab Platform
- Highlight of a select number of added capabilities and their value (if possible say thank you to the release MVP)
- Demo of GitLab Flow

<!-- ### Recording the demo

Loom
- (**TODO**): Add video on how to *record* the demo with Loom -->

## Existing Demonstrations

There are a variety of locations for demo groups and projects today. We are in the process of reviewing and cataloging all existing materials as part of the [FY21 Q3 OKR - Establish a well-maintained demonstration repository](https://gitlab.com/gitlab-com/customer-success/solutions-architecture-leaders/sa-initiatives/-/issues/9).

Today, demo groups and projects are split between several distinct locations.  We are in the process of building out a [Demo Catalog Project](https://gitlab.com/gitlab-com/customer-success/solutions-architecture/demo-catalog) to easily search for existing demos.  Please consider contributing to the demo catalog.  Instructions can be found within the project README.  While this is being built out, here are various locations where you will find demo groups and projects:

1. [GitLab Demo Portal Catalog Libraries](https://gitlabdemo.com/catalog/libraries) - provides demo scenarios with corresponding videos and project build out on the GitLab demo environment. Some demo projects also have wiki pages with additional resources, such as a link to a slide presentation, demo script, and objection handling.
1. [GitLab.com](https://gitlab.com) - there are a variety of groups and projects with Content
    - [GitLab Examples](https://gitlab.com/gitlab-examples) are used by product groups for feature validation, speed runs, demos, and feature showcasing in docs. The [GitLab CI/CD Examples documentation](https://docs.gitlab.com/ee/ci/examples/) points our customers to these for their own use as well.

- [Guided Explorations](https://gitlab.com/guided-explorations) - has projects for a variety of topics, from language-specific feature flag examples, various DevOps patterns, pipeline tips, tricks, and hacks for windows, and more.
- [GitLab CS Tools](https://gitlab.com/gitlab-cs-tools) - group that provides projects for GitLab cs automation and migration tools
- [Customer Success Demos](https://gitlab.com/gitlab-com/customer-success/demos) - centralized location for demos used by Customer Success, including a set of golden repos for different application types, security demos, and more.

## Slide Decks for SA Demos

There are several slide decks stored on google drive that are commonly used for demos. Feel free to make a copy of any of these to personalize for your own needs.

- [All the Things](https://docs.google.com/presentation/d/1AG6eDm8USqU7TG12Sp4UEc9B3P03pniQnVHZAGzyDAg/edit?usp=sharing) - contains a comprehensive set of slides on all GitLab functionality and value propositions
- [General Demo.pptx](https://drive.google.com/file/d/17SoRPxPCswT_FublXCsi3rm3TBnHAYI-/view?usp=sharing) - Product walkthrough deck created and maintained by Cherry Han. Tip: you can make a copy of the deck, then open the deck in Google slides to edit it for your own purposes.
- Demo Prep 

<details><summary>Here is the Demo Preparation Roadmap which details the steps to undertake/consider to leverage the Demo2Win strategies before delivering a demo.</summary>

<image>
<iframe src="https://drive.google.com/file/d/1KIoJZ0Lcm83_gUHA5nzlFpgQ784xMHZp/preview" width="640" height="480" allow="autoplay"></iframe>
</image>
