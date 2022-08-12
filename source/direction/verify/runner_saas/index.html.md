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

Our vision for GitLab Runner SaaS is to provide developers with a zero-friction, highly performant, secure and reliable CI/CD build experience for the market-leading operating systems and development technologies. Key pillars of the vision for Runner SaaS include:
- An expanded catalog of VM instance types.
- Discoverability (near-term).
- Autonomous build environment selection (long-term) for CI job execution.

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
| [GitLab SaaS Runners on Windows](https://docs.gitlab.com/ee/ci/runners/saas/macos_saas_runner.html)                                                                |Beta|
| [GitLab SaaS Runners on macOS x86-64](https://docs.gitlab.com/ee/ci/runners/saas/macos_saas_runner.html)                                                                  |Beta|

## Strategic Priorities

The table below represents the current strategic priorities for Runner SaaS. This list will change with each monthly revision of this direction page.

| Theme-Category                       | Item                                                                                                                 |Why?| Target delivery QTR |
|--------------------------------------|----------------------------------------------------------------------------------------------------------------------|----------------|---------------------|
| SaaS Runners on Linux                |[Offer GCP n1-standard-2 VM's on GitLab SaaS Linux Runners](https://gitlab.com/gitlab-org/gitlab/-/issues/357676); [Offer GCP n1-standard-4 VM's on GitLab SaaS Linux Runners](https://gitlab.com/gitlab-org/gitlab/-/issues/357681)|The ongoing feedback from customers and users is that the current build machine type offered on the SaaS Runners on Linux is not powerful enough to run specific workflows efficiently. For example, a similar CI job on a competing hosted solution ran in 12 minutes compared to 28 minutes on the GitLab SaaS Runners. In another example, the recently published [CI Free Tier Showdown blog post](https://earthly.dev/blog/ci-comparison/) ranked the performance of the current n1-standard-1 backed machine type for the SaaS Runners on Linux last. To accelerate offering more compute machine types on GitLab SaaS, the initial MVC will add two additional build machine types to the GitLab SaaS Runners for Linux offer. This effort will inform the work planned in Q4 to extend the various compute offerings available on the SaaS Runners on Linux. |Q3 FY 2023|
| SaaS Runners on macOS                | [GitLab SaaS Runners on macOS Apple Silicon M1 Limited Availability](https://gitlab.com/gitlab-org/gitlab/-/issues/342848)                      |In Q3 FY 2022, we launched the [Runner SaaS for macOS beta](https://docs.gitlab.com/ee/ci/runners/saas/macos_saas_runner.html) on x86-64 architecture. The user and customer demand for this service have been exceptional. Further reinforcing the [one DevOps strategy](https://about.gitlab.com/direction/mobile/mobile-devops/), the current beta participants strongly favor having a fully integrated build solution for the Apple ecosystem embedded in GitLab. We plan to transition to Apple Silicon M1 compute and transition the offer to [limited availability](https://docs.gitlab.com/ee/policy/alpha-beta-support.html#limited-availability-la)| Q4 FY 2023            |
| Scalability and Performance | [Docker Machine Replacement - Implement a new autoscaling solution - GitLab Runner SaaS for Linux OS](https://gitlab.com/groups/gitlab-org/-/epics/6995) |The GitLab Runner SaaS for Linux with docker container builds executes millions of CI jobs each month. The autoscaling architecture that is the foundation of this solution has served us well. However, since its introduction, we have launched new autoscaling solutions to manage the Runner SaaS for Windows and macOS. In addition, the core technology used for Linux, Docker Machine, is no longer maintained by Docker. Though we maintain a fork of Docker Machine, the right long-term strategy is to iterate towards the [Next Runner autos-scaling architecture](https://docs.gitlab.com/ee/architecture/blueprints/runner_scaling/index.html) for the Runner SaaS. This architectural technology pivot will enable us to accomplish several goals. First - enabling GitLab to scale over the next five years. Second, as a critical foundational enabler to consistently achieve and exceed our CI Runners SLO goal of 99.95%. Finally, the autoscaling technology that we implement to manage the scale of GitLab SaaS is the same technology made available to customers that self-manage Runner Fleets.|Q4 FY 2023 |
| SaaS Runners on Windows              | [Runner SaaS for Windows General Availability](https://gitlab.com/gitlab-org/gitlab/-/issues/300476)                    |We launched the Runner SaaS for Windows in beta in FY21Q1. At the time, our initial plan was to transition the offer to GA within a few quarters. However, due to other strategic priorities, we delayed that timeline. Now users and customers rely on a Windows build solution hosted on GitLab SaaS for their mission-critical CI/CD builds, so we must migrate the Windows offer to GA.|Q2 FY 2024           |

## Prioritization for feature enhancements, maintenance and bugs

In addition to prioritizing the work required to deliver the strategic priorities listed above, the Runner SaaS team must [prioritize](https://about.gitlab.com/handbook/cross-functional-prioritization/#prioritization-for-feature-maintenance-and-bugs) and allocate resources for maintenance, security fixes, bugs, and feature enhancements in each milestone. A substantial percentage of the investment allocation for the maintenance bucket will be allocated across the following sub-categories:

- SaaS Runners on macOS build VM image updates and maintenance.
- SaaS Runners on Windows build VM image updates and maintenance.
- Bugs related to executing builds on Runner SaaS (Linux, macOS, Windows).
- Collaboration with the SRE team to resolve incidents related to Runner SaaS.
- Installing new runner version updates to the runner managers on Runner SaaS.

## Maturity Plan

The Runner SaaS maturity level is ["Minimal"](/direction/maturity/). We are also evaluating this category with a Category maturity scorecard via [gitlab&6090](https://gitlab.com/groups/gitlab-org/-/epics/6090). For more information (see our [definitions of maturity levels](/direction/maturity/)).

## Competitive Landscape

Organizations that use Cloud-native CI/CD solutions, such as GitLab.com, CircleCI, and GitHub, can run their CI/CD pipelines and get to a first green build without setting up build servers, installing and configuring build agents, or runners.

In addition to eliminating CI build server maintenance costs, there are other critical considerations for organizations that can migrate 100% of their CI/CD processes to a cloud-native solution. These include security, reliability, performance, multiple build server and configuration options, and on-demand scale.

Some competitors focus on building platform [speed](https://circleci.com/circleci-versus-github-actions/) and performance as critical competitive differentiators. Today on GitLab SaaS, we execute docker container CI builds only on GCP 1vCPU n1-standard-1 instances. Clearly, the performance of this lower compute machine type will be slower than larger machine types offered by our primary competitors. Therefore, from our perspective, GitLab Runner SaaS is well-positioned to compete on the performance and speed vector over the long term. First, the Runner core build execution engine is highly performant.  Secondly, we are introducing next-gen autoscaling technology that will benefit even faster when job execution starts. Finally, as we release more compute offerings on GitLab SaaS, users will benefit from speedier build times for compute-intensive workloads.



### A note on Xcode Cloud

Apple [released](https://developer.apple.com/news/?id=rfaydlm6) Xcode Cloud GA Apple WWDC22, and the ~34 million Apple developers worldwide now have an Apple product option for building, testing, and deploying mobile applications integrated into the Xcode development environment.

Xcode Cloud aims to make it very easy for Apple app developers to adopt CI/CD as you use Xcode to set up and configure CI/CD workflows. By default, Xcode analyzes a project configured to use Xcode Cloud, and automatically suggests a [default workflow](https://developer.apple.com/documentation/xcode/configuring-your-first-xcode-cloud-workflow). The default workflow includes build, analyze, test and archive. In future updates, we will add a more detailed analysis.

With this initial release, Apple appears to signal that the vision and future is frictionless CI/CD for Apple developers. Xcode Cloud [requires](https://developer.apple.com/documentation/xcode/requirements-for-using-xcode-cloud) the use of a supported git repository. So given the out of the box support for GitLab SaaS and GitLab Self-Managed, this new offer could prove appealing to startups or smaller teams focused on development for the Apple ecosystem.

For GitLab customers that are building applications for multiple platforms, GitLab SaaS continues to be the right choice as the single DevOps platform. In one pipeline hosted on GitLab SaaS, a customer can execute build jobs targeting Android, Apple iOS and Windows.

One of the goals of the [DevOps for Mobile Application](https://about.gitlab.com/direction/mobile/mobile-devops/) strategy is to provide high-value DevOps capabilities for enterprise mobile application development (iOS, Android). Therefore our value proposition remains strong, even in light of the new Xcode Cloud offer.


### Competitive Matrix

### Docker Container Builds - Hosted Build Machines

| Machine Type | GitLab | GitHub | CircleCI |
| ------ | :-----: |  :-----: |  :-----:|
| 1 vCPU, 4GB RAM class build VM | Available | Not available | Available |
| 2 vCPU, 8GB RAM class build VM | Not available | Available | Available |
| 4 vCPU, 16GB RAM class build VM | Not available | Not available | Available |
| 8 vCPU, 32GB RAM class build VM | Not available | Not available | Available |
| 16 vCPU, 32GB RAM class build VM | Not available | Not available | Available |

### Windows Builds - Hosted Build Machines

| Machine Type                   | GitLab        | GitHub        |
| ------------------------------ | ------------- | ------------- |
| 2 vCPU, 8GB RAM class build VM | Available     | Not available |
| 3 vCPU, 16GB RAM class build VM |Not available | Available     |


### macOS - Offer Positioning and Hosted Build Machines

|....||GitHub|Apple - Xcode Cloud GA |CircleCI|Bitrise.io|
|----------|----------------|----------------|----------------|----------------|----------------|
|Positioning Statement ||A GitHub-hosted runner is  VM hosted by GitHub with the GitHub actions runner application installed.|A CI/CD service built into Xcode, designed expressly for Apple developers.|Industry-leading speed. No other CI/CD platform takes performance as seriously as we do.|Build better mobile applications, faster|
|Value Proposition||When you use a GitHub-hosted runner, machine maintenance and upgrades are taken care of.|Build your apps in the cloud and eliminate dedicated build infrastructure.| The macOS execution environment allows you to test, build, and deploy macOS and iOS apps on CircleCI.|CI for mobile - save time spent on testing, onboarding, and maintenance with automated workflows and triggers|
|macOS Virtual Machine Specs||3-core CPU, 14 GB RAM |TBD|Medium: 4 vCPU, 8 GB RAM; Large: 8 vCPU, 16 GB RAM;  Metal 12 vCPU 32 GB RAM|Standard: 4 vCPU, 19 GB RAM; Elite 8 vCPU 35 GB ram; Elite XL 12 vCPU 54 GB RAM|


## Give Feedback

If you have questions about a specific runner feature request or have a requirement that's not yet in our backlog, you can provide feedback or open an issue in the GitLab Runner [repository](https://gitlab.com/gitlab-org/gitlab-runner/-/issues).

## Revision Date

This direction page was revised on: 2022-08-03
