---
layout: handbook-page-toc
title: "Community Programs Applications Automated Workflows"
description: "This page describes the automated workflows for the GitLab for Education, GitLab for Open Source, and GitLab for Startups applications."  
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


During 2022, we are transitioning to a fully automated process for our Community Programs Application Workflow. As we roll out the automation project in phases, we will use a **hybrid-method**. The hybrid method uses:
The automated community programs workflow for the **Application**, **Verification**, and **Booking** phases.
The [Community Programs Application Workflow](/handbook/marketing/community-relations/community-programs/automated-community-programs/community-program-applications/) for the **Renewal** phase.
{: .alert .alert-gitlab-orange}


## Overview

This page describes the automated workflows for the following community programs:

| Community Program  | Handbook Page | Website | Program Owner |
| ------ | ------ |------ | ----- |
| GitLab for Education | [EDU Handbook](/handbook/marketing/community-relations/education-program/) | [EDU website](/solutions/education/) | Christina Hupy |
| GitLab for Open Source | [OSS Handbook](/handbook/marketing/community-relations/opensource-program/) | [OSS Website](/solutions/open-source/) | Bryan Behrenshausen|
| GitLab for Startups | [Startups Handbook](/handbook/marketing/community-relations/startups-program/) | [GitLab for Startups](/solutions/startups/) | Christina Hupy  |

The goals of this page are to:
 * Provide an overview of the automated community programs applications workflows
 * Store details for each step of the automated workflow
 * Allow transparency into our workflows to help others integrate with it

## Automated Application workflow

| Phase | Description |
| ------ | ------ |
| 0. [Application](/handbook/marketing/community-relations/community-programs/automated-community-programs/#phase-0-application) | SheerId hosted application form is filled out for OSS and EDU. Startups applicants fill out Marketo Form.|
| 1. [Verification](/handbook/marketing/community-relations/community-programs/automated-community-program/#phase-1-verification) | Automated verification by SheerID for EDU. Document review for OSS. Manual verification for Startups.|
| 2. [Booking](/handbook/marketing/community-relations/community-programs/community-program-applications/#phase-2-booking) | Success email directs applicant to a separate Community Programs  page for each program on the GitLab Customer Portal. Coupon code is entered during checkout. |
| 3. [Provisioning](/handbook/marketing/community-relations/community-programs/automated-community-programs/#phase-3-provisioning-and-phase-4-compliance) | Licenses are provisioned through the web direct process on the GitLab Customer Portal.|
| 4. [Compliance](/handbook/marketing/community-relations/community-programs/automated-community-programs/#phase-3-provisioning-and-phase-4-compliance) | Handled by Sales-Support and Billing Ops. |
| 5. [Renewal](/handbook/marketing/community-relations/community-programs/automated-community-programs/#phase-5-renewal) | Program members will repeat the process within 3-months of renewal. The renewal process is manual at this time. |
| 6. [Support](/handbook/marketing/community-relations/community-programs/automated-community-programs/#phase-5-renewal) | Each step of the automated application workflow has different set of potential errors and support flow.|

## PHASE 0: Application

GitLab uses a third party vendor, [SheerID](https://www.sheerid.com/shoppers/aboutsheerid/), for verification services. SheerId builds and hosts the application forms for the GitLab for Education Program and the GitLab for Open Source Program. All communications (email and browser notifications) sent during the verification phase for these two programs are hosted and sent by SheerID.

The DRI for SheerID is Christina Hupy. The contract is renewed on an annual basis and is based on the total number of verifications across the two programs.

[MySheerID](https://my.sheerid.com/) is the customer portal for the verification system. The portal contains details on each application form, a reporting system, and account settings. Anyone needing to access the MySheerId portal can request an account through an [access request](/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/).

SheerID Customer Service specific to GitLab can be found [here](https://drive.google.com/file/d/13AW0BYt4HNFzGfM6iRuMtpjZ1J8tAXyI/view?usp=sharing).

## PHASE 1: Verification

The verification process differs by program. The GitLab for Education Program uses SheerId's automated service and documents are only forwarded to the Education team if SheerID cannot resolve the application. The GitLab for Open Source program applications are manually reviewed by GitLab team members in the SheerID document review portal.

The verification process for each program can be found on the pages below:

- [GitLab for Education verification](/handbook/marketing/community-relations/community-programs/automated-community-programs/edu-program-verification/)
- [GitLab for Open Source verification](/handbook/marketing/community-relations/community-programs/automated-community-programs/oss-program-verification/)
- [GitLab for Startups verification](/handbook/marketing/community-relations/community-programs/automated-community-programs/startups-program-verification/)


### Sheer ID Training Materials

The links below contain helpful resources when navigating the SheerID review portal.

   1. Document review instructions: [How to Asset Review ](https://gitlab.com/gitlab-com/marketing/community-relations/community-operations/community-operations/uploads/2369fc68e18a67c4c1aedf402b6fe116/How_to_Asset_Review.pdf)
   1. Customer service overview: [Gitlab + SheerID CS Overview](https://gitlab.com/gitlab-com/marketing/community-relations/community-operations/community-operations/uploads/82d879a5a2311e272b043b00215cabbb/GitLab_+_SheerID_-_CS_Overview.pdf)
   1. Sheer ID hotkeys for quickly navigating the platform: [SheerID Hotkeys](https://gitlab.com/gitlab-com/marketing/community-relations/community-operations/community-operations/uploads/a0a869d02959c9e33cb642244968a8e5/Doc_Review_2.0_hotkeys.pdf)
   1. How to navigate the customer search portal within SheerID: [MySheerID Customer Search Tool](https://gitlab.com/gitlab-com/marketing/community-relations/community-operations/community-operations/uploads/c52eae1c8e3d77f3991cf9051d0263f6/My.SheerID_Customer_Search_Tool_-_Updated_Dec_1_with_VRE___SPL_Rules.pdf)



### Coupon Codes

Upon successful verification, the applicant will receive an email with instructions to obtain their license and a unique coupon code.

The coupon codes are generated by the fulfillment team at GitLab via a coupon code generator. The DRI for the coupon code generator is the [fulfillment team](https://about.gitlab.com/direction/fulfillment/).

In order to generate new coupon codes, open an issue in the `customers-gitlab-com` project. Here is the [original issue](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/3041) for details.

**Coupon codes for SheerID:**

Program specific codes are [stored internally](https://gitlab.com/gitlab-com/marketing/community-relations/community-operations/community-operations/-/issues/149) and they can  only be accessed by Christina Hupy and Alex Karsten due to their sensitive nature.

Coupon codes are provided to SheerID by Christina Hupy via an email to productsupport@sheerid.com.

The coupon codes are provided in an individual .csv for each program. The .csv should only have one column with no header. Enough coupon codes to cover one year of verifications for each program will be provided at a time.

The number of coupon codes per year is determined by estimated the number of applications expected per quarter + the number of expected renewals * an average re-verification factor.  


## PHASE 2: Booking

The success email will contain a direct link to a program specific page for each of the three programs (EDU/OSS/YC) in the GitLab Customer Portal. The program specific pages are not available directly in the GitLab Customer Portal without the direct link. The applicant will need to enter the unique coupon code during the process. The links for the community specific customer portal are [here](https://gitlab.com/gitlab-com/marketing/community-relations/community-operations/community-operations/-/issues/150).

### Terms

During the self-checkout process, the applicant will need to accept terms specific to the relevant program: [GitLab for Education Program Agreement](/handbook/legal/education-agreement/) or [GitLab for Open Source Agreement](/handbook/legal/opensource-agreement/). The GitLab for Startups Terms are presented directly upon checkout.  

The GitLab for Startups Terms:

If you meet the requirements of the Start-Up Program, you will be eligible to receive twelve (12) months Ultimate [SaaS or Self-Managed] at no cost, without Support. Renewal of the User(s) will be at the current published List Price. Your use of the GitLab Software is subject to the GitLab Subscription Agreement. Software is provided as “Free Software”.

## PHASE 3: Provisioning

Licenses will be provisioned directly during process via the WebDirect flow.  


## PHASE 4: Compliance

Compliance is handled by Sales-Support and Billing Ops. This phase results in granting the license and notifying the customer of how to access the licenses.

## PHASE 5: Renewal

The [renewal phase](https://gitlab.com/groups/gitlab-org/-/epics/5711) of the Community Efficiency Project is currently in progress. This work will add the ability to renew license upon successful verification directly in the GitLab Customers Portal via the program specific  page.
{: .alert .alert-warning}

Until the renewal phase is completed, the renewal process will remain as stated on the [Community Programs Applications Workflow](/handbook/marketing/community-relations/community-programs/community-program-applications/#phase-5-renewal) page.


## PHASE 6: Support

Each step of the automated application workflow has different set of potential errors and support flow.


|Phase|Source|Error|DRI|Action|
|----|----|----|---|---|--------|
| Verification| SheerID Application| False Rejection EDU | SheerID  | Contact SheerID from Rejection Email.  |
| Verification| SheerID Application| False Rejection OSS | @bbehr / OSS Program | Contact opensource@gitlab.com from rejection email |
| Verification| SheerID Application | Never received success email. |SheerId | [SheerId Help Center FAQ](https://offers.sheerid.com/sheerid/help-center/?name=no-email) - Form resends email|
| Verification| SheerID Application | Deletes success email. | SheerId | [SheerId Help Center FAQ](https://offers.sheerid.com/sheerid/help-center/?name=no-email) - Form resends email|
| Verification| SheerID Application | Form not responding or something goes wrong with form. | SheerID | [Contact SheerID Support Team ](https://offers.sheerid.com/sheerid/help-center/?name=form-doesnt-work)|
| Verification| SheerID Application | Applicant makes a case to SheerID that EDU rejection was in error but SheerID cannot resolve. | @c_hupy / EDU Program | SheerID emails education@gitlab.com with details. GitLab EDU team resolves. |
|Booking| GitLab Customer Portal | Coupon Code has already been used. | GitLab Support |Error message on the portal. `The code has already been used.` There is no CTA on the portal, user will go back to email which directs them to open a support ticket under [`Issues with billing, purchasing, subscriptions, or licenses.`](https://about.gitlab.com/support/#issues-with-billing-purchasing-subscriptions-or-licenses)|  
|Booking| GitLab Customer Portal | Coupon Code is invalid. | GitLab Support | Error message on the portal. `This code is not valid. Try re-entering the code from your email`. There is no CTA message on the portal, the user will go back to email which directs them to open a support ticket under [`Issues with billing, purchasing, subscriptions, or licenses.`](https://about.gitlab.com/support/#issues-with-billing-purchasing-subscriptions-or-licenses)|
|Fulfillment| GitLab Customer Portal | Any problems with Customer Portal itself after coupon code succeeds.| GitLab Support | Open Support Ticket [`Issues with billing, purchasing, subscriptions, or licenses.`](https://about.gitlab.com/support/#issues-with-billing-purchasing-subscriptions-or-licenses) )|
|Fulfillment| GitLab Customer Portal | If the applicant enters the incorrect number of seats or choses the incorrect hosting type (self-managed or Saas) and the license has already been granted, the application will need to obtain an [add on quote to change](/handbook/sales/field-operations/sales-operations/deal-desk/#a--add-on-quote-creation) the license parameters |Community Programs| Email education@gitlab.com, opensource@gitlab.com or startups@gitlab.com requesting changes |.
