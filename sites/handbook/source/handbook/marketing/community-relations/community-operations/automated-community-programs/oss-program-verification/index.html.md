---
layout: handbook-page-toc
title: "GitLab for Open Source Program Verification"
description: "This page contains details regarding the verification process for the GitLab for Open Source program."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Overview
This page contains details regarding the verification process for [GitLab for Open Source Program](/solutions/open-source/) applications. GitLab uses a third party, [SheerID](https://www.sheerid.com/), for verification services.

Please see the [Community Programs Automation Workflow](/handbook/marketing/community-relations/community-operations/automated-community-programs/#automated-application-workflow) for details on the full application process.

## GitLab for Open Source Program requirements and verification
SheerID is not able to completely automate the [Verification phase](/handbook/marketing/community-relations/community-operations/automated-community-programs/#phase-1-verification) of the application workflow for the GitLab for Open Source Program. This means the program manager and team members must verify applications with some amount of manual effort. GitLab plans to explore ways to more fully automate the application process of the program in the future.

While unable to fully automate the Verification phase, SheerID is able to make the reviewing process easier by doing the following:

* Requesting screenshots to verify the project's publicly visible status and OSI-approved license
* Asking the applicant to check a box to certify they are not seeking profit

When applicants submit forms to the GitLab for Open Source Program, those forms enter a review queue. Note that:

* Applications in the queue expire after 20 days
* The queue displays only the 20 most recently submitted applications (when processed, older applications become visible)

Verification for the GitLab for Open Source Program will require an application processing team until further automation is implemented.

The most up-to-date requirements for GitLab for Open Source Program eligibility are listed in the [program's handbook page](/handbook/marketing/community-relations/opensource-program/).

# Forms
SheerID hosts a specific form for the GitLab for Open Source program: [SheerID OSS Form](https://offers.sheerid.com/gitlab/member/).

This SheerID OSS form contains the following fields:

- First Name
- Last Name
- Email Address
- Country (drop down list)*
- Institution Name (drop down list)
- Open Source Organization or Project Name
- Project Description
- Publicly Visible Project on GitLab
- OSI Approved License
- Not Seeking Profile (checkbox)
- Marketing email opt-in (checkbox)

(*) Note: US Embargoed countries are not on the list. SheerID is not able to separate out the two different regions in Ukraine so we have asked them to remove Ukraine entirely from the list of countries. If someone from Ukraine does want to apply, they will need to contact us directly and we will determine if they qualify based on the region of origin.

### Legal text on form
The following text was added to the bottom of the SheerID form with help from GitLab's legal team.

```
By submitting this form, you understand that your information will be shared with GitLab by SheerID and used for verification purposes.

`For more information please see the [GitLab's Privacy Policy](/privacy/).`

If you are accepted into the GitLab for Open Source program, you will be subject to [GitLab's terms and conditions](/handbook/legal/opensource-agreement/). All use of GitLab products must comply with United States export control and economic sanction laws.
```

# Verification flow

Applicants will have 3 attempts to upload a document providing verification of eligibility for the GitLab for Open Source program. Upon the third unsuccessful attempt, applicant will be rejected.

The GitLab review team will manually review these documents through the [SheerID Review Portal](https://my.sheerid.com/). ([Training material for SheerID can be found here](https://about.gitlab.com/handbook/marketing/community-relations/community-operations/automated-community-programs/#sheer-id-training-materials))

**How to verify OSS applications:**
 1. Login to MySheerID. Go to the "Document review" section.
 1. Click "Begin" or click on any open application to view.
 1. _Verify license type:_ Make sure that an OSI approved license is being used by checking the screenshot against this [OSI license list](https://opensource.org/licenses/alphabetical). If you find a match, check the box on the right about license type.
 1. _Verify public settings:_ make sure there is a screenshot showing that the project is publicly visible. If it is, click on the checkbox saying you've verified this.
 1. If they have all screenshots requested ([see instructions for screenshots here](https://docs.gitlab.com/ee/subscriptions/#gitlab-for-open-source)), `Approve` the application. Click `Hold` if you need more time to decide, or `Reject` if they do not meet the criteria.

Note: Make sure to check different views in the "Review Documents" section. There is a drop down that takes you to applicatios "On Hold", and "Escalated". Make sure that you've reviewed all of these views.
{: .alert .alert-gitlab-purple}

**Verification for OSS Partners:**  
 * **Open Source Partners** should reach out to the OSS Program Manager for verification and will be supplied with a coupon code and instructions on how to proceed. (See WIP MR about [additional coupon codes](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/3830).
 * **Linux Foundation member projects** go through a [different verification and provising process](/handbook/marketing/community-relations/opensource-program/#linux-foundation-partnership) altogether.

**After SheerID Verification:**  
If applicants are successfully verified, they will recieve a welcome email with a coupon code and instructions for next steps. Please see the rest of the [Community Applications Workflow](/handbook/marketing/community-relations/community-operations/automated-community-programs/#coupon-codes) for more details on what follows.

If the GitLab review team is unable to determine the eligibility based on the screenshots that the applicant provided via the SheerID Review Portal, the GitLab review team will send a rejection email. The applicant can then choose to reach out to opensource@gitlab.com if they believe the rejection was sent in error, or if they have additional questions about eligibility.

To view the welcome and rejection emails that applicants recieve, please see the `Verification Simulation` section below.


### Verification limit
Any individual can apply through the form and verify up to 5 times per 365 days. This limit provides room for error and allows a single individual to apply for licenses on behalf of multiple open source projects.

This limit is determined by GitLab and set in the system by SheerID. It can be changed at any time.

Note: Linux Foundation Projects will need to go through a slightly different process due to the quantity of applications we expect to see and their special requirements, TBD.


### Verification Simulation
The SheerID verification process for the OSS program can be simulated by following the directions in [this issue](https://gitlab.com/gitlab-com/marketing/community-relations/opensource-program/general/-/issues/224).

Simulating the verification will allow GitLab team members to view the browser and email communications sent to applicants.
