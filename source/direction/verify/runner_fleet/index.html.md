---
layout: markdown_page
title: "Category Direction - Runner Fleet"
description: " Features and capabilities for installing, configuring, managing and monitoring a fleet of GitLab Runners."
canonical_path: "/direction/verify/runner_fleet/"
---

- TOC
  {:toc}

## Runner Fleet

By 2025, our vision is that GitLab Runner Fleet is the number one ranked solution in the industry for managing CI/CD build agents and environments at enterprise scale. We see this vision for Runner Fleet as enabling the broader GitLab product [vision](https://about.gitlab.com/direction/#vision) of continuing to mature the GitLab DevOps platform rapidly.

Delivering on the vision means providing enterprise customers with a centralized view, configuration management capabilities, and predictive analytics to easily administer a fleet of GitLab Runners. This category's north star is to provide the industry-leading user experience as measured by system usability scores and the lowest maintenance overhead for customers who self-manage a CI build platform at scale.

Most features in this category will primarily span the Admin and Group views in the GitLab UI and be available in GitLab Ultimate.

## Who we are focusing on?

Check out our [Ops Section Direction "Who's is it for?"](/direction/ops/#who-is-it-for) for an in depth look at the our target personas across Ops. For Runner, our "What's Next & Why" are targeting the following personas, as ranked by priority for support:

1. [Priyanka - Platform Engineer](/handbook/product/personas/#priyanka-platform-engineer)
2. [Devon - DevOps Engineer](/handbook/product/personas/#devon-devops-engineer)
3. [Sasha - Software Developer](/handbook/product/personas/#sasha-software-developer)
4. [Delaney - Development Team Lead](/handbook/product/personas/#delaney-development-team-lead)

## Strategic Priorities

The table below represents the current strategic priorities for Runner Fleet. This list will change with each monthly revision of this direction page.

|Item|Why?| Target delivery QTR |
|----------|----------------|---------------------|
|[Runner Bulk Delete](https://gitlab.com/groups/gitlab-org/-/epics/8144)|In the Admin Area > Runners or the Group > CI/CD Runners view, there is no option today to enable an administrator or group owner to multi-select and bulk-delete multiple Runners. The 2021 Q3 UX scorecard experience identified the lack of bulk editing/delete feature set negatively impacting the user experience. Also, not only does external UX research indicate that bulk editing is a powerful and valuable feature in products that manage or visualize large data sets, but our customers have provided feedback that the lack of this feature is a drain on productivity and increases the operational overhead of maintaining GitLab Runners. In this iteration of improvements to the Runner management views we will add a bulk delete feature to the [Admin Area > Runners view](https://gitlab.com/gitlab-org/gitlab/-/issues/339525) and the [Group view](https://gitlab.com/gitlab-org/gitlab/-/issues/361721) for managing runners.| Q4 FY 2023              |
|[Runner Fleet - Runner queue wait times](https://gitlab.com/groups/gitlab-org/-/epics/5667)| A critical question for our customers who use GitLab SaaS or those managing GitLab at scale is the estimated wait time for a job to start on a Runner. This problem and the related use cases are the ones that we plan to address as we evolve the Runner Fleet [vision](https://gitlab.com/gitlab-org/gitlab/-/issues/345594/) and implement new features to reduce the complexity and operational overhead of maintaining and operating a DevOps build environment at an enterprise scale. The initial [MVC](https://gitlab.com/gitlab-org/gitlab/-/issues/335102) for this feature will display the average queue wait time for CI jobs per Runner and tag in the Admin Area > Runners view.|Q4 FY 2023; Q1 FY 2024|  
|[Runner Search, Association and Ownership for Admin and Group views](https://gitlab.com/groups/gitlab-org/-/epics/7181)|In customer interviews, a recurring theme and pain point for administrators of large GitLab installations is the difficulty of determining runner ownership for non-instance (Shared Runners.) This problem is exacerbated in scenarios where GitLab administrators are asked to troubleshoot time-critical production issues with CI jobs but cannot determine vital information regarding the Runner. This feature set aims to solve this pain point and save administrators countless hours researching runner provenance each month. To start, including an assigned group or project data element and adding the ability to export the runner data from GitLab will significantly simplify the operational overhead of locating and troubleshooting runners across an enterprise installation of GitLab. The first [iteration](https://gitlab.com/gitlab-org/gitlab/-/issues/355766) of this feature which adds an owner column to the Admin and Group Runners view shipped in 15.5. We plan to iterate on this feature set in future release milestones.| Q1 FY 2024        |

## Maturity Plan

- The  Runner Fleet category scorecard project ended on 2022-09-14. Runner Fleet scored 3.63, which puts the maturity level at ["Complete"](/direction/maturity/).

## Competitive Landscape

At GitLab, a critical challenge we are trying to solve is simplifying the administration and management of a CI/CD build fleet at an enterprise scale. We see this effort as one foundational pillar to realizing the vision of AI-optimized DevOps. Competitors are also investing in this general category. Earlier this year Github [announced](https://github.blog/2022-02-23-new-way-understand-github-hosted-runner-capacity/) a new management experience that provides a summary view of GitHub-hosted runners. This is a signal that there will be a focus on reducing maintenance and configuration overhead for managing a CI/CD build environment at scale across the industry.

We also now see additional features on the GitLab public roadmap signaling an increased investment in the category we coined here at GitLab, 'Runner Fleet'. In Q3, we see that GitHub plans to simplify the adminisration of runners by introducing a new [permissions model.](https://github.com/github/roadmap/issues/503) Planned for Q4 is [seamless management of GitHub-hosted and self-hosted runners](https://github.com/github/roadmap/issues/504), a feature that aims to deliver a "seamless management interface for GitHub runners."

Also scheduled for Q4 is the [self-hosted runner autoscaling support for Kubernetes feature.](https://github.com/github/roadmap/issues/555) While this feature appears focused on autoscaling capabilities at first glance, a closer look at the outcomes reveals that GitHub's goals are to provide a first-class experience for managing runners and including features in the UI to simplify runner queue management and resolve performance bottlenecks.

With this level of planned investment, it is clear that there is recognition in the market that simplifying the administrative maintenance and overhead of the CI build fleet is critical for enterprise customers.

To ensure that our GitLab customers can fully realize the value of the GitLab's product [vision](https://about.gitlab.com/direction/#vision), we must provide solutions that eliminate the complexities, manual tasks, operational overhead and reduce the costs of delivering a CI build environment at an enterprise scale. This is our vision for Runner Fleet, and we expect that competitors targeting enterprise customers will also be putting forward their solutions and point of view on this topic.

## Give Feedback

The near features highlighted here represent just a subset of the features and capabilities that have been requested by the community and customers. If you have questions about a specific runner feature request or have a requirement that's not yet in our backlog, you can provide feedback or open an issue in the [GitLab.org project repository](https://gitlab.com/gitlab-org/gitlab/-/issues).

## Revision Date

This direction page was revised on: 2022-10-28
