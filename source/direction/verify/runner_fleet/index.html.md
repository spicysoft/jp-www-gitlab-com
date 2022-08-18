---
layout: markdown_page
title: "Category Direction - Runner Fleet"
description: " Features and capabilities for installing, configuring, managing and monitoring a fleet of GitLab Runners."
canonical_path: "/direction/verify/runner_fleet/"
---

- TOC
  {:toc}

## Runner Fleet

Our vision is to provide enterprise customers a centralized view, configuration management capabilities, and predictive analytics to easily administer a fleet of GitLab Runners.

This category's north star delivers an industry-leading user experience as measured by system usability scores and the lowest maintenance overhead for customers who self-manage a CI build platform at scale.

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
|[Runner Bulk Delete](https://gitlab.com/groups/gitlab-org/-/epics/8144)|In the Admin Area > Runners or the Group > CI/CD Runners view, there is no option today to enable an administrator or group owner to multi-select and bulk-delete multiple Runners. The 2021 Q3 UX scorecard experience identified the lack of bulk editing/delete feature set negatively impacting the user experience. Also, not only does external UX research indicate that bulk editing is a powerful and valuable feature in products that manage or visualize large data sets, but our customers have provided feedback that the lack of this feature is a drain on productivity and increases the operational overhead of maintaining GitLab Runners. In this iteration of improvements to the Runner management views we will add a bulk delete feature to the [Admin Area > Runners view](https://gitlab.com/gitlab-org/gitlab/-/issues/339525) and the [Group view](https://gitlab.com/gitlab-org/gitlab/-/issues/361721) for managing runners.| Q3 FY 2023              |
|[Runner Version Management](https://gitlab.com/groups/gitlab-org/-/epics/8145)|The ability to view, search, and filter by runners running older versions will simplify maintenance and operations for GitLab namespace administrators. The initial iteration of this feature - [the upgrade status badge in the admin view](https://gitlab.com/gitlab-org/gitlab/-/issues/22224), shipped in 15.1. The [summary count of outdated runners metric](https://gitlab.com/gitlab-org/gitlab/-/issues/365078) in the admin view is shipping in 15.3. Finally, in future iterations, we will add the upgrade status badge and count of outdated runners metric to the [group view](https://gitlab.com/gitlab-org/gitlab/-/issues/363614). With these foundational features in place, the next evolution as we head into FY24, and based on customer feedback, will be automating Runner version management.|Q2 & Q3 FY 2023|
|[Runner Fleet - Runner queue wait times](https://gitlab.com/groups/gitlab-org/-/epics/5667)| A critical question for our customers who use GitLab SaaS or those managing GitLab at scale is the estimated wait time for a job to start on a Runner. This problem and the related use cases are the ones that we plan to address as we evolve the Runner Fleet [vision](https://gitlab.com/gitlab-org/gitlab/-/issues/345594/) and implement new features to reduce the complexity and operational overhead of maintaining and operating a DevOps build environment at an enterprise scale. The initial [MVC](https://gitlab.com/gitlab-org/gitlab/-/issues/335102) for this feature will display the average wait time for CI job queues for instance-level (Shared Runners) in the Admin Area > Runners view.|Q3, Q4 FY 2023|  
|[Runner Search, Association and Ownership for Admin and Group views](https://gitlab.com/groups/gitlab-org/-/epics/7181)|In customer interviews, a recurring theme and pain point for administrators of large GitLab installations is the difficulty of determining runner ownership for non-instance (Shared Runners.) This problem is exacerbated in scenarios where GitLab administrators are asked to troubleshoot time-critical production issues with CI jobs but cannot determine vital information regarding the Runner. This feature set aims to solve this pain point and save administrators countless hours researching runner provenance each month. To start, including an assigned group or project data element and adding the ability to export the runner data from GitLab will significantly simplify the operational overhead of locating and troubleshooting runners across an enterprise installation of GitLab.| Q4 FY 2023         |


## Maturity Plan

- Runner Fleet is at the ["Viable"](/direction/maturity/) maturity level.
- As detailed in this [issue](https://gitlab.com/gitlab-org/gitlab-design/-/issues/1995), we are working towards establishing the baseline maturity score for Runner Fleet.

## Competitive Landscape

At GitLab, a critical challenge we are trying to solve is simplifying the administration and management of a CI/CD build fleet at an enterprise scale. We see this effort as one foundational pillar to realizing the vision of AI-optimized DevOps. Competitors are also investing in this general category. Github recently [announced](https://github.blog/2022-02-23-new-way-understand-github-hosted-runner-capacity/) a new management experience that provides a summary view of GitHub-hosted runners. This is a signal that there will be a focus on reducing maintenance and configuration overhead for managing a CI/CD build environment at scale across the industry.

GitHub now has a new issue on their public roadmap, [actions seamless management for GitHub-hosted & self-hosted runners](https://github.com/github/roadmap/issues/504). The goal is to launch a "seamless management interface for GitHub runners." So clearly, the market is validating the Runner Fleet vision driven by our customer feedback of managing a DevOps platform at an enterprise scale.

With this [new feature](https://github.com/github/roadmap/issues/503) on GitHub's roadmap to enable management of runners without administrator privileges, it is clear that there is recognition in the market that simplifying the administrative maintenance and overhead of the CI build fleet is critical for enterprise customers.

To ensure that our GitLab customers can fully realize the value of the DevOps vision, we must provide solutions that eliminate the complexities, manual tasks, operational overhead and reduce the costs of delivering a CI build environment at an enterprise scale. This is our vision for Runner Fleet, and we expect that competitors targeting enterprise customers will also be putting forward their solutions and point of view on this topic.

## Give Feedback

The near features highlighted here represent just a subset of the features and capabilities that have been requested by the community and customers. If you have questions about a specific runner feature request or have a requirement that's not yet in our backlog, you can provide feedback or open an issue in the GitLab Runner [repository](https://gitlab.com/gitlab-org/gitlab-runner/-/issues).

## Revision Date

This direction page was revised on: 2022-08-04
