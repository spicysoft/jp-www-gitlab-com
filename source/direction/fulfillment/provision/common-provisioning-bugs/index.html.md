---
layout: markdown_page
title: "Provision - Common Provisioning Bugs"
description: "The Provision team at GitLab focuses on providing a seamless activation experience for customers."
canonical_path: "/direction/fulfillment/provision/common-provisioning-bugs"
---
 
## On this page
{:.no_toc .hidden-md .hidden-lg}
 
- TOC
{:toc}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />
 
## Overview

This page will outline top provisioning bugs and when they were resolved or expected to be fixed.

### Resolved Bugs

| SM or SaaS? |  Category    | Description of Bug         | Related Issue Link(s) |  Version Resolved |
|---------|--------------|----------|--------------------------------|--------------------|
| Self Managed | Offline Cloud Licensing | Some mime types are not supported when a customer emails their offline usage file. | [4812](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4812) | 15.6 |
| Self Managed | Cloud Licensing | Cloud license valid from dates show prior year's term after applying new subscription. | [3651](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/3651) | 15.5 |
| All | Banners | Subscription expiration alert is still shown after customer activates renewal subscription. | [372119](https://gitlab.com/gitlab-org/gitlab/-/issues/372119), [4507](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4507) | 15.5 |
| Self Managed | License Creation | Using Optional "Customer" field causes licenses to generate using customer portal data instead of details entered. | [3566](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/3566) | 15.5 |
| Both | License Display | License overview shows 'Expired: Never' for expired licenses. | [372230](https://gitlab.com/gitlab-org/gitlab/-/issues/372230) | 15.5 |
| Self Managed | Cloud Licensing | Activation error messages do not indicate the problem accurately. | [355794](https://gitlab.com/gitlab-org/gitlab/-/issues/355794) | 15.4 |
| Self Managed | Cloud Licensing | Some customers are not receiving activation codes in welcome mailer. | [4741](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4741), [4599](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4599) | 15.4 |
|  Both       | User Count | Previous user count is incorrect when changing products and seat count during renewal. | [3346](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/3346) | 15.3 |



### Open Bugs

| SM or SaaS? | Category    | Description of Bug         | Related Issue Link(s) |  Priority | Expected Release |
|---------------|------------|--------------------------------|--------------------|--------------|-------------|
| Self Managed | Cloud Licensing  |  Multi-year subscription results in already expired license. | [4815](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4815) | `severity::2` | 15.6 |
| Self Managed | Cloud Licensing | Cloud Licensing Multi-Year Subscriptions not on QSR expire after 1 year. | [4816](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4816) | `severity::2` | 15.6 |
| SaaS | SaaS Provisioning | SaaS subscriptions with multiple product line items do not provision seats correctly. | [3956](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/3956) | `severity::2` | 15.6 |
| Both | True-Ups | True-up validation fails when no previous_users_count is present. | [361345](https://gitlab.com/gitlab-org/gitlab/-/issues/361345) | `severity::3` | 15.6 |
| Self Managed | Cloud Licensing | CustomersDot Admin Cloud Activations tab lists multiple activation codes when zuora_id is blank. | [4580](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4580) | `severity::4` | 15.7 |
| SaaS | Deprovisioning | Paid features are not deprovisioned upon transfer to subgroup. | [351780](https://gitlab.com/gitlab-org/gitlab/-/issues/351780) | `severity::3` | 15.7 |
| Self Managed | Cloud Licensing | Cloud License activation failure when future dated renewal and past subscription trueups. | [4874](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4874) | `severity::4` | 15.7 |
| SaaS | Deprovisioning | SaaS subscriptions can be deprovisioned if within grace period with add-on refunded. | [4777](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4777) | `severity::4` | 15.7 |
| SaaS | Contract Resets | SaaS contract resets downgrade users to free until new license is applied. | [361577](https://gitlab.com/gitlab-org/gitlab/-/issues/361577) | `severity::2` | 15.8 |
| Self Managed | Cloud Licensing | Self Managed instance generating new cloud license each sync. | [5041](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/5041) | `severity::4` | 15.8 |
| Both | Reseller | Invoice for Reseller Not Found Error received with current reseller notification setup. | [4910](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4910) | `severity::4` | 15.9 |
| Self Managed | Cloud Licensing | Self Managed instance generating new cloud license each sync. | [5041](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/5041) | `severity::4` | 15.9 |
