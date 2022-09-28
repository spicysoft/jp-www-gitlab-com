---
layout: markdown_page
title: "Category Direction - Instance Resiliency"
description: "We want to prevent malicious activity from occurring within GitLab Instances. Learn more here!"
canonical_path: "/direction/anti-abuse/instance_resiliency/"
---

- TOC
{:toc}

# Instance Resiliency

In early 2021, we witnessed the [cryptomining CI co-evolution](https://layerci.com/blog/crypto-miners-are-killing-free-ci/), where free SaaS continuous integration platforms are being seriously compromised by the cryptocurrency mining attacks. GitLab was no exeception to this Industry-wide experience and we instrumented a few practices to mitigate abuse for [on GitLab.com](https://about.gitlab.com/blog/2021/05/17/prevent-crypto-mining-abuse/), which definitely impacts the experience of free and trial users.

Going forward, we needed a more proactive approach for monitoring, detecting, evaluating, preventing, and reacting to pipeline abuse. Traditionally, [product categories](/handbook/product/categories/#hierarchy) are single product group areas an with [one engineering team](/company/team/structure/#product-groups). As a result we funded a cross-cutting Abuse group, and created this Instance Resiliency category as part of our [Data Science](/handbook/product/categories/#data-science-section) section.

## Pipeline Abuse Prevention

## Mission

Pipeline Abuse Prevention is focused on proactive mitigation of CI abuse to ensure acceptable tolerances of business impact and human cost are not exceeded.

## Confidential issues

A number of issues are intentionally confidential despite our value of transparency.  This is because we don't want to make it obvious to abusers the exact details of our controls.  We aren't relying on "security by obscurity"; however, we also don't want to make it easier for the abusers.

## Additional Resources

- [Issue List](https://gitlab.com/gitlab-org/gitlab/-/issues?label_name%5B%5D=pipeline+abuse+prevention)

For specific information related to spam and abuse reduction intiatives, check out [Trust and Safety](https://about.gitlab.com/handbook/engineering/security/security-operations/trustandsafety/).

## Stable counterparts in Pipeline Abuse Prevention

We rely on several teams to make this program successful:

| DRI  | EM | Trust & Safety | AppSec | Fulfillment PM| Engineering |
| --- | --- | --- | --- |--- |--- |
| Taylor McCaslin | Monmayuri Ray | Charl de Wit | Nick Malcolm | Justin Farris| Stan Hu|

### Product Scope DRIs

ModelOps - Anything related to preventing abuse
Fulfillment - Anything related to collection and validation of credit cards/debit cards
Verify - Anything related to triggering of credit card/debit card validation

## Program Pillars

There are four areas of focus for Pipeline Abuse Prevention:

1. Credit/Debit Card Validation for Free and Trial Users to block bad actors | [Kibana Dashboard](https://log.gprd.gitlab.net/app/dashboards#/view/127b1bb0-b71b-11eb-966b-2361593353f9?_g=(filters%3A!()%2Cquery%3A(language%3Akuery%2Cquery%3A'')%2CrefreshInterval%3A(pause%3A!t%2Cvalue%3A0)%2Ctime%3A(from%3Anow-24h%2Cto%3Anow))) | [Dashboard](https://app.periscopedata.com/app/gitlab/869057/Cryptomining-abuse-daily-dashboard) |
1. Pipeline Validation Service which has rules that catch certain coding behaviors to stop bad actors before  pipelines are run | [Dashboard](https://log.gprd.gitlab.net/goto/504382d6179c4ed6e7f194b41a680b18) |
1. CI Minute Quota enforcements and limits across various levels of GitLab.com | [Dashboard](https://app.periscopedata.com/app/gitlab/869057/Cryptomining-abuse-daily-dashboard) |
1. Cost controls two dimensions: human cost and [Infrastructure cost](https://app.periscopedata.com/app/gitlab/742611/WIP:-GCP-Cost-Dashboard) | [CI Runner Costs](https://app.periscopedata.com/app/gitlab/742611/WIP:-GCP-Cost-Dashboard?widget=11755710&udv=1121055) | [Blocking Dashboard](https://app.periscopedata.com/app/gitlab/869057/Cryptomining-abuse-daily-dashboard?widget=11823674&udv=0)

## What's Next & Why

### Credit/Debit Card Validation Workstream in 14.0

We have a few items planned for follow-up enhancements to the rapid action efforts and credit card validation work via this [confidential issue](https://gitlab.com/gitlab-org/gitlab/-/issues/331090). We are exploring usability of the credit card validation experience for legitimate users via this [confidential epic](https://gitlab.com/groups/gitlab-org/-/epics/6011).

We also are thinking about ways to make the validation more inclusive for legitimate users who don't have access to or don't want to provide a credit/debit card in this [confidential issue](https://gitlab.com/gitlab-org/gitlab/-/issues/331516).

### PVS Workstream in 14.0

Currently, the team is in [open dialogue on ownership of PVS](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/pipeline-validation-service/-/issues/65).

We are also looking at instrumenting methods of abuse control via this 1. Abuse tracking controls including [confidential issue](https://gitlab.com/gitlab-org/gitlab/-/issues/331891)

### CI Minute Quota enforcements and limits across various levels of GitLab.com

As of 13.12, we have instrumented enforcement of limits in private projects where now pipelines fail when CI minute quotas are exceeded.

Up next, we are iterating toward enforcement across public project by introducing limits to new public projects. While also taking into account how this impacts our Open Source projects in [gitlab#330888](https://gitlab.com/gitlab-org/gitlab/-/issues/330888).

This effort will be then be expanded to all free, public users via [gitlab#254231](https://gitlab.com/gitlab-org/gitlab/-/issues/254231), where we hope to instrument counting of CI minutes as well via [gitlab#254231](https://gitlab.com/gitlab-org/gitlab/-/issues/254231).

### Cost Controls

We have two issues to establish costs control mechanisms:

1. [Implement thresholds for allotted human cost of pipeline abuse](https://gitlab.com/gitlab-org/gitlab/-/issues/332355)
1. [Implement thresholds for allotted infrastructure costs](https://gitlab.com/gitlab-org/gitlab/-/issues/332357)

## Competitive Landscape

Cryptomining is impacting [free CI providers industry wide](https://layerci.com/blog/crypto-miners-are-killing-free-ci/). GitHub has added several features to help [combat bad actors](https://github.blog/2021-04-22-github-actions-update-helping-maintainers-combat-bad-actors/) in the wake of this shake up including:

1. Changes to [Approving workflow runs from public forks](https://docs.github.com/en/actions/managing-workflow-runs/approving-workflow-runs-from-public-forks)
1. [Protecting maintainers with manual approvals](https://github.blog/2021-04-22-github-actions-update-helping-maintainers-combat-bad-actors/#new-features-to-help-protect-maintainers)

## Looking Forward

We would like to implement more methods for abuse control like those discussed in this [confidential issue](https://gitlab.com/gitlab-org/gitlab/-/issues/332627). The [Applied ML Group is planning](https://about.gitlab.com/direction/modelops/applied_ml/insider-threat/#whats-next--why) an [MVC to apply models to detect CI abuse](https://gitlab.com/gitlab-org/gitlab/-/issues/201576).
