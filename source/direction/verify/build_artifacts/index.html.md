---
layout: markdown_page
title: "Category Direction - Build Artifacts"
description: "Usage and administration of Build Artifacts"
canonical_path: "/direction/verify/build_artifacts/"
---

- TOC
{:toc}

## Build Artifacts

[Artifacts](https://docs.gitlab.com/ee/ci/yaml/#artifacts) are files created as part of a build process that often contain metadata about that build's jobs like test results, security scans, etc. These can be used for reports that are displayed directly in GitLab or can be published to [GitLab Pages](/stages-devops-lifecycle/pages/) or in some other way for users to review. These artifacts can provide a wealth of knowledge to development teams and the users they support.

[Job Artifacts](https://docs.gitlab.com/ee/ci/pipelines/job_artifacts.html) and [Pipeline Artifacts](https://docs.gitlab.com/ee/ci/pipelines/pipeline_artifacts.html) are both included in the scope of Build Artifacts to empower GitLab CI users to more effectively manage testing capabilities across their software lifecycle in both the gitlab-ci.yml or as the latest output of a job.

For information about storing containers or packages or information about release evidence see the [Package Stage direction page](https://about.gitlab.com/handbook/product/categories/#package-stage).

## Additional Resources

- [Issue List](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&state=opened&label_name[]=Category%3ABuild%20Artifacts)
- [Overall Vision of the Verify stage](/direction/ops/#verify)

For specific information and features related to display of artifact data, check out the [GitLab Features](/features/) and for information about administration of artifacts please reference the Job Artifact [documentation](https://docs.gitlab.com/ee/administration/job_artifacts.html). You may also be looking for one of the related direction pages from the [Verify Stage](/direction/ops/#verify-stage-categories).

Interested in joining the conversation for this category? Please join us in the [issues](https://gitlab.com/gitlab-org/gitlab/-/issues/?sort=popularity&state=opened&label_name%5B%5D=Category%3ABuild%20Artifacts&first_page_size=20) where we discuss this topic and can answer any questions you may have. Your contributions are more than welcome.

This page is maintained by the Product Manager for Pipeline Insights, Jocelyn Eillis ([E-mail](mailto:jeillis@gitlab.com)).

## What's Next & Why

In 15.6 we continue to focused on resolving storage calculations for Build Artifacts as we begin to focus more on storage consumption [gitlab&5754](https://gitlab.com/groups/gitlab-org/-/epics/5754) over the next two quarters. The team is also excited to deliver the MVC for the new Artifacts page [gitlab#33418](https://gitlab.com/gitlab-org/gitlab/-/issues/33418) which had missed our 15.5 release. In addition to the release of this MVC, we will also enable [filtering/sorting by branch name](https://gitlab.com/gitlab-org/gitlab/-/issues/367294). In subsequent iterations, we will be adding features to enable you to manage your build artifacts [gitlab&8715](https://gitlab.com/groups/gitlab-org/-/epics/8715) more easily via the UI. 

Beyond this, we will continue working on our goal of providing a great artifact experience for both operators and users of GitLab there are some opportunities we can address. These are listed in priority order in this table:

| | **Challenge** | **Related Epics & Issues** |
| 1 | There is no easy way to manage and analyze all artifacts in a Project. Downloading artifacts from jobs/pipelines and comparing or analyzing them is painful today given the sizes of the files and the other workarounds that are necessary. | [gitlab&7473](https://gitlab.com/groups/gitlab-org/-/epics/7473) |
| 2 | Artifacts storage is hard to manage | [gitlab&5754](https://gitlab.com/groups/gitlab-org/-/epics/5754) |
| 3 | Reports from child pipelines are hard to find | [gitlab&4019](https://gitlab.com/groups/gitlab-org/-/epics/4019) |
| 4 | MR reports do not have visibility to child pipeline artifacts | [gitlab&8205](https://gitlab.com/groups/gitlab-org/-/epics/8205) |

We will continue to improve instrumentation to increase monitoring capabilities for artifact usage in [gitlab#339721](https://gitlab.com/gitlab-org/gitlab/-/issues/339721). We have started this work in 15.4 and have deferred this for completion in FY23 Q4 to priorize the user issues above. 

## Top Customer Success/Sales Issue(s)

The Gitlab Sales teams are looking for more complex ways for customers to make use of Ultimate and Premium features like SAST and DAST with monorepos by letting customers [namespace parts of reports](https://gitlab.com/gitlab-org/gitlab/-/issues/299490) to more granular analysis or combining Matrix Builds and [Metrics Reports](https://gitlab.com/gitlab-org/gitlab/-/issues/10788).

## Top Customer Issue(s)

The most popular customer request is for the ability to support the [generation of multiple artifacts per job](https://gitlab.com/gitlab-org/gitlab/-/issues/18744) to reduce the need for pipeline logic to make select files available to later jobs.

One of our most complicated request, is to handle the [expire_at](https://gitlab.com/groups/gitlab-org/-/epics/7097) experience in self-managed customers better. Today, our implementation deletes data as expected for GitLab.com users, and shouldn't do the same for self-managed. 

## Top Internal Customer Issue(s)

The Gitlab quality team has requested the ability to upload artifacts from a job when it [fails due to a timeout](https://gitlab.com/gitlab-org/gitlab/-/issues/19818) to assist in debugging those pipeline failures.

The team is also investigating performance issues related to the build artifact feature set as part of our focus on [Availability and Performance](/direction/enablement/dotcom/#availability-and-performance).

## Top Vision Items

To meet our long term vision that enables users to more easily use and manage their Build Artifacts we will need to add and improve the [usability of artifact in the UI](https://gitlab.com/groups/gitlab-org/-/epics/8311). In addition to UI improvements, we need to provide [user-friendly solutions for build artifacts management](https://gitlab.com/groups/gitlab-org/-/epics/8715) via API, for example, [an API to upload artifacts](https://gitlab.com/gitlab-org/gitlab/-/issues/18794) directly to GitLab without them being generated by a pipeline. 
