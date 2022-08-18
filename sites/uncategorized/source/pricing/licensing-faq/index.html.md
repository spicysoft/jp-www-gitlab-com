---
layout: markdown_page
title: Licensing and subscription FAQ
description: "On this page you can view information on FAQs about GitLab licencing and subscription. Learn more!"
canonical_path: "/pricing/licensing-faq/"
---

### On this page
{:.no_toc}

{:toc}
- TOC

### There is an unknown 1 USD charged on my credit card

You won't be charged if you haven't made any purchase. If you see [1 USD charge](https://support.stripe.com/questions/unexpected-1-charge-on-customers-bank-statement) in your account, this is for credit card validation purpose. It happens when:

1. You use your credit card for the first time
1. You validate your GitLab.com account with your credit card

The amount will be return to your account within the next 5-30 days depending on your card issuer bank.

### How do I contact my account manager or the Sales team?

Please complete <a href="https://about.gitlab.com/sales/">our sales form</a> and your account manager or a member of our Sales team will be in contact with you.

___

### How do I purchase a subscription?

You can purchase a subscription for GitLab Enterprise Edition (self-managed) or for
GitLab.com (hosted by GitLab) on our <a href="https://customers.gitlab.com/" target="_blank">Customers Portal</a>
with a credit card.

___

### How much does GitLab cost?

You can find pricing for GitLab.com subscriptions on our <a href="https://about.gitlab.com/pricing/" target="_blank">pricing page here</a> and GitLab Enterprise Edition (self-managed) <a href="https://about.gitlab.com/pricing/#self-managed" target="_blank">here</a>.

___

### Can I pay for the subscription monthly?

All subscriptions are paid in annual payments, monthly payments are not an available payment option. 

___

### What payment methods are accepted?

When purchasing via our <a href="https://customers.gitlab.com/customers/sign_in" target="_blank">Customers Portal</a> you may pay via credit card. We are able to accept payment via check and wire in select circumstances, to get help with other type of payment methods please contact our sales team via <a href="https://about.gitlab.com/sales/">our sales form<a>. 

___

### What do I need in order to use my subscription or license?

#### GitLab.com Subscription
{:.no_toc}

To apply a GitLab.com subscription you'll need to have:
- [Created a GitLab.com account](https://docs.gitlab.com/ee/subscriptions/index.html#subscribe-to-gitlabcom)
- [Linked your customers.gitlab.com account with your GitLab.com account](https://docs.gitlab.com/ee/subscriptions/index.html#change-the-linked-account)
- [Owner permission](https://docs.gitlab.com/ee/user/group/#add-users-to-a-group) in the place you want to apply the subscription

If you've met all those conditions, continue on to [How do I use my subscription?](#how-do-i-use-my-subscription).

#### Self-managed License
{:.no_toc}
To apply a GitLab Self-managed license, you'll need to have:
- Administrator access to the GitLab installation

___ 


### How do I use my subscription?

Please take a look at our <a href="https://docs.gitlab.com/ee/subscriptions/index.html" target="_blank">subscription docs<a/> for information on getting set up, applying, and managing your subscription.

___ 


### How do I renew my subscription?

#### GitLab.com
{:.no_toc}

1. Log into your account in the <a href="https://customers.gitlab.com/customers/sign_in" target="_blank">Customers Portal</a>.
1. Select **Manage Purchases** from the menu.
1. Check to see if your subscription has been cancelled previously. If it has, you'll see a **Resume subscription** button. Select **Resume subscription** to set your subscription back to automatically renew. If you see **Cancel subscription** then you don't need to do anything. 
1. Note, the renewal will automatically occur at 12:00am UTC (midnight) when the listed expiration date starts and will be processed for the exact subscription details (tier and number of users) as the previous subscription. If you require a change to the number of users or tier, please contact support via <a href="https://support.gitlab.com/hc/en-us/requests/new?ticket_form_id=360000071293" target="_blank">our support portal</a>.

#### Self-managed GitLab
{:.no_toc}

1. Log into your account in the <a href="https://customers.gitlab.com/customers/sign_in" target="_blank">Customers Portal</a>.
1. Select **Manage Purchases** from the menu.
1. Select the **Renew** button.
1. Determining user counts for renewal purposes:
    1. **Users** Only active users at the time of renewal count towards total user count for the upcoming subscription.
    1. **Users over license** (aka true-up users) If at any time during the prior subscription period the account has had more billable users than the subscription, these users over the license will be due at the time of renewal.
1. Select **Proceed to checkout**.
1. Review Subscription Renew Detail.
1. Select on **Confirm Renew**.

The following will be emailed to you:
- A payment receipt. You can also access this information in the <a href="https://customers.gitlab.com/customers/sign_in" target="_blank">Customers Portal</a> under **View invoices**.
- A new license. <a href="https://docs.gitlab.com/ee/user/admin_area/license.html#uploading-your-license" target="_blank">Upload this license</a> to your instance to use it.

##### Administrators of self-managed instances can find user usage through the following options:
{:.no_toc}
1. Within GitLab UI, select `Admin Area -> Users` to view the Active Users tab which indicates the users currently
counted.
1. View the User Statistics panel from `Admin Area -> Overview -> Dashboard` to view users available in license and users over license.
1. Run the command `sudo gitlab-rails runner 'p User.active.count'` to obtain the Active User count.
1. Run the command `sudo gitlab-rails runner 'p ::HistoricalData.max_historical_user_count'` to obtain the Maximum billable user count.
1. Run the command `GET /users` to obtain a list of all billable users.

#### GitLab Education Program 
{:.no_toc}
In order to renew, send an email to education@gitlab.com with the following information:  
1. Indicate the number of seats for the renewal.  Seats can be added at this time if needed.
1. Describe the use case for the license. Specifically, we need verification that the use meets the [End User License Agreement](https://about.gitlab.com/terms/#edu-oss). Note that University infrastructure operations and information technology operations do not fall within the stated terms of the Education Program. See the [FAQ here](https://about.gitlab.com/solutions/education/#FAQ). 
1. Include the full name, email address, and phone number of the primary contact who will be signing the renewal quote. Only signatures by faculty or staff with proper signing authority on the behalf of the University will be accepted.

Once we receive the above information, we will process the request and return a renewal quote for signature. Please allow a minimum of 2 business days for return. Email us at [education@gitlab.com](mailto:education@gitlab.com) with any questions. 

#### GitLab Open Source Program 
{:.no_toc}
All requests for our GitLab Open Source program (even renewals) must be made via the application process found [here](https://about.gitlab.com/solutions/open-source/join/).
If you have any questions, email the team at [opensource@gitlab.com](mailto:opensource@gitlab.com) for assistance. 

___

### What does "users over license" mean?

If you've added more users to your GitLab EE instance during the past period
than you were licensed for, the additional users will be payable at the time of renewal.

Without adding these users during the renewal process, your license key will
not work.

You can find the number of **users over license** by going to the `/admin`
section of your GitLab instance (e.g. `https://example.gitlab.com/admin`). This
can also be found by clicking the **admin wrench** in the navbar of your instance
when logged in as an admin.

In the top right section of the admin dashboard, you should see the number to
enter when asked this during the renewal process.

___
### Who gets counted in the subscription?

#### GitLab.com
{:.no_toc}
Each unique user within a namespace is counted in a subscription. This includes users added at the group level, sub-group level and project level. Every occupied seat, whether by person, job or bot is counted in the subscription. The only exception are <a href="https://docs.gitlab.com/ee/user/permissions.html#free-guest-users" target="_blank">members with `Guest` permissions with an Ultimate subscription</a>. 

Since GitLab.com counts concurrent seats and not named users, you can remove members and add new members as you'd like as long as the total users at any given time is within your license count.


#### Self-managed GitLab
{:.no_toc}
Every occupied seat, whether by person, administrator, job or bot is counted in the subscription. 

The following are the only exceptions which are not counted towards the subscription:
1. Blocked users who are blocked prior to the renewal of a subscription will **not** be counted as Active Users for the renewal subscription but **may** count as true-up users for the term in which they were originally added.
1. <a href="https://docs.gitlab.com/ee/user/permissions.html#free-guest-users" target="_blank">Members with `Guest` permissions on an Ultimate subscription</a> do not count towards the subscription.
1. <a href="https://docs.gitlab.com/ee/user/profile/account/delete_account.html#associated-records" target="_blank">Ghost User</a>, <a href="https://docs.gitlab.com/ee/user/project/service_desk.html#support-bot-user" target="_blank">Support Bot</a>, `Migration Bot`, and `Alert Bot` do not count towards the subscription.

___

### How are Maximum Users Calculated?

In <a href="https://gitlab.com/gitlab-org/gitlab/-/issues/7008">GitLab 13.7 and later</a>, the `Maximum Users` value found in self-managed instances of GitLab reflects the maximum daily active user count recorded in the instance during the current license period.

Prior to GitLab 13.7, the `Maximum Users` value found in self-managed instances of GitLab reflects the maximum daily active user count recorded in the instance for the period of 1 year prior to the expiration date of the license. Since most GitLab subscriptions are annual, this means the Maximum User count in these cases is simply the highest number of active users at any one time during that subscription. However, for non-standard contract lengths (8 months, 14 months, 24 months), the Maximum Users count is not reflective of the entire subscription term, but rather for the 12 months prior to the expiration date.

___

### How to reset the Maximum Users and Users over license?

[Maxmimum Users](https://docs.gitlab.com/ee/subscriptions/self_managed/index.html#maximum-users) will be reset once the current license is expired and a new license with a new service period is uploaded. See [Maximum Users](https://docs.gitlab.com/ee/subscriptions/self_managed/#maximum-users).

[Users over license](https://docs.gitlab.com/ee/subscriptions/self_managed/index.html#users-over-license-1) can be reset either:

1. During the current license service period by [Adding more seats to the subscription](https://docs.gitlab.com/ee/subscriptions/self_managed/#add-seats-to-a-subscription) so that your total Users in License meet or exceed your current `Maximum Users`
1. By paying for `True-Up Users` at your [renewal](https://docs.gitlab.com/ee/subscriptions/self_managed/#renew-a-subscription). During your renewal, you can pay for the overage from your prior subscription period, these are called "True-Up Users".

___

### How to renew for fewer seats than my current subscription? 

You can renew for a minimum of your current usage or more. If you want to renew for less seats, you have to bring your seat usage down before the renewal, [disable automatic renewal](https://docs.gitlab.com/ee/subscriptions/gitlab_com/#enable-or-disable-automatic-subscription-renewal) and manually renew the subscription (for [SaaS](https://docs.gitlab.com/ee/subscriptions/gitlab_com/#renew-or-change-a-gitlab-saas-subscription) and [Self-Managed](https://docs.gitlab.com/ee/subscriptions/self_managed/#renew-a-subscription)).

___

### Do I need the administrator account (aka `root`) that came installed if I am also an administrator?

Nope! The `root` user is just the first admin account, created by default in self-managed versions of GitLab. Just like any other user, this account _does_ occupy a license seat. So, please consider following good security practice and have one or more "real" people play the role of administrator. You're allowed (and encouraged) to rename the user, or even delete or disable it as long as you've promoted other users to administrator. 

___

### How do I start a trial?

It is possible to obtain a free evaluation of our GitLab.com or self-managed subscriptions for
a 30 day period for up to 100 users. Please visit our
<a href="https://about.gitlab.com/free-trial/" target="_blank">free trial page</a> to sign up.

For self-managed users, when you decide to purchase a subscription, you will be issued a new license
key. Should you not take out a subscription, your key will expire at the end
of your evaluation period. At that point you should remove the trial key and the system will revert to our free Core version.

___

### Can I use my paid seats for different users?

The seats for your license are generic and are not specific to a user. GitLab does
not use a named license model.

The seats you buy can be distributed however you choose. If a user leaves your
organization, you can remove or block that user to free the seat. This seat can
then be used by another user.

Note that this may result in a user over license if your maximum users has been reached.

___

### Can I add more users to my subscription?

You can add users to your subscription any time during the subscription period. The cost of additional users added during the subscription period will be prorated from the date of purchase through the end of
the subscription period. 

To do this:
1. Log into your account via the <a href="https://customers.gitlab.com/customers/sign_in" target="_blank">Customers Portal</a> 
1. Select **Manage Purchases** from the menu.
1. Select the **Add more seats** button.
1. Enter the amount of additional users (E.g. You currently have 10 users and want to add 5 more users, enter 5).
1. Select **Proceed to checkout**.
1. Review the Subscription Summary. Note you will only be charged for the net additional users.
1. Update or add the desired payment information.
1. Select **Purchase Seats**

The following will be emailed to you:
- A payment receipt. You can also access this information in the <a href="https://customers.gitlab.com/customers/sign_in" target="_blank">Customers Portal</a> under **View invoices**.
- For self-managed instances, a new license. <a href="https://docs.gitlab.com/ee/user/admin_area/license.html#uploading-your-license" target="_blank">Upload this license</a> to your instance to use it.
___

### Can I buy more storage?

On GitLab.com, there is a [10 GB repository size limit](https://docs.gitlab.com/ee/user/gitlab_com/index.html#account-and-limit-settings) per project. Effective November 1st, 2020, you can now purchase additional storage via GitLab. To do that, please follow the steps from our  <a href="https://docs.gitlab.com/ee/subscriptions/gitlab_com/#purchase-more-storage" target="_blank">documentation</a>.

#### About Supplemental Storage

1. Additional repository storage for a namespace (group or personal) is sold in annual subscriptions of $60 USD/year in increments of 10GB. This storage accounts for the size calculated from Repositories, which includes the git repository itself and any LFS objects.
1. When adding storage to an existing subscription, you will be charged the prorated amount for the remaining term of your subscription. (ex. If your subscription ends in 6 months and you buy storage, you will be charge for 6 months of the storage subscription, i.e. $30 USD)
1. When purchasing additional storage, the GitLab.com system will automatically apply the purchased storage to projects which have been locked due to hitting the [10 GB repository size limit](https://docs.gitlab.com/ee/user/gitlab_com/index.html#account-and-limit-settings). Additional unused purchased storage will be available to other projects in your namespace as needed to prevent locking.
1. You can purchase additional storage as many times as you'd like.
1. You can view storage usage and purchase storage allocation in GitLab.com by navigating to the top level `namespace > Settings > Usage Quotas > Storage`



___

### Can I apply one license to multiple instances?

You can apply one license to multiple instances if **the users on the instances**:

- Are the same, or
- Are a subset of your licensed production instance.

For example, if you have a licensed production instance of GitLab, and you have
other instances with the same list of users, the production license applies.
Even if these users are configured in different groups and projects, as long as
the user list is the same, the license applies.

However, if any different users are on the instance, you need a separate license.

___

### If I use a scaled architecture, do I need to upload the license to all instances?

No. The license is stored in the database and will be replicated to all your application instances. Therefore you only need to upload the license file to one application instance.

___
### When using GitLab Geo, do I need to upload the license to the secondary node(s) as well?

No. The license is stored in the database and is replicated to all instances. You only need to upload the license to your primary Geo instance.

___
### What happens when my subscription is about to expire or has expired?

- Before your subscription end date, you'll receive notification that the end date is approaching.
- On the day your subscription expires: you'll enter a grace period (14 days) to ensure you have adequate time to renew. No system functionality will change.
- During the grace period, your subscription may still be eligible to receive support. Please [contact your account manager](#how-do-i-contact-my-account-manager-or-the-sales-team) to further discuss prior to submitting a support ticket.
- After the grace period expires, you will lose access to paid features and may lose some functionality. You will not be eligible to receive support. See below for distribution specific notes.
- Up until 30 days after the subscription has ended, you'll be able to renew your previous subscription to restore functionality.
- Please note the grace period only applies to purchased subscriptions and not to trials.

#### SaaS
{:.no_toc}

- After the grace period has expired, GitLab will revert the namespace to the "Free" tier.
  No data will be lost, but <a href="https://docs.gitlab.com/ee/subscriptions/gitlab_com/#subscription-expiry" target="_blank">paid features will not be functional anymore</a>.

#### Self-managed GitLab
{:.no_toc}

- After the grace period has ended, GitLab will display a notice to all
  users informing them of the expiration, and pushing code and creation of
  issues and merge requests will be disabled. The system will <a href="https://docs.gitlab.com/ee/user/admin_area/license_file.html#what-happens-when-your-license-expires" target="_blank">not be functional anymore</a>.


___

### What's the difference between a Group plan and a Personal plan on GitLab.com?

A subscription for GitLab.com can be applied to one of two types of namespaces. Where you assign your subscription determines where those features are accessible.

#### GitLab.com SaaS Plan on Personal Namespace
{:.no_toc}

**Note, As of November 17, 2020, GitLab no longer offers new subscriptions for personal namespaces.**

You can find the plan details for a personal namespace by navigating the **User Settings>Account>Billing**.

#### GitLab.com SaaS Plan on a Group
{:.no_toc}

A user can choose to purchase a subscription and apply it to a group they've created. This way any project they create in that group or in a 
subgroup of that group gets access to the features of the subscription they purchased for it. This extends to any user that gets invited as a member of that group.

A user that's part of an organization with multiple GitLab collaborators will ideally choose to create a group for that organization, purchase and apply a subscription to that group, and then invite their colleagues to that group so that all can 
enjoy those paid features while working in that group.

Note that all members within a group subscription are counted as billable seats at the same subscription plan rate.

You can find the plan details for a group namespace by navigating the **Group Settings>Account>Billing**.


___

### How can I manage multiple teams in one GitLab.com SaaS group/plan but prevent the teams from accessing each other's projects?

You can create a parent group and only allow access to this group to anyone who should have unlimited child subgroup/project access. Then, create subgroups for each team with nested projects and add people at the subgroup level. This will essentially lock them out of any other team's subgroups for which they do not have access.

In this situation, regarding billable users - you will only be responsible for the unique users within the hierarchy of the parent group. If a user is added to multiple subgroups or projects, they will only be counted as 1 billable user.


### How do I purchase a Group Plan on GitLab.com?

You will first need to create your group in GitLab.com and add users. Follow the steps below:

1. <a href="https://docs.gitlab.com/ee/user/group/#create-a-new-group" target="_blank">Create a group</a> in GitLab.com
1. <a href="https://docs.gitlab.com/ee/user/group/#add-users-to-a-group" target="_blank">Add users to the group</a> 
1. Log into the <a href="https://customers.gitlab.com/customers/sign_in" target="_blank">Customers Portal</a> to purchase the desired plan for your group. 
1. Select the GitLab.com subscription plan using the **Order (Premium SaaS, Ultimate SaaS) Plan** button 
1. From the **This subscription is for** dropdown, select the group name you've created
1. Select the **Proceed to checkout** button


___

### How do I downgrade my subscription?

It is not possible to downgrade a subscription after it has been purchased or renewed.  A separate subscription for the desired plan and seat count will need to be purchased, and your existing subscription will only be eligible for refund per the terms of our [Subscription Agreement](https://about.gitlab.com/handbook/legal/subscription-agreement/).

If you would like for your namespace to nevertheless be manually downgraded to the **Free tier** before the subscription has expired, please submit your request via <a href="https://support.gitlab.com/hc/en-us/requests/new?ticket_form_id=360000071293" target="_blank">our support form</a>.

**Please note:** Manually downgrading a namespace will not make the subscription eligible for refund.

___

### How can I get a copy of my invoice?

Your invoice should be available for viewing and download within our <a href="https://customers.gitlab.com/customers/sign_in" target="_blank">Customers Portal</a> by navigating to the **View invoices** page. If your invoice is not available, please submit your request via <a href="https://support.gitlab.com/hc/en-us/requests/new?ticket_form_id=360000258393" target="_blank">our support portal</a>.

___

### I purchased a multi-year subscription, why is my license only for 1 year?

We issue self-managed GitLab licenses in 12 month increments and check-in at the start of each subsequent term within the subscription period to see if there are any changes to users needed prior to generating the license. 

You can always contact us via <a href="https://support.gitlab.com/hc/en-us/requests/new?ticket_form_id=360000071293" target="_blank">our support portal</a> as the next term approaches otherwise someone will be in touch as well.

___

### How can I request a refund?

If you have an Account Executive, please contact them to begin the process of requesting a refund.

If you do not have an Account Executive, please submit a request via <a href='https://support.gitlab.com/hc/en-us/requests/new?ticket_form_id=360000258393' target='_blank'>our support portal</a> to get in contact with our Billing team.


___

### Do you support resellers?

We don't currently support reseller purchasing via the portal. If you are a
reseller looking to purchase GitLab on behalf of your client, please get in
touch with us using the <a href="https://about.gitlab.com/sales/" target="_blank">Contact sales form</a>.

If you include your billing contact name and email, your physical billing
address, and the end customer's name, email address and shipping address, we
will send you (not your customer) a resellers quote which you can execute
either with a credit card or an EFT.

You can find details on our reseller program at https://about.gitlab.com/partners/program/.

If you are a customer who bought a subscription through a reseller, you won't have access to our customer portal since the reseller is the invoice owner of your subscription.

___

### How can I transfer from a self-managed subscription to a SaaS subscription or vice versa?

Currently, we are not able to transfer plans on a subscription. In order to make use of a SaaS subscription or a self-managed subscription, you will need to [purchase a new subscription](https://about.gitlab.com/pricing/#gitlab-com). You can do so by logging into the [Customers Portal](https://customers.gitlab.com/customers/sign_in) and selecting the `Buy new subscription` button. 

If you need to migrate your data from your self-managed instance to your gitlab.com account, please see our [migration docs](https://docs.gitlab.com/ee/user/project/import/#migrating-from-self-hosted-gitlab-to-gitlabcom). Migrating data from [gitlab.com to a self-managed instance is a similar process](https://docs.gitlab.com/ee/user/project/import/#migrating-from-gitlabcom-to-self-managed-gitlab); the main difference is that users can be created on the self-managed GitLab instance by an admin through the UI or the [users API](https://docs.gitlab.com/ee/api/users.html#user-creation).

___

### How can I get a list of billable users for my plan?

You can get a list of billable users by going to your group namespace, click on `Settings` and then `Billing`; scrolling down on the page you will see the users occupied seats in your group along with the total number of users.

We had also released a [groups and members API endpoint](https://docs.gitlab.com/ee/api/members.html) that can be used to obtained a list of billable users for your plan. 

The obtained list will provide the existing members on your account at the time of the request. If you are looking for the specific date and time in which a user was added to a group, please use the [Audit Events feature](https://docs.gitlab.com/ee/administration/audit_events.html#group-events) or [Audit Events API](https://docs.gitlab.com/ee/api/audit_events.html#group-audit-events).

