---
layout: markdown_page
title: "Category Direction - License Compliance"
description: "GitLab's goal is to provide License Compliance as part of the standard development process. Learn more!"
canonical_path: "/direction/secure/composition-analysis/license-compliance/"
---

<!---  using https://gitlab.com/-/ide/project/gitlab-com/www-gitlab-com/edit/master/-/doc/templates/product/category_direction_template.html.md -->

- TOC
{:toc}

## Sec Section

| | |
| --- | --- |
| Stage | [Secure](/direction/secure/) |
| Maturity | [Minimal](/direction/maturity/) |
| Content Last Reviewed | `2022-07-08` |
| Content Last Updated | `2022-07-08` |

### Introduction and how you can help
Thanks for visiting this category direction page on License Compliance at GitLab. This page belongs to the [Composition Analysis](/handbook/product/categories/#composition-analysis-group) group of the [Secure](/direction/secure/) stage and is hiring a new Product Manager. The interim Product Manager is [Sam White](https://gitlab.com/sam.white).

The [Composition Analysis](/handbook/product/categories/#composition-analysis-group) Group's primary focus is [GitLab-hosted First](https://about.gitlab.com/direction/#gitlab-hosted-first) putting reliability, scalability, and security first.

#### Send Us Feedback
We welcome feedback, bug reports, feature requests, and community contributions.

Not sure how to get started?

- Upvote or comment on [proposed Category:License Compliance issues](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3ALicense%20Compliance) or [proposed Category:License Compliance epics](https://gitlab.com/groups/gitlab-org/-/epics?state=opened&page=1&sort=start_date_desc&label_name[]=Category:License+Compliance)- when you find one similar to what you want, please leave a comment AND upvote it! This helps it to be prioritized, backlog items with few unique individuals commenting are unlikely to get reviewed and prioritized.
- Can't find an issue? Make a [feature proposal](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Feature%20proposal%20-%20detailed) or a [bug report](https://gitlab.com/gitlab-org/gitlab/-/issues/new?&issuable_template=Bug). Please add the appropriate labels by adding this line to the bottom of your new issue `/label ~"devops::secure" ~"Category:License Compliance" ~"group::composition analysis" ~"type::feature"`.
<!--- https://gitlab.com/gitlab-org/gitlab/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=#) --->
- Consider signing up for [First Look](https://about.gitlab.com/community/gitlab-first-look/).

Sharing your feedback directly on GitLab.com is the best way to contribute to our direction.

We believe [everyone can contribute](https://about.gitlab.com/company/mission/#contribute-to-gitlab-application) and so if you wish to contribute [here is how to get started](https://about.gitlab.com/community/contribute/).

### Overview
<!-- A good description of what your category is today or in the near term. If there are
special considerations for your strategy or how you plan to prioritize, the
description is a great place to include it. Provide enough context that someone unfamiliar
with the details of the category can understand what is being discussed. -->

License Compliance analyzes your application to track which licenses are used by third-party components, like libraries and external dependencies, and check that they are compatible with your policies.

License Compliance is often considered an element of Software Composition Analysis, [Software Bill of Materials (SBOM)](https://gitlab.com/groups/gitlab-org/-/epics/858), and compliance activities.

> GitLab was named as a [Challenger in the 2021 Magic Quadrant for Application Security Testing](https://about.gitlab.com/analysts/gartner-ast21/).

Licenses can be incompatible with the chosen license model for the application, for example because of their redistribution rights.

Our goal is to provide License Compliance as part of the standard development process. This means that License Compliance is executed every time a new commit is pushed to a branch, identifying newly introduced licenses in the merge request. We also include License Compliance as part of [Auto DevOps](https://docs.gitlab.com/ee/topics/autodevops/).


#### Target Audience
<!--
List the personas (https://about.gitlab.com/handbook/marketing/strategic-marketing/roles-personas#user-personas) involved in this category.

Look for differences in user's goals or uses that would affect their use of the product. Separate users and customers into different types based on those differences that make a difference.
-->
Primary: [Sasha (Software Developer)](https://about.gitlab.com/handbook/product/personas/#sasha-software-developer) wants to know when adding a dependency if it has permitted licenses.

Other: [Cameron (Compliance Manager)](https://about.gitlab.com/handbook/product/personas/#cameron-compliance-manager), [Delaney (Development Team Lead)](https://about.gitlab.com/handbook/product/personas/#delaney-development-team-lead)

#### Challenges to address
<!--
- What needs, goals, or jobs to be done do the users have?
- How do users address these challenges today? What products or work-arounds are utilized?

Provide links to UX Research issues, which validate these problems exist.
-->
We will be researching current user challenges in [this issue](https://gitlab.com/gitlab-org/ux-research/-/issues/1061). Please feel free to comment!

### Key features

- [9 package managers supported](https://docs.gitlab.com/ee/user/compliance/license_compliance/#supported-languages-and-package-managers)
- [Policy enforcement](https://docs.gitlab.com/ee/user/compliance/license_compliance/#policies) through [merge request approvals](https://docs.gitlab.com/ee/user/compliance/license_compliance/#enabling-license-approvals-within-a-project)
- [Available offline](https://docs.gitlab.com/ee/user/compliance/license_compliance/#running-license-compliance-in-an-offline-environment)

### Where we are Headed

Our vision for license compliance is to allow users to detect and enforce license controls on their projects with a high degree of accuracy and with as little user friction as possible.

When License Compliance is resourced, we will be focusing on progressing the maturity of the category from minimal to viable. Currently, based on discussions with users, the focus for each progression is detailed below in "What's Next & Why".

We expect users to be able to clearly specify what licenses are permissible for which internal projects, and for developers to be promptly aware when they add a license that is against policy and who they can talk to about it.

Users tasked with verification of compliance will be easily able to review what licenses are utilized through the projects, which deviate from policy, and who approved the exception.

#### What is our Vision (Long-term Roadmap)

Our vision for license compliance is to provide users with a flexible way to define and enforce license compliance policies for their projects.  Ultimately we view [License Approval Policies](https://gitlab.com/groups/gitlab-org/-/epics/8092) becoming a feature within the GitLab security policy editor and replacing the current [License-Check](https://docs.gitlab.com/ee/user/compliance/license_compliance/#enabling-license-approvals-within-a-project) functionality that exists today.

Additionally we plan on consolidating the tools that are required to run in the CI pipeline by [rearchitecting the product](https://gitlab.com/groups/gitlab-org/-/epics/8072) to identify licenses that are discovered by the Container Scanning and Dependency Scanning analyzers.  This will pave the way for GitLab to be better able to control the quality of license data that is used to match against the packages that are found in a project.  In the long run we would like to allow users to identify licenses even for projects that have complex scenarios such as multiple licenses that may be joined by either `and` or `or` clauses.

On the management side, we plan to improve the way that license information is presented in the GitLab UI by allowing users to search, filter, and rollup license information across all of their projects at the group level.

#### What's Next & Why

Currently License Compliance relies on an upstream [license-finder](https://github.com/pivotal/LicenseFinder/) project which has not been well maintained.  We are working to replace the need to have a dedicated license scanner by instead [moving to a new architecture](https://gitlab.com/groups/gitlab-org/-/epics/8072).  In the new architecture, dependencies will be detected and reported up by the Container Scanning and Dependency Scanning analyzers.  These dependencies will then be stored in the GitLab database where they will be matched against licenses.  This new approach will eliminate the maintenance burden that the GitLab engineering team currently faces in trying to update the [license-finder](https://gitlab.com/gitlab-org/security-products/analyzers/license-finder) analyzer.  It will also allow us to standardize our language support by focusing all of our language-specific package detection in the single Dependency Scanning analyzer code base.

#### What is Not Planned Right Now
<!-- Often it's just as important to talk about what you're not doing as it is to
discuss what you are. This section should include items that people might hope or think
we are working on as part of the category, but aren't, and it should help them understand why that's the case.
Also, thinking through these items can often help you catch something that you should
in fact do. We should limit this to a few items that are at a high enough level so
someone with not a lot of detailed information about the product can understand.-- > ----->
TBD

#### Maturity Plan

<!-- It's important your users know where you're headed next. The maturity plan
section captures this by showing what's required to achieve the next level. The
section should follow this format:

This category is currently at the XXXX maturity level, and our next maturity target is YYYY (see our [definitions of maturity levels](https://about.gitlab.com/direction/maturity/)).

- Link to maturity epic if you are using one, otherwise list issues with maturity::YYYY labels) -->
This category is currently at Minimal maturity.  A [plan has been created](https://gitlab.com/groups/gitlab-org/-/epics/1662) for the category to progress to Viable maturity.

#### User success metrics
<!--
- What specific user behaviors are indicate that users are trying these features, and solving their problems?
- How will users discover these features?
-->
We track the unique number of users who run at least one license compliance job each month to measure our usage and success.

#### Why is this important?
<!--
- Why is GitLab building this feature?
- What impact will it have on the broader devops workflow?
- How confident are we? What is the effort?
-->
Users have indicated they wish to enforce license compliance policies as early as possible. This contributes to the need that users have for producing a [software bill of materials (SBoM)](https://gitlab.com/groups/gitlab-org/-/epics/858).

### Competitive Landscape
<!-- The top two or three competitors, and what the next one or two items we should
work on to displace the competitor at customers, ideally discovered through
[customer meetings](https://about.gitlab.com/handbook/product/product-processes/#customer-meetings). We’re not aiming for feature parity with competitors, and we’re not just looking at the features competitors talk
about, but we’re talking with customers about what they actually use, and
ultimately what they need.-->

- [Black Duck](https://www.blackducksoftware.com/solutions/open-source-license-compliance)
- [Sonatype Nexus](https://www.sonatype.com/nexus-auditor)
- [Whitesource](https://www.whitesourcesoftware.com/open-source-license-compliance/)
- [snyk](https://snyk.io/product/open-source-license-compliance/)

### Analyst Landscape
<!-- What analysts and/or thought leaders in the space talking about, what are one or two issues
that will help us stay relevant from their perspective.-->

License Compliance is frequently bundled together with Container Scanning and Dependency Scanning to provide an overall Software Composition Analysis (SCA) solution within the Application Security Testing (AST) market.  GitLab was recently named as a [Challenger in the 2021 Magic Quadrant for Application Security Testing](https://about.gitlab.com/analysts/gartner-ast21/).
