---
layout: handbook-page-toc
title: "Security Logging Overview"
description: "Security Logging supports and develops GitLab's security log ingestion platform."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


## <i class="fas fa-rocket" id="biz-tech-icons"></i> Our Vision
Guarantee that GitLab has the logging data coverage required to:
*  Perform the threat analysis, alerting and threat detections necessary to protect the company and its customers
*  Ensure compliance with internal policies, standards, internal and external audits, and regulatory requirements.
### Our Mission Statement
The team achieves its vision by planing, executing and supporting initiatives
that improve the coverage and usability of security logging data on GitLab.
We manage, maintain, design, configure, and document the necessary tools,
systems and processes to make that happen.

Further details can be found in the [job family description](/job-families/engineering/security-logging/).
## <i class="fas fa-users" id="biz-tech-icons"></i> The Team

### Team Members
The Security Logging Team is part of the Security Engineering & Research sub-department. [See GitLab's organizational chart and meet our team members](https://comp-calculator.gitlab.net/org_chart).

## Responsibilities
The Security Logging Team is responsible for security focused logging, monitoring, and alerting.

### What we are responsible for
The Security Logging Team is responsible for managing, maintaining, designing, configuring, and documenting the necessary tools, systems and processes to support all security logging, monitoring, and alerting needs. This includes but is not limited to the following examples:
* Designing, managing, and maintaining the security logging and monitoring infrastructure
* Ensuring reliability and availability of log data for security purposes
* Owning and maintaining the security logging standard that defines important aspects and requirements of security logging, monitoring, and alerting at GitLab
* Working with our internal GitLab customers to ensure they have the logging data, and access to this data, needed to successfully accomplish the responsibilities of their roles
* Working closely with the Infrastructure team ensuring that log aggregation infrastructure is reliable and available to meet the needs of both Infrastructure and Security
* Building an maintaining a library of logging profiles for various technologies that can used to gather, format, and send logging data to the appropriate log aggregation systems

### What we are _not_ responsible for
The Security Logging Team is not responsible for the logging, monitoring, and alerting data or infrastructure supporting non-security focused needs. This includes but is not limited to the following examples:
* Infrastructure or application logging supporting reliability or availability of GitLab systems
* Responding to or taking action on the security alerts that are generated by the infrastructure and tools owned and maintained by the Security Logging Team
* Remediation of security vulnerabilities found using the infrastructure and tools owned and maintained by the Security Logging Team
* The Security Logging Team does not own the logging data aggregated, stored, or contained within the infrastructure and tools owned and maintained by the Security Logging Team
* The Security Logging Team is not responsible for the endpoint systems from which logging data is gathered


## Working With Us
1. [Create an issue](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/security-logging/security-logging/-/issues) in our issue tracker dedicated to Business as Usual (BAU) activities and general inquiries.
    * It is not necessary to `@mention` anyone. In case you want to mention the whole team, use the TBD handle on GitLab.com.
    * You can also chat with us on Slack in the dedicated `#security-logging` channel or by tagging us TBD.

### How to contact us
The Security Logging Team can be contacted in Slack using the `#security-logging` channel, the `#security` channel, or the `#security-department` channel. You can also contribute, commment, view, or interact with us in our [team repo](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/security-logging/security-logging).

## How We Work
We are an internal customer focused and customer driven team. Our customers drive our priorities and help us define our responsibilities. We work to balance this with a risk based approach aimed at reducing and minimizing security risk at GitLab. Additionally, we embrace the DevOps model, software defined infrastructures, a cloud first approach, modular decoupled architectures, self-serviceability, and automate when and wherever possible.

### Meetings and Scheduled Calls
Our preference is to work asynchronously, within our project issue tracker as described in [the project management section](#project-management) below.

The team does have set of regular synchronous calls:

* A weekly team sync to discuss progress, blockers, and anything related to the InfraSec team.
    * Everyone in the company is welcome to join.
    * The [agenda is public within GitLab](tbd) as well.
* A quarterly team retrospective to reflect on what went well in the previous quarter, and discuss what can be improved going forward.
* 1-1s between Individual Contributors and the Engineering Manager.

### Team Pages
* This [Handbook Page](https://about.gitlab.com/handbook/engineering/security/security-engineering-and-research/security-logging/), which contains general information about the team.
* The [Security-Logging GitLab Sub-Group](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/security-logging/security-logging), which contains EPICs and repositories

### Project Management
We use Epics, Issues, and Issue Boards to organize our work, as they complement each other:

* The single source of truth for engineering work is the [Security-Logging Sub-Group in GitLab](https://gitlab.com/groups/gitlab-com/gl-security/engineering-and-research/security-logging/-/epics). **All Epics will be collected at this level**.
* Having all projects at this level allows us to use a single list for prioritization and enables us to prioritize
work for different services alongside each other.
* Projects are prioritized in line with [tbd](tbd) and with the [🎯 tbd](tbd).
* The [🎯 TBD ](tbd) provide a snapshot of the current progress against each quarter.

#### Team Planning

* For the **long term strategy** of the InfraSec Team, you can refer to:
    * 📊 [Sec-Logging Roadmap](tbd)
    * 🎯 [Sec-Logging OKRs](tbd)
* From a **tactical point of view**, you can refer to:
    * 🎯 [Sec-Logging Milestones (quarterly)](tbd)
    * 🗓 [Sec-Logging Epics for this quarter](tbd)
    * 🎛 [Sec-Logging Initiatives Board](tbd) (for the tasks we are currently working on)


#### Project Ownership
Each project has an owner who is responsible for delivering the project.

The owner needs to:
1. Regularly update the status in the Epic description and milestones.
1. Work with others to move project issues through the boards.

#### Labels

Please use the following labels for **project work only**:

| Label                       | Use Case                                                        |
| --------------------------- | --------------------------------------------------------------- |
| `~"☁️ tbd"`             | Team Label (to be included in every project-related issue)      |
| `~"tbd::triage"`       | For new issues which need to be triaged                         |
| `~"tbd::this-quarter"` | For EPICs committed to the current quarter                      |
| `~"tbd::decision"`     | For issues to be included in the Decision Log                   |

### Design Documents

Before starting a new project, the team is **encouraged**
to define software designs through design docs.
These design doc documents the high level implementation strategy and key design decisions with emphasis on the trade-offs that were considered during those decisions.

To start discussing a new design:
1. [Create a new issue](https://gitlab.com/gitlab-com/gl-security/security-operations/infrastructure-security/team-charter/-/issues/new?issuable_template=design_doc) in the InfraSec Team Charter repo
1. Select the `design_doc` template
1. Fill the data as requested

## Additional Resources

### Onboarding
* Infrastructure Security Team [Onboarding Template](https://gitlab.com/gitlab-com/gl-security/security-operations/infrastructure-security/team-charter/-/blob/master/onboarding/onboarding_template.md)
* [InfraSec Entitlements template](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/blob/master/.gitlab/issue_templates/role_baseline_access_request_tasks/department_security/role_security_engineer_infrastructure_security.md)
