---
layout: handbook-page-toc
title: "POA&M Vulnerability Deviation Request Procedure"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

<div class="panel panel-gitlab-orange">
**This is a Controlled Document**
{: .panel-heading}
<div class="panel-body">

Inline with GitLab's regulatory obligations, changes to [controlled documents](https://about.gitlab.com/handbook/engineering/security/controlled-document-procedure.html) must be approved or merged by a code owner. All contributions are welcome and encouraged. 

</div>
</div>

---------------------

# Submit a Request!

<div class="flex-row" markdown="0" style="height:80px">
       <a href="https://gitlab.com/gitlab-com/gl-security/security-assurance/security-compliance-commercial-and-dedicated/team-security-dedicated-compliance/poam-deviation-requests/-/issues" class="btn btn-purple-inv" style="width:45%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Click here to submit a Deviation Request!</a>

</div>

## Purpose
In accordance with expectations set by the FedRAMP PMO, GitLab must follow a formal process to manage vulnerability deviation requests (DR) to the [GitLab POA&M (internal only)](https://docs.google.com/spreadsheets/d/1Tj3_vqNp34CSIHZsiSI0eM2zdfG574CD/edit?usp=sharing&ouid=107738356047141217629&rtpof=true&sd=true). Deviation requests for risk adjustments, false positives, and operational requirements require AO approval.  

## Scope
Deviations to control findings and vulnerabilities impactful to the FedRAMP production environment (authorization boundary) to include:
- False positives 
- Risk adjustments 
- Operational requirements
- Vendor dependencies 

Not in scope:
- Date adjustments (not allowed)

## Roles & Responsibilities

| Role | Responsibility |
| ------- | ------- |
| GitLab Team Members | Submit the completed DR using the appropriate GitLab issue template, provide evidence | 
| Security (AppSec or Vuln Management teams) | Complete technical review and approval of DR |
| ISSO (Dedicated Compliance) | Complete compliance review of DR and upgrade to POA&M |
| Authorizing official (AO) | Approve or deny DR (ultimate decision maker) |

## Procedure
Anyone at GitLab can submit a deviation request (DR) via a [GitLab issue in this private project](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-compliance-commercial-and-dedicated/team-security-dedicated-compliance/poam-deviation-requests). Deviation requests must be submitted in a timely manner and should never be used as a method to avoid late SLAs. 

To open the DR the applicable issue template must be selected and all information must be completed prior to submitting the issue for internal review. Each DR will undergo three rounds of review:

1. First a technical review will be completed to ensure the DR is technically required and there are no alternative options. 
1. Second an ISSO review will be completed to determine the level of impact the DR will have on security controls, compensating control opportunities and, if approved, upgrade to the GitLab POA&M.
1. Finally an [authorizing official (AO)](https://csrc.nist.gov/glossary/term/authorizing_official) from our sponsoring Agency will review the request in accordance with the [Continuous Monitoring (ConMon) Guidance](https://www.fedramp.gov/assets/resources/documents/CSP_Continuous_Monitoring_Strategy_Guide.pdf). This is the ultimate decision maker. Note: Risk acceptance by GitLab (the business) is not allowed (i.e. we cannot ignore a legitimate vulnerability) as this responsibility lays with the AO.

If denied, a remediation plan must be developed and this item will remain on the POA&M. 

If approved, the ISSO will notify all involved parties via the GitLab issue with any additional instructions (like updating scanners).

### DR Template Definitions 
The following definitions were adopted from the FedRAMP PMO:
- False Positive (FP): A finding that incorrectly indicates a vulnerability is present, where none actually exists. Justified through documentation and evidence. 
- Risk Adjustment (RA): A reduction in the scanner-cited risk level of a finding. Accomplished through existing or new compensating controls that reduce likelihood and/or impact of exploitation. 
- Operational Requirement (OR): A finding that cannot be remediated, often because the system will not function as intended, or because a vendor explicitly indicated it does not intend to offer a fix to their product. FedRAMP will not approve an OR for a High vulnerability; however, the vendor may mitigate the risk. 
- Vendor Dependency: Something that cannot be fixed due to a vendor dependency. These will remain on the POA&M for tracking until the fix is available. All vendor dependencies at a high risk level must be mitigated to a moderate level
through compensating controls within 30 days. 

### Workflow Labels

The following Deviation Request labels are used to track the Deviation Request's status:
* FedRAMP DR Status::**Ready for review**
* FedRAMP DR Status::**Compliance review**
* FedRAMP DR Status::**AO approved**
* FedRAMP DR Status::**AO denied**

Vulnerabilities progressing through the Deviation Request process will be assigned the product **workflow::verification** label.

### Workflow

| Step | Description | Label applied to the Vulnerability Issue | Label applied to the Deviation Request Issue |
| ------ | ------ | ------ | ------ |
| :one:  | Discover a DR is required for a Vulnerability Issue.    |<br> - `workflow::verification`<br> - `FedRAMP DR Status::Open` | n/a |
| :two:  | Submit a Deviation Request | _label remains unchanged_ |`FedRAMP DR Status::Ready for review` <br> -  (_applied automatically using the issue templates_) |
| :three:  | Perform an internal triage |_label remains unchanged_  |`FedRAMP DR Status::Compliance review` |
| :four:  | Presentation of the review outcome | `FedRAMP DR Status::Closed` | `FedRAMP DR Status::AO approved`, `FedRAMP DR Status::AO denied` |
## Exceptions
There are no exceptions allowed to this procedure. 

## References
- [Vulnerability Management Procedure: Scanners](https://about.gitlab.com/handbook/engineering/security/threat-management/vulnerability-management/)
