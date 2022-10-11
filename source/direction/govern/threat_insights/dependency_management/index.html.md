---
layout: sec_direction
title: "Category Direction - Dependency Management"
---

- TOC
{:toc}

| | |
| --- | --- |
| Stage | [Govern](/direction/govern/) |
| Maturity | [Viable](/direction/maturity/) |
| Features & Demos | [Our Youtube playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0Kp8oA6OJ6_wm7uw0muud_mZ) |
| Content Last Reviewed | `2022-10-05` |
| Content Last Updated | `2022-10-05` |

## Introduction and how you can help

Thanks for visiting this category strategy page on Vulnerability Management in GitLab. This category belongs to the [Threat Insights group](https://about.gitlab.com/handbook/product/categories/#threat-insights-group) of the Govern stage and is maintained by [Matt Wilson](https://about.gitlab.com/company/team/#matt_wilson) ([mwilson@gitlab.com](mailto:<mwilson@gitlab.com>)).

### Engage with us

At GitLab, we believe [everyone can contribute](https://about.gitlab.com/company/strategy/#contribute-with-gitlab). One of the simplest ways is by contributing your feedback! If you're a GitLab user or an interested security professional, we especially would love to hear from you. Check out all the ways you can engage with us and chose which one is right for you.

##### Asynchronous
* Check out our [Roadmap](#roadmap) and leave comments
* See [all the ~"group::threat insights" issues](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Athreat%20insights)
* [Suggest a feature](https://gitlab.com/gitlab-org/gitlab/-/issues/new)
* [Email the Product Manager, Matt](mailto:<mwilson@gitlab.com>)

##### Synchronous
* [Schedule a video chat](https://calendly.com/mwilson_gitlab/30min) with the Product Manager

**Note:** At GitLab, we record most of our video calls and will post them to our Youtube channel unless there is sensitive information.

## Overview

This is a new category so we'll have more details to share in the near future. Creating Dependency Management as its own category is an acknowledgement of the increased importance and visibility of understanding exactly what 3rd-party software organizations are using to create their own applications. We are starting with the existing [Dependency list](https://docs.gitlab.com/ee/user/application_security/dependency_list/) and the [portion of License compliance page](https://docs.gitlab.com/ee/user/compliance/license_compliance/) where you can view the dependency a given license was found in. 

## Goal

The vision is to create complete, near-real time, organization-wide visibility into all 3rd-party dependencies—and any risks present. We will leverage existing features of the GitLab platform to accelerate feature development. We will also bring consistency across security capabilities as we look to mirror functionality in our sibling category of [Vulnerability Management](/direction/govern/threat_insights/vulnerability_management/).

## Roadmap

Our current priority is to continue working with our Composition Analysis team in building [Continuous Vulnerability Scanning](https://gitlab.com/groups/gitlab-org/-/epics/7886). This will lay the groundwork for "scanless" dependency updates and vulnerability identification. The new database-backed models for dependencies and vulnerability advisory data are key enablers of planned Dependency Management features. One of the first such features is creating a [Dependency List at the Group level](https://gitlab.com/groups/gitlab-org/-/epics/8090). This will create broad, instance-wide views of all dependencies in your organization. We will also be able to build out features borrowed from Vulnerability Management like [Filtering and Searching](https://gitlab.com/groups/gitlab-org/-/epics/8089) and [Grouping](https://gitlab.com/groups/gitlab-org/-/epics/8091). Eventually, we will [Remove the License Compliance Page](https://gitlab.com/groups/gitlab-org/-/epics/8093) as the information is very similiar, just in a different presentation. This will create a single source of truth for both dependency and license information.
