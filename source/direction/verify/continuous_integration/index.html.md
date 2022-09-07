---
layout: markdown_page
title: "Category Direction - Continuous Integration"
description: "Continuous Integration is an important part of any software development pipeline. It must be easy to use, reliable, and accurate. Learn more here!"
canonical_path: "/direction/verify/continuous_integration/"
---

- TOC
{:toc}

## Continuous Integration

Continuous Integration (CI) is an important part of any software development cycle, and defined as part of the [Verify stage](/direction/ops/#verify) here at GitLab. As declared in our Ops Section [direction](/direction/ops/#pipelines-as-code), we recognize a key advantage of GitLab CI is that we can define pipelines as code, while making CI easy to use, reliable, and accurate in terms of its results. We are very proud that we are recognized as [the leading CI/CD tool on the market](/blog/2017/09/27/gitlab-leader-continuous-integration-forrester-wave/), as well as a leader in the 2019 Q3 [Cloud Native CI Wave](/analysts/forrester-cloudci19/), and it's important for us that we continue to innovate in this area and provide not just a "good enough" solution, but a [speedy and reliable one](/direction/ops/#speedy-reliable-pipelines).

Making it easy to run a pipeline is our first focus and this applies to both running a pipeline manually as well as triggering one automatically when submitting a code commit or a merge request. In addition, we want to provide data for examining your pipeline's performance, so that you can optimize CI configurations to make your pipelines run more efficiently.

## Additional Resources

- [Maturity Plan](#maturity-plan)
- [Issue List](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3AContinuous%20Integration)
- [Overall Vision of the Verify stage](/direction/ops/#verify)
- [JTBD Overview](https://about.gitlab.com/handbook/engineering/development/ops/verify/pipeline-execution/jtbd/)

For specific information and features related to authoring and pipelines, check out [Pipeline Authoring](/direction/verify/pipeline_authoring/). For work related to Pipeline Abuse Prevention, see the [Category page](https://about.gitlab.com/direction/verify/pipeline_abuse_prevention/). 

You may also be looking for one of the following related product direction pages: [GitLab Runner](/direction/verify/runner_core/), [Continuous Delivery](/direction/release/continuous_delivery/), [Release stage](/direction/ops/#release), or [Jenkins Importer](/direction/verify/jenkins_importer/). 

## Who we are focusing on? 

Check out our [Ops Section Direction "Who's is it for?"](/direction/ops/#who-is-it-for) for an in depth look at the our target personas across Ops. For Continuous Integration, our "What's Next & Why" are targeting the following personas, as ranked by priority for support: 

1. [Sasha - Software Developer](https://about.gitlab.com/handbook/product/personas/#sasha-software-developer)
1. [Devon - DevOps Engineer](https://about.gitlab.com/handbook/product/personas/#devon-devops-engineer)
1. [Delaney - Development Team Lead](https://about.gitlab.com/handbook/product/personas/#delaney-development-team-lead)

## What's Next & Why

As part of the [FY23 Product Themes](https://about.gitlab.com/direction/#fy23-product-investment-themes) we plan to support the following areas.

### CI/CD minutes quotas for public projects

To [Extend our lead in CI/CD](https://about.gitlab.com/direction/#extend-our-lead-in-cicd) and build a top notch experience for users of [GitLab SaaS Runners](https://about.gitlab.com/direction/verify/runner_saas/) we will provide users with better visbility about their [CI/CD minute consumption](https://docs.gitlab.com/ee/ci/pipelines/cicd_minutes.html#how-cicd-minutes-are-calculated). 

This is a key milestone to delivering our top priority of enforcement of [CI/CD minutes limits for public projects](https://gitlab.com/groups/gitlab-org/-/epics/5653). We are on track to deliver the work in the FY23-Q3 to add limits for public projects while retaining a superior experience for the Open Source Projects that belong to GitLab's Open Source Program.

We have heard from GitLab SaaS users that they would like to set quotas on projects as self-managed namespace admins can. We have set a goal to deliver [Configure CI/CD Quotas by project](https://gitlab.com/gitlab-org/gitlab/-/issues/357760) in the second half of the year.

### Pipeline Experience

As we talk to more DevOps Engineers we are learning about new use cases we need to support around viewing pipelines and jobs. So to [Improve Key workflow usability](https://about.gitlab.com/direction/#improve-key-workflow-usability) we prioritizing ways to review job logs like adding [a simple search](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/91293), ability to quickly [traverse errors](https://gitlab.com/gitlab-org/gitlab/-/issues/343658) and more in [gitlab&8242](https://gitlab.com/groups/gitlab-org/-/epics/8482) . We are also improving the experience between pipelines types via [gitlab#217718](https://gitlab.com/gitlab-org/gitlab/-/issues/217718).

### System Usability Score impacting issues

We are also working with the UX department to address [high severity](https://gitlab.com/groups/gitlab-org/-/issues/?sort=milestone&state=opened&label_name%5B%5D=group%3A%3Apipeline%20execution&label_name%5B%5D=SUS%3A%3AImpacting&label_name%5B%5D=OKR&not%5Blabel_name%5D%5B%5D=severity%3A%3A3&not%5Blabel_name%5D%5B%5D=severity%3A%3A4&first_page_size=20) UX issues that affect the usability of the GitLab Platform. 

## Maturity Plan

Our current maturity is at "Complete" and the next maturity target is "Lovable"  (see our [definitions of maturity levels](/direction/maturity/)). We previously reached "Lovable" in 2017, after being listed a [CI Leader](https://about.gitlab.com/blog/2017/09/27/gitlab-leader-continuous-integration-forrester-wave/). In order to maintain this lead while staying ahead of the changing DevOps landscape needs for stability, performance and quality we need to restablish a strong foundation of the core elements for CI. As such, we are prioritizing bugs and user experience improvements, while continuing to design and validate features for future implementation that move our vision forward. The following investments will be key to moving our maturity forward in the next two quarters of 2022: 

- [Bugs related CI/CD Minute Quotas](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=CI%20minutes&label_name[]=type::bug)
- [Bugs related to Mergeability](https://gitlab.com/groups/gitlab-org/-/epics/5455)

These investments will lay the ground work to deliver on the top vision items in 2022 (see [Epic#4794](https://gitlab.com/groups/gitlab-org/-/epics/4794)) which involve features under these key areas:

- [Secure CI_JOB_TOKEN Workflows](https://gitlab.com/groups/gitlab-org/-/epics/6546)
- [Make GitLab CI/CD work better with external repositories](https://gitlab.com/groups/gitlab-org/-/epics/943)


## What is Not Planned Right Now

Our strategy above to regain a category maturity of "Lovable" is two-fold - first, a renewed focus on strengthening the core features of CI that support running a pipeline; and second, deliver features that provides more users with the ability to run pipelines in a project. To execute with purpose on these plans means there are opportunities in the CI category that we will not be pursuing. While this is not an exhaustive list, below are popular features/topics representing groups of issues that are currently **not** prioritized on our roadmap.

- [Present information around running pipeline activities in GitLab CI](https://gitlab.com/groups/gitlab-org/-/epics/5071)
- [Improve the experience around debugging jobs and analyzing pipelines](https://gitlab.com/groups/gitlab-org/-/epics/5022)
- CI related [notifications](https://gitlab.com/groups/gitlab-org/-/issues?label_name%5B%5D=notifications&label_name[]=group%3A%3Apipeline%20execution) (by email or via integration with other tools)
- CI related [API endpoints](https://gitlab.com/gitlab-org/gitlab/-/issues?label_name%5B%5D=api&label_name%5B%5D=group%3A%3Apipeline+execution&state=opened) (unless related to features on the roadmap)
- CI related [permissions](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=CI%20permissions&label_name[]=group%3A%3Apipeline%20execution&not[label_name][]=bug) (non-bug issues)

## Competitive Landscape

The majority of CI market conversation is between us, Jenkins, and GitHub Actions at this point. An example of this placement is from [Jet Brain's 5th annual Developer Ecosystem Survey](https://www.jetbrains.com/lp/devecosystem-2021/) which has placed GitLab as #2 CI solution for enterprises. Atlassian has built BitBucket Pipelines, a more modernized version of Bamboo, which is still in the early stages. Microsoft is maintaining (at least for now) Azure DevOps at the same time as GitHub Actions but for personal usage GitHub Actions is gaining traction among developers. CodeFresh and CircleCI have both released [container-based plugin model](https://steps.codefresh.io/), similar to GitHub Actions. CircleCI in particular is known for very fast startup times and we're looking to ensure we [keep up or get even faster](https://gitlab.com/groups/gitlab-org/-/epics/439). Jenkins is largely seen as a legacy tool, and most people we speak with are interested in moving off to something more modern. We are addressing this with our [Jenkins Importer](/direction/verify/jenkins_importer) category which is designed to make this as easy as possible.

From [GitHub's 2022 Roadmap](https://github.com/orgs/github/projects/4247), we are seeing GitLab-reminiscent features which include [Pull Request Merge Queue](https://github.com/github/roadmap/issues/370), akin to [Merge Trains](https://docs.gitlab.com/ee/ci/pipelines/merge_trains.html) with a fit-finish that we aim to make easier in [gitlab#294169](https://gitlab.com/gitlab-org/gitlab/-/issues/294169). Also to note is an emphasis on governance and controls with [Audit Log streaming](https://github.com/github/roadmap/issues/344), bringing parity to the capabilities GitLab has created with the [Compliance group's Audit Event streaming](https://docs.gitlab.com/ee/administration/audit_event_streaming.html). 
## Analyst Landscape

There are a few key findings from the Forrester Research analysts on our CI solution. GitLab is seen as capable as the solutions provided by the hyperclouds themselves, and well ahead of other neutral solutions. This can give our users flexibility when it comes to which cloud provider(s) they want to use. We are also seen as the best end to end leader, with other products  not keeping up and not providing as comprehensive solutions. What this tells us is that it is important for us to continue to innovate and make it hard or even impossible for competitors to maintain pace.

As such, our path to improving our analyst performance matches our solutions above in terms of staying ahead of our competitors.

## Top Customer Success/Sales Issue(s)

The Field teams are typically most interested in uptier features like [Premium](https://gitlab.com/groups/gitlab-org/-/issues?sort=milestone&state=opened&label_name[]=group::pipeline+execution&label_name[]=Category:Continuous+Integration&label_name[]=GitLab+Premium) and [Ultimate](https://gitlab.com/groups/gitlab-org/-/issues?sort=popularity&state=opened&label_name[]=group::pipeline+execution&label_name[]=Category:Continuous+Integration&label_name[]=GitLab+Ultimate&not[label_name][]=GitLab+Premium&not[label_name][]=GitLab+Free). The top requested issues in these tiers include a [Group Level Dashboard](https://gitlab.com/gitlab-org/gitlab/-/issues/11960) and [adding metrics for pipeline and job data to be exported for OpenTelemetry](https://gitlab.com/gitlab-org/gitlab/-/issues/301096). Also important for the sales team is [gitlab#205494](https://gitlab.com/gitlab-org/gitlab/issues/205494) which will allow for easier use of GitLab's security features when not using GitLab's CI.

## Top Customer Issue(s)

Our top customer issues ([search results](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Apipeline%20execution&label_name[]=customer)) include the following:

- [Ensure after_script is called for cancelled and timed out pipelines](https://gitlab.com/gitlab-org/gitlab/-/issues/15603)
- [Add configurable pipeline priority](https://gitlab.com/gitlab-org/gitlab/-/issues/14559)
- [Optional manual action becomes blocking when it is started](https://gitlab.com/gitlab-org/gitlab/-/issues/20237)
- [Gitlab CI - Run job on all runners that have the specific tag](https://gitlab.com/gitlab-org/gitlab/-/issues/16474)

Another item with a lot of attention is to normalize job tokens in a more flexible way, so that they can have powerful abilities when needed and still not introduce security risks ([gitlab#3559](https://gitlab.com/groups/gitlab-org/-/epics/3559)).

We also have a few issues about making variables available before includes are processed, however there is a "chicken and egg" problem here that has been difficult to solve. Child/parent pipelines solves some use cases, but not all. There are two related epics here, [Use a variable inside other variables in .gitlab-ci.yml](https://gitlab.com/groups/gitlab-org/-/epics/3589) and [Raw (unexpanded) variables MVC](https://gitlab.com/groups/gitlab-org/-/epics/1994)

## Top Internal Customer Issue(s)

Our top internal customer issues ([search results](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Apipeline%20execution&label_name[]=internal%20customer)) include the following:

- [Fail the pipeline immediately if one of the jobs fail](https://gitlab.com/gitlab-org/gitlab/-/issues/23605)
- [Add custom labels to CICD pipelines](https://gitlab.com/gitlab-org/gitlab/-/issues/26618)

In discussing the second issue with customers we have learned that there are two use cases for this: 1.  Labeling before pipeline execution of things like long running integration tests and 2. Dynamic labeling based on results within the pipeline. We will consider both as we work towards the MVC and think about the pipeline searchexperience.

Our top dogfooding issues ([search results](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Apipeline%20execution&label_name[]=Dogfooding)) are:

- [Group level pipeline dashboard](https://gitlab.com/gitlab-org/gitlab/-/issues/11960)
- [Public pipeline page MVC](https://gitlab.com/gitlab-org/gitlab/-/issues/10861)

## Top Vision Item(s)

Looking to the future, we have plans to help you better monitor and understand your pipeline [epic#4794](https://gitlab.com/groups/gitlab-org/-/epics/4794). Having details about pipeline activities (such as job duration) will allow you to see and react to what's happening while your pipeline is running. Beyond using data simply for reactive purposes, we have plans for a customizable UI for historical pipeline analytics so you can see the trends that will guide your planning and decision-making. 


We'd love to create a holistic approach to automatically merging when pipelines succeed via [gitlab#8128](https://gitlab.com/gitlab-org/gitlab/-/issues/8128), which offers great collaboration between [Code Review](/direction/create/code_review/) and Continuous Integration. 

Even further into the future, we are looking to expand insights and predications of CI use to help you reduce waste in our 3-year vision via [gitlab&4793](https://gitlab.com/groups/gitlab-org/-/epics/4793).
