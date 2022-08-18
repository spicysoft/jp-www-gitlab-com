---
layout: handbook-page-toc
title: "Third Party Risk Management"
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

## Purpose 

GitLab's Third Party Risk Management (TPRM) Program helps guard against threats posed by third parties who have direct or indirect access to GitLab and/or Customer/Client data. Risks include data breaches, unauthorized use or disclosure, and corruption or loss of data. Adequate TPRM is a best practice that helps [mitigate security risks](https://about.gitlab.com/handbook/leadership/biggest-risks/#security-breach) and enables GitLab to meet our contractual obligations. TPRM also enables GitLab to meet regulatory requirements and standards related to ISO, SOX, GDPR and other state and federal laws requiring vendor oversight.

GitLab's TPRM program involves three components which are integrated in to our [Procurement](https://about.gitlab.com/handbook/finance/procurement/) processes: 
1. Performing due diligence to ensure the third party implements safeguards to enforce data privacy and security.
    - This activity is performed via our Security Assessment Process. 
1. Contractually obligating the third party to implement these safeguards. 
1. Monitoring third party safeguards and compliance with these contracted provisions.
    - Certain high risk Third Parties are reviewed annually while those posing lower risk are reviewed at the time of contract renewal unless the contract renewal occurs within 12 months of that vendors most recent review.

## Scope

This procedure applies to all third party providers that access, store, process or transmit GitLab data. 

## Roles & Responsibilities

| Role | Responsibility |
| ------ | ------ |
| Security Risk Team | * Maintain a mechanism to intake and respond to TPRM Activities <br><br>* Assess Third Party inherent and residual security risk <br><br>* Inform business owners of the result of TPRM assessments |
| Business or System Owner | * Describe the nature of the Third Party Relationship <br><br>* Work with the Security Risk team to facilitate the TPRM review, to include remediation activities <br><br>* Ensure the responsiveness of the thrid party as part of the security review requirements |
| Security Assurance Management (Code Owners) | Responsible for approving significant changes and exceptions to this procedure | 

## Third Party Minimum Security Standards
At a minimum, third party suppliers are expected to adhere to the [same measures required for GitLab.com](https://about.gitlab.com/handbook/engineering/security/security-assurance/technical-and-organizational-measures.html). TPRM utilizes a risk-based approach when assessing third parties. Specific procedures used to assess different vendor types / risk profiles can be found below.

## Procedure
The diagram below depicts TPRM procedures dependent upon the [Data Classification](https://about.gitlab.com/handbook/engineering/security/data-classification-standard.html) of data shared with the third party.

```mermaid

graph TB
    %% Define all required nodes
            e1[" "]:::empty %% Empty node for padding.
        %% Procurement Intake Channels
            ProcIntake[Purchase Request Created]
            e2[" "]:::empty %% Empty node for padding.

        %% Determining Data Class
            zgOneTrust[Certs in OneTrust Exchange?]
        zgClass{Data Classification}
                    zgGreen[Green]:::Green
                    zgYellow[Yellow]:::Yellow
                    zgOR[Orange/Tier 2 Criticality]:::Orange
                    zgRed[Red/Tier 1 Criticality]:::Red


        %% Data Classification Specific Procedures
            %% Green
                zgGApprov[Security Approves]:::Green

            %% Yellow
                zgNDA[NDA Required]
                zgYApprov[Security Approves]:::Green


            %% Orange
                zgFM{Field Marketing Event?}
                    zgFMY[Yes]
                    zgFMN[No]
                    zgDPA[DPA Required]
                    zgAssess{Third Party Security Assessment Begins}
                        zgQuest[Security Questionnaire Sent]
                        zgTPResponse[Third Party Responds]
                        zgReview[Security Reviews]
                        zgMeets{Response Satisfies GitLab Standards?}
                            zgMeetsNo[No]
                            zgMeetsYes[Yes]
                            zgFup[Follow-up Required]
                        zgIssues{Issues Identified}
                            zgIssueY{Yes}
                            zgIssueN[No]
                            zgAccept[Business Owner Accepts Risk]
                            zgStop[Business Owner Chooses Not to Work with Third Party]
                zgORApprov[Security Approves]:::Green
                zgFMApprov[Security Approves]:::Green

    %% Red
       %% zgAppSec[Application Security Assessment Begins]



    %% Linking nodes together
        ProcIntake-->zgOneTrust
    zgOneTrust-->zgClass

        zgClass --> zgGreen
        zgClass --> zgYellow
        zgClass --> zgOR
    zgClass--> zgRed

        zgGreen --> zgGApprov
        zgYellow --> zgNDA -->zgYApprov
        zgOR --> zgFM
            zgFM --> zgFMY --> zgDPA --> zgFMApprov
            zgFM --> zgFMN --> zgAssess
    zgRed --> zgAssess

        zgAssess --> zgQuest --> zgTPResponse --> zgReview --> zgMeets
            zgMeets --> zgMeetsNo --> zgFup --> zgQuest
            zgMeets --> zgMeetsYes --> zgIssues
                zgIssues --> zgIssueY
                    zgIssueY --> zgAccept --> zgORApprov
                    zgIssueY --> zgStop
                zgIssues --> zgIssueN --> zgORApprov



    %% Clickable Nodes
         click zgOneTrust "https://gitlab.my.onetrust.com/cyber-risk/exchange" _blank
         click ProcIntake "https://about.gitlab.com/handbook/finance/procurement/professional-services" _blank
         %%click zgAppSec "ttps://about.gitlab.com/handbook/engineering/security/security-engineering-and-research/application-security/runbooks/tprm-review-process.html" _blank

    %% Dedicated styling
      %%  classDef clickme fill:#6E49CB,stroke:#88DDFD,stroke-width:4px,color:#FFFFFF;
        classDef Green fill:#A3CC6C,stroke:#A3CC6C,color:#000000;
        classDef Yellow fill:#F9FF33,stroke:#F9FF33,color:#000000;
        classDef Red fill:#DB3B21,stroke:#DB3B21,color:#000000;
        classDef Orange fill:#FFA500,stroke:#FFA500,color:#000000;
        classDef empty opacity:0
```


### TPRM Assessment Requirements

<details>
<summary markdown="span">Requirements by Type and Tier</summary>

Generally, a third party's SOC 2 report, ISO 27001 certification, Standard Information Gathering (SIG) form or equivalent will provide reasonable assurance if the scope provides coverage over the services offered. In the event an attestation is not available, TPRM will provide third parties with a copy of our SIG for completion. See below for details.

| Vendor Type | Red Data | Individual Contractors outside of Assessed Agency | Software Subscription | Professional Service | Individual Contractors through Assessed Agency | Field Marketing | Partners | Yellow Third Parties | Green Third Parties |
|--------------------------------|-----------|--------------|-----------------------|----------------------|------------------------------------------------|--------------------------------|----------------------------------------------------------------------|--------------------------------|---------------------|
| Data Classification            | Red       | Orange | Orange                | Orange               | Orange                                         | Orange                         | Orange                                                               | Yellow                         | Green               |
| Critical System Tiering        | Tier 1    | - | Tier 2                | -                    | -                                              | -                              | -                                                                    | -                              | -                   |
| Application Security Review Required        | Yes    | N/A | Optional                | N/A                    | N/A                                              | N/A                              | N/A                                                                    | N/A                              | N/A                   |
| ZenGRC Template                | Red       | N/A | Orange SaaS           | Orange Svc           | N/A                                            | N/A                            | N/A                                                                  | N/A                            | N/A                 |
| A. Enterprise Risk Management  | SIG Core* | Contract requiring use of GitLab laptop | SIG Lite*             | -                    | Request DPA and NDA from Legal                 | Request DPA and NDA from Legal | Depending upon nature of relationship send either SaaS or Prof Svcs. | Request DPA and NDA from Legal |                     |
| B. Security Policy             | SIG Core* | - | SIG Lite*             | -                    | -                                              | -                              | -                                                                    | -                              | -                   |
| C. Organizational Security     | SIG Core* | - | SIG Lite*             | -                    | -                                              | -                              | -                                                                    | -                              | -                   |
| D. Asset and Info Management   | SIG Core* | - | SIG Lite*             | SIG Lite*            | -                                              | -                              | -                                                                    | -                              | -                   |
| E. Human Resources Security    | SIG Core* | Clean background check and Contractor assigned Security Awareness Training | SIG Lite*             | SIG Lite*            | -                                              | -                              | -                                                                    | -                              | -                   |
| F. Physical and Environmental  | SIG Core* | - | SIG Lite*             | SIG Lite*            | -                                              | -                              | -                                                                    | -                              | -                   |
| G. IT Operations Management    | SIG Core* | - | SIG Lite*             | -                    | -                                              | -                              | -                                                                    | -                              | -                   |
| H. Access Control              | SIG Core* | - | SIG Lite*             | SIG Lite*            | -                                              | -                              | -                                                                    | -                              | -                   |
| I. Application Security        | SIG Core* | - | SIG Lite*             | -                    | -                                              | -                              | -                                                                    | -                              | -                   |
| J. Cybersecurity Incident Mgmt | SIG Core* | - | SIG Lite*             | -                    | -                                              | -                              | -                                                                    | -                              | -                   |
| K. Operational Resilience      | SIG Core* | - | SIG Lite*             | -                    | -                                              | -                              | -                                                                    | -                              | -                   |
| L. Compliance and Ops Risk     | SIG Core* | - | SIG Lite*             | SIG Lite*            | -                                              | -                              | -                                                                    | -                              | -                   |
| M. Endpoint Device Security    | SIG Core* | Evidence of GitLab provisioned laptop | SIG Lite*             | SIG Lite*            | -                                              | -                              | -                                                                    | -                              | -                   |
| N. Network Security            | SIG Core* | - | SIG Lite*             | SIG Lite*            | -                                              | -                              | -                                                                    | -                              | -                   |
| P. Privacy                     | SIG Core* | - | SIG Lite*             | SIG Lite*            | -                                              | -                              | -                                                                    | -                              | -                   |
| T. Threat Management           | SIG Core* | - | SIG Lite*             | SIG Lite*            | -                                              | -                              | -                                                                    | -                              | -                   |
| U. Server Security             | SIG Core* | - | SIG Lite*             | -                    | -                                              | -                              | -                                                                    | -                              | -                   |
| V. Cloud Hosting Services      | SIG Core* | - | SIG Lite*             | -                    | -                                              | -                              | -                                                                    | -                              | -                   |
| Z. Additional Questions        | SIG Core* | - | SIG Lite*             | -                    | -                                              | -                              | -                                                                    | -                              | -                   |

</details>

<details>
<summary markdown="span">Testing Method by Type/Tier</summary>

| Amount of GitLab Team Member Data Shared with Processor | Names  | Contact Information     | Historical Activity     |
|------------------------------------------|-------------------------|-------------------------|-------------------------|
| None                                     | Inquiry Only            | Inquiry Only            | Inquiry Only            |
| Some                                     | TPRM to Consult Privacy | TPRM to Consult Privacy | TPRM to Consult Privacy |
| All                                      | Inspection              | Inspection              | Inspection              |

- Red vendors require inspection at a minimum unless the Red Vendor is a Law Firm that may have legal obligations requiring limited access to red data. As such, Law Firms will be treated as Orange Controllers.
- Orange vendor testing is judgmental 
    - If GitLab team member data is stored/transmitted by a Controller, inquiry only procedures are required
    - If GitLab team member data is stored/transmitted by a Processor, defer to the table below
    - Internal team members can refer to [this document](https://docs.google.com/document/d/1v-qZ7vsc81Qvl9-ERqI6bBZxsrVXOeStSWFnzWamJdI/edit) to learn more about Controllers vs. Processors as defined by GDPR Article 4
- Yellow/green vendors do not require testing 

</details>

### Other Types of Third Party Assessments

#### Third Party Application Integrations

Third party integrations with GitLab's current [tech stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) are also subject to a TPRM assessment process for instances where an integration that is provided by a vendor has not gone through the [standard TPRM Procedure](#procedure). The Team Member Enablement team will not enable third party integrations prior to an assessment being completed as mentioned on the [App Integrations](/handbook/business-technology/team-member-enablement/app-integrations/) handbook page. Details on the level of review performed for this type of request are available in the [Reviewing App Integration Requests runbook](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-risk-team/third-party-vendor-security-management/-/blob/master/Runbooks/reviewing-app-integration-requests.md).

#### Independent Assessments

Want to vet a third party before contract renewals hit Coupa? Would you like to obtain approval for software/services we may purchase at a later date? [Click here to open a new Third Party Risk Assessment](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-risk-team/third-party-vendor-security-management/-/issues/new#).

### TPRM Risk Acceptance Process

Risk acceptance can be pursued when the business acknowledges that potential loss from a risk is not great enough to warrant spending the resources necessary to avoid it. When Risk Acceptance is a viable option TPRM will fill out the [Risk Acceptance Issue template](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-risk-team/third-party-vendor-security-management/-/issues/new#) and assign it to the Business Owner. Note that business justification and [approvals](https://about.gitlab.com/handbook/engineering/security/security-assurance/security-risk/storm-program/storm-methodology.html#accept-the-risk) are required.

There are two TPRM Risk Acceptance types:

1. When business needs dictate that the Security Assesment process is delayed or bypassed (Delay or Bypass TPRM Review)
2. When Observations are identified during a Security Assessment (Accepting Risk Associated to a Known Control Failure)

<details>
<summary markdown="span">1. Risk Acceptance by Type - Delay or Bypass TPRM Review</summary>

If business needs dictate that the Security Assessment process be delayed or bypassed, Security Risk will walk the Business Owner through the following Risk Acceptance Process:

The Business Owner will receive the following prompt:

 - Please navigate to #security-risk-management and initiate the TPRM Risk Acceptance workflow (Click on the blue "lightning bolt" in the bottom left corner of the message box and select TPRM Risk Acceptance).  

Once associated information is submitted, the Security Risk team will review this request.

Security Risk will create a Risk Object in ZenGRC that is mapped to the corresponding Vendor Security Review and Vendor Object for the Risk Acceptance, that will be followed up on towards the end of the Risk Acceptance Period. This Risk Acceptance will follow the acceptance requirements established by the [Security Operational Risk Management Methodology.](https://about.gitlab.com/handbook/engineering/security/security-assurance/security-risk/storm-program/storm-methodology.html#accept-the-risk) 

</details> 


<details>
<summary markdown="span">2. Risk Acceptance by Type - Accepting Risk Associated to a Known Issue</summary>

If the TPRM Security Review concludes with the disclosure of a finding (Observation) due to ineffective control(s) this will be disclosed to the Business Owner. GitLab can then either ask the vendor to remediate prior to onboarding or the GitLab Business Owner can formally accept the associated risk.

Once a risk treatment plan is communicated, Security Risk will create an Issue Object within ZenGRC and assign the Business Owner as the Issue Owner. 

Formal risk acceptance's require approval based on the approval matrix established by the [Security Operational Risk Management Methodology](https://about.gitlab.com/handbook/engineering/security/security-assurance/security-risk/storm-program/storm-methodology.html#accept-the-risk).  These vendors will be tracked on GitLab's risk register and flagged for review on an annual basis. The Business Owner owns this risk.

If moderate or low risk observations are noted during the review process the Business Owner will be informed via the TPRM report and will be responsible for making the decision to move forward with the vendor. These observations will be managed as per the [Observation Management Procedure](https://about.gitlab.com/handbook/engineering/security/security-assurance/security-compliance/observation-remediation-procedure.html).

</details>

Please refer to our [StORM Methodology Handbook](https://about.gitlab.com/handbook/engineering/security/security-assurance/security-risk/storm-program/storm-methodology.html#accept-the-risk) for required approvals based on risk rating (High/Medium/Low) and responsibilities of Accepted Risk Owners and Risk Acceptance Approvers.

### Privacy Review
Privacy review is required for vendors/applications interacting with personal data relating to GitLab team members, vendors, or customers. Inquiries related to privacy controls are included in the Orange/Red TPRM questionnaire template, and are available as a standalone template if needed.

Sign-off of the mapped Privacy Questions Assessment in ZenGRC must be provided by a member of the Privacy/Exports team prior to Security granting approval.

## Exceptions
Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](/handbook/engineering/security/#information-security-policy-exception-management-process).

## References
- Parent Policy: [Information Security Policy](/handbook/engineering/security/)
- [SCF Compliance Controls](/handbook/engineering/security/security-assurance/security-compliance/guidance/compliance.html)
- [Data Classification Standard](/handbook/engineering/security/data-classification-standard.html)
- [Current listing of controlled documents](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-governance/-/issues/42)
- [App Integrations (Team Member Enablement)](/handbook/business-technology/team-member-enablement/app-integrations/)
- [Observation Management Procedure](https://about.gitlab.com/handbook/engineering/security/security-assurance/security-compliance/observation-remediation-procedure.html)
- [STORM Methodology](https://about.gitlab.com/handbook/engineering/security/security-assurance/security-risk/storm-program/storm-methodology.html#accept-the-risk) 
- [Professional Services](https://about.gitlab.com/handbook/finance/procurement/professional-services/#how-do-i-purchase-professional-services-andor-hire-a-contractor)
- [Application Security Assessments](https://about.gitlab.com/handbook/engineering/security/security-engineering-and-research/application-security/runbooks/tprm-review-process.html)
