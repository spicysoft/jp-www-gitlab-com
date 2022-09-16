---
layout: markdown_page
title: "Category Direction - Continuous Integration Scaling"
description: "Lean more about how we are scaling Continuous Integration on GitLab.com!"
canonical_path: "/direction/verify/continuous_integration_scaling/"
---

- TOC
{:toc}

## Continuous Integration Scaling 

In FY23 a top priority for us is [SaaS First](/direction/enablement/#saas-first). In the Verify Stage, this means prioritizing the scale of Continuous Integration and ensuring our users on GitLab.com are leveraging a reliable and available service. We are focused on a goal of 20M builds per day as it represents not only a target to drive our future architecture, but a volume that we expect to achieve within several quarters.

## Additional Resources

- [Issue List](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=ci%3A%3Ascaling)
- [Overall Vision of the Verify stage](/direction/ops/#verify)

For specific information and features related to authoring/defining pipelines, check out [Pipeline Authoring](/direction/verify/pipeline_authoring). For specific information and features related to running and managing pipelines check out [Continuous Integration](/direction/verify/continuous_integration). You may also be looking for one of the following related product direction pages: [GitLab Runner](/direction/verify/runner/).

## What's Next & Why

Now that we have delivered the [Next CI/CD scale target: 20M builds per day by 2024](https://docs.gitlab.com/ee/architecture/blueprints/ci_scale/) blueprint and related scope on queueing mechanisms via [gitlab&5909](https://gitlab.com/groups/gitlab-org/-/epics/5909), primary key capacity via [gitlab#325618](https://gitlab.com/gitlab-org/gitlab/-/issues/325618), and handling large amounts of data via [gitlab&6009](https://gitlab.com/groups/gitlab-org/-/epics/6009), and have delivered our [CI/CD Time Decay](https://docs.gitlab.com/ee/architecture/blueprints/ci_data_decay/) blueprint, we are ready to begin Phase II of CI Scaling: partitioning data with the CI/CD Time Decay pattern.

The first track of effort will be focused on partitioning the active CI/CD tables via [gitlab&5417](https://gitlab.com/groups/gitlab-org/-/epics/5417) and the second track is to partition queuing tables via [gitlab#347027](https://gitlab.com/gitlab-org/gitlab/-/epics/7438).

* Not part of the blueprint, but supports the overall initiative

[Roadmap View](https://gitlab.com/groups/gitlab-org/-/roadmap?state=opened&sort=end_date_asc&layout=WEEKS&timeframe_range_type=CURRENT_QUARTER&label_name%5B%5D=Category%3AContinuous+Integration+Scaling&progress=WEIGHT&show_progress=true&show_milestones=true&milestones_type=ALL)

### Queue Improvements PI

As the new queuing mechanism rolls out, performance changes will be visible in the [Duration of the builds queue retrieval using the big query SQL](https://dashboards.gitlab.net/d/stage-groups-pipeline_execution/stage-groups-group-dashboard-verify-pipeline-execution?)

###  Vision Items 

Our top vision items we have defined include: 

1. [Improve GitLab CI/CD data model](https://gitlab.com/gitlab-org/architecture/tasks/-/issues/5)
1. [Improve Runner job queuing](https://gitlab.com/gitlab-org/gitlab/-/issues/322972)
1. [GitLab Runner Autoscaler architecture](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/57051)
1. [Create the capability to load testing the GitLab CI system](https://gitlab.com/gitlab-org/gitlab/-/issues/328736)

## Team structure 

For the next phase of this category, we will be working across Database and Verify to instrument a cross functional product group. The DRIs are:

- Product DRI: James Heimbuck 
- Verify EM: Scott Hampton 
- Verify Tech Lead: Grzegorz Bizon 
- Verify Teammates: Marius Bobin and Maxime Orefice
- Database EM: Alex Ives
- Database Tech Lead: Simon Tomlinson

### How we work 

This group uses an [issue board](https://gitlab.com/groups/gitlab-org/-/boards/1372896?label_name[]=group%3A%3Apipeline%20execution&label_name[]=Category%3AContinuous%20Integration%20Scaling) and `Category:Continuous Integration Scaling` to identify the scope that is in workflow. The team is tracking progress of the partitioning work in the [documentation](https://docs.gitlab.com/ee/architecture/blueprints/ci_data_decay/pipeline_partitioning.html#iterations).

The following epics are used to coordinate the phases of CI Partitioning: 

-  [Phase 1 work - Partition 6 largest tables](https://gitlab.com/groups/gitlab-org/-/epics/5417)
-  Phase 2 work
-  Phase 3 work 
-  Phase 4 work
-  Phase 5 work
-  [Add Tools to support CI Partitioning](https://gitlab.com/groups/gitlab-org/-/epics/8476) - for Database team related work.

For internal questions, reach out to the slack channel #f_ci_time_decay and tag `@James Heimbuck`. 



