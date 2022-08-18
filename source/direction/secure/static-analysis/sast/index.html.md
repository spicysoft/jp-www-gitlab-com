---
layout: secure_and_protect_direction
title: "Category Direction - Static Application Security Testing (SAST)"
description: "Static Application Security Testing (SAST) checks source code to find possible security vulnerabilities."
canonical_path: "/direction/secure/static-analysis/sast/"
---

- TOC
{:toc}

## Description

### Overview

Static Application Security Testing (SAST) checks source code to find possible security vulnerabilities. SAST helps developers identify weaknesses and security issues earlier in the software development lifecycle before code is deployed. SAST usually is performed when code is being submitted to a code repository. Think of it like spell check for security issues.

SAST is performed on source code or binary files and thus usually won't require code to be compiled, built, or deployed. However, this means that SAST cannot detect runtime or environment issues. SAST can analyze the control flow, the abstract syntax tree, how functions are invoked, and if there are information leaks to detect weak points that may lead to unintended behaviors.

Just like spell checkers, SAST analyzers are language and syntax specific and can only identify known classes of issues. SAST does not replace code reviewers, instead, it augments them, and provides another line of proactive defense against common and known classes of security issues. SAST is specifically about identifying potential security issues, so it should not be mistaken for [Code Quality](https://about.gitlab.com/direction/secure/static-analysis/code_quality/).

Security tools like SAST are best when integrated directly into the [DevOps Lifecycle](https://about.gitlab.com/stages-devops-lifecycle/) and every project can benefit from SAST scans, which is why we include it in [Auto DevOps](https://docs.gitlab.com/ee/topics/autodevops/).

> GitLab was recently named as a [Challenger in the 2021 Magic Quadrant for Application Security Testing](https://about.gitlab.com/analysts/gartner-ast21/) and a [Contender in Forrester's 2021 SAST Wave](https://www.forrester.com/report/The+Forrester+Wave+Static+Application+Security+Testing+Q1+2021/-/E-RES162015).

### Goal

Overall we want to help developers write better code and worry less about common security mistakes. SAST should help _prevent_ security vulnerabilities by helping developers easily _identify_ common security issues as code is being contributed and _mitigate_ proactively. SAST should _integrate_ seamlessly into a developer’s workflow because security tools that are actively used are effective.

- _Prevent_ - find common security issues as code is being contributed and before it gets deployed to production.
- _Identify_ - continuously monitor source code for known or common issues.
- _Mitigate_ - make it easy to remediate identified issues, automatically if possible.
- _Integrate_ - integrate with the rest of the DevOps pipeline and [play nice with other vendors](https://about.gitlab.com/handbook/product/gitlab-the-product/#plays-well-with-others).

The importance of these goals is validated by GitLab's [2020 DevSecOps Landscape Survey](https://about.gitlab.com/developer-survey/#security). With 3,650 respondents from 21 countries, the survey found:

- Only 13% of companies give developers access to the results of application security tests.
- Over 42% said testing happens too late in the lifecycle.
- 36% reported it was hard to understand, process, and fix any discovered vulnerabilities.
- 31% found prioritizing vulnerability remediation an uphill battle.

> “GitLab Secure enables us to ship faster. Our other scanner tools could take up to a day to finish scanning whereas Secure scans finish as little a few minutes” - Healthcare services organization, GitLab Ultimate Customer

### Language Support

We want to make SAST easy to set up and use, making complexity transparent to users where possible. GitLab can automatically detect the programming language of a project and run the appropriate analyzer. We [support a variety of popular languages and frameworks](https://docs.gitlab.com/ee/user/application_security/sast/#supported-languages-and-frameworks).

We want to increase language coverage by including support for the most common languages. We look at a variety of sources to determine language priorities including [industry trends](https://insights.stackoverflow.com/survey/2019#technology), [projects hosted on GitLab](https://about.gitlab.com/blog/2020/04/02/security-trends-in-gitlab-hosted-projects/), as well as [analyst reports](https://www.gartner.com/en/documents/3984345/magic-quadrant-for-application-security-testing) (italics below indicate languages called out specifically in analyst reports).

Language priorities (in addition to our existing [language support](https://docs.gitlab.com/ee/user/application_security/sast/#supported-languages-and-frameworks)):

- _Java_
- _C#_ (.NET Core & Framework)
- _PHP_
- _JavaScript_ (better support for popular frameworks)
- Python
- Go
- Mobile (iOS & Android) - [Added in 13.6](https://about.gitlab.com/releases/2020/10/22/gitlab-13-5-released/#sast-support-for-ios-and-android-mobile-apps)

If we don't support a language you use, you can request support by [commenting on this epic](https://gitlab.com/groups/gitlab-org/-/epics/297) with details.

We are also working on a [next generation language-agnostic scanning](https://gitlab.com/groups/gitlab-org/-/epics/3260) approach. This CI/CD-focused scanning approach presents many opportunities to move faster and put more focus on the security rulesets rather than the implementation of those rules in various scanners. This is a strategic focus for GitLab SAST during 2022 and our 15.x release cycle.

_User success metrics_
At GitLab, we [collect product usage data](https://about.gitlab.com/handbook/product/product-intelligence-guide/) to help us build a better product. You can see [growth of GitLab SAST on our performance indicators dashboard](https://about.gitlab.com/handbook/product/sec-section-performance-indicators/#securestatic-analysis---gmau---users-running-static-analysis-jobs).

The following metrics are also of interest as they help us know which area of SAST on which to focus:

- Tracking the # of SAST configurations (default, out of date, customized)
- Tracking the # of SAST jobs (increase coverage across repos)
- Tracking the # of issues identified by SAST
- Tracking the # of issues resolved that were identified by SAST
- Diversity of coverage of SAST jobs (language, type of identified issues, severity of issues)

## Roadmap

[The SAST Category Maturity level](https://about.gitlab.com/direction/maturity/#secure) is currently at _Complete_. We plan to mature it to _Lovable_ by late 2023.

- [SAST Direction Epic](https://gitlab.com/groups/gitlab-org/-/epics/527)
- Next Maturity Milestone Epic: [SAST to Lovable](https://gitlab.com/groups/gitlab-org/-/epics/1652)

### What's Next & Why

With all of our open-source based [SAST scanners now available in our Free tier for all GitLab users](https://about.gitlab.com/releases/2020/08/22/gitlab-13-3-released/#sast-security-analyzers-available-for-all), and UI-based [configuration tools](https://docs.gitlab.com/ee/user/application_security/sast/#configure-sast-in-the-ui) for all customers, we're turning our focus to data quality and accuracy improvements.

### Next Generation Scanning

We also are continuing our efforts with our next generation [generic language-agnostic scanning](https://gitlab.com/groups/gitlab-org/-/epics/3260) approach. This will bring improvements to our vulnerability detection engine, [vulnerability fingerprinting and tracking accuracy](https://gitlab.com/groups/gitlab-org/-/epics/5144), as well as help reduce false positives to [provide developers increased context for taking action](https://gitlab.com/gitlab-org/gitlab/-/issues/284337) to remediate SAST findings. This next generation SAST scanner will be a proprietary tool build upon research by our [Vulnerability Research Team](https://about.gitlab.com/handbook/engineering/development/sec/secure/vulnerability-research/) and uses advanced detection techniques like [abstract syntax tree parsing](https://en.wikipedia.org/wiki/Abstract_syntax_tree). This approach allows this next-generation scanner to analyze data and control flow to understand how logic and data flow through source code to identify vulnerabilities. We will initially use this approach to improve accuracy and reduce false positives by leveraging this next-gen scanner to validate findings from our existing SAST tools.

### Inline Annotation of MR Diffs

With Static Analysis now taking over [Code Quality](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/81271), we're looking to streamline some of the experience between SAST and Code Quality. One area we're actively working on is annotating MR diff files with inline vulnerability alerts which is a [recent feature for code quality](https://docs.gitlab.com/ee/user/project/merge_requests/code_quality.html#code-quality-in-diff-view). This will compliment our existing [MR security widget](https://docs.gitlab.com/ee/user/application_security/#view-security-scan-information-in-merge-requests) and make it easier for developers to see vulnerabilities in files they are working on inline just like in their IDEs.

What our Product Designer walk through [our plans](https://gitlab.com/gitlab-org/gitlab/-/issues/322689):

<div style="position: relative; padding-bottom: 62.5%; height: 0;"><iframe src="https://www.loom.com/embed/591776e645c5419ab598a15e7b4f8b83" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

### Semgrep & Simplicity

As part of our transition to next generation SAST engine, we're also looking to streamline our existing suite of 15 SAST analyzer tools. GitLab SAST historically has been powered by [over a dozen open-source static analysis security analyzers](https://docs.gitlab.com/ee/user/application_security/sast/#supported-languages-and-frameworks). These analyzers have proactively identified millions of vulnerabilities for developers using GitLab every month. Each of these analyzers is language-specific and has different technology approaches to scanning. These differences produce overhead for updating, managing, and maintaining [additional features](https://docs.gitlab.com/ee/user/application_security/sast/analyzers.html#sast-analyzer-features) we build on top of these tools, and they create confusion for anyone attempting to debug.

The GitLab Static Analysis team is continuously evaluating new security analyzers. We have been impressed by a relatively new tool from the development team at [r2c](https://r2c.dev) called [Semgrep](https://semgrep.dev/). It's a fast, open-source, static analysis tool for finding bugs and enforcing code standards. Semgrep's rules look like the code you are searching for; this means you can write your own rules without having to understand abstract syntax trees (ASTs) or wrestle with regexes.

Semgrep's flexible rule syntax is ideal for streamlining GitLab's [Custom Rulesets](https://docs.gitlab.com/ee/user/application_security/sast/#customize-rulesets) feature for extending and modifying detection rules, a popular request from GitLab SAST customers. Semgrep also has a growing open-source registry of 1,000+ [community rules](https://semgrep.dev/explore).

We are in the process of transitioning many of our lint-based SAST analyzers to Semgrep. This transition will help increase stability, performance, rule coverage, and allow GitLab customers access to Semgrep's community rules and additional custom ruleset capabilities that we will be adding in the future. We have enjoyed working with the r2c team and we cannot wait to transition more of our analyzers to Semgrep. You can read more in our [transition epic](https://gitlab.com/groups/gitlab-org/-/epics/5245), or try out our first experimental Semgrep analyzers for [JavaScript, TypeScript, and Python](#experimental-semgrep-analyzer-for-python-javascript-and-typescript).

We are excited about what this transition means for the future of GitLab SAST and the larger Semgrep community. GitLab will be contributing to the [Semgrep open-source project](https://github.com/returntocorp/semgrep) including additional rules to ensure coverage matches or exceeds our existing analyzers.

**Why is this important?**

In 2020, GitLab greatly expanded access to SAST to all our customers including our Free tier users. In 2021, we want GitLab SAST to be industry-leading with high-signal findings and low false-positive rates. SAST has a very real impact to help the world write better code. With wide accessibility to SAST and high-quality security data built directly into the DevSecOps workflow. GitLab will be able to leverage the context of not just repository source code, but also how projects are built, deployed, and changes over time. We'll be able to further integrate [all of our application tools](https://about.gitlab.com/stages-devops-lifecycle/secure/) to make them smarter, more accurate, and more automated.

> “GitLab Secure allowed us to consolidate spend with centralized tools enabling a more streamlined workflow for our developers” - Retail product research organization, GitLab Ultimate Customer

**Differentiation**

Gitlab uniquely has opportunities within the entire DevOps lifecycle. We can integrate across different DevSecOps stages leveraging data, insight, and functionality from other steps to enrich and automate based on SAST findings.
We even allow [integration with partners and competitors](https://about.gitlab.com/partners/#security) to ensure flexibility. This allows teams to choose specific SAST solutions that fit their unique needs without GitLab being a constraint. This centers GitLab as the system of control and allows people to [extend and integrate other solutions](https://docs.gitlab.com/ee/development/integrations/secure.html) into the GitLab DevSecOps workflow.

## Maturity Plan

- [SAST to Complete](https://gitlab.com/groups/gitlab-org/-/epics/2895)

## Recent Noteworthy Features

- [Faster, easier Java scanning in SAST](https://about.gitlab.com/releases/2022/04/22/gitlab-14-10-released/#faster-easier-java-scanning-in-sast) (14.10)
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

[View the full list of announced SAST features](https://gitlab-com.gitlab.io/cs-tools/gitlab-cs-tools/what-is-new-since/?tab=features&selectedCategories=SAST)

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

Last Reviewed: 2022-04-29

Last Updated: 2022-04-29
