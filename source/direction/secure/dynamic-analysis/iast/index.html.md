---
layout: markdown_page
title: "Category Direction - Interactive Application Security Testing (IAST)"
description: "IAST works through software instrumentation, or the use of instruments to monitor an application as it runs and gather information. Learn more!"
canonical_path: "/direction/secure/dynamic-analysis/iast/"
---

- TOC
{:toc}

## Description

<!-- A good description of what your category is. If there are
special considerations for your strategy or how you plan to prioritize, the
description is a great place to include it. Please include usecases, personas,
and user journeys into this section. -->

Applications that are deployed to production are subject to attacks that exploit vulnerabilities. Many vulnerabilities can be identified and corrected prior to product deployment by running security scans on the source code ([SAST](https://docs.gitlab.com/ee/user/application_security/sast/)) or on exposed interfaces ([DAST](https://docs.gitlab.com/ee/user/application_security/dast/)).

Some vulnerabilities, however, cannot be identified by standalone static or dynamic application testing. This is where interactive security application testing comes in.

IAST works through software instrumentation, or the use of instruments to monitor an application as it runs and gather information about what it does and how it performs. IAST solutions instrument applications by deploying agents in running applications and continuously analyzing all application interactions initiated by manual tests, automated tests, or a combination of both to identify vulnerabilities in real time.[*](https://www.synopsys.com/software-integrity/resources/knowledge-database/what-is-iast.html) IAST can detect more vulnerabilities than SAST or DAST because the agent has visibility into:

* All the code for the application
* Runtime control and data flow information
* Configuration information
* HTTP requests and responses
* Libraries, frameworks, and other components
* Backend connection information
* Database connections

While IAST is similar to Runtime Application Self-Protection Security (RASP), the key difference is that IAST is focused on identifying vulnerabilities within the application and RASPs are focused protecting against cybersecurity attacks that may take advantages of those vulnerabilities or other attack vectors.

## Target audience and experience
<!-- An overview of the personas involved in this category. An overview
of the evolving user journeys as the category progresses through minimal,
viable, complete and lovable maturity levels.-->
- [Sasha (Software Developer)](https://about.gitlab.com/handbook/product/personas/#sasha-software-developer)
- [Sam (Security Analyst)](https://about.gitlab.com/handbook/product/personas/#sam-security-analyst)

## What's next & why
[MVC Issue](https://gitlab.com/gitlab-org/gitlab/issues/4743)

<!-- ## Maturity Plan -->  
 
## Competitive landscape
- [Synopsys Seeker](https://www.synopsys.com/software-integrity/security-testing/interactive-application-security-testing.html)
- [Veracode Interactive Analysis](https://www.veracode.com/products/interactive-analysis-iast)
- [Microfocus Fortify WebInspect](https://www.microfocus.com/en-us/products/webinspect-dynamic-analysis-dast/overview)
- [Checkmarx CxIAST](https://www.checkmarx.com/products/interactive-application-security-testing)
- [Contrast Assess](https://www.contrastsecurity.com/interactive-application-security-testing-iast)
- [Hdiv Detection (IAST)](https://hdivsecurity.com/interactive-application-security-testing-iast)

We have the advantage of being able to provide testing results before the app is deployed into the production environment, by using Review Apps. This means that we will be able to provide IAST results for every single commit.

We will also be able to provide support for custom flows and provide IAST results for the master branch in Auto DevOps to better align with other existing tools.

## Analyst landscape
<!-- What analysts and/or thought leaders in the space talking about, what are one or two issues
that will help us stay relevant from their perspective.-->
We want to engage analysts to make them aware of the security features already available in GitLab. Since this is a relatively new scope for us, we must aim at being included in the next researches.

We can get valuable feedback from analysts, and use it to drive our vision.

- [Gartner](https://www.gartner.com/reviews/market/application-security-testing)
- [Forrester](https://www.forrester.com/report/Predictions+2019+Cybersecurity/-/E-RES144821)

## Top Customer Success/Sales issue(s)
<!-- These can be sourced from the CS/Sales top issue labels when available, internal
surveys, or from your conversations with them.-->
The category is very new, so we still need to engage customers and get feedback about their interests and priorities in this area.

## Top user issue(s)
<!-- This is probably the top popular issue from the category (i.e. the one with the most
thumbs-up), but you may have a different item coming out of customer calls.-->
There are no features available for this category.

## Top internal customer issue(s)
<!-- These are sourced from internal customers wanting to [dogfood](/handbook/values/#dogfooding)
the product.-->
The category is very new, so we still need to engage customers and get feedback about their interests and priorities in this area.

## Top Vision Item(s)
<!-- What's the most important thing to move your vision forward?-->
- [Interactive Application Security Testing (IAST) category vision](https://gitlab.com/groups/gitlab-org/-/epics/344)
