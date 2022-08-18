---
layout: markdown_page
title: "Category Direction - Subgroups"
description: "Groups are a fundamental building block (a small primitive) in GitLab for project organization and managing access to these resources at scale. Learn more!"
canonical_path: "/direction/manage/subgroups/"
---

- TOC
{:toc}

| **Stage** | Group | **Maturity** | **Content Last Reviewed** |
| --- | --- | --- | -- |
| [Manage](/direction/manage/) | [Workspace](https://about.gitlab.com/handbook/product/categories/#workspace-group) | [Complete](/direction/maturity/) | `2022-07-15` |

## Introduction and how you can help
Thanks for visiting this category page on Subgroups in GitLab. This vision and direction is a work in progress and sharing your feedback directly on issues and epics on GitLab.com is the best way to contribute.

## Overview

Groups are a fundamental building block (a [small primitive](https://about.gitlab.com/handbook/product/product-principles/#prefer-small-primitives)) in GitLab that serve to:
- Define workspace boundaries, particularly on GitLab.com, where a top level group frequently represents an organization
- Group users to manage project authorization at scale
- Create collections of users for security features like [code owners](https://docs.gitlab.com/ee/user/project/code_owners.html#code-owners) and [protected environments](https://docs.gitlab.com/ee/ci/environments/protected_environments.html#protected-environments). 
- Organize related projects together
- House features that cover multiple projects like epics, contribution analytics, and the security dashboard

### Our mission

In 2022, our goal is to make improvements by extending Subgroups to help enterprise organizations thrive on GitLab.com. We will accomplish that by iterating on existing constructs and streamlining workflows to guide users to intended usage patterns.

#### Challenges

Historically, enterprise customers have gravitated toward self-managed GitLab as their favored solution. With the proliferation of cloud services, enterprises are looking for options to use GitLab with managed infrastructure. We need to provide a SaaS platform that can safely and securely house our customers while reducing the load and cost of having to manage and configure their own infrastructure.

#### Opportunities

Iterating on subgroups will allow us to solve a number of problems with the current SaaS experience:
* **Increase isolation** - We need mechanisms to isolate an organization from the rest of GitLab.com so that we can meet enterprise regulatory and security requirements. Creating clear workspace boundaries in GitLab.com  will prevent users from unintentionally exposing users, projects, or other sensitive information to the rest of the GitLab.com instance. A top-level group should feel like a self-contained space where an enterprise can work independently of the rest of Gitlab.com. Users in a group owned by an enterprise should be able to complete all their day to day activities without leaving their organization's group.
* **Additional control** - On GitLab.com, user accounts and all associated details are owned by a user, not the groups they belong to. This is problematic for group administrators since they can't ensure the level of data integrity necessary for their audit and regulatory needs. We need to provide group administrators additional management capabilities for users in their group.
* **Flexible hierarchies** - We need to offer additional configuration options to allow enterprises to represent different [types of organizations](https://creately.com/blog/diagrams/types-of-organizational-charts/) using subgroups.
* **Self-managed feature parity** - In order to satisfy the needs of enteprise customers on GitLab.com, we need to offer an equivalent group and project administration experience as that in self-managed instances. To meet this goal, we must provide GitLab teams a framework to build settings and features and apply them to an entire group/project hierarchy.
 
## Target audience and experience

Groups are used by all GitLab users, no matter what role. However, heavier users of Groups in terms of organization and management of projects and users consist of:

* **Group Owners**
* **System Admins**
* **Team Leaders, Directors, Managers**
* **Individual contributors** who predominantly work with GitLab's project management features

## What's Next and Why

The Workspace group will be focussing on the [workspace](https://docs.gitlab.com/ee/user/workspace/) concept in the next few milestones. This will be the top-level [namespace](https://docs.gitlab.com/ee/user/group/index.html#namespaces) for you to manage everything GitLab. We will start by introducing issues into this top level group via [gitlab&4257](https://gitlab.com/groups/gitlab-org/-/epics/4257).

We will also continue to make targeted investments in the short-term to advance our SaaS experience:

* Additional control
  * Administrators for GitLab.com groups need additional user management capabilities to keep their organization's data secure. Group administrators need to be able to manage all attributes and the lifecycle of accounts just like administrators on a self-managed instance can. We've introduced the concept of an Enteprise Account, which is used by an individual but is owned by an Enterprise. In our [new subscription agreement](https://about.gitlab.com/privacy/2021-update-faq/#whats-changed-in-the-subscription-agreement). We'll support this in the system by:
   * Continuing to build out functionality to give [additional management capabilities](https://gitlab.com/groups/gitlab-org/-/epics/4786) for group administrators. We'll continue to consider accounts that were provisioned in the context of a group as Enteprise Accounts. 
   * In line with our [subscription agreement changes](https://about.gitlab.com/privacy/2021-update-faq/#whats-changed-in-the-subscription-agreement), we will allow group administrators to [claim a domain](https://gitlab.com/groups/gitlab-org/-/epics/5299). We will build group level user management capabilities for users whose emails match a group's claimed domain.
* Flexible hierarchies
* Self-managed feature parity
  * Management of features and settings across project and groups is a challenge for GitLab administrators. We will be investing in [workspaces](https://gitlab.com/groups/gitlab-org/-/epics/4419) to provide administrators with tools to effectively manage collections of groups. 

## What is Not Planned Right Now

  * [Credential management for Gitlab.com groups](https://gitlab.com/groups/gitlab-org/-/epics/4123) - Group administrators in Gitlab.com want to take advantage of the [credential inventory](https://docs.gitlab.com/ee/user/admin_area/credentials_inventory.html#credentials-inventory) and [credential management APIs](https://gitlab.com/gitlab-org/gitlab/-/issues/227264) which are only available on self-managed instances and [group-managed accounts](https://docs.gitlab.com/ee/user/group/saml_sso/group_managed_accounts.html#group-managed-accounts) on gitlab.com. We plan to release this in the future but have chosen to focus on the areas covered above in the short-term due to higher demand. 
* [Group managed accounts](https://docs.gitlab.com/ee/user/group/saml_sso/group_managed_accounts.html#group-managed-accounts) - While we previously implemented group managed accounts as a solution for increasing isolation in Gitlab.com, we're not planning to continue in this direction. We would like to de-couple functionality that was only available in group managed accounts to allow for greater flexibility.

## Maturity

This category is currently **Complete**. The next step in our maturity plan is achieving a **Lovable** state.
* You can read more about GitLab's [maturity framework here](https://about.gitlab.com/direction/maturity/), including an approximate timeline.
* Note that a `Complete` state does not mean a category is "finished" and is no longer a priority. Even categories that are considered `Lovable` require continued investment.
<!-- ## Top user issue(s) -->
