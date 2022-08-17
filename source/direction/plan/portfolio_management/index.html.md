---
layout: markdown_page
title: "Category Direction - Portfolio Management"
description: GitLab supports enterprise Agile portfolio and project management frameworks, including Scaled Agile Framework (SAFe), Scrum, and Kanban. Learn more!
canonical_path: "/direction/plan/portfolio_management/"
---

- TOC
{:toc}

## Portfolio Management

|                       |                               |
| -                     | -                             |
| Stage                 | [Plan](/direction/plan/)      |
| Maturity              | [Viable](/direction/maturity/) |
| Content Last Reviewed | `2022-08-17`                  |


## Overview

### Purpose

GitLab's vision is to provide Portfolio Management tools for DevOps that help our customers manage a portfolio of work and determine which opportunities have higher ROI when making strategic business planning decisions. 

Enterprises work on complex initiatives that cut across multiple teams and departments, often spanning months, quarters, and even years. We support organizing initiatives into  multi-level work breakdown plans. We enable organizations to track efforts in flight and plan upcoming work to best utilize their resources and focus on the right priorities. 

GitLab supports popular [enterprise Agile portfolio and project management frameworks](https://about.gitlab.com/solutions/agile-delivery/), including Scaled Agile Framework [(SAFe)](https://about.gitlab.com/solutions/agile-delivery/scaled-agile/), [Scrum, and Kanban](https://about.gitlab.com/solutions/agile-delivery/).


|          |          |
| ---      | ---      |
| ![epicstree-direction.png](/direction/plan/portfolio_management/epicstree-direction.png)  | ![roadmaps-direction.png](/direction/plan/portfolio_management/roadmaps-direction.png)   |


### What's next & why

1. [Allow epics to have child epics and issues from different groups](https://gitlab.com/groups/gitlab-org/-/epics/8294) -  When working on large scale initiatives, contributions are needed from multiple teamsn which may be divided in different group hierarchies in GitLab. Today, issues and epics must be within the same group hierarchy to be added as children of an epic. We run into this limitation at GitLab when tracking work across our gitlab-com and gitlab-org groups. We will enable users to add epics from other hierarchies to facilitate tracking work across GitLab groups. 
1. [Converting epics to work items](https://gitlab.com/groups/gitlab-org/-/epics/6033) - Epics and Issues have different data elements and behaviors, which leads to confusion for our users. Epics are only available at the group level, which significantly decreases their reach. We will collaborate with the Project Management group to build the capabilities that Epics need into the Work Items framework. Our first iteration of this was building the concept of parent/child relationships which was used for [tasks](https://docs.gitlab.com/ee/user/tasks.html#tasks). 
1. [Maturing Health Status](https://gitlab.com/groups/gitlab-org/-/epics/2952) - An initial version of the Health Status was released and has received customer interest. Health Status offers a way for leaders to gain insight into risks or blockers that teams have run into. There are key enhancements that need to be implemented to make it a complete workflow and a great experience. 

Future items iclude:

1. [Saved Queries and Views](https://gitlab.com/groups/gitlab-org/-/epics/5516) - It’s hard to query, save and share planning data with others. We plan to allow users to save a filtered list of their work item data so that they can easily come back to ans share a list of work items. An example use cases is how at GitLab we frequently monitor our backlog for security issues and take that into account with every milestone plan. In the future, product managers and engineering team leads could have a shared saved query that surfaces all the security issues that have not been prioritized for their group.
1. Improvements to increase the maturity of [Roadmaps](https://gitlab.com/groups/gitlab-org/-/epics/2649) - Roadmaps are an industry standard way in which plans are visualized, and are key to an experience that is lovable by product and project managers. Key functionality like drag and drop editing are missing from our current implementation. 

## What we recently completed

1. [Parent/child relationships for work items](https://docs.gitlab.com/ee/user/tasks.html) - Parent/child relationships are the building blocks behind creating [work breakdown structures](https://en.wikipedia.org/wiki/Work_breakdown_structure). Today we have this capability with epics, subepics and issues but users need to break down work within the project level. Our first iteration of this concept for work items was building parent/child relationships for [tasks](https://docs.gitlab.com/ee/user/tasks.html#tasks). 
1. [Epic links](https://docs.gitlab.com/ee/user/group/epics/linked_epics.html) - Linked epics are a bi-directional relationship between any two epics that allow you to show whether two epics are related, blocked by or blocking. Showing relationships between epics is key to managing cross-team workflows. 

### What we're not doing

In the next two years:

- We plan to build a flexible planning tool that can be configured to implement SAFe. We do not plan to implement a system that is optimized for SAFe only. 
- We don't plan to build . We will continue to expose APIs for all our resources and they can be used for this use case by our customers.

## Maturity plan

Now that we've combined Roadmaps and Epics into this category, we need to **reset our category maturity** for Portfolio Management.

Previous maturities for reference: 

-  **Epics** are now a ~"type::feature" but was at the **viable** level, and our next maturity target was **complete** by 2021-10-30. Progress: [Viable](https://gitlab.com/groups/gitlab-org/-/epics/967) and [loveable](https://gitlab.com/groups/gitlab-org/-/epics/968)
-  **Roadmaps** are now a ~"type::feature" but was at the **minimal** level, and our next maturity target was **viable** by 2021-09-28 see [MR](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/80922). We are tracking progress against this target via [this epic](https://gitlab.com/groups/gitlab-org/-/epics/1998). Progress: [Complete](https://gitlab.com/groups/gitlab-org/-/epics/2002)


## Top customer success/sales issue(s)


To support our Customer Success and Sales departments, we are validating and working towards critical items to enable them to serve additional prospects and customers:

1. [Program/Epic Level Boards](https://gitlab.com/groups/gitlab-org/-/epics/2864) [DONE]
1. [Allow epics to have child epics and issues from different groups](https://gitlab.com/groups/gitlab-org/-/epics/8294) [IN PROGRESS]
1. [Provide Project Level Epics](https://gitlab.com/gitlab-org/gitlab/-/issues/31840) 
1. [Enable mapping Epics as "Related To" other Epics](https://gitlab.com/gitlab-org/gitlab/-/issues/202431)[DONE]
1. [Surface Dependencies on Roadmap](https://gitlab.com/gitlab-org/gitlab/-/issues/33587) 
1. [Introduce colors for epics (and roadmap view in particular)](https://gitlab.com/gitlab-org/gitlab/-/issues/7641) [IN PROGRESS]
