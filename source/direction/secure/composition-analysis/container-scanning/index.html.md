---
layout: secure_and_protect_direction
title: "Category Direction - Container Scanning"
description: "Container Scanning tests your Docker images against known vulnerabilities that may affect software that is installed in the image. Learn more!"
canonical_path: "/direction/protect/container-scanning/"
---

<!---  using https://gitlab.com/-/ide/project/gitlab-com/www-gitlab-com/edit/master/-/doc/templates/product/category_direction_template.html.md -->

- TOC
{:toc}

## Protect

| | |
| --- | --- |
| Stage | [Protect](/direction/protect/) |
| Maturity | [Viable](/direction/maturity/) |
| Content Last Reviewed | `2022-07-08` |

### Introduction and how you can help

Thanks for visiting this category direction page on Container Scanning in GitLab. This page belongs to the Container Security group of the Protect stage and is maintained by Sam White ([swhite@gitlab.com](mailto:<swhite@gitlab.com>)).

This direction page is a work in progress, and everyone can contribute. We welcome feedback, bug reports, feature requests, and community contributions.

- Please comment and contribute in the linked [issues](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3AContainer%20Scanning) and [epics](https://gitlab.com/groups/gitlab-org/-/epics/530) on this page. Sharing your feedback directly on GitLab.com is the best way to contribute to our strategy and vision.
- Please share feedback directly via email or on a video call. If you're a GitLab user and have direct knowledge of your need for container security, we'd especially love to hear from you.
- Can't find an issue? Make a [feature proposal](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Feature%20proposal%20-%20detailed) or a [bug report](https://gitlab.com/gitlab-org/gitlab/-/issues/new?&issuable_template=Bug). Please add the appropriate labels by adding this line to the bottom of your new issue `/label ~"devops::protect" ~"Category:Container Scanning" ~"group::container security"`.
<!--- https://gitlab.com/gitlab-org/gitlab/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=#) --->
- Consider signing up for [First Look](https://about.gitlab.com/community/gitlab-first-look/).

We believe [everyone can contribute](https://about.gitlab.com/company/mission/#contribute-to-gitlab-application) and so if you wish to contribute [here is how to get started](https://about.gitlab.com/community/contribute/).

### Overview

Container Scanning checks your Docker images against known vulnerabilities that may affect software that is contained in the image. Users often use existing images as the base for their containers. It means that they rely on the security of those images and their preinstalled software. Unfortunately, as this software is subject to vulnerabilities, this may affect the security of the entire project.

GitLab was recently named as a [Challenger in the 2021 Magic Quadrant for Application Security Testing](https://about.gitlab.com/analysts/gartner-ast21/).

Our goal is to provide Container Scanning as part of the standard development process. This means that Container Scanning is executed every time a new commit is pushed to a branch, and only vulnerabilities introduced within the merge request are shown. We also include Container Scanning as part of [Auto DevOps](https://docs.gitlab.com/ee/topics/autodevops/).

In the future, another place where Container Scanning results would be useful is in the [GitLab Container Registry](https://docs.gitlab.com/ee/user/packages/container_registry/index.html). Images built during pipelines are stored in the registry, and then used for deployments. Integrating Container Scanning into GitLab Container Registry will help to [monitor if it is safe to deploy a specific version of the app](https://gitlab.com/gitlab-org/gitlab-ee/issues/8790).

#### Target Audience

Primary: [Sasha (Software Developer](/handbook/product/personas/#sasha-software-developer) wants to know when adding a container if it has known vulnerabilities so alternate versions or containers can be considered.

Secondary: [Sam (Security Analyst)](/handbook/product/personas/#sam-security-analyst) wants to know what containers have known vulnerabilities (to reduce the OWASP A9 risk - Using Components with Known Vulnerabilities), to be alerted if a new vulnerability is published for an existing component, and how behind current version the components are.

Other:
1. [Cameron (Compliance Manager)](/handbook/marketing/product-marketing/roles-personas/#cameron-compliance-manager)
1. [Devon (DevOps Engineer)](/handbook/marketing/product-marketing/roles-personas/#devon-devops-engineer)
1. [Sidney (Systems Administrator)](/handbook/product/personas/#sidney-systems-administrator)
1. [Delaney (Development Team Lead)](/handbook/marketing/product-marketing/roles-personas/#delaney-development-team-lead)

### Where we are Headed

Our vision for container security is to provide the ability to scan container images regardless of where they may reside and to shift those results as far left as possible.

#### What is our Vision (Long-term Roadmap)

To reach the [Complete Maturity](/direction/maturity/) level, we will need to accomplish the following.  Epics and issues for most of these items can be found nested in the [Container Scanning Viable to Complete Epic](https://gitlab.com/groups/gitlab-org/-/epics/299).  These items are grouped thematically and are not in priority order.  Priorities for these items can be found on our always-open [priorities issue](https://gitlab.com/gitlab-org/gitlab/-/issues/222791#container-scanning-priorities).

- Increase usability
   - [Continuous vulnerability scans](https://gitlab.com/groups/gitlab-org/-/epics/7886)
   - [Better support scanning of multiple images](https://gitlab.com/groups/gitlab-org/-/epics/3139)
   - [Simplify setup for AWS ECR images](https://gitlab.com/groups/gitlab-org/-/epics/6145)
- Decrease noise
   - [Group/consolidate similar findings](https://gitlab.com/groups/gitlab-org/-/epics/5801)
   - [Prioritize findings that are fixable by the dev team](https://gitlab.com/groups/gitlab-org/-/epics/6846)
   - [Identify false positives](https://gitlab.com/gitlab-org/gitlab/-/issues/10046)
- Integrate with the rest of GitLab
   - [Automatically scan GitLab's container registry](https://gitlab.com/groups/gitlab-org/-/epics/2340)
   - Alert when the database is updated and vulnerabilities exist in previously-scanned images (Epic/Issue creation in progress)

In addition to this work, we also need to allow users to [scan images that are used in running Kubernetes clusters](https://gitlab.com/groups/gitlab-org/-/epics/3410).  This is [available now](https://docs.gitlab.com/ee/user/application_security/cluster_image_scanning/) in an Alpha state and we are working to get this ready for general availability.

#### What's Next & Why (Near-term Roadmap)
<!-- This is almost always sourced from the following sections, which describe top
priorities for a few stakeholders. This section must provide a link to an issue
or [epic](https://about.gitlab.com/handbook/product/product-processes/#epics-for-a-single-iteration) for the MVC or first/next iteration in the category.-->
In the GitLab [14.1](https://gitlab.com/groups/gitlab-org/-/milestones/61) release, we introduced a feature in an Alpha state to allow users to [scan container images that are actively running](https://docs.gitlab.com/ee/user/application_security/cluster_image_scanning/) in a Kubernetes cluster for vulnerabilities.  Those vulnerabilities then get reported back to the Security Center.  In the next few milestones, we plan to [finish developing this feature](https://gitlab.com/groups/gitlab-org/-/epics/3410) and move it from an Alpha state into a production-ready GA state.

In the GitLab 15.0 release, we moved the basic ability to run a container scan [down to the free tier](https://gitlab.com/groups/gitlab-org/-/epics/2233).

For next steps, we plan to allow GitLab to continuously scan dependencies for known vulnerabilities by synchronously triggering a re-scan anytime either the container image changes or when the advisory database is updated.  These plans can be tracked in more detail [in this epic](https://gitlab.com/groups/gitlab-org/-/epics/7886).

A full list of our near-term priorities is kept up-to-date on our open [priorities issue](https://gitlab.com/gitlab-org/gitlab/-/issues/222791#container-scanning-priorities).

#### What is Not Planned Right Now
<!-- Often it's just as important to talk about what you're not doing as it is to
discuss what you are. This section should include items that people might hope or think
we are working on as part of the category, but aren't, and it should help them understand why that's the case.
Also, thinking through these items can often help you catch something that you should
in fact do. We should limit this to a few items that are at a high enough level so
someone with not a lot of detailed information about the product can understand
the reasoning-->
TBD

#### Maturity Plan
<!-- It's important your users know where you're headed next. The maturity plan
section captures this by showing what's required to achieve the next level. The
section should follow this format:

This category is currently at the XXXX maturity level, and our next maturity target is YYYY (see our [definitions of maturity levels](https://about.gitlab.com/direction/maturity/)).

- Link to maturity epic if you are using one, otherwise list issues with maturity::YYYY labels) -->
This category is currently at Viable maturity.  A [plan has been created](https://gitlab.com/groups/gitlab-org/-/epics/299) for the category to progress to Complete maturity.

#### Challenges to address
<!--
- What needs, goals, or jobs to be done do the users have?
- How do users address these challenges today? What products or work-arounds are utilized?

Provide links to UX Research issues, which validate these problems exist.
-->
We will be researching current user challenges in [this issue](https://gitlab.com/gitlab-org/ux-research/-/issues/297). Please feel free to comment!

### Key features

Currently we notify developers when they add containers with known vulnerabilities in a merge request, if [security approvals](https://docs.gitlab.com/ee/user/application_security/index.html#security-approvals-in-merge-requests) are configured, we will require an approval for vulnerabilities that exceed a specified severity level. A summary of all findings for a project can be found in the [Security Dashboard](https://docs.gitlab.com/ee/user/application_security/security_dashboard/index.html) where Security Teams can quickly check the security status of projects. In some cases we are able to offer [automatic remediation](https://docs.gitlab.com/ee/user/application_security/container_scanning/#solutions-for-vulnerabilities-auto-remediation) for the findings.

- [Shows finding information in the merge request](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/#overview)
- [Merge Request Approvals](https://docs.gitlab.com/ee/user/application_security/index.html#security-approvals-in-merge-requests)
- [Security Dashboard](https://docs.gitlab.com/ee/user/application_security/security_dashboard/index.html) available at the Project, Group, and Instance levels
- [Auto-remediation](https://docs.gitlab.com/ee/user/application_security/container_scanning/#solutions-for-vulnerabilities-auto-remediation) leverages Container Scanning to provide a solution for vulnerabilities that can be applied to fix the codebase.
- [Available offline](https://docs.gitlab.com/ee/user/application_security/offline_deployments/)

#### User success metrics
<!--
- What specific user behaviors are indicate that users are trying these features, and solving their problems?
- How will users discover these features?
-->
Our primary success metric is the [number of unique users who run a container security scan](https://about.gitlab.com/handbook/product/sec-section-performance-indicators/#securecomposition-analysis---gmau---users-running-any-sca-scanners) each month.

#### Why is this important?
<!--
- Why is GitLab building this feature?
- What impact will it have on the broader devops workflow?
- How confident are we? What is the effort?
-->
In addition to being [A9 Using Components with Known Vulnerabilities](https://owasp.org/www-project-top-ten/OWASP_Top_Ten_2017/Top_10-2017_A9-Using_Components_with_Known_Vulnerabilities) in the OWASP top 10, keeping components up to date is code quality issue, and finally as the need for software bill of materials (SBoM) grows being able to list your dependencies will become a needed feature for all application developers.

### Competitive Landscape
<!-- The top two or three competitors, and what the next one or two items we should
work on to displace the competitor at customers, ideally discovered through
[customer meetings](https://about.gitlab.com/handbook/product/product-processes/#customer-meetings). We’re not aiming for feature parity with competitors, and we’re not just looking at the features competitors talk
about, but we’re talking with customers about what they actually use, and
ultimately what they need.-->

- [Black Duck](https://www.blackducksoftware.com/solutions/container-security)
- [Snyk](https://snyk.io/container-vulnerability-management)
- [Sonatype Nexus](https://www.sonatype.com/containers)
- [Qualys](https://www.qualys.com/apps/container-security/)
- [sysdig](https://sysdig.com/products/kubernetes-security/image-scanning/)
- [Aqua](https://www.aquasec.com/products/container-security/)
- [StackRox](https://www.stackrox.com/use-cases/vulnerability-management/)
- [Prisma Cloud - was TwistLock](https://www.paloaltonetworks.com/prisma/cloud/compute-security/container-security)

## Analyst Landscape

Container Scanning is frequently bundled together with Dependency Scanning and License Compliance to provide an overall Software Composition Analysis (SCA) solution within the Application Security Testing (AST) market.  GitLab was recently named as a [Challenger in the 2021 Magic Quadrant for Application Security Testing](https://about.gitlab.com/analysts/gartner-ast21/).

### Top Issue(s)

Top Epics and Issues can be viewed [in this list](https://gitlab.com/gitlab-org/gitlab/-/issues/222791#container-scanning-priorities)

#### Customer Success/Sales

[Full list](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3AContainer%20Scanning&label_name[]=customer%20success)

If you don't see the `customer success` label on an issue yet, and you are a customer success team-member, feel free to add it!

#### Customer

[Full list](https://gitlab.com/groups/gitlab-org/-/issues?label_name%5B%5D=Category%3AContainer+Scanning&label_name%5B%5D=customer&scope=all&sort=popularity&state=opened&utf8=%E2%9C%93)

If you don't see the `customer` label on an issue yet, feel free to add it if you are the first customer!

#### Internal customer

- [Full list](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3AContainer%20Scanning&label_name[]=internal%20customer)

If you don't see the `internal customer` label on an issue yet, and you are a team-member, feel free to add it!

### Top Strategy Item(s)
<!-- What's the most important thing to move your strategy forward?-->

To be determined.