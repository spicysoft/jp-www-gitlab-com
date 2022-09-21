---
layout: markdown_page
title: "Category Direction - Code Testing and Coverage"
description: "The GitLab Code Testing and Coverage direction page."
canonical_path: "/direction/verify/code_testing/"
---

- TOC
{:toc}

## Code Testing Overview

Code testing and coverage ensure that individual components built within a pipeline perform as expected.  Another angle of code testing is accessibility. This is a core piece of the Ops Section [direction](/direction/ops/#smart-feedback-loop) "Smart Feedback Loop" between developers and we are aiming to make that as [reliably speedy](/direction/ops/#speedy-reliable-pipelines) as possible. Our long term vision is to enable users to go from first commit to code in production in only an hour with a high degree of confidence.

At GitLab we are building our features around JUnit.xml and Cobertura formatted reports primarily but have issues to expand beyond these in the future.

## Who are we focusing on? 

Check out our [Ops Section Direction "Who's is it for?"](/direction/ops/#who-is-it-for) for an in-depth look at our target personas across Ops. For Code Testing and Coverage, our "What's Next & Why" are targeting the following personas, as ranked by priority for support: 
1. [Sasha - Software Developer](https://about.gitlab.com/handbook/product/personas/#sasha-software-developer)
1. [Simone - Software Engineer in Test](https://about.gitlab.com/handbook/product/personas/#simone-software-engineer-in-test)
1. [Devon - DevOps Engineer](https://about.gitlab.com/handbook/product/personas/#devon-devops-engineer)

## What's Next & Why

There are no planned investments in Code Testing and Coverage until 2023, though Pipeline Insights will support high priority bug fixes in this category in 2022. 

## Additional Resources

- [Maturity Plan](#maturity-plan)
- [Issue List](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3ACode%20Testing%20and%20Coverage)
- [Overall Vision](/direction/ops/#verify)

Interested in joining the conversation for this category? Please join us in the issues where we discuss this topic and can answer any questions you may have. Your contributions are more than welcome.

This page is maintained by the Product Manager for Pipeline Insights, Jocelyn Eillis ([E-mail](mailto:jeillis@gitlab.com))

## Maturity Plan

This category is currently at the "Viable" maturity level, and our next maturity target is "Complete" (see our [definitions of maturity levels](/direction/maturity/)). Key deliverables to achieve this are included in these epics:

* [Code Testing and Coverage to Complete](https://gitlab.com/groups/gitlab-org/-/epics/7512)
* [Code Testing and Coverage Product Performance Indicator Metrics](https://gitlab.com/groups/gitlab-org/-/epics/4528)

## Competitive Landscape

In the [2021 Continuous Software Delivery Forrester Tech Tide](https://www.forrester.com/report/The+Forrester+Tech+Tide+Continuous+Software+Delivery+Q1+2021/-/E-RES161669), Testing was cited as the number one key to unlock continuous delivery for organizations. Top areas for investment are a) API test automation, b) continuous functional test suites, c) shift-left performance testing. Industry leaders are seeking integrated suites over best in breed tools for testing and CD. Additionally, API testing is being marketed as a silver bullet that is cheaper, effective and efficient to modernize the toolchain for enterprises. Sample vendors include: API Fortress, Broadcom, Eggplant, and  others. We are exploring how we expand our market share in this area via [product#2516](https://gitlab.com/gitlab-com/Product/-/issues/2516) and adding a new category in this [merge request](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/80183). 

### Test Reporting and Analysis

Many other CI solutions can also consume standard JUnit test output or other formats to display insights natively like [CircleCI](https://circleci.com/docs/2.0/collect-test-data/) or through a plugin like [Jenkins](https://plugins.jenkins.io/junit). [Allure](https://demo.qameta.io/allure/) is a popular reporting tool for review of test executions and recently DataDog introduced [CI Visibility](https://docs.datadoghq.com/continuous_integration/) as part of their SaaS offering including [Flaky Test Management](https://docs.datadoghq.com/continuous_integration/guides/flaky_test_management/).

There are new entries in the code testing space utilizing ML/AI tech to optimize test execution like [Launchable](https://launchableinc.com/solution/) and even write test cases like [Diffblue](https://www.diffblue.com/).

In order to stay remain ahead of these competitors we will continue to push forward to make unit test data visible and actionable in the context of the Merge Request for developers with [unit test reports](https://docs.gitlab.com/ee/ci/unit_test_reports.html#viewing-unit-test-reports-on-gitlab) and historical insights to identify flaky tests with epics like [gitlab&3129](https://gitlab.com/groups/gitlab-org/-/epics/3129)

## Top Customer Success/Sales Issue(s)

Sales has requested a higher level view of testing and coverage data for both projects and groups from the Pipeline Insights Group. We have started on solution validation with existing customers on designs in the [Project Quality Summary epic](https://gitlab.com/groups/gitlab-org/-/epics/5430). 

## Top Customer Issue(s)

Our two most popular customer requests are related to code coverage and code coverage reports. 

Customers have quickly adopted and love the [test coverage visualization feature](https://docs.gitlab.com/ee/user/project/merge_requests/test_coverage_visualization.html) feature but do not want to have to convert their coverage reports to the Cobertura. [gitlab#227345](https://gitlab.com/gitlab-org/gitlab/-/issues/227345) is a request to support JaCoCo coverage reports directly within the test coverage visualization feature. This better supports our vision of [Speedy, Reliable Pipelines](https://about.gitlab.com/direction/ops/#speedy-reliable-pipelines) and our product principle of [working by default](https://about.gitlab.com/handbook/product/product-principles/#configuration-principles).

For customers utilizing [Git Flow](https://about.gitlab.com/blog/2020/03/05/what-is-gitlab-flow/) getting test data like coverage and test summaries from features branches is hard to do and not easily surfaced at the project level. Customers have asked for a better way to display the test coverage of [any branch in a badge](https://gitlab.com/gitlab-org/gitlab/-/issues/27093).

## Top Internal Customer Issue(s)

The GitLab Quality team is interested in being able to [detect and report on flaky tests](https://gitlab.com/gitlab-org/gitlab/-/issues/3673). The MVC to count test failures was a good start and they are analyzing data from that feature to look at ways to improve.

The GitLab Quality team also opened an interesting issue, [Provide API to retrieve test case durations from a pipeline](https://gitlab.com/gitlab-org/gitlab/issues/14954), that is aimed at solving a problem where they have limited visibility into long test run times that can impact efficiency.

The Field and Quality Teams have expressed interest in [Show code coverage diff as soon as coverage report is available](https://gitlab.com/gitlab-org/gitlab/-/issues/236248), which is also a popular customer requested issue at 39 upvotes. 

Additionally, the Design team has an open accessibility epic that contains items about making GitLab itself more accessible: [gitlab-org&567](https://gitlab.com/groups/gitlab-org/-/epics/567). The long term vision for this category is for that team to be able to use GitLab to detect all of those issues in an automated way and see that they are addressed when fixed.

## Top Analyst Landscape Items

In 2020, Gartner has released the Artificial Intelligence Use Case Prism for Development and Testing on their [research website](https://www.gartner.com/en/documents/3994888/infographic-artificial-intelligence-use-case-prism-for-d). Directionally, several of the use cases are generation of unit tests from analyzing code patterns, using business logic to create API test scenarios, and using machine learning to fabricate test data as well as correlating testing results back to business metrics to convey meaningful connections like release success or quality. 

## Top Vision Item(s)

To realize our long term vision we need to add more value not just for users uploading junit.xml and Cobertura reports but for any users with test and coverage reports. We believe that the best way to do this is to make it easy for users to contribute additional parsers so they can access the features the team is building that use the data. This will allow wider community contributions and is in alignment with [GitLab's Dual Flywheel strategy](https://about.gitlab.com/company/strategy/#dual-flywheels). A first step towards this could be a [GitLab-specific unit test report](https://gitlab.com/gitlab-org/gitlab/-/issues/247975). 

We also know that users want more insights from their CI/CD pipelines and especially from their tests. We are evaluating [gitlab#210250](https://gitlab.com/gitlab-org/gitlab/-/issues/210250) as a way to provide those insights and further encourage users to upload test report artifacts within their CI/CD pipelines.

We are also looking to provide a one stop place for CI/CD leaders with [Director-level CI/CD dashboards](https://gitlab.com/gitlab-org/gitlab/issues/199739). Quality is an important driver for improving our users ability to confidently track deployments with GitLab and as noted above we are starting on that vision in the [Project Quality Summary epic](https://gitlab.com/groups/gitlab-org/-/epics/5430). We think this is a good first step towards the longer term vision shown in an exploratory design here. As a end to end testing platform, enabling organizations to track how [accessibility is changing over time](https://gitlab.com/gitlab-org/gitlab/issues/36171) by [providing additional scanners](https://gitlab.com/gitlab-org/gitlab/-/issues/218551) will empower better decisions around code quality and accessibility.

![Design for Vision of Code Testing and Coverage data summary](/images/code-testing-data-view-vision.png)

