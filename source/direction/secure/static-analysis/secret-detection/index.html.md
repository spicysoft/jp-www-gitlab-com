---
layout: markdown_page
title: "Category Direction - Secret Detection"
description: "Secret Detection helps you find and fix leaked secret values like passwords, authentication tokens, and private keys in your GitLab repositories."
canonical_path: "/direction/secure/static-analysis/secret-detection/"
---

- TOC
{:toc}

## Overview

### The problem

Good tooling helps people and teams stay resilient against mistakes.

GitLab Secret Detection helps you avoid a particularly dangerous type of mistake: leaking credentials or other secrets in your code repositories.

Even experienced developers and teams can slip up and cause serious risk by committing secrets into repositories.
For example, [a 2019 research paper](https://www.ndss-symposium.org/wp-content/uploads/2019/02/ndss2019_04B-3_Meli_paper.pdf) reported that "thousands of new, unique secrets are leaked every day" in public repositories.

The potential damage is significant: secrets often provide access to sensitive data, production systems, or cloud resources that can be abused.

If a repository is public, any number of automated tools or malicious users can detect and abuse the secret—there are even public sites that watch for leaked secrets.
And, even if a repository is private within a team, leaked secrets can no longer be trusted to uniquely identify the authorized user(s) in a [non-repudiable](https://en.wikipedia.org/wiki/Non-repudiation) way.

[GitLab's Security Trends analysis](/blog/2020/04/02/security-trends-in-gitlab-hosted-projects/#top-vulnerability-types) found that 18% of projects hosted on GitLab had identified [leaked secrets](/blog/2020/10/06/gitlab-latest-security-trends/#secret-handling-vulnerabilities) with Secret Detection.

### GitLab's solution

> GitLab was recently named as a [Challenger in the 2021 Magic Quadrant for Application Security Testing Magic Quadrant](/analysts/gartner-ast21/).

GitLab Secret Detection helps you prevent the unintentional leak of sensitive information like passwords, authentication tokens, and private keys.

It checks source files and configuration files to detect well-known and common patterns that look like secrets or credentials and reports findings that are potentially risky to share.

Secret Detection doesn't target a specific language, so you can easily [enable it in any project](https://docs.gitlab.com/ee/user/application_security/secret_detection/).
Our approach is based on [patterns for identifiable credentials](https://gitlab.com/gitlab-org/security-products/analyzers/secrets/-/blob/master/gitleaks.toml) like AWS tokens, API keys, and more.

We want everyone to be as secure as they can be, so:
- Secret Detection is available in every GitLab tier: you can use [parts of Secret Detection](https://docs.gitlab.com/ee/user/application_security/secret_detection/#summary-of-features-per-tier) whether you use Free, Premium, or Ultimate.
- Secret Detection is on by default in [Auto DevOps](https://docs.gitlab.com/ee/topics/autodevops/).

In GitLab Ultimate, after you enable Secret Detection:
- You can see and address new Secret Detection findings in a widget shown on each merge request.
- You can see findings across your projects in the [Security Dashboard](https://docs.gitlab.com/ee/user/application_security/security_dashboard/).

#### Relationship with other features

GitLab Secret Detection runs in your CI/CD pipelines and reports results.
The Secret Detection category covers this feature.

Separately, GitLab offers other features that also relate to secret values:
- [Push rules](https://docs.gitlab.com/ee/user/project/repository/push_rules.html#prevent-pushing-secrets-to-the-repository) blocks files with certain names from being pushed to your repositories.
- The [Secrets Management](/direction/verify/secrets_management/) category focuses on enabling GitLab to use and manage secret values.

### Goal

Overall, we want to help developers write better code and worry less about common security mistakes.
Our goal is to provide Secret Detection as a standard part of the standard software development lifecycle (SDLC).
No one should have to think about secrets to be protected from leaking them.

The importance of these goals is validated by GitLab's [2020 DevSecOps Landscape Survey](/developer-survey/previous/2020/). With 3,650 respondents from 21 countries, the survey found:

* Only 13% of companies give developers access to the results of application security tests.
* Over 42% said testing happens too late in the lifecycle. 
* 36% reported it was hard to understand, process, and fix any discovered vulnerabilities. 

*User success metrics*

At GitLab, we [analyze product usage data](/handbook/product/product-intelligence-guide/) to help us deliver better results.
Team members can see the growth of GitLab Secret Detection on our [performance indicators dashboard (private link)](https://internal-handbook.gitlab.io/product/performance-indicators/sec-section/#securestatic-analysis---gmau---users-running-static-analysis-jobs).

The following measures would help us know how successful we are in achieving our goals:
- Tracking the # of Secret Detection configurations (default, out of date, customized)
- Tracking the # of Secret Detection jobs (increase coverage across repos)
- Tracking the # of issues identified by Secret Detection
- Tracking the # of issues resolved that were identified by Secret Detection
- % of project files covered by Secret Detection

## What's next & why

Our first duty is to deliver a reliable, usable, trustworthy solution to our users.
We generally handle high-severity bug fixes before we work on feature improvements, and we treat significant performance improvements as "feature work".

Our proactive work centers around two major themes:

1. Keep GitLab users safe—including GitLab team members, since many teams [dogfood](/handbook/product/product-processes/#dogfood-everything) Secret Detection.
    - Beyond protecting individuals and organizations, this also contributes to the trustworthiness of GitLab.com as a major public platform.
1. Strengthening the value of _The One DevOps Platform_.

We specifically plan to:

1. Address problems with the usability of the current Secret Detection product.
1. Add new [secret scanning partners](https://docs.gitlab.com/ee/user/application_security/secret_detection/post_processing.html) who we notify when secrets are leaked on GitLab.com.
    - Interested potential partners can learn more in the [Partner Integrations epic](https://gitlab.com/groups/gitlab-org/-/epics/4944).
1. Deliver a [consistent, platform-wide, on-by-default experience](https://gitlab.com/groups/gitlab-org/-/epics/8667) that:
    - Doesn't require users to modify their CI/CD pipelines.
    - Protects content outside of codebases.

Longer-term, we hope to be able to take action on leaked secrets even earlier, in keeping with the Secure stage theme [_Shift Left. No, More Left Than That._](/direction/secure/#shift-left-no-more-left-than-that)
This could mean running secret detection on developers' workstations or rejecting commits that include detected secrets.

We intend to expand detection and response workflows first, before we implement blocking features.
We believe this approach:

1. Supports iterative development by allowing us to introduce features and monitor them before they are part of critical "hot path" flows in the application.
1. Aligns with the [Always Allow for Deploying to Production](/handbook/product/product-principles/#always-allow-for-deploying-to-production) principle.

### Roadmap

 - [Secret Detection Direction Epic](https://gitlab.com/groups/gitlab-org/-/epics/3253)
 - Next Maturity Milestone Epic: [Secret Detection to Complete](https://gitlab.com/groups/gitlab-org/-/epics/3257)

### Maturity plan

At GitLab, we assess the [maturity](/direction/maturity/) of each feature category.

The [Category Maturity level for Secret Detection](/direction/maturity/#secure) is currently **Viable**. We plan to mature it to **Complete** in 2023.

### Support to other categories

Secret Detection is maintained by the [Static Analysis group](/handbook/product/categories/#static-analysis-group), which also maintains [Static Application Security Testing (SAST)](../sast/) and [Code Quality](../code_quality/).

Because Secret Detection is self-contained and only uses one [analyzer](https://docs.gitlab.com/ee/user/application_security/terminology/), we can use Secret Detection to [iterate](/handbook/values/#iteration) quickly on changes that can be applied to [Static Application Security Testing (SAST)](../sast/) and [Code Quality](../code_quality/).

We also seek to make improvements in other areas, for example:

- Introducing [new default prefixes for access tokens](/releases/2021/11/22/gitlab-14-5-released/#new-gitlab-access-token-prefix-and-detection) and detecting them in Secret Detection. (Complete)
- Triggering actions in Secrets Management, like [notifying Hashicorp Vault about detected secrets](https://gitlab.com/gitlab-org/gitlab/-/issues/216276). (Future)

## Recent highlights
- 15.2 (July 2022): [Significantly faster detection](https://about.gitlab.com/releases/2022/07/22/gitlab-15-2-released/#faster-secret-detection)
- 14.8 (February 2022): [Customize built-in SAST and Secret Detection rules](/releases/2022/02/22/gitlab-14-8-released/#customize-built-in-sast-and-secret-detection-rules), building on customization features introduced in 14.6 and 13.5
- 14.7 (January 2022): [Major scanning performance improvements](/releases/2022/01/22/gitlab-14-7-released/#major-gitleaks-performance-improvements)
- 14.5 (November 2021): [Detection of GitLab access tokens with new `glpat-` prefix](/releases/2021/11/22/gitlab-14-5-released/#new-gitlab-access-token-prefix-and-detection)
- 14.5 (November 2021): [Major expansion of detection patterns](/releases/2021/11/22/gitlab-14-5-released/#additional-secret-detection-pattern-support)

[View the full changelog of Secret Detection features we've announced](https://gitlab-com.gitlab.io/cs-tools/gitlab-cs-tools/what-is-new-since/?tab=features&selectedCategories=Secret+Detection&minVersion=13_00).

## Competitive landscape

There are a variety of vendors and open source projects offering Secret Detection solutions:
* [GitGuardian](https://gitguardian.com/), which offers open source and paid plans, local scanning, and monitoring of GitHub, GitHub Enterprise, GitLab, or Bitbucket repositories
* [GitHub Secret Scanning](https://help.github.com/en/github/administering-a-repository/about-secret-scanning), which:
    - In public repositories, automatically runs a specific set of patterns and sends results to partners for remediation.
    - In private repositories, only runs if you purchase GitHub Advanced Security.
* [Trufflehog](https://trufflesecurity.com/trufflehog) (open source and commercial; see [v3 announcement](https://trufflesecurity.com/blog/introducing-trufflehog-v3) for details)
* [Repo Supervisor](https://github.com/auth0/repo-supervisor) (open source from Auth0)
* [Detect Secrets](https://github.com/Yelp/detect-secrets) (open source from Yelp)
* [Secret Bridge](https://github.com/duo-labs/secret-bridge) (open source from Duo Security)

GitLab is built to help you keep all your DevSecOps workflows in a single platform.
When you use GitLab Secret Detection:

- Your code and secrets stay safe with GitLab: because GitLab already provides [Source Code Management (SCM)](/stages-devops-lifecycle/source-code-management/), there's no need to send your source code to a third party for scanning. If you run a Self-Managed GitLab instance, your code never leaves your network.
- Busy team members don't have to navigate to yet another system to see secret detection results.
- Even if you choose to use another solution, we support [integration with partners and competitors](/partners/#security) so you can can [extend and integrate other solutions](https://docs.gitlab.com/ee/development/integrations/secure.html) into your GitLab-based DevSecOps workflows.
- You can use [Scan Result Policies](https://docs.gitlab.com/ee/user/application_security/policies/scan-result-policies.html) to require that findings are addressed before merge requests are accepted, along with other GitLab governance features.

## Analyst landscape

We engage analysts to make them aware of the security features already available in GitLab.
We blend analyst insights with what we hear from our customers, prospects, the larger market, and the security community to ensure we’re adapting as the landscape evolves.

Analysts usually include Secret Detection as a secondary feature of Application Security Testing (AST) coverage.
See [Category Direction - Static Application Security Testing (SAST)](../sast/#analyst-landscape) for up-to-date analyst coverage.

## Top user issues
See [all Secret Detection issues with the `customer` Label](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3ASecret%20Detection&label_name[]=customer).

## Top Customer Success/Sales issues
See [all Secret Detection issues](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3ASecret%20Detection).

## Related categories
* [Secrets Management](/direction/verify/secrets_management/) - Managing Release Configuration Secrets
* [SAST](/direction/secure/static-analysis/sast/) - Static Application Security Testing
* [Vulnerability Management](/direction/secure/vulnerability_management/) - Security Dashboard, Reports, and interacting with Vulnerabilities
* [Secure stage direction](/direction/secure/)


Last Reviewed: 2022-10-06

Last Updated: 2022-10-06
