---
layout: markdown_page
title: "Category Direction - Runner SaaS"
description: "Hosted GitLab Runners available on GitLab SaaS and that support the GitLab Build Cloud for Linux, Windows and macOS."
canonical_path: "/direction/verify/runner_saas/"
---

- TOC
  {:toc}

## Runner SaaS Overview

Runner SaaS is the product development effort for Runners on GitLab SaaS.

## Vision

By 2025, our vision for GitLab Runner SaaS is that 70% of GitLab SaaS customers' CI job workloads run on GitLab-hosted Runners.  We see this vision for Runner Fleet as enabling the broader GitLab product [vision](https://about.gitlab.com/direction/#vision) of continuing to mature the GitLab DevOps platform rapidly. Delivering on the vision means providing GitLab.com customers with a zero-friction, highly performant, secure, and reliable CI/CD build experience for the market-leading operating systems and development technologies. n addition, it means working towards providing a GitLab Runner SaaS solution where you can easily choose and use the correct type of public cloud-hosted compute resources for your CI/CD jobs.

A few key pillars to enable the vision for Runner Saas include:
- An expanded catalog of GitLab SaaS Runner virtual machines (near-term)
- Runner SaaS machine type resource discoverability (near-term).
- Autonomous build environment selection for CI job execution (long-term).

## Who we are focusing on?

Check out our [Ops Section Direction "Who's is it for?"](/direction/ops/#who-is-it-for) for an in depth look at the our target personas across Ops. For Runner, our "What's Next & Why" are targeting the following personas, as ranked by priority for support:

1. [Devon - DevOps Engineer](/handbook/product/personas/#devon-devops-engineer)
1. [Sasha - Software Developer](/handbook/product/personas/#sasha-software-developer)
1. [Delaney - Development Team Lead](/handbook/product/personas/#delaney-development-team-lead)
1. [Priyanka - Platform Engineer](/handbook/product/personas/#priyanka-platform-engineer)

##  Runner SaaS Solutions

| Offer Name                                                                                 | Offer Status|
|--------------------------------------------------------------------------------------------|----------------|
| [GitLab SaaS Runners on Linux](https://docs.gitlab.com/ee/ci/runners/saas/linux_saas_runner.html) |GA|
| [GitLab SaaS Runners on Windows](https://docs.gitlab.com/ee/ci/runners/saas/macos_saas_runner.html)                                                                |[Beta](https://docs.gitlab.com/ee/policy/alpha-beta-support.html#beta-features)|
| [GitLab SaaS Runners on macOS x86-64](https://docs.gitlab.com/ee/ci/runners/saas/macos_saas_runner.html)                                                                  |[Beta](https://docs.gitlab.com/ee/policy/alpha-beta-support.html#beta-features)|

## Strategic Priorities

The table below represents the current strategic priorities for Runner SaaS. This list will change with each monthly revision of this direction page.

| Theme-Category                       | Item                                                                                                                                               |Why?| Target delivery QTR |
|--------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|----------------|---------------------|
| SaaS Runners on Linux                | [Offer GPU enabled GitLab SaaS Linux Runners](https://gitlab.com/gitlab-org/gitlab/-/issues/358026)                                                |Advanced computing is a critical requirement for AI models. As the first iteration to enable the [ModelOps strategy](https://about.gitlab.com/direction/modelops/) for GitLab SaaS, we will add a GPU enable machine type to the GitLab SaaS Runners on Linux. |Q4 FY 2023|
| SaaS Runners on macOS                | [GitLab SaaS Runners on macOS Apple Silicon M1 Limited Availability](https://gitlab.com/gitlab-org/gitlab/-/issues/342848)                         |In Q3 FY 2022, we launched the [Runner SaaS for macOS beta](https://docs.gitlab.com/ee/ci/runners/saas/macos_saas_runner.html) on x86-64 architecture. The user and customer demand for this service have been exceptional. Further reinforcing the [one DevOps strategy](https://about.gitlab.com/direction/mobile/mobile-devops/), the current beta participants strongly favor having a fully integrated build solution for the Apple ecosystem embedded in GitLab. We plan to transition to Apple Silicon M1 compute and transition the offer to [limited availability](https://docs.gitlab.com/ee/policy/alpha-beta-support.html#limited-availability-la)| Q4 FY 2023            |
| Scalability and Performance | [Dogfooding of Taskscaler and the Google Compute Plugin on GitLab SaaS internal use Runners](https://gitlab.com/gitlab-org/gitlab/-/issues/352168) |The GitLab Runner SaaS for Linux with docker container builds executes millions of CI jobs each month. The autoscaling architecture that is the foundation of this solution has served us well. However, since its introduction, we have launched new autoscaling solutions to manage the Runner SaaS for Windows and macOS. In addition, the core technology used for Linux, Docker Machine, is no longer maintained by Docker. Though we maintain a fork of Docker Machine, the right long-term strategy is to iterate towards the [Next Runner autos-scaling architecture](https://docs.gitlab.com/ee/architecture/blueprints/runner_scaling/index.html) for the Runner SaaS. This architectural technology pivot will enable us to accomplish several goals. First - enabling GitLab to scale over the next five years. Second, as a critical foundational enabler to consistently achieve and exceed our CI Runners SLO goal of 99.95%. Finally, the autoscaling technology that we implement to manage the scale of GitLab SaaS is the same technology made available to customers that self-manage Runner Fleets.|Q1 FY 2024 |
| SaaS Runners on Windows              | [Runner SaaS for Windows General Availability](https://gitlab.com/gitlab-org/gitlab/-/issues/300476)                                               |We launched the Runner SaaS for Windows in beta in FY21Q1. At the time, our initial plan was to transition the offer to GA within a few quarters. However, due to other strategic priorities, we delayed that timeline. Now users and customers rely on a Windows build solution hosted on GitLab SaaS for their mission-critical CI/CD builds, so we must migrate the Windows offer to GA.|Q2 FY 2024           |

## Prioritization for feature enhancements, maintenance and bugs

In addition to prioritizing the work required to deliver the strategic priorities listed above, the Runner SaaS team must first [prioritize](https://about.gitlab.com/handbook/cross-functional-prioritization/#prioritization-for-feature-maintenance-and-bugs) and allocate resources for security vulnerabilities, corrective actions, maintenance, technical debt and bugs in each milestone. A substantial percentage of the investment allocation for the maintenance bucket will be allocated across the following sub-categories:

- SaaS Runners on macOS build VM image updates and maintenance.
- SaaS Runners on Windows build VM image updates and maintenance.
- Bugs related to executing builds on Runner SaaS (Linux, macOS, Windows).
- Collaboration with the SRE team to resolve incidents related to Runner SaaS.
- Installing new runner version updates to the runner managers on Runner SaaS.

## Maturity Plan

The Runner SaaS maturity level is ["Minimal"](/direction/maturity/). We are also evaluating this category with a Category maturity scorecard via [gitlab&6090](https://gitlab.com/groups/gitlab-org/-/epics/6090). For more information (see our [definitions of maturity levels](/direction/maturity/)).

## Competitive Landscape

Organizations that use Cloud-native CI/CD solutions, such as GitLab.com, CircleCI, and GitHub, can run their CI/CD pipelines and get to a first green build without setting up build servers, installing and configuring build agents, or runners.

In addition to eliminating CI build server maintenance costs, there are other critical considerations for organizations that can migrate 100% of their CI/CD processes to a cloud-native solution. These include security, reliability, performance, multiple build server and configuration options, and on-demand scale. A critical strategic goal is to deliver solutions on GitLab SaaS that meet the most stringent compliance requirements and provides methods for securely connecting the GitLab SaaS Runner platform with a customer infrastructure. This, we believe, is the approach that will unlock the most value long-term for GitLab customers.

Some competitors focus on building platform [speed](https://circleci.com/circleci-versus-github-actions/) and performance as critical competitive differentiators. Other industry participants, such as GitHub, have also invested in providing more computing choices for their hosted offerings. With the recent [announcement](https://github.blog/2022-09-01-github-actions-introducing-the-new-larger-github-hosted-runners-beta/) by GitHub that new larger GitHub-hosted runners are now in beta, the market is adopting CircleCI's position of providing more computing choices for customers that use SaaS-delivered CI/CD services.

With the [release](https://about.gitlab.com/blog/2022/09/22/new-machine-types-for-gitlab-saas-runners/) in GitLab 15.4 of new machine types for GitLab SaaS Linux Runners, we have closed the competitive gap measured by build environment compute performance. From our perspective, GitLab Runner SaaS is well-positioned to compete on the performance and speed vector over the long term:

1. The Runner core build execution engine is highly performant.
1. We are introducing the Next Runner autoscaling technology that will provide added value with faster performance and near-real-time fleet scaling.
1. As we expand the catalog of more compute offerings on GitLab SaaS, customers will benefit from speedier build times for compute-intensive workloads.

However, the value of GitLab as the one DevOps platform far outweighs comparisons solely focused on the compute performance of the Runner machine types.

### A note on Xcode Cloud

Apple [released](https://developer.apple.com/news/?id=rfaydlm6) Xcode Cloud GA Apple WWDC22, and the ~34 million Apple developers worldwide now have an Apple product option for building, testing, and deploying mobile applications integrated into the Xcode development environment.

Xcode Cloud aims to make it very easy for Apple app developers to adopt CI/CD as you use Xcode to set up and configure CI/CD workflows. By default, Xcode analyzes a project configured to use Xcode Cloud, and automatically suggests a [default workflow](https://developer.apple.com/documentation/xcode/configuring-your-first-xcode-cloud-workflow). The default workflow includes build, analyze, test and archive. In future updates, we will add a more detailed analysis.

With this initial release, Apple appears to signal that the vision and future is frictionless CI/CD for Apple developers. Xcode Cloud [requires](https://developer.apple.com/documentation/xcode/requirements-for-using-xcode-cloud) the use of a supported git repository. So given the out of the box support for GitLab SaaS and GitLab Self-Managed, this new offer could prove appealing to startups or smaller teams focused on development for the Apple ecosystem.

For GitLab customers that are building applications for multiple platforms, GitLab SaaS continues to be the right choice as the single DevOps platform. In one pipeline hosted on GitLab SaaS, a customer can execute build jobs targeting Android, Apple iOS and Windows.

One of the goals of the [Mobile DevOps](https://about.gitlab.com/direction/mobile/mobile-devops/) strategy is to provide high-value DevOps capabilities for enterprise mobile application development (iOS, Android). As noted in the recently published blog post, [Mobile DevOps with GitLab, Part 2 - Code signing for Android with GitLab](https://about.gitlab.com/blog/2022/09/28/mobile-devops-with-gitlab-part-2/) GitLab provides market leading features such as [Project-level Secure Files](https://docs.gitlab.com/ee/ci/secure_files/), and support for Android and iOS builds in one hosted solution. Therefore our value proposition remains strong, even in light of the launch of Xcode Cloud.

### Competitive Matrix

### Hosted Build Environment Resource Classes - non GPU enabled

|Machine Class| Machine Type/Class | GitLab | GitHub | CircleCI |
| ------ | :-----: |  :-----: |  :-----:|:-----:|
|S| 1 vCPU, 4GB RAM | Available | Not available | Available |
|M| 2 vCPUs, 8GB RAM | Available | Available | Available |
|L| 4 vCPUs, 16GB RAM  | Available | Beta  | Available |
|XL | 8 vCPUs, 32GB RAM  | Not available | Beta| Available |
|2XL|16 vCPUs 64GB RAM| Not available | Beta| Available |
|3XL |32 vCPUs 128GB RAM|Not available|Beta|Avaiable on Windows|
|4XL|48 vCPUs 192GB RAM|Not available|Beta|Not available|
|5XL|64 vCPUs 256GB RAM|Not available|Beta|Not available|

### macOS - Offer Positioning and Hosted Build Machines

|....||GitHub|Apple - Xcode Cloud GA |CircleCI|Bitrise.io|
|----------|----------------|----------------|----------------|----------------|----------------|
|Positioning Statement ||A GitHub-hosted runner is  VM hosted by GitHub with the GitHub actions runner application installed.|A CI/CD service built into Xcode, designed expressly for Apple developers.|Industry-leading speed. No other CI/CD platform takes performance as seriously as we do.|Build better mobile applications, faster|
|Value Proposition||When you use a GitHub-hosted runner, machine maintenance and upgrades are taken care of.|Build your apps in the cloud and eliminate dedicated build infrastructure.| The macOS execution environment allows you to test, build, and deploy macOS and iOS apps on CircleCI.|CI for mobile - save time spent on testing, onboarding, and maintenance with automated workflows and triggers|
|macOS Virtual Machine Specs||3-core CPU, 14 GB RAM |--|Medium: 4 vCPU, 8 GB RAM; Large: 8 vCPU, 16 GB RAM;  Metal 12 vCPU 32 GB RAM|Standard: 4 vCPU, 19 GB RAM; Elite 8 vCPU 35 GB ram; Elite XL 12 vCPU 54 GB RAM|


## Give Feedback

If you have questions about a specific runner feature request or have a requirement that's not yet in our backlog, you can provide feedback or open an issue in the [GitLab.org project repository](https://gitlab.com/gitlab-org/gitlab/-/issues/new).

## Revision Date

This direction page was revised on: 2022-10-28
