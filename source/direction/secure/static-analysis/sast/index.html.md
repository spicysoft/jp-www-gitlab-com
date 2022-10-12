---
layout: sec_direction
title: "Category Direction - Static Application Security Testing (SAST)"
description: "Static Application Security Testing (SAST) checks source code to find possible security vulnerabilities."
canonical_path: "/direction/secure/static-analysis/sast/"
---

- TOC
{:toc}

## Overview

### Scope

Static Application Security Testing (SAST) checks source code to find possible security vulnerabilities.
It helps developers identify weaknesses and security issues earlier in the software development lifecycle before code is deployed.
GitLab SAST runs on merge requests and the default branch of your software projects so you can continuously monitor and improve the security of the code you write.

SAST _does_:

- Use static analysis techniques to find issues early in the development process.
- Udentify weaknesses, which may be vulnerabilities, in the code it scans.
- Analyze the control and data flow of your program, check how functions are called, and otherwise analyze what the code could do at runtime.
- Help find issues that code reviewers or tests might miss.

SAST _doesn't_:

- Find known vulnerabilities in software dependencies; this is software composition analysis.
- Run code and attempt to trigger behaviors behaviors; this is dynamic analysis.
- Look for generic bugs or maintenance issues; this is [Code Quality](/direction/secure/static-analysis/code_quality/).
- Replace code reviewers or tests; it augments them instead.

Security tools like SAST are best when integrated directly into the [DevOps Lifecycle](https://about.gitlab.com/stages-devops-lifecycle/).
We believe that every project can benefit from SAST scans, so we include it in [Auto DevOps](https://docs.gitlab.com/ee/topics/autodevops/) and make SAST scanning available at all GitLab tiers, including Free.
Additional features, including proprietary code analysis and integration with GitLab Vulnerability Management, are [available only in GitLab Ultimate](https://docs.gitlab.com/ee/user/application_security/sast/#summary-of-features-per-tier).

> GitLab was recently named as a [Challenger in the 2021 Magic Quadrant for Application Security Testing](https://about.gitlab.com/analysts/gartner-ast21/) and a [Contender in Forrester's 2021 SAST Wave](https://www.forrester.com/report/The+Forrester+Wave+Static+Application+Security+Testing+Q1+2021/-/E-RES162015).

> “GitLab Secure allowed us to consolidate spend with centralized tools enabling a more streamlined workflow for our developers” - Retail product research organization, GitLab Ultimate Customer

### Goal

We want to help developers write better code and worry less about common security mistakes. SAST should help _prevent_ security vulnerabilities by helping developers easily _identify_ common security issues as code is being contributed and _mitigate_ proactively. SAST should _integrate_ seamlessly into a developer’s workflow because security tools that are actively used are effective.

- _Prevent_ - find common security issues as code is being contributed and before it gets deployed to production.
- _Identify_ - continuously monitor source code for known or common issues.
- _Mitigate_ - make it easy to remediate identified issues, automatically if possible.
- _Integrate_ - integrate with the rest of the DevOps pipeline and [play nicely with other vendors](https://about.gitlab.com/handbook/product/gitlab-the-product/#plays-well-with-others).

The importance of these goals is validated by GitLab's [2020 DevSecOps Landscape Survey](https://about.gitlab.com/developer-survey/#security). With 3,650 respondents from 21 countries, the survey found:

- Only 13% of companies give developers access to the results of application security tests.
- Over 42% said testing happens too late in the lifecycle.
- 36% reported it was hard to understand, process, and fix any discovered vulnerabilities.
- 31% found prioritizing vulnerability remediation an uphill battle.

> “GitLab Secure enables us to ship faster. Our other scanner tools could take up to a day to finish scanning whereas Secure scans finish as little a few minutes” - Healthcare services organization, GitLab Ultimate Customer

## What's Next & Why

We are currently investing in various areas of GitLab SAST.
We expect different parts of these initiatives to deliver value in the short, medium, and long term.

### Maturity plan

[The SAST Category Maturity level](https://about.gitlab.com/direction/maturity/#secure) is currently at _Complete_. We plan to mature it to _Lovable_ by late 2023.

- [SAST Direction Epic](https://gitlab.com/groups/gitlab-org/-/epics/527)
- Next Maturity Milestone Epic: [SAST to Lovable](https://gitlab.com/groups/gitlab-org/-/epics/1652)

### Language Support

We want to make SAST easy to set up and use.
While SAST uses sophisticated techniques, we want it to be simple to understand and use day-to-day, especially by developers who may not have specific security expertise.
Today, GitLab SAST automatically detects the programming languages used in your project and runs the right analyzer.

Currently, we're focusing on making it easier and faster to use SAST on [the many languages and frameworks we already support](https://docs.gitlab.com/ee/user/application_security/sast/#supported-languages-and-frameworks), rather than adding support for new languages.
However, if we don't support a language you use, you can request support by [opening an issue in this epic](https://gitlab.com/groups/gitlab-org/-/epics/297) with details.

When we decide where to invest resources toward new languages or maintenance of existing languages, we look at a variety of sources, including:

- Customer requests.
- Industry trends, such as [developer surveys](https://insights.stackoverflow.com/survey/2021#most-popular-technologies-language-prof).
- Languages used in [projects hosted on GitLab.com](https://app.periscopedata.com/app/gitlab/635927) (internal link; team members only).
- Analyst reports.

We are also working on a [next generation language-agnostic scanning](https://gitlab.com/groups/gitlab-org/-/epics/3260) approach. This CI/CD-focused scanning approach presents many opportunities to move faster and put more focus on the security rulesets rather than the implementation of those rules in various scanners. This is a strategic focus for GitLab SAST.

_User success metrics_

At GitLab, we [collect product usage data](https://about.gitlab.com/handbook/product/product-intelligence-guide/) to help us build a better product. You can see [growth of GitLab SAST on our performance indicators dashboard](https://about.gitlab.com/handbook/product/sec-section-performance-indicators/#securestatic-analysis---gmau---users-running-static-analysis-jobs).

The following metrics are also of interest as they help us know which area of SAST on which to focus:

- Tracking the # of SAST configurations (default, out of date, customized)
- Tracking the # of SAST jobs (increase coverage across repos)
- Tracking the # of issues identified by SAST
- Tracking the # of issues resolved that were identified by SAST
- Diversity of coverage of SAST jobs (language, type of identified issues, severity of issues)

### Analysis technology

GitLab SAST historically has been powered by [over a dozen open-source static analysis security analyzers](https://docs.gitlab.com/ee/user/application_security/sast/#supported-languages-and-frameworks).
These analyzers have proactively identified millions of vulnerabilities for GitLab users, but each of these analyzers is language-specific and uses a different scanning approach.

We are currently streamlining the set of [SAST analyzers](https://docs.gitlab.com/ee/user/application_security/sast/#supported-languages-and-frameworks) to provide:

- A simpler operational experience, for example, by not requiring compilation or complicated build configuration steps.
- Faster performance.
- Better rule customization, since rules can be defined in configuration files instead of code.
- A more consistent user experience across languages.

#### Semgrep-based scanning

The GitLab Static Analysis and Vulnerability Research teams have worked together to transition coverage from a number of existing open-source analyzers to Semgrep-based scanning.
We plan to continue to [migrate existing scanner coverage to Semgrep-based scanning](https://gitlab.com/groups/gitlab-org/-/epics/5245).

Semgrep-based scanning in GitLab SAST includes:

- The [Semgrep](https://semgrep.dev/) scanning engine, maintained by [r2c](https://r2c.dev). GitLab and r2c have partnered on areas of mutual interest.
- Detection rules that are created, maintained, and supported by GitLab.
- GitLab Ultimate features like [Advanced Vulnerability Tracking](https://docs.gitlab.com/ee/user/application_security/sast/#advanced-vulnerability-tracking).
- Integration with GitLab [Vulnerability Management](https://docs.gitlab.com/ee/user/application_security/vulnerabilities/index.html).

#### Next-generation scanning

While we work on Semgrep-based scanning, we're also continuing our efforts toward our [next-generation scanning approach](https://gitlab.com/groups/gitlab-org/-/epics/3260). This will enhance our vulnerability detection engine, improve our [vulnerability fingerprinting and tracking accuracy](https://gitlab.com/groups/gitlab-org/-/epics/5144) features, and help reduce false positives as we work to [provide developers increased context](https://gitlab.com/gitlab-org/gitlab/-/issues/284337) to remediate SAST findings.

This next-generation SAST scanner is a proprietary tool built on research by our [Vulnerability Research Team](https://about.gitlab.com/handbook/engineering/development/sec/secure/vulnerability-research/).
The scanner's advanced approach allows it to analyze data and control flow to understand how logic and data flow through source code to identify vulnerabilities.

We are initially using this tool to improve accuracy and reduce false positives by double-checking findings from other SAST analyzers.
Later, we plan to replace some of the other analyzers with the next-gen scanner.
And, ultimately, we hope to use the data it provides to build features that underscore the value of building workflows inside _The One DevOps Platform_.

### Code review user experience

We want to make it easier for merge request authors and code reviewers to spot possible security issues.

To do this, we plan to [show SAST findings in the MR changes view](https://gitlab.com/gitlab-org/gitlab/-/issues/322689).
We're approaching this problem by:

1. First, improving the existing diff view [available in GitLab Code Quality](https://docs.gitlab.com/ee/user/project/merge_requests/code_quality.html#code-quality-in-diff-view).
1. Then, displaying SAST findings in a similar way.

This will complement our existing [MR security widget](https://docs.gitlab.com/ee/user/application_security/#view-security-scan-information-in-merge-requests) and make it easier for developers to see vulnerabilities in files they're working on inline, just like in their IDEs.

### Workflow improvements

While we're working on these larger initiatives, we aren't losing sight of usability and other concerns.

We're investing in improvements that will help:

- Make it easier to configure SAST, including at a group level across multiple projects.
- Allow GitLab to iterate on detection rules without causing confusing behavior in Vulnerability Management.
- Empower developers and other users to debug issues without requiring Support assistance.
- Demonstrate the value of SAST scanning at tiers below Ultimate. (Scanning is currently available in all tiers, but, below Ultimate, results are provided [only as JSON report artifacts](https://docs.gitlab.com/ee/user/application_security/sast/#summary-of-features-per-tier).)

## Maturity Plan

- [SAST to Complete](https://gitlab.com/groups/gitlab-org/-/epics/2895)

## Recent Noteworthy Features

- [Faster, easier Semgrep-based C# scanning](https://about.gitlab.com/releases/2022/09/22/gitlab-15-4-released/#faster-easier-c-scanning-in-sast) (15.4)
- [Replacement of Bandit, ESLint, and Gosec with Semgrep-based scanning](https://about.gitlab.com/releases/2022/09/22/gitlab-15-4-released/#streamlined-sast-analyzer-coverage) (15.4)
- [Faster, easier Semgrep-based Java scanning](https://about.gitlab.com/releases/2022/04/22/gitlab-14-10-released/#faster-easier-java-scanning-in-sast) (14.10)
- [CWE-based severities for .NET](https://about.gitlab.com/releases/2022/02/22/gitlab-14-8-released/#sast-severities-now-available-for-net) (14.8)
- [Customize built-in SAST and Secret Detection rules](https://about.gitlab.com/releases/2022/02/22/gitlab-14-8-released/#customize-built-in-sast-and-secret-detection-rules) (14.8)
- [Support for .NET 6](https://about.gitlab.com/releases/2021/12/22/gitlab-14-6-released/#sast-support-for-net-6) (14.6)
- [Custom ruleset composability for SAST and Secret Detection](https://about.gitlab.com/releases/2021/12/22/gitlab-14-6-released/#custom-ruleset-composability-for-sast-and-secret-detection) (14.6)
- [Infrastructure as Code (IaC) security scanning](https://about.gitlab.com/releases/2021/11/22/gitlab-14-5-released/#introducing-infrastructure-as-code-iac-security-scanning) (14.5)
- [Semgrep-based scanning for Go](https://about.gitlab.com/releases/2021/10/22/gitlab-14-4-released/#semgrep-sast-analyzer-for-go) (14.4)
- [Next Generation SAST to reduce Ruby false positives](https://about.gitlab.com/releases/2021/09/22/gitlab-14-3-released/#next-generation-sast-to-reduce-ruby-false-positives) (14.3)
- [Support for Go 1.16](https://about.gitlab.com/releases/2021/08/22/gitlab-14-2-released/#sast-go-analyzer-updated-to-support-go-116) (14.2)
- [Semgrep-based scanning for C](https://about.gitlab.com/releases/2021/08/22/gitlab-14-2-released/#semgrep-sast-analyzer-for-c) (14.2)
- [Improved vulnerability tracking for GoSec, Semgrep, and Brakeman analyzers](https://about.gitlab.com/releases/2021/08/22/gitlab-14-2-released/#improved-vulnerability-tracking-for-gosec-semgrep-and-brakeman-analyzers) (14.2)
- [Pin to Specific SAST Analyzer Versions](https://about.gitlab.com/releases/2021/06/22/gitlab-14-0-released/#pin-to-specific-sast-analyzer-versions) (14.0)
- [Mobile application binary scanning support](https://about.gitlab.com/releases/2021/05/22/gitlab-13-12-released/#mobile-application-binary-scanning-support) (13.12)
- [Semgrep-based scanning for JavaScript, TypeScript, and Python](https://about.gitlab.com/releases/2021/05/22/gitlab-13-12-released/#semgrep-sast-analyzer-for-javascript-typescript-and-python) (13.12)
- [SAST scanners now available in our Free tier for all GitLab users](https://about.gitlab.com/releases/2020/08/22/gitlab-13-3-released/#sast-security-analyzers-available-for-all) (13.3)

View the [full list of announced SAST features](https://gitlab-com.gitlab.io/cs-tools/gitlab-cs-tools/what-is-new-since/?tab=features&selectedCategories=SAST).

## Competitive Landscape

Many well-known commercial products provide SAST solutions. Most of them support multiple languages and provide limited integration into the development lifecycle.

Competitors are focused on a few areas:

- Accuracy, breadth, and scope of identifiable issues
- More code language support
- Detection Intelligence (AI/ML)
- Solution automation

Here are some vendors providing SAST tools:

- [Semgrep](https://semgrep.dev/)
- [Checkmarx](https://www.checkmarx.com/products/static-application-security-testing)
- [Synopsys](https://www.synopsys.com/software-integrity/security-testing/static-analysis-sast.html)
- [SonarQube](https://www.sonarqube.org)
- [GitHub Enterprise](https://github.com/features/security)
- [CA Veracode](https://www.veracode.com/products/binary-static-analysis-sast)
- [Fortify](https://software.microfocus.com/en-us/products/static-code-analysis-sast/overview)
- [IBM AppScan](https://www.ibm.com/security/application-security/appscan)

GitLab has a unique position to deeply integrate into the development lifecycle, with the ability to leverage CI/CD pipelines to perform the security tests. There is no need to connect the remote source code repository, or to use a different interface. GitLab is consistently now having enterprise customers replacing traditional Security scanning tools in favor of GitLab's fully integrated Security Scanning tools:

> “GitLab Secure replaced Veracode, Checkmarx, and Fortify in my DevOps toolchain. Secure scans faster, more accurate, and doesn’t require my developers to learn new tools” - Financial services organization, GitLab Gold Customer

We even allow [integration with partners and competitors](https://about.gitlab.com/partners/#security) to ensure flexibility. This allows teams to choose specific SAST solutions that fit their unique needs without GitLab being a constraint. This centers GitLab as the system of control and allows people to [extend and integrate other solutions](https://docs.gitlab.com/ee/development/integrations/secure.html) into the GitLab DevSecOps workflow.

We can improve the experience even further by supporting additional features that are currently present in other tools.

- [Support incremental scans for SAST](https://gitlab.com/gitlab-org/gitlab-ee/issues/9815)
- [Auto Remediation support for SAST](https://gitlab.com/gitlab-org/gitlab-ee/issues/9480)

## Analyst Landscape

We want to engage analysts to make them aware of the security features already available in GitLab. They also perform analysis of vendors in the space and have an eye on the future. We will blend analyst insights with what we hear from our customers, prospects, and the larger market as a whole to ensure we’re adapting as the landscape evolves.

- [2021 Gartner Magic Quadrant: Application Security Testing, 27 May, 2021](https://www.gartner.com/en/documents/4001946-magic-quadrant-for-application-security-testing)
- [2021 Forrester Wave for SAST](https://www.forrester.com/report/The+Forrester+Wave+Static+Application+Security+Testing+Q1+2021/-/E-RES162015).
- [2021 Winter G2 Leader: Best Static Application Security Testing (SAST) Software](https://www.g2.com/categories/static-application-security-testing-sast#grid), view full list of [public GitLab Reviews](https://www.g2.com/products/gitlab/reviews)
- [2020 Q3 Forrester Now Tech: Static Application Security Testing, 6 August, 2020](https://www.forrester.com/report/Now+Tech+Static+Application+Security+Testing+Q3+2020/-/E-RES161475?objectid=RES161475)
- [2020 GigaOm Radar for Evaluating DevSecOps Tools, 19 November, 2020](https://gigaom.com/report/gigaom-radar-for-evaluating-devsecops-tools/)
- [2020 Gartner Hype Cycle for Application Security, 27 July, 2020](https://www.gartner.com/document/3988043?ref=solrResearch&refval=260086210)
- [2020 Gartner Research: Structuring Application Security Tools and Practices for DevOps and DevSecOps, 18 June, 2020](https://www.gartner.com/doc/3986517?ref=solrResearch&refval=254019907)
- [2020 Gartner Research: 7 Tips to Set Up an Application Security Program Without Breaking the Bank, 11 June, 2020](https://www.gartner.com/document/3986206?ref=solrResearch&refval=254020933)
- [2020 Gartner Research: How to Deploy and Perform Application Security Testing, 20 March 2020](https://www.gartner.com/en/documents/3982363/how-to-deploy-and-perform-application-security-testing)
- [2020 GitLab DevSecOps Landscape Survey, 18 May, 2020](https://about.gitlab.com/developer-survey/)
- [2020 StackOverflow Developer Survey](https://insights.stackoverflow.com/survey/2020#technology-collaboration-tools)
- [Gartner Application Security Testing Reviews](https://www.gartner.com/reviews/market/application-security-testing)
- [OWASP SAST Tools](https://www.owasp.org/index.php/Source_Code_Analysis_Tools)

## Top Customer Success/Sales Issue(s)

- [Full list of SAST issues](https://gitlab.com/gitlab-org/gitlab/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3ASAST)

## Top user issue(s)

- [Full list of SAST issues with Customer Label](https://gitlab.com/gitlab-org/gitlab/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3ASAST&label_name[]=customer)
- [Full list of SAST issues with internal customer label](https://gitlab.com/gitlab-org/gitlab/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3ASAST&label_name[]=internal%20customer)

## Top Direction Item(s)

- [SAST Product Vision](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3ASAST&label_name[]=direction)

## Related Categories

- [Dynamic Application Security Testing (DAST)](https://about.gitlab.com/direction/secure/dynamic-analysis/dast/): scanning live applications
- [Dependency Scanning](https://about.gitlab.com/direction/secure/composition-analysis/dependency-scanning/): identifying vulnerabilities in software dependencies
- [Vulnerability Management](https://about.gitlab.com/direction/secure/vulnerability_management/): helping you manage findings through security dashboards, reports, and other management features

Last Reviewed: 2022-10-07

Last Updated: 2022-10-07
