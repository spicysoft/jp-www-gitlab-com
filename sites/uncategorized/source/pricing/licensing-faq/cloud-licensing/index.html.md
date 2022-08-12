---
layout: markdown_page
title: GitLab Cloud Licensing Overview
description: "On this page you can find more information about Cloud Licensing - the method GitLab uses to activate self-managed customer subscriptions."
---

### On this page
{:.no_toc}

{:toc}
- TOC

## What is Cloud Licensing? 

[Cloud Licensing](https://docs.gitlab.com/ee/subscriptions/self_managed/#cloud-licensing) allows GitLab customers to activate paid subscription features on self-managed instances using an activation code, rather than managing license files and manually uploading them to instances, which was the only activation method prior to August 2021. By activating through Cloud Licensing, a customer’s GitLab instance will periodically synchronize license data with GitLab. 

These regular synchronizations enable GitLab to better support you as you grow, and provides you with a simpler and more efficient billing and subscription management experience for subscription overages reconciliation, mid-term add ons, and renewals.


### Why Cloud Licensing?

GitLab is moving away from license files so that we can more efficiently support you and your company's growth. Cloud Licensing provides:
1. **The flexibility to manage licenses on your time:** With the previous licensing method, GitLab customers had to work directly with a GitLab Sales team member to obtain license files. This manual process could cause slow downs and inefficiencies. Now, you can manage your GitLab license on your time, without the involvement of a GitLab Sales team member.
1. **The efficiency you’ve been waiting for:** Cloud Licensing is an important iteration to improve license efficiency for purchases, renewals, and add-ons. Cloud Licensing is a requirement for Quarterly Subscription Reconciliation and Auto-Renewals.

### What Data Does GitLab Collect and Why? 

Cloud Licensing is made up of two parts:
1. **Method:** A new activation method and system to synchronize license entitlements without needing to generate new license keys.
1. **Data:** Periodic transmission of seat usage data to GitLab.
 
The data transmitted is limited to what is necessary to administer a GitLab license and support future renewals, add ons, and seat reconciliation. The data does not include any intellectual property, source code, or user personal information except the name, company name, and email address of the administrator account associated with the subscription. No fields can be excluded from what is transmitted. 

**Refer to the [Cloud Licensing documentation](https://docs.gitlab.com/ee/subscriptions/self_managed/#license-sync) for a complete list of the data fields that are transmitted.**

### Customer Prerequisites and Availability

**Cloud Licensing is only supported for GitLab version 14.1 or higher.** You must upgrade to 14.1 or higher to take advantage of all of these great features. If you are not already using version 14.1 or higher, please reach out to the Sales team for further guidance. [Upgrade Assistance](https://about.gitlab.com/support/scheduling-upgrade-assistance/) is available for GitLab customers.
 
Cloud Licensing is available to all GitLab customers – both those who work with GitLab directly, or those who work indirectly through a Channel or Alliances partner – with an online instance, regardless of payment or contract method. Cloud Licensing is not currently available for Education, Open Source, Startup, or Free Tier customers.

##### Offline Cloud Licenses

In exceptional cases, customers with offline or air-gapped instance may be approved to use an Offline Cloud License. Offline Cloud Licenses will require you to manually provide usage data to GitLab on a monthly basis. This data is downloaded as a `.csv` document and shared via email rather than automated sync. Offline Cloud Licenses provide some of the benefits of Cloud Licensing, including smoother renewals and add-ons, but given the lack of internet connectivity won't benefit from automated add-on syncs, renewals, and more. GitLab version 15.0 or higher is required. Please reach out to your account manager for more information about Offline Cloud Licenses.
 
### Questions? 

Please contact your account manager, Sales representative or fill out [this form](https://about.gitlab.com/sales/).

