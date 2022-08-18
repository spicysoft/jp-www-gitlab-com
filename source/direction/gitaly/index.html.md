---
layout: markdown_page
title: "Category Direction - Gitaly"
description: "Gitaly is a Git RPC service for handling all the Git calls made by GitLab. Find more information here!"
canonical_path: "/direction/gitaly/"
---

- TOC
{:toc}

## Gitaly

| Section | Maturity | Last Reviewed |
| --- | --- | --- |
| [Enablement](/direction/enablement/) | Non-marketable | 2022-08-11 |

## Introduction and how you can help

The Gitaly direction page belongs to the [Systems Stage](https://about.gitlab.com/handbook/product/categories/#systems-stage) within the [Enablement](/handbook/product/categories/#enablement-section)
section, and is maintained by [Mark Wood](https://gitlab.com/mjwood).

This strategy is a work in progress, and everyone can contribute.
Please comment and contribute in the linked issues and epics.
Sharing your feedback directly on GitLab.com is the best way to contribute to our strategy and vision.

- [Issue List](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Agitaly)
- [Epic list](https://gitlab.com/groups/gitlab-org/-/epics?label_name[]=group%3A%3Agitaly)

If you would like support from the Gitaly team, please see the team's page detailing [How to contact the Gitaly team](https://about.gitlab.com/handbook/engineering/development/dev/gitaly/#how-to-contact-the-team).

## Overview

<!--
A good description of what your category is.
If there are special considerations for your strategy or how you plan to prioritize, the description is a great place to include it.
Please include use cases, personas, and user journeys into this section.
-->

### Gitaly

Gitaly is the service responsible for the storage and maintenance of all Git repositories in GitLab.
Git repositories are essential to GitLab, for [Source Code Management](/direction/create/source_code_management/), [Wikis](/direction/create/editor/wiki/), [Snippets](/direction/create/editor/snippets/), Design Management, [Web IDE](/direction/create/editor/web_ide/), and every stage of the DevOps lifecycle to the right of Create - Verify, Package, Release, Configure, Protect, Monitor and Secure - depends on the project repositories. Because the majority of GitLab capabilities depend on information stored in Git repositories, performance and availability are of primary importance.

GitLab is used to store Git repositories by small teams of a few people all the way up to large enterprises with many terabytes of data. For this reason, Gitaly has been built to scale from small single server GitLab instances, to large high availability architectures.

Continued investment in large software projects over many years can result in extremely large Git repositories. Contributing to the development of features like partial clone in Git, and improving Gitaly and GitLab for enterprise scale repositories is an ongoing area of investment.

Gitaly provides multiple interfaces to read and write Git data:

- Git protocol over SSH, through the [GitLab Shell](https://gitlab.com/gitlab-org/gitlab-shell) component.
- Git protocol over HTTP, through the [GitLab Workhorse](https://gitlab.com/gitlab-org/gitlab/-/blob/master/doc/development/workhorse/index.md) component.
- gRPC internally to GitLab components. The public REST and GraphQL APIs to Git data are implemented using these RPCs.

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/RNLWrvIkB9E" frameborder="0" allowfullscreen="true"></iframe>
</figure>
<!-- blank line -->

### Gitaly Cluster

In order to support highly available Git repository storage, [Gitaly Cluster](https://docs.gitlab.com/ee/administration/gitaly/) has been released. This provides redundant storage benefits such as voted writes, read distribution, and data redundancy. For full documentation, please see the details on [Configuring Gitaly Cluster](https://docs.gitlab.com/ee/administration/gitaly/praefect.html).

### Target Audience

<!--
An overview of the personas involved in this category.
An overview of the evolving user journeys as the category progresses through minimal, viable, complete and lovable maturity levels.
-->

**Systems Administrators** directly interact with Gitaly when installing, configuring, and managing a GitLab server, particularly when high availability is a requirement. In the past, systems administrators needed to create and manage an NFS cluster to configure a high availability GitLab instance, and manually manage the failover to new Gitaly nodes mounted on the same NFS cluster. In order to scale such a solution individual storage nodes needed to be re-sized, or a sharded Gitaly approach was required. Now that Gitaly Cluster is available, is possible to eliminate the NFS cluster from architecture and rely on Gitaly for replication. Gitaly Cluster brings with it automatic failover, horizontal scaling, and read access across replicas will deliver 99.999% uptime (five 9's) and improved performance without regular intervention. Systems administrators will have fewer applications to manage, as the last projects are migrated to GitLab and other version control systems are retired.

**Developers** will benefit from increasing performance of repositories of all shapes and sizes, on the command line and in the GitLab application, as performance improvements continue. Once support for monolithic repositories reaches minimal and continues maturing, developers will no longer be split between Git and legacy version control systems, as projects consolidate increasingly on Git. Developers that heavily use binary assets, like **Game Developers**, will at long last be able to switch to Git and eliminate Git LFS by adopting native large file support in Git.

<!--
### Challenges to address

- What needs, goals, or jobs to be done do the users have?
- How do users address these challenges today? What products or work-arounds are utilized?

Provide links to UX Research issues, which validate these problems exist.
-->

## Where we are Headed

<!--
Describe the future state for your category.
- What problems are we intending to solve?
- How will GitLab uniquely address them?
- What is the resulting benefits and value to users and their organizations?

Use narrative techniques to paint a picture of how the lives of your users will benefit from using this category once your strategy is at least minimally realized.
-->
The performance and availability of Gitaly is matter of importance for GitLab Administrators. The inability to access Git repositories on a GitLab server is an outage event, and for a large instance would prevent thousands of people from doing their job. The [release of Gitaly Cluster](/releases/2020/05/22/gitlab-13-0-released/#gitaly-cluster-for-high-availability-git-storage) is a major achievement in improving fault tolerance and performance. Continued iteration is needed to further improve fault tolerance, performance, and continue the roll out to GitLab.com.

It should be noted that the following direction is aligned with our Gitaly Objectives and Key Results (OKRs). Please refer to our [handbook page about OKRs](https://about.gitlab.com/company/okrs/) for more information about how OKRs work at GitLab.

### What's Next & Why

The Gitaly team is dedicated to focusing on improving the robustness of the Gitaly product. We have completed a [prioritization effort](https://gitlab.com/groups/gitlab-org/-/epics/7376) and have coordinated our near term focus on improving data safety, and improving stability for large repositories.

#### Improve Gitaly Cluster Data Consistency and Safety

Work is being tracked in this [epic](https://gitlab.com/groups/gitlab-org/-/epics/7461).

This is a continuation of effort that began last quarter. While we made tremendous progress in this area, we believe that we need to continue focusing on providing our users the highest level of data consistency and data safety. As such, we are continuing with this theme for at least another quarter, with the following focus areas:

- Improved backups. After we [released our first iteration of incremental backups](/releases/2022/04/22/gitlab-14-10-released/#incremental-repository-backups-reduce-backup-time), we to continue improvements and update documentation in this area to bring this feature to general availability.
- Add background verification - design a solution that allows Praefect to verify data across different storage nodes and ensure it remains consistent ([epic](https://gitlab.com/groups/gitlab-org/-/epics/7677)).

#### Improved Stability for Large Repositories

Work is being tracked in this [epic](https://gitlab.com/groups/gitlab-org/-/epics/7440).

Git is the market leading Version Control System (VCS), but many organizations with extremely large projects continue to use centralized version control systems like CVS, SVN, and Perforce. These organizations have often widely adopted Git, but isolated large legacy repositories remain elsewhere. Improvements to Git like partial clone and spare checkout, when integrated into Gitaly, will make it possible to standardize on Git for extremely large repositories, and allow organizations to consolidate on GitLab.

Our goal is to investigate and develop options to make very large repositories scale better and improve their stability.

Currently we are focusing on [fixing cases which cause Gitaly to create replication jobs](https://gitlab.com/groups/gitlab-org/-/epics/7741).

#### Expand the reach of Gitaly Cluster on GitLab.com

Work is being tracked in this [epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/640).

We are currently utilizing Gitaly Cluster for some of our repository storage here at GitLab. However, we would like to expand this utilization to receive additional feedback from our own community. As such, we have partnered with the Infrastructure team to identify specific areas where we would like to improve. Below is a partial list of our goals:

- [Better support for administrative user journeys in Gitaly Cluster](https://gitlab.com/groups/gitlab-org/-/epics/7896) - It's crucial to the team that we provide easy administrative access for Gitaly Cluster, and we are excited about making progress toward this goal.
- [Simplify the importing of existing projects into Gitaly Cluster](https://gitlab.com/gitlab-org/gitaly/-/issues/3952).

### Recent accomplishments

#### Initial release of Incremental Backup strategy

We recently announced the [release of our first iteration of incremental backups](/releases/2022/04/22/gitlab-14-10-released/#incremental-repository-backups-reduce-backup-time) which are designed to significantly reduce the repository backup time for self-managed customers only. We are actively [seeking feedback](https://about.gitlab.com/handbook/product/product-principles/#the-minimal-viable-change-mvc) as well as working to allow this feature to be available for our GitLab.com customers as well.

#### Resynchronization Commands

**Description** - We recently recognized that there is a possibility of the Praefect Database getting out of sync with the Gitaly Cluster nodes. This problem only impacts those users utilizing Gitaly Cluster and taking snapshot backups. While we do not recommend snapshot backups be used for Gitaly Cluster installations, we recognize that while we continue to develop [an incremental backup solution](#incremental-repository-backups), some customers have no choice. As such we have introduced commands to allow for [manual reconciliation](https://docs.gitlab.com/ee/administration/gitaly/praefect.html#manual-reconciliation).

Just recently, we have added [additional documentation updates](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/73488) to further clarify the usage of these manual commands:

- [Manually remove repositories](https://docs.gitlab.com/ee/administration/gitaly/praefect.html#manually-remove-repositories)
- [Manually list untracked repositories](https://docs.gitlab.com/ee/administration/gitaly/praefect.html#manually-list-untracked-repositories)
- [Manually track repositories](https://docs.gitlab.com/ee/administration/gitaly/praefect.html#manually-track-repositories)


### What is Not Planned Right Now

<!--
Often it's just as important to talk about what you're not doing as it is to discuss what you are.
This section should include items that people might hope or think we are working on as part of the category, but aren't, and it should help them understand why that's the case.
Also, thinking through these items can often help you catch something that you should in fact do.
We should limit this to a few items that are at a high enough level so someone with not a lot of detailed information about the product can understand the reasoning.
  -->

In order to best represent our [Transparency Value](), it is just as important to clarify what the Gitaly team cannot prioritize currently. This does not mean that we do not recognize the need for some of these features, simply that we have a finite team.

- Better Support for Administrative User Journeys

    We want to ensure that in the future, we support user journeys such as adding,
    removing, and replacing nodes cleanly, and provide a basic administrative dashboard to monitor node health.

- [VFS for Git](https://gitlab.com/groups/gitlab-org/-/epics/93)

    Partial Clone is built-in to Git and available in GitLab 13.0 or newer.
    [Scalar](https://devblogs.microsoft.com/devops/introducing-scalar/) is
    compatible with partial clone, and Microsoft is contributing to its
    improvement based on their learnings from the GVFS protocol.

- Divergent solution for CDN Offloading

    While we recognize that a lot of good work has gone into independent
    solutions, we are committed to work with the Git community on a CDN
    approach. We intend to support, implement, and contribute to this 
    solution as it be comes available. This is currently being explored
    in our [Support Git CDN offloading](https://gitlab.com/groups/gitlab-org/-/epics/1692)
    epic.

### Maturity Plan

<!--
It's important your users know where you're headed next.
The maturity plan section captures this by showing what's required to achieve the next level.
-->

Gitaly is a **non-marketable** category, and is therefore not assigned a maturity level.

## Competitive Landscape

<!--
Lost the top two or three competitors.
What the next one or two items we should work on to displace the competitor at customers?
Ideally these should be discovered through [customer meetings](/handbook/product/product-processes/#customer-meetings).

We’re not aiming for feature parity with competitors,
and we’re not just looking at the features competitors talk about,
but we’re talking with customers about what they actually use,
and ultimately what they need.
-->

Important competitors are [GitHub.com](https://github.com) and [Perforce](https://perforce.com) which, in relation to Gitaly, compete with GitLab in terms of raw Git performance and support for enormous repositories respectively.

Customers and prospects evaluating GitLab (GitLab.com and self hosted) benchmark GitLab's performance against GitHub.com, including Git performance. The Git performance of GitLab.com for easily benchmarked operations like cloning, fetching and pushing, show that GitLab.com similar to GitHub.com.

Perforce competes with GitLab primarily on its ability to support enormous repositories, either from binary files or monolithic repositories with extremely large numbers of files and history. This competitive advantage comes naturally from its centralized design which means only the files immediately needed by the user are downloaded. Given sufficient support in Git for partial clone, and sufficient performance in GitLab for enormous repositories, existing customers are waiting to migrate to GitLab.

- [Git for enormous repositories](https://gitlab.com/groups/gitlab-org/-/epics/773)

## Business Opportunity

<!--
This section should highlight the business opportunity highlighted by the particular category.
-->

The version control systems market is expected to be valued at close to US$550mn in the year 2021 and is estimated to reach US$971.8md by 2027 according to [Future Market Insights](https://www.futuremarketinsights.com/reports/version-control-systems-market) which is broadly consistent with revenue estimates of GitHub ([$250mn ARR](https://www.owler.com/company/github)) and Perforce ([$130mn ARR](https://www.owler.com/company/perforce)). The opportunity for GitLab to grow with the market, and grow it's share of the version control market is significant.

Git is the market leading version control system, demonstrated by the [2018 Stack Overflow Developer Survey](https://insights.stackoverflow.com/survey/2018/#work-_-version-control) where over 88% of respondents use Git. Although there are alternatives to Git, Git remains dominant in open source software, usage by developers continues to grow, it installed by default on macOS and Linux, and the project itself continues to adapt to meet the needs of larger projects and enterprise customers who are adopting Git, like the Microsoft Windows project.

According to a [2016 Bitrise survey](https://blog.bitrise.io/state-of-app-development-2016#self-hosted) of mobile app developers, 62% of apps hosted by SaaS provider were hosted in GitHub, and 95% of apps are hosted in by a SaaS provider. These numbers provide an incomplete view of the industry, but broadly represent the large opportunity for growth in SaaS hosting on GitLab.com, and in self hosted where GitLab is already very successful.

## Analyst Landscape

<!--
What are analysts and/or thought leaders in the space talking about?
What are one or two issues that will help us stay relevant from their perspective?
-->

- [Native support for large files](https://gitlab.com/groups/gitlab-org/-/epics/773) is important to companies that need to version large binary assets, like game studios. These companies primarily use Perforce because Git LFS provides poor experience with complex commands and careful workflows needed to avoid large files entering the repository. GitLab has been supporting work to provide a more native large file workflow based on promiser packfiles which will be very significant to analysts and customers when the feature is ready.

## Sales Enablement

This section contains messaging, questions, and resources for our sales counterparts to successfully position and sell Gitaly Cluster. It is important to note that Gitaly Cluster is not perfect for every installation. Our goal is to provide options for our customers so they can choose the best repository storage mechanism for their particular business needs.

### What is Gitaly?

Gitaly is a centralized service which handles all access to files to file storage for GitLab. Gitaly services Git requests from the GitLab web application, command line, and via the API. Gitaly is highly configurable and can utilize one or more storage locations to read / write repository data.

The Gitaly service is required for all GitLab installs, and is a separate product from Gitaly Cluster. While Gitaly handles accessing repository storage, Gitaly Cluster provides a highly available repository storage solution for our customers.

### Why we built Gitaly Cluster

Gitaly Cluster was built to address the industry-wide difficulty around expanding Git repository storage in addition to the lack of high availability (HA) Git storage for critical applications. A prominent theme in industry is the idea of an ever expanding NFS storage location for repository storage. While this can work, over time performance degrades, and management becomes increasingly complex. Additionally, while the NFS file system is ideal for many types of files, it's well documented that the types of file accesses created by Git repository access can cause performance issues.

Our goal with Gitaly cluster is to build a Git repository storage system capable of scaling with our users needs, and providing a configurable level of redundancy to keep businesses operating, iterating, and growing.

### How is Gitaly Cluster differentiator for GitLab

Gitaly Cluster is a unique open-core project aimed at providing a scalable and high availability platform for Git repository storage. Gitaly Cluster enable horizontal scalability, allowing our customers to grow their storage in a simple, and well defined manner. We also capitalize on the redundant copies of data needed for HA by increasing read performance through read-distribution.

### When should customers use Gitaly Cluster

Customers should utilize Gitaly Cluster in a few key situations:

- **There is a need for high availability** - Customers who wish to ensure that losing a single node does not induce downtime are ideally suited to a Gitaly Cluster installation.
- **There is a need for expandable storage** - Customers whose repository storage size continues to grow and want to be able to horizontally scale their storage infrastructure.
- **There is a large read demand on Git data** - Environments where there is a large read demand on data can benefit greatly from the distributed read functionality provided by Gitaly Cluster.

### When should customers not use Gitaly Cluster

Customers may not desire to utilize Gitaly Cluster for the following reasons:

- **Cost** - Having data stored in a highly available / redundant manner requires more infrastructure and therefore incurs higher storage / hosting costs.
- **Very low RPO / RTO needs** - Recognize that restoration of an entire cluster & Praefect database will naturally take longer than a single node. However, this is mostly mitigated by the fact that loss of a single node should not require restoration, and therefore should be an unlikely scenario.
- **Require snapshot backups** - It is very difficult to backup the Gitaly Cluster nodes & Praefect database at the exact same time, which will result in a non-congruent backup. Therefore, Gitaly Cluster does not support snapshot backups. However, we are making progress on releasing an [incremental backup solution](https://gitlab.com/groups/gitlab-org/-/epics/2094) that will be fully compatible with Gitaly Cluster.

### Resources
**Documentation Resources**
- [Gitaly Cluster Recommendations](https://docs.gitlab.com/ee/administration/configure.html#gitaly-capabilities)
- [Gitaly Cluster documentation](https://docs.gitlab.com/ee/administration/gitaly/)
- [FAQ](https://docs.gitlab.com/ee/administration/gitaly/faq.html)

**Enablement Presentation** (Internal GitLab Only)
- [Video: Gitaly Cluster Enablement Presentation](https://youtu.be/zI1t0IyHayM)
- [Deck: Self-hosted options for GitLab](https://docs.google.com/presentation/d/1RV-dOah-EO4D4VZvSwEVxaXEXbVSlc6FzjZjQIYSre8/edit#slide=id.g29a70c6c35_0_68)

<!--
    TODO:
- Pitch Deck - TBD
-->

### How can you help the Gitaly team?

As we [mentioned above](https://about.gitlab.com/direction/create/gitaly/#improved-documentation-for-gitaly-and-gitaly-cluster), one of our priorities is to improve the Gitaly Cluster documentation. In order to do this, we would appreciate any problems be raised as an issue under our [documentation epic](https://gitlab.com/groups/gitlab-org/-/epics/5075). Additionally, if you receive assistance from the Gitaly team in resolving a customer issue, please help us clarify our documentation to help future teammates and customers.

## Deprecations and Changes

As Gitaly and Gitaly Cluster evolve, it is sometimes necessary to deprecate features. When this occurs, we will follow the documented [Deprecations, removals and breaking changes](https://about.gitlab.com/handbook/marketing/blog/release-posts/#deprecations-removals-and-breaking-changes) procedure. This ensures that all stable counterparts within GitLab are informed, and that the [GitLab Documentation](https://docs.gitlab.com/ee/update/deprecations) is also updated to keep our customers informed.

In addition, we will track all deprecations throughout the 14.x milestones, and breaking changes occurring in the 15.0 milestone on the following epic:

- [Gitaly 15.x through 16.0 Deprecations and Removals](https://gitlab.com/groups/gitlab-org/-/epics/8411)

## Top Customer Success/Sales issue(s)

<!--
These can be sourced from the CS/Sales top issue labels when available,
internal surveys, or from your conversations with them.
-->

- [Gitaly Clusters: strong consistency](https://gitlab.com/groups/gitlab-org/-/epics/1189) will provide improved fault tolerance by guaranteeing a quorum of Gitaly nodes have accepted write operations before reporting a success to the client. This will make automatic fail possible with a high degree of confidence that no data loss will occur.
- [Incremental repository backups](https://gitlab.com/groups/gitlab-org/-/epics/2094) will provide a comprehensive backup solution for GitLab instances with large amounts of Git data.
- [Native support for extremely large repositories](https://gitlab.com/groups/gitlab-org/-/epics/773) prevents existing customers and prospects from being able to migrate enormous repositories from Perforce or SVN to Git. It is frequently requested and many organizations want to standardize on a single version control system and tool like GitLab across all projects.

## Top user issue(s)

<!--
This is probably the top popular issue from the category (i.e. the one with the most thumbs-up),
but you may have a different item coming out of customer calls.
-->

Users do not see Gitaly as a distinct feature or interface of GitLab.
Git performance is the most significant user facing area where improvements are frequently requested,
however the source of the performance problem can vary significantly.

## Top internal customer issue(s)

<!--
These are sourced from internal customers wanting to [dogfood](/handbook/values/#dogfooding) the product.
-->

- [Gitaly Clusters: strong consistency](https://gitlab.com/groups/gitlab-org/-/epics/1189) will provide improved fault tolerance by guaranteeing a quorum of Gitaly nodes have accepted write operations before reporting a success to the client. This will make automatic fail possible with a high degree of confidence that no data loss will occur.
- [Streaming incremental Git backups](https://gitlab.com/groups/gitlab-org/-/epics/2094) will replace inconsistent disk snapshots for GitLab.com.

## Top Vision Item(s)

<!--
What's the most important thing to move your vision forward?
-->

- [Gitaly Clusters: strong consistency](https://gitlab.com/groups/gitlab-org/-/epics/1189) will provide improved fault tolerance by guaranteeing a quorum of Gitaly nodes have accepted write operations before reporting a success to the client. This will make automatic fail possible with a high degree of confidence that no data loss will occur.
- [Native support for large files](https://gitlab.com/groups/gitlab-org/-/epics/773) prevents existing customers and prospects being able to migrate repositories with large files to Git. Git LFS isn't a sufficient solution for these organizations in comparison with the native support of other version control systems. The most pressing problem is avoiding the need to download enormous amounts of data, and not having to remember to use different commands for different files so as not to make life worse for everyone.
