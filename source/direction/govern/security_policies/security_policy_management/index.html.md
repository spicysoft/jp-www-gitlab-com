---
layout: secure_and_protect_direction
title: "Category Direction - Security Policy Management"
description: "GitLab's Security Policy Management category provides unified policy and alert orchestration capabilities that span across the breadth of GitLab's security offerings."
canonical_path: "/direction/govern/security_policies/security_policy_management"
---

- TOC
{:toc}

## Govern

| | |
| --- | --- |
| Stage | [Govern](/direction/govern/) |
| Maturity | [Minimal](/direction/maturity/) |
| Content Last Reviewed | `2022-07-08` |

### Introduction and how you can help
<!-- Introduce yourself and the category. Use this as an opportunity to point users to the right places for contributing and collaborating with you as the PM -->

<!--
<EXAMPLE>
Thanks for visiting this category direction page on Snippets in GitLab. This page belongs to the [Editor](/handbook/product/categories/#editor-group) group of the Create stage and is maintained by <PM NAME>([E-Mail](mailto:<EMAIL@gitlab.com>) [Twitter](https://twitter.com/<TWITTER>)).

This direction page is a work in progress, and everyone can contribute:

 - Please comment and contribute in the linked [issues](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=snippets) and [epics]((https://gitlab.com/groups/gitlab-org/-/epics?label_name[]=snippets) on this page. Sharing your feedback directly on GitLab.com is the best way to contribute to our strategy and vision.
 - Please share feedback directly via email, Twitter, or on a video call. If you're a GitLab user and have direct knowledge of your need for snippets, we'd especially love to hear from you.
</EXAMPLE>
-->
Thanks for visiting this category direction page on Security Policy Management in GitLab. This page belongs to the Security Policies group of the Govern stage and is maintained by Sam White ([swhite@gitlab.com](mailto:<swhite@gitlab.com>)).

This direction page is a work in progress, and everyone can contribute. We welcome feedback, bug reports, feature requests, and community contributions.

 - Please comment and contribute in the linked [issues](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3ASecurity%20Policy%20Management) and [epics](https://gitlab.com/groups/gitlab-org/-/epics/822) on this page. Sharing your feedback directly on GitLab.com is the best way to contribute to our strategy and vision.
 - Please share feedback directly via email or on a video call. If you're a GitLab user and have direct knowledge of your need for security policies, we'd especially love to hear from you.
- Can't find an issue? Make a [feature proposal](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Feature%20proposal%20-%20detailed) or a [bug report](https://gitlab.com/gitlab-org/gitlab/-/issues/new?&issuable_template=Bug). Please add the appropriate labels by adding this line to the bottom of your new issue `/label ~"devops::govern" ~"Category:Security Policy Management" ~"group::security policies"`.
<!--- https://gitlab.com/gitlab-org/gitlab/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=#) --->
- Consider signing up for [First Look](https://about.gitlab.com/community/gitlab-first-look/).

We believe [everyone can contribute](https://about.gitlab.com/company/mission/#contribute-to-gitlab-application) and so if you wish to contribute [here is how to get started](https://about.gitlab.com/community/contribute/).

### Overview
Security Policy Management is an overlay category that provides policy, alert, and security approval orchestration support for all the scanners and technologies used by GitLab's Secure and Govern stages.  The goal is to provide a single, unified user experience that is consistent and intuitive.

#### Target Audience
<!--
List the personas (https://about.gitlab.com/handbook/marketing/product-marketing/roles-personas#user-personas) involved in this category.

Look for differences in user's goals or uses that would affect their use of the product. Separate users and customers into different types based on those differences that make a difference.
-->
1. [Cameron (Compliance Manager)](https://about.gitlab.com/handbook/marketing/product-marketing/roles-personas/#cameron-compliance-manager)
1. [Devon (DevOps Engineer)](https://about.gitlab.com/handbook/marketing/product-marketing/roles-personas/#devon-devops-engineer)
1. [Alex (Security Operations Engineer)](https://about.gitlab.com/handbook/marketing/product-marketing/roles-personas/#alex-security-operations-engineer)
1. [Delaney (Development Team Lead)](https://about.gitlab.com/handbook/marketing/product-marketing/roles-personas/#delaney-development-team-lead)

### Where we are Headed
<!--
Describe the future state for your category.
- What problems are we intending to solve?
- How will GitLab uniquely address them?
- What is the resulting benefits and value to users and their organizations?

Use narrative techniques to paint a picture of how the lives of your users will benefit from using this
category once your strategy is at least minimally realized. In order to challenge your level of ambition
(with the goal to make it sufficiently high), link to the current market leaders long-term vision and address how
we plan to displace them. -->
The work done in the Security Policy Management category spans three key areas: Security Policy Management, Security Approvals, and Security Alert Management.

#### Security Policy Management - Key goals and guiding principles

1. **Scalability** - Allow organizations with large numbers of projects to centrally manage and enforce when scans are run
1. **Ease of use** - Lower the knowledge requirement to use GitLab’s scanners
1. **Appropriate permissions** - Limit who can make policy changes; support auditing and approvals
1. **Unified experience** - Provide a consistent way to manage policies regardless of scanner or technology type
1. **Flexibility** - Allow users to work in either a GUI or code based on their preferences

#### Security Approvals - Key goals and guiding principles

1. **Ease of use** - Make the entire approval experience from start to finish as easy as possible
1. **Unified experience** - Integrate the security approvals workflow into the rest of the security policy experience
1. **Flexibility** - Allow users to define security approval rules at a granular level so they are only involved when necessary

#### Security Alert Management (planned feature, not currently available) - Key goals and guiding principles

1. **Engage security teams** - build a pathway to get security departments involved in GitLab
1. **Single app vision** - users should not be required to use an external system to view security alerts related to GitLab or their Kubernetes application
1. **Unified experience** - Provide a single location where users can triage, investigate, and respond to security alerts regardless of the underlying technology

## Key Features

### Security Policies

 Security policies allow users to use a single, simple UI to define rules and actions that are then enforced.  Two types of policies are currently supported: scan execution policies and scan result policies.  Scan execution policies allow users to require vulnerability scans to be run, either on a specified schedule or as part of a pipeline job.  Scan result policies allow users to enforce approval on a merge request when new vulnerabilities are detected in the code, or when other security-related criteria is met.  Security policies themselves are fully audited and can be configured to go through a two-step approval process before any changes are made.

[Learn more](https://docs.gitlab.com/ee/user/application_security/policies/)

### Security Approvals

<p align="center">
    <img src="/images/direction/govern/security-approvals.png" style="border: 1px solid gray" alt="Security Approvals">
</p>

Security approvals allow users to select the conditions that must be met to trigger the security approval rule, including which branches, scanners, vulnerability count, and vulnerability severity levels must be present in the MR.  If all conditions are met, then the merge request is blocked unless an eligible user approves the MR. This extra layer of oversight can serve as an enforcement mechanism as part of a strong security compliance program.

Security approvals are a type of Scan Result Security Policy and can be configured in the **Security & Compliance > Policies** page.

[Learn more](https://docs.gitlab.com/ee/user/application_security/policies/scan-result-policies.html)

#### What is our Vision (Long-term Roadmap)

Although this category is new, our vision is broad.  We plan to support both scan schedules and scan result policies for all of GitLab's scanners at the Workspace, Group, and Project levels.  In addition, we intend to add full support for two-step approvals and proper audit trails of any changes made.  In the long-run, we intend to provide visibility into the impact (blast radius) a policy will have before it is deployed, add support for complex orchestration policies, and auto-suggest policies based on your unique environment and codebase.  Policy changes will need to be fully audited and optionally run through a two-step approval process.

Beyond policies, we also intend to add support for an Alert workflow that will allow users to be notified of events that require manual, human review to determine the next steps to take.  This workflow will eventually support auto-suggested responses and recommended changes to policies to reduce false positives and automate responses whenever possible.

The matrixes below describe the scope of the work that is planned in the long-run for the Security Orchestration category as well as our progress toward the end goal.  Eventually we would like to have support for most, if not all of the boxes in the tables below.

![Security Orchestration Tables](/images/direction/govern/security-orchestration-matrixes.png)

#### What's Next & Why (Near-term Roadmap)

Security Policies allow users to require that certain scans are run as part of the project pipeline.  Currently requiring [SAST, Secret Detection, Container Scanning, and DAST scans](https://docs.gitlab.com/ee/user/application_security/policies/scan-execution-policies.html) is supported.  In the GitLab 15.2 release we made [scan execution policies](https://docs.gitlab.com/ee/user/application_security/policies/scan-execution-policies.html) available at the group and sub-group levels.  Next we plan to extend that group and sub-group level support to [scan result policies](https://gitlab.com/groups/gitlab-org/-/epics/7622) as well.  Once that is complete, we will shift our focus to add support for [Dependency Scanning](https://gitlab.com/groups/gitlab-org/-/epics/7669) and SAST and Secret Detection [custom rulesets](https://gitlab.com/groups/gitlab-org/-/epics/7671).

A full list of our near-term priorities is kept up-to-date on our open [priorities issue](https://gitlab.com/gitlab-org/gitlab/-/issues/222791).

#### What is Not Planned Right Now
We do not currently plan to be a full-featured SOAR solution capable of aggregating, correlating, and enriching events from multiple security vendors.  We intend to remain focused on providing security management and security orchestration for the security tools that are part of the GitLab product only.

#### Maturity Plan

This category is currently at Minimal maturity.  A [plan has been created](https://gitlab.com/groups/gitlab-org/-/epics/4595) for the category to progress to Viable maturity.

### User success metrics
<!--
- What specific user behaviors are indicate that users are trying these features, and solving their problems?
- How will users discover these features?
-->
We plan to measure the success of this category based on the total number of users that interact with the Policy and Alert pages in the GitLab UI.

## Competitive Landscape

As this category is new, we are still completing our evaluation of the competitive landscape.

## Analyst Landscape

As this category is new, we have not yet engaged analysts on this topic.
