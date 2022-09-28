---
layout: handbook-page-toc
title: "Security Assurance"
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview
As a member of the [Engineering](/handbook/engineering/) organization and the greater [Security department](/handbook/engineering/security/#assure-the-customer), the Security Assurance sub-department provides GitLab customers with a high level of assurance around the security of GitLab service offerings.

There five teams in the Security Assurance sub-department.

## <i id="biz-tech-icons" class="fas fa-tasks"></i>Security Assurance Sub-Department

<table id="core-competencies">
  <tr>
    <th>
        <i class="fas fa-hands-helping i-bt"></i>
        <h5>Governance & Field Security</h5>
    </th>
    <th>
        <i class="fas fa-bullseye i-bt"></i>
        <h5>Security Compliance</h5>
    </th>
    <th>
        <i class="fas fa-shield-alt i-bt"></i>
        <h5>Security Risk</h5>
    </th>
  </tr>
  <tr>
      <td>
        <ul>
            <li><a href="/handbook/engineering/security/security-assurance/governance/"> Governance Team Page </a></li>
            <li><a href="/handbook/engineering/security/security-assurance/field-security/"> Field Security Team Page </a></li>
        </ul>
      </td>
      <td>
        <ul>
            <li><a href="/handbook/engineering/security/security-assurance/security-compliance/"> Security Compliance, Commercial Team Page </a></li>
            <li><a href="/handbook/engineering/security/security-assurance/dedicated-compliance/"> Security Compliance, Dedicated Team Page </a></li>
        </ul>
      </td>
      <td>
        <ul>    
            <li><a href="/handbook/engineering/security/security-assurance/security-risk/"> Security Risk Team Page </a></li>
        </ul>
      </td>
  </tr>
</table>

## <i class="fab fa-gitlab fa-fw" style="color:rgb(107,79,187); font-size:.85em" aria-hidden="true"></i> Core Competencies of Security Assurance Teams

### Field Security Core Competencies 
* [Sales Training (Security)](/handbook/sales/onboarding/sqs-learning-objectives/)
* [Sales Enablement (Security)](https://about.gitlab.com/handbook/engineering/security/security-assurance/field-security/Field-Security-RFP.html)
* [Customer Assurance (Security)](https://about.gitlab.com/security/cap)
* Security Evangelization 

### Security Governance Core Competencies 
* [Security Policies, Standards and Control maintenance](https://about.gitlab.com/handbook/engineering/security/controlled-document-program.html) 
* Security Assurance Metrics
* [Security Awareness and Training](/handbook/engineering/security/security-assurance/governance/sec-awareness-training.html)
* Regulatory Landscape Monitoring 
* Security Assurance Application Administration 

### Security Risk Core Competencies 
* [Third Party Risk Management](/handbook/engineering/security/security-assurance/security-risk/third-party-risk-management.html)
* [Tier 2 Operational Security Risk Management](/handbook/engineering/security/security-assurance/security-risk/storm-program/index.html)

### Security Compliance, Commercial Core Competencies 
* [GitLab.com Production Continuous Control Monitoring/Auditing](/handbook/engineering/security/security-assurance/security-compliance/sec-controls.html)
* [GitLab.com Security Certifications](/handbook/engineering/security/security-assurance/security-compliance/certifications.html)
* [GitLab.com Production & SOX ITGC User Access Reviews](https://about.gitlab.com/handbook/engineering/security/security-assurance/security-compliance/access-reviews.html)
* [Tier 3 Observation Management](/handbook/engineering/security/security-assurance/observation-management-procedure.html)

### Security Compliance, Dedicated Core Competencies 
* [GitLab Dedicated Production Continuous Control Monitoring/Auditing](https://docs.gitlab.com/ee/subscriptions/gitlab_dedicated/)
* [GitLab Dedicated Security Certifcations](https://about.gitlab.com/handbook/engineering/security/security-assurance/dedicated-compliance/certifications.html)
* [GitLab Dedicated User Access Reviews](https://about.gitlab.com/handbook/engineering/security/security-assurance/security-compliance/access-reviews.html)
* [Tier 3 Observation Management](/handbook/engineering/security/security-assurance/observation-management-procedure.html)

## <i id="biz-tech-icons" class="far fa-newspaper"></i>Core Tools and Systems

The Security Assurance sub department utilizes a variety of tools to carry out day to day activities. The system admin is responsible for the following:

- Configuration changes
- Onboarding/offboarding/transfers (ie Access)
- Upgrades/patching/incidents
- Migrations to new environments
- Restores from backup
- Admin level audit evidence
- Quality oversight (limited scope)

All other actions are the responsibility of the assigned DRI. 

| System Name | System Description | Admin | DRI |
|---------|-------------|---------------|---------|
| [ZenGRC](/handbook/business-technology/tech-stack/#zengrc) | Key system utilized for initiating, tracking/documenting, and completing Governance, Risk, and Compliance related activities. Access is provided as a standard [baseline entitlement for all team members](/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/baseline-entitlements/#baseline-entitlements-all-gitlab-team-members). Refer to the [ZenGRC FAQ](/handbook/engineering/security/security-assurance/zg-faq.html) and [ZenGRC Activities](/handbook/engineering/security/security-assurance/zg-activities.html) handbook pages for additional information. | [Rupal Shah](@rcshah) | * Security Compliance - [Madeline Lake](@madlake) <br><br> * Security Risk - [Ty Dilbeck](@tdilbeck) |
| [Anecdotes](https://www.anecdotes.ai/)  | Key system utilized for Compliance automation | [Rupal Shah](@rcshah) | [Byron Boots](@byronboots) |
| [Authomize](https://www.authomize.com/) | Key system utilized by Security Compliance for [User Access Reviews](/handbook/engineering/security/security-assurance/security-compliance/access-reviews.html) | [Rupal Shah](@rcshah) | [Alex Frank](alexfrank09) |
| [OneTrust Vendorpedia QRA](/handbook/business-technology/tech-stack/#onetrust) | Key system utilized for Privacy, Security, and Data Governance for completing customer questionnaires | [Rupal Shah](@rcshah) | [Marie-Claire Cerny](@marieclairecerny) |
| [OneTrust Vendorpedia Exchange](/handbook/business-technology/tech-stack/#onetrust) | System utilized for Privacy, Security, and Data Governance for TPRM | [Rupal Shah](@rcshah) | [Ty Dilbeck](@tdilbeck) |
| [ProofPoint](/handbook/business-technology/tech-stack/#proofpoint) | Key system utilized for the creation and distribution of our security training and phishing simulations to provide ongoing testing for adherence of various compliance frameworks. | [Rupal Shah](@rcshah) | [Rupal Shah](@rcshah) |
| [BitSight](/handbook/engineering/security/security-assurance/field-security/independent_security_assurance.html) | Independent Security Rating Platform configured to monitor GitLab's security, identify potential vulnerabilities, and benchmark our security against our competitors. Additionally, BitSight is used to assess and monitor software vendors as part of our Third Party Risk Management Program. | [Rupal Shah](@rcshah) | [Jeff Burrows](@jburrows001) |
| [GitLab](/handbook/business-technology/tech-stack/#gitlab) - Security Assurance Projects | Primarily used to engage stakeholders via issues, updates to Security Assurance related handbook pages, etc. | [Julia Lake](@julia.lake) | Each Team is responsible for their Projects, but everyone can contribute |

## <i id="biz-tech-icons" class="fas fa-users"></i>Contacting the Team

* Join our slack channel: #sec-assurance
* Email: <security-assurance@gitlab.com>

## <i class="fas fa-book" style="color:rgb(110,73,203)" aria-hidden="true"></i> References

Check out these great security resources built with our customers in mind: 

* GitLab's [Customer Assurance Package](https://about.gitlab.com/security/cap/)
* GitLab's [Security - Trust Center](https://about.gitlab.com/security/)
* GitLab's [Security Team Page](/handbook/engineering/security/) 
