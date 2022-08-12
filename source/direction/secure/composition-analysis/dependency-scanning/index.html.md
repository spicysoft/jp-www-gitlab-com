---
layout: markdown_page
title: "Category Direction - Dependency Scanning"
description: "Dependency Scanning is a technique that identifies project dependencies and checks if there are any known, publicly disclosed, vulnerabilities. Learn more!"
canonical_path: "/direction/secure/composition-analysis/dependency-scanning/"
---

<!---  using https://gitlab.com/-/ide/project/gitlab-com/www-gitlab-com/edit/master/-/doc/templates/product/category_direction_template.html.md -->

- TOC
{:toc}

## Sec Section

| | |
| --- | --- |
| Stage | [Secure](/direction/secure/) |
| Maturity | [Viable](/direction/maturity/) |
| Content Last Reviewed | `2022-07-08` |
| Content Last Updated | `2022-07-08` |

### Introduction and how you can help

Thanks for visiting this category direction page on Dependency Scanning at GitLab. This page belongs to the [Composition Analysis](/handbook/product/categories/#composition-analysis-group) group of the [Secure](/direction/secure/) stage and is hiring a new Product Manager. The interim Product Manager is [Sam White](https://gitlab.com/sam.white).

The [Composition Analysis](/handbook/product/categories/#composition-analysis-group) Group's primary focus is moving Dependency Scanning to Complete.

#### Send Us Feedback
We welcome feedback, bug reports, feature requests, and community contributions.

Not sure how to get started?

- Upvote or comment on [proposed Category:Dependency Scanning issues](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=Category%3ADependency%20Scanning) - when you find one similar to what you want, please leave a comment AND upvote it! This helps it to be prioritized, backlog items with few unique individuals commenting are unlikely to get reviewed and prioritized.
- Can't find an issue? Make a [feature proposal](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Feature%20proposal%20-%20detailed) or a [bug report](https://gitlab.com/gitlab-org/gitlab/-/issues/new?&issuable_template=Bug). Please add the appropriate labels by adding this line to the bottom of your new issue `/label ~"devops::secure" ~"Category:Dependency Scanning" ~"group::composition analysis" ~"type::feature"`.
<!--- https://gitlab.com/gitlab-org/gitlab/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=#) --->
- Consider signing up for [First Look](https://about.gitlab.com/community/gitlab-first-look/).

Sharing your feedback directly on GitLab.com is the best way to contribute to our direction.

We believe [everyone can contribute](https://about.gitlab.com/company/mission/#contribute-to-gitlab-application) and so if you wish to contribute [here is how to get started](https://about.gitlab.com/community/contribute/).

### Overview
<!-- A good description of what your category is today or in the near term. If there are
special considerations for your strategy or how you plan to prioritize, the
description is a great place to include it. Provide enough context that someone unfamiliar
with the details of the category can understand what is being discussed. -->
Dependency Scanning is a technique that identifies project dependencies and checks if there are any known, publicly disclosed, vulnerabilities in those components that may affect the main application.

> GitLab was named as a [Challenger in the 2021 Magic Quadrant for Application Security Testing](https://about.gitlab.com/analysts/gartner-ast21/).

Applications define which package they require, and the version that is used. Dependency Scanning leverages the [GitLab Advisory Database](https://about.gitlab.com/direction/secure/vulnerability-research/advisory-database/) to check if any of these dependencies have known vulnerabilities, and it indicates if a package upgrade is needed.

Dependency Scanning is very dependent not only on the programming languages, but also on the package manager. You can read our user documentation to see what [languages and package managers are currently supported](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/#supported-languages-and-package-managers). Different package managers have different repositories and ways to keep track of versions.

Our goal is to provide Dependency Scanning as part of the standard development process so that we are proactively identifying potential vulnerabilities and weaknesses as they are introduced, to the person who introduced them. Dependency Scanning results can be consumed in the merge request, where only new vulnerabilities, introduced by the new code, are shown. This means that Dependency Scanning is executed every time a new commit is pushed to a branch. This should allow for findings to be reviewed and resolved before having the opportunity to make it into production. Where possible we provide [Automatic Remediation](https://docs.gitlab.com/ee/user/application_security/index.html#automatic-remediation-for-vulnerabilities) for a found vulnerability. For those who wish to require additional review when critical or high vulnerabilities are found, you can enable [Security Approvals in Merge Requests](https://docs.gitlab.com/ee/user/application_security/index.html#security-approvals-in-merge-requests). We include Dependency Scanning as part of [Auto DevOps](https://docs.gitlab.com/ee/topics/autodevops/).

#### Target Audience
<!--
List the personas (https://about.gitlab.com/handbook/marketing/strategic-marketing/roles-personas#user-personas) involved in this category.

Look for differences in user's goals or uses that would affect their use of the product. Separate users and customers into different types based on those differences that make a difference.
-->
Primary: [Sasha (Software Developer)](https://about.gitlab.com/handbook/product/personas/#sasha-software-developer) wants to know when adding a dependency if it has known vulnerabilities so alternate versions or dependencies can be considered.

Secondary: [Sam (Security Analyst)](https://about.gitlab.com/handbook/product/personas/#sam-security-analyst0) wants to know what dependencies have known vulnerabilities (to reduce the OWASP A9 risk - Using Components with Known Vulnerabilities), to be alerted if a new vulnerability is published for an existing component, and how behind current version the components are.

Other: [Cameron (Compliance Manager)](https://about.gitlab.com/handbook/product/personas/#cameron-compliance-manager), Delaney (Development Team Lead), Devon (DevOps Engineer), Sidney (Systems Administrator)

### Where we are Headed

Our vision for dependency scanning is to provide the ability to scan application dependencies with as little user friction as possible.

### Key features

Currently we notify developers when they add dependencies [in these supported languages](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/#supported-languages-and-package-managers) with known vulnerabilities in the [GitLab Advisory Database](https://docs.gitlab.com/ee/user/application_security/index.html#maintenance-and-update-of-the-vulnerabilities-database), if [security approvals](https://docs.gitlab.com/ee/user/application_security/index.html#security-approvals-in-merge-requests) are configured, we will require an approval for critical, high or unknown findings. A summary of all findings for a project can be found in the [Security Dashboard](https://docs.gitlab.com/ee/user/application_security/security_dashboard/index.html) where Security Teams can quickly check the security status of projects, and the [Dependency List](https://docs.gitlab.com/ee/user/application_security/dependency_list/index.html). For limited package managers, we are able to offer [auto-remediation](https://docs.gitlab.com/ee/user/application_security/index.html#solutions-for-vulnerabilities-auto-remediation) recommendations for the findings.

- [13 Supported Package Managers (11 languages)](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/#supported-languages-and-package-managers)
- [Shows finding information in the merge request](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/#overview)
- [Merge Request Approvals](https://docs.gitlab.com/ee/user/application_security/index.html#security-approvals-in-merge-requests)
- [CycloneDX Software Bill of Materials (SBoM) export](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/#cyclonedx-software-bill-of-materials)
- [Dependency List](https://docs.gitlab.com/ee/user/application_security/dependency_list/index.html)
- [Security Dashboard](https://docs.gitlab.com/ee/user/application_security/security_dashboard/index.html) available at the Project, Group, and Instance levels
- [Auto-remediation](https://docs.gitlab.com/ee/user/project/merge_requests/#solutions-for-dependency-scanning) leverages Dependency Scanning to provide a solution for vulnerabilities that can be applied to fix the codebase.

#### What is our Vision (Long-term Roadmap)

To reach the [Complete Maturity](/direction/maturity/) level, we will need to accomplish the following.  Epics and issues for most of these items can be found nested in the either the Dependency Scanning [Viable to Complete](https://gitlab.com/groups/gitlab-org/-/epics/1664) or [Complete to Lovable](https://gitlab.com/groups/gitlab-org/-/epics/2725) epics.  The items below are grouped thematically and are not in priority order.  Priorities for these items can be found on our always-open [priorities issue](https://gitlab.com/gitlab-org/gitlab/-/issues/361784).

- Continuous scanning
   - [Continuous vulnerability scans](https://gitlab.com/groups/gitlab-org/-/epics/7886)
   - Alert when the advisory database is updated and new vulnerabilities are detected in previously scanned code (Epic/Issue creation in progress)
- Better dependency management
   - [Group/Sub-group dependency list](https://gitlab.com/groups/gitlab-org/-/epics/8090)
   - [Dependency list filtering and searching](https://gitlab.com/groups/gitlab-org/-/epics/8089)
   - [Dependency list grouping](https://gitlab.com/groups/gitlab-org/-/epics/8091)

In addition to this work, we also need to expand our language support, improve the configurability of the scanner, and provide better [dependency graph visualizations](https://gitlab.com/groups/gitlab-org/-/epics/3858).  With a few exceptions, this work generally falls lower in priority compared to the items listed above.

#### What's Next & Why
<!-- This is almost always sourced from the following sections, which describe top
priorities for a few stakeholders. This section must provide a link to an issue
or [epic](https://about.gitlab.com/handbook/product/product-processes/#epics-for-a-single-iteration) for the MVC or first/next iteration in the category.-->

<!-- This is almost always sourced from the following sections, which describe top
priorities for a few stakeholders. This section must provide a link to an issue
or [epic](https://about.gitlab.com/handbook/product/#epics-for-a-single-iteration) for the MVC or first/next iteration in the category.-->

Currently the dependency list view in GitLab is parsed from artifact files.  Use of artifact files is not scalable long-term as a datastore, especially when introducing searching, grouping, filtering, and group/sub-group level dependency management.  Consequently, our first priority is to store the dependency list in the database.  This work is being done as part of our efforts to introduce [continuous vulnerability scans](https://gitlab.com/groups/gitlab-org/-/epics/7886).

#### What is Not Planned Right Now
<!-- Often it's just as important to talk about what you're not doing as it is to
discuss what you are. This section should include items that people might hope or think
we are working on as part of the category, but aren't, and it should help them understand why that's the case.
Also, thinking through these items can often help you catch something that you should
in fact do. We should limit this to a few items that are at a high enough level so
someone with not a lot of detailed information about the product can understand.-- > ----->


#### Maturity Plan
<!-- It's important your users know where you're headed next. The maturity plan
section captures this by showing what's required to achieve the next level. The
section should follow this format:

This category is currently at the XXXX maturity level, and our next maturity target is YYYY (see our [definitions of maturity levels](https://about.gitlab.com/direction/maturity/)).

- Link to maturity epic if you are using one, otherwise list issues with maturity::YYYY labels) -->
This category is currently at Viable maturity.  A [plan has been created](https://gitlab.com/groups/gitlab-org/-/epics/1664) for the category to progress to Complete maturity.

 ### User success metrics
<!--
- What specific user behaviors are indicate that users are trying these features, and solving their problems?
- How will users discover these features?
-->
We track the unique number of users who run at least one dependency scanning job each month to measure our usage and success.

### Why is this important?
<!--
- Why is GitLab building this feature?
- What impact will it have on the broader devops workflow?
- How confident are we? What is the effort?
-->
In addition to being [A9 Using Components with Known Vulnerabilities](https://owasp.org/www-project-top-ten/OWASP_Top_Ten_2017/Top_10-2017_A9-Using_Components_with_Known_Vulnerabilities) in the OWASP top 10, keeping dependencies up to date is code quality issue, and finally as the need for software bill of materials (SBoM) grows being able to list your dependencies will become a needed feature for all application developers.

### Competitive Landscape
<!-- The top two or three competitors, and what the next one or two items we should
work on to displace the competitor at customers, ideally discovered through
[customer meetings](https://about.gitlab.com/handbook/product/product-processes/#customer-meetings). We’re not aiming for feature parity with competitors, and we’re not just looking at the features competitors talk
about, but we’re talking with customers about what they actually use, and
ultimately what they need.-->

- [Black Duck by Synopsys](https://www.blackducksoftware.com/solutions/application-security)
- [CA Veracode](https://www.veracode.com/security/)
- [Contrast](https://www.contrastsecurity.com/open-source-security-software)
- [Datadog](https://www.datadoghq.com/)
- [GitHub](https://github.com/)
- [greenkeeper](https://greenkeeper.io/)
- [HCL AppScan](https://www.hcltechsw.com/wps/portal/products/appscan/features)
- [JFrog Xray](https://jfrog.com/xray/)
- [Micro Focus Fortify](https://www.microfocus.com/en-us/portfolio/application-security)
- [Snyk](https://snyk.io/product/)
- [Sonatype Nexus](https://www.sonatype.com/nexus-auditor)
- [Whitesource](https://www.whitesourcesoftware.com/open-source-security/)

### Analyst Landscape
<!-- What analysts and/or thought leaders in the space talking about, what are one or two issues
that will help us stay relevant from their perspective.-->

Dependency Scanning is frequently bundled together with Container Scanning and License Compliance to provide an overall Software Composition Analysis (SCA) solution within the Application Security Testing (AST) market.  GitLab was recently named as a [Challenger in the 2021 Magic Quadrant for Application Security Testing](https://about.gitlab.com/analysts/gartner-ast21/).
