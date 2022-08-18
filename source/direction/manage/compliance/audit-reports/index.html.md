---
layout: markdown_page
title: "Category Direction - Audit Reports"
description: "Within GitLab, Audit Reports should be easily accessible and provide the necessary information for an internal or external auditor to review. Learn more!"
canonical_path: "/direction/manage/compliance/audit-reports/"
---

- TOC
{:toc}

## Audit Reports

| **Stage** | **Maturity** | **Content Last Reviewed** |
| --- | --- | --- |
| [Manage](/direction/dev/#manage) | [Minimal](/direction/maturity/) | `2022-03-04` |

### Overview

Organizations operating in regulated industries have an obligation to report on their compliance. This could be to external auditors, internal auditing teams, an information security team, regulators or executive leadership. These reports usually manifest as evidence artifacts such as logs, configurations, access lists, screenshots and more. The process of finding, aggregating and compiling this information is time-consuming and tedious. In many cases, the person responsible for managing the audit or compliance program doesn't have the expertise, access or tools necessary to build scripts and other services to simplify these tasks. Even if they did, that's still an investment of time away from other value-adding activities.

Comprehensive **Audit Reports** are necessary to satisfy the needs of an organization managing a compliance program. These reports serve both internal stakeholders like an audit team or executive management; they also serve external auditors conducting the audit.
The **Audit Reports** category seeks to provide you with the tools and features you need to quickly and easily generate audit reports, in a format that works for auditors, out of the box.

##### Use Cases

* [Cameron (Compliance Manager)](https://about.gitlab.com/handbook/product/personas/#cameron-compliance-manager) needs to provide a report of all [users showing their group and project memberships](https://gitlab.com/groups/gitlab-org/-/epics/3155) to the internal audit team for a quarterly access review so the team can audit compliance with the organization's internal access policy.
* [Cameron (Compliance Manager)](https://about.gitlab.com/handbook/product/personas/#cameron-compliance-manager) needs to [export audit events as a csv](https://gitlab.com/gitlab-org/gitlab/issues/1449) to provide this evidence artifact to an external auditor, so the organization can mark a specific compliance control complete.
* [Cameron (Compliance Manager)](https://about.gitlab.com/handbook/product/personas/#cameron-compliance-manager) needs to generate a [compliance status report](https://gitlab.com/gitlab-org/gitlab/-/issues/220235) for their GitLab groups to share with their executive leadership team so the organization can make informed decisions about the compliance program or potential audits.

#### Target Audience

* [Cameron (Compliance Manager)](https://about.gitlab.com/handbook/product/personas/#cameron-compliance-manager)

#### Challenges to address

GitLab is a large application with many moving parts. This means you need to dig into many projects, audit logs, settings, or other resources to get the data you need as audit evidence. This is challenging, requires a lot of time, and each compliance requirement will need different types of evidence. Taking screenshots, combing through logs and walking an auditor through processes might sound like fun, but in reality, it's an experience full of friction.

* What success looks like: GitLab should provide a variety of audit reports that are accessible from a single location within the application. These reports should be comprehensive for each domain they cover (e.g. access control, segregation of duties, system logging) with a level of granularity that organizations need to pass an audit with a much smaller time investment and with fewer gaps or follow-up questions from an auditor.

Your organization is complex with policies and procedures to follow. Correlating those activities to specific GitLab functionality is difficult. Your auditors will audit your operations against the policies your organization defines. This means the audit can be inherently complex too. **Audit Reports** should work out of the box for your specific needs. This means the reports should be customizable. Every audit is different and no single report will satisfy 100% of an auditor's questions. You need to be able to customize these reports to suit your auditor and your business requirements.

* What success looks like: **Audit Reports** should provide an experience to customize a unique report that an organization can tailor to their needs. You should be able to compile all of your GitLab audit reports into a single, large report to quantify the compliance posture of your GitLab instance or group. This report should be strategically formatted so it's easy to digest for you, auditors, and management. These reports should be customizable enough to omit sensitive information and instead provide a link, such as SHA hash, to the sensitive information itself to enable showing broader audiences that your organization remains compliant without needing to disclose potentially sensitive information.

### Where we are Headed

Audits are about showing an auditor your organization's policies and procedures (what your organization says it's doing) and demonstrating those policies and procedures in action. An auditor will initially scope the policies, procedures, systems, and other areas to be covered and then use this information to guide the audit. If an organization claims that every visitor must sign in and sign out, the auditor will ask to see that process, see the activity in action, and then ask for evidence of that activity happening outside of the audit. These are general assertions since every audit is different.

With the varied nature of audits, GitLab is focused on building a comprehensive audit report that satisfies as many scenarios as we can. We'd like to ensure the audit reports you generate within GitLab contain, at a minimum, the following elements:

* [Chain of Custody](https://docs.gitlab.com/ee/user/compliance/compliance_dashboard/#chain-of-custody-report): Everything you need to know about a specific release, such as issues, MRs, pipelines, approvers, committers, groups and projects, with timestamps and user attribution.
* User Access: A list of all users and their respective group and project access. This should answer most questions for your access policies.
* Audit Events: Instead of building custom scripts, an audit events report should be available for specific date ranges or events that can be produced ad-hoc for an auditor.
* Compliance Posture: If a project is regulated by SOX, you should be able to generate a report to show you the overall compliance status of that project, relative to specific SOX requirements, and the GitLab settings and configurations that may suffice for the control.

In the spirit of iteration, we'll be focused on building MVCs for each of these reports and then leverage customer feedback to determine how best to improve them and consolidate them into a single, thorough report.

We will also focus on how we can collaborate with other groups in GitLab around how existing capabilities could be used in context of audit reporting. One example of this is [Runbooks](https://about.gitlab.com/direction/monitor/debugging_and_health/runbooks/), where we are considering how we could use a runbook to help both auditors conducting an audit follow a standard process as well as help teams being audited ensure they are prepared for the audit.

### What we are not Doing

GitLab will not focus on providing reporting on activities that are done outside of GitLab. For example, we do not plan on pulling data from third-party systems, like HR portals, disaster recovery runbooks, or employee handbooks, to create audit reports.

GitLab will not provide reporting that suggests an organization is fully compliant with a given framework and will instead focus on providing reports that help compliance
teams better understand their compliance posture. This in line with our [Compliance Toolbox](/direction/manage/compliance/compliance-management/#the-compliance-toolbox) approach, since every individual organization will have unique needs and requirements that are agreed to with its auditors.

### What's Next & Why

In the GitLab [14.2](https://gitlab.com/groups/gitlab-org/-/milestones/63) release we added the ability to export a [user access report](https://docs.gitlab.com/ee/user/group/#export-members-as-csv).

We recently made these audit events easier to consume by allowing users to [stream audit events to an external service](https://gitlab.com/groups/gitlab-org/-/epics/6122) beginning in the GitLab [14.7](https://gitlab.com/groups/gitlab-org/-/milestones/68) release. This will help users who need to combine our events with other data streams for analysis.  Work is planned for the [14.9](https://gitlab.com/groups/gitlab-org/-/milestones/71) release to introduce a new GUI that makes it easy to [add new endpoints](https://gitlab.com/groups/gitlab-org/-/epics/6291) to receive these streaming audit events.

We are also investigating how to make the user access report more [accurately reflect inherited roles](https://gitlab.com/gitlab-org/gitlab/-/issues/343859) even after those roles are changed at the group level.

#### Audit Events

We've added an option to [export instance-level audit events to csv](https://docs.gitlab.com/ee/administration/audit_events.html#export-to-csv) for self-managed administrators, but this leaves a gap for SaaS customers. We now need to focus our attention on bringing feature parity to the [group level](https://gitlab.com/gitlab-org/gitlab/-/issues/331157) and [project level](https://gitlab.com/gitlab-org/gitlab/-/issues/331158) to ensure all GitLab customers have access to this export functionality for audit events. This will enable all customers to easily export, parse, and analyze the data they need to investigate an incident, provide the evidence artifact to auditors, or analyze specific activity within their instance for compliance management.

#### User Access

Users can easily generate an exportable user access report at the [instance](https://docs.gitlab.com/ee/user/admin_area/#user-permission-export) level which includes a list of all users along with the groups, subgroups, and projects for which they have been given direct access rights.

Users can also export a membership list and access report at the [group and subgroup](https://docs.gitlab.com/ee/user/group/#export-members-as-csv) levels for details on users who have access to those groups.

#### Chain of Custody

Compliance-minded organizations are required to trace the chain of custody of any particular change to their production environment. We've introduced an [MVC report](https://docs.gitlab.com/ee/user/compliance/compliance_dashboard/#chain-of-custody-report) for this feature and will continue to [iterate on it](https://gitlab.com/groups/gitlab-org/-/epics/2994) to meet a growing list of requirements from our compliance-minded customers.

##### Maturity

Audit Reports is currently in the **minimal** state. You can follow the **viable** maturity plan in [this epic](https://gitlab.com/groups/gitlab-org/-/epics/2955).

Advancing Audit Reports to the **complete** state requires additional export options and add in-app experiences that solve additional problems around audit reporting. Our current plan is to achieve this state by adding additional reports for the following: 

* a chain of custody report for projects
* a compliance report for all regulated projects in a group
* a comprehensive, single report containing all existing GitLab audit report data

To compliment these reports, we believe audit reporting should also be visual to serve as an executive summary for leadership or even for the day-to-day administrators of GitLab. Finding the information you need, and know you have, shouldn't be hard. It should be easy to find, easy to read, and easy to work with. Exporting this data can serve as an evidence artifact for audits, but simply reviewing the data and making data-informed decisions based on that data is also critical. By building a nice, intuitive visual reporting experience we believe we can make managing your audit reports in GitLab a lot better.

### User Success Metrics

We'll know we're on the right track with **Audit Reports** based on the following metrics:

* An increase in the number of [audit events csv exports](https://docs.gitlab.com/ee/administration/audit_events.html#export-to-csv)
* An increase in the number of [user access csv exports](https://gitlab.com/groups/gitlab-org/-/epics/3155)
* An increase in traffic to the user access [custom API endpoint](https://docs.gitlab.com/ee/administration/audit_reports.html#apis)

### Competitive landscape

XebiaLabs is an end-to-end devops orchestration and reporting platform that provides a particularly compelling feature: [release audit report](https://docs.xebialabs.com/v.9.5/xl-release/concept/release-audit-report/). [This report](https://gitlab.com/gitlab-org/gitlab/-/issues/122609) is designed to aggregate the most important data about a release so a user can serve this up as an evidence artifact to auditors. To be competitive, GitLab should provide reports like these that save users time and headache from having to find and aggregate this data themselves.

With GitLab's unified data model as a complete DevOps platform, we have the ability to compile reports that are not only great as evidence artifacts, but reports that can provide derived insights to customers such as a group or project's compliance status and relate customers' internal systems to GitLab for a more comprehensive audit report.

Remaining competitive in this space means providing a first class experience for audit reports. Release:Release Management's efforts in [Release Orchestration](https://about.gitlab.com/direction/release/release_orchestration/) and Ops:Package's efforts in [Release Evidence](https://about.gitlab.com/direction/package/#release-evidence) are both great steps in this direction. With [additional reporting capabilities](https://gitlab.com/groups/gitlab-org/-/epics/2301) and a focus on integrating third-party services, customers' internal systems, and other GitLab reports, we can provide a comprehensive audit report that should do much of the heavy lifting for compliance professionals and auditors.

### Analyst landscape

We've spoken with a few analysts and they have shared similar insights about the opportunities ahead for `Audit Reports`. What they've told us:

* Reducing the time involved with generating audit reports - moving [Cameron](https://about.gitlab.com/handbook/product/personas/#cameron-compliance-manager) away from "reactive mode" - is a big opportunity
* We already generate a lot of relevant data that's useful for compliance reports. We should aggregate that data in a meaningful way to save Cameron the time and effort involved with generating those reports
* Showing how upstream changes, e.g. changes in a compliance framework, impact a local environment's compliance report will be particularly valuable
* Our reports should be more accurate than the current, manual processes Cameron uses, which will be critical for establishing trust in our report accuracy and reliability
* The main value offered by `Audit Reports` is saving a person's time having to check and double-check the report contents. That time could be reallocated to other value-adding activities
* Reports should demonstrate how specific GitLab settings map to specific compliance frameworks and their controls
* Making `Audit Reports` self-service for auditors, alleviating systems administrators from having to perform these tasks, is how the market is moving

**What this means for our direction:** This analyst feedback is closely aligned with our current direction, particularly with respect to reducing the amount of time [Cameron](https://about.gitlab.com/handbook/product/personas/#cameron-compliance-manager) spends finding and generating audit reports, leveraging the data we already generate for this compliance context, allowing Cameron to refocus their saved time on other, value-adding activities, and making `Audit Reports` as self-service as possible for both Cameron and their auditor(s).

The remaining opportunities, such as showing upstream compliance framework changes in `Audit Reports`, ensuring reporting accuracy, and providing a tangible map of GitLab settings and configurations to specific compliance framework requirements are currently on our minds but are more closely aligned with a 3-year vision. We do not expect to make any substantial changes to our current direction based on this feedback given how closely aligned it is. Our current sensing mechanisms from customers, combined with this analyst feedback, suggests we're currently prioritizing the right aspects of `Audit Reports` and on the right timelines.

### Top Customer Success/Sales issue(s)


### Top user issue(s)

* [User access report](https://gitlab.com/groups/gitlab-org/-/epics/3155)
* [Chain of custody report](https://gitlab.com/groups/gitlab-org/-/epics/2994)

