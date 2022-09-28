---
layout: markdown_page
title: "Category Direction - Code Quality"
description: "Automatically analyze your source code to surface issues and see if quality is improving or getting worse with each commit."
canonical_path: "/direction/secure/static-analysis/code_quality/"
---

- TOC
{:toc}

## Code Quality

GitLab Code Quality helps you keep your source-code maintainable and bug-free.

It automatically analyzes your source code for potential mistakes and hard-to-maintain patterns, then surfaces those findings in merge request [widgets](https://docs.gitlab.com/ee/user/project/merge_requests/code_quality.html#code-quality-widget), [reports](https://docs.gitlab.com/ee/user/project/merge_requests/code_quality.html#code-quality-reports), and [diffs](https://docs.gitlab.com/ee/user/project/merge_requests/code_quality.html#code-quality-in-diff-view) so you can handle them before they land on your default branch.

You can also provide your own [custom findings](https://docs.gitlab.com/ee/user/project/merge_requests/code_quality.html#implementing-a-custom-tool) by saving a JSON report as a [CI/CD artifact](https://docs.gitlab.com/ee/ci/yaml/artifacts_reports.html#artifactsreportscodequality), so you can track organization-specific quality goals.

- [Maturity Plan](#maturity-plan)
- [Issue List](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3ACode%20Quality)
- [Secure Stage Vision](/direction/secure)
- [UX Research](https://gitlab.com/groups/gitlab-org/-/epics/592)

Interested in joining the conversation for this category?
We'd love to hear your voice.
Please join us in the issues where we discuss this topic and can answer any questions you may have.

This page is maintained by the Product Manager for [Static Analysis](/handbook/product/categories/#static-analysis-group), [Connor Gilbert](/company/team/#connorgilbert).

## What's Next & Why

GitLab Code Quality can be broken down into three groups of features:

- [Code analysis](#code-analysis): scanning source code for quality issues.
- [Result processing and display](#result-processing-and-display): making quality findings visible.
- [Workflow features](#workflow-features): allowing teams to set rules for how quality findings are handled.

### Code analysis

Code analysis currently uses the [CodeClimate](https://github.com/codeclimate/codeclimate) open-source scanning tool and its analyzers.

Within the code analysis area, our top priority is [removing blockers to Code Quality adoption](https://gitlab.com/groups/gitlab-org/-/epics/8161), particularly the [Docker-in-Docker requirement](https://gitlab.com/gitlab-org/gitlab/-/issues/9784) imposed by the CodeClimate scanning engine.
Removing Docker-in-Docker will allow us to support runners operating in more contexts, including [on OpenShift](https://gitlab.com/gitlab-org/gitlab/-/issues/276081).

Ultimately, we intend to remove the CodeClimate engine from GitLab.
We plan to [iterate](https://about.gitlab.com/handbook/values/#iteration) toward a new user experience that has fewer system requirements, runs faster, and provides better support for the specific configurations development teams use.
While we design the longer-term solution, we have [investigated options](https://gitlab.com/gitlab-org/gitlab/-/issues/357464) to allow users to switch away from Docker-in-Docker sooner.
We're planning [user experience research](https://gitlab.com/gitlab-org/ux-research/-/issues/1886) as we prepare to build the new solution.

### Result processing and display

[Code Quality reports](https://docs.gitlab.com/ee/ci/yaml/artifacts_reports.html#artifactsreportscodequality) are processed so they can be displayed in merge requests and used elsewhere in GitLab.

Within the processing and display area, we plan to invest in:

- [Completing support](https://gitlab.com/gitlab-org/gitlab/-/issues/328257) for multiple quality reports in merge request diffs.
    - Rollout for this feature is currently blocked by performance concerns, which are a significant issue to address for Code Quality overall. Our [plan for upcoming milestones](https://gitlab.com/gitlab-org/gitlab/-/issues/?sort=created_date&state=opened&label_name%5B%5D=group%3A%3Astatic%20analysis&label_name%5B%5D=Planning%20Issue&first_page_size=20) includes [diagnosing these performance issues](https://gitlab.com/gitlab-org/gitlab/-/issues/358759).
- Evolving the design for [inline findings](https://docs.gitlab.com/ee/user/project/merge_requests/code_quality.html#code-quality-in-diff-view) toward [newer designs that account for security findings](https://gitlab.com/gitlab-org/gitlab/-/issues/322689).

### Workflow features

Today, GitLab Code Quality lacks detailed workflow features.
We intend to improve the experience through various feature improvements, including:

- [Merge Request approval rules](https://gitlab.com/gitlab-org/gitlab/-/issues/34982) based on quality findings, similar to security policies.
- [Result filtering](https://gitlab.com/gitlab-org/gitlab/-/issues/238858) to allow teams to set a threshold for the minimum severity level of issues they wish to see.

## Investment themes

Any tool that is too noisy is quickly ignored.
If we want to provide sustainable value and drive actual quality improvements in users' software projects, we need to make sure that developers are shown findings that are:

- Meaningful—they aren't nitpicks that should be ignored.
- Actionable—they can be fixed in a reasonable amount of time.
- Trustworthy—they are correct.

Our direction follows certain themes:

1. Delivering high-confidence, high-value findings, as early as possible in development.
1. Offering flexibility for sophisticated teams, but a simple way to get started.
1. Maintaining alignment with other features in [Static Analysis](/handbook/product/categories/#static-analysis-group).
    - We believe that it is valuable to keep security issues separate from maintainability, code style, and other non-security findings.
    - However, users should see a [consistent user experience](https://about.gitlab.com/handbook/product/ux/performance-indicators/system-usability-scale/) for quality and security findings, and we shouldn't have to [inefficiently](https://about.gitlab.com/handbook/values/#efficiency) build each workflow feature twice either.

## Recent highlights

- 14.1 (July 2021): [Show code quality notices on diffs/MRs](https://about.gitlab.com/releases/2021/07/22/gitlab-14-1-released/#inline-code-quality-notices-on-mr-diffs)
- 13.6 (November 2020): [Display Code Quality Severity Rating](https://about.gitlab.com/releases/2020/11/22/gitlab-13-6-released/#display-code-quality-severity-ratings)

Check the [full list of Code Quality feature announcements](https://gitlab-com.gitlab.io/cs-tools/gitlab-cs-tools/what-is-new-since/?tab=features&selectedCategories=Code+Quality&minVersion=13_00) for more.

## Maturity Plan

This category is currently at the **Minimal** maturity level, and our next maturity target is **Viable**.
(See GitLab's [definitions of maturity levels](/direction/maturity/).)

To reach Viable maturity, we believe we must solve most of the top issues identified on this page, though research may yield a smaller set of issues.

The work to move the vision is tracked in this [epic](https://gitlab.com/groups/gitlab-org/-/epics/3686), which is currently being reviewed for completeness.

## Competitive Landscape

### SonarQube

SonarQube is a commonly used static analysis tool that provides a user information about quality and security problems in their code. Some of the notable features users we hear about from users are the quality gate, blocking a merge request until issues are resolved, and the letter grade provided by the tooling. We understand this letter grading to mean that a high level and easy to understand and track quality measure is provided so team leads and directors can see when a project moves from an F to a C when it comes to quality. Many users we talk to want to get this kind of data in GitLab through the Code Quality feature set OR the SonarQube->GitLab integration, but they would prefer to have one fewer tool to manage.

### Open-source linters

Many development teams adopt open-source linters to check for correctness issues or known bad patterns.
Often, these tools are tightly integrated with the language the team uses, and development teams often maintain a ruleset or configuration file specifying the exact findings they wish to check for.

Teams often choose to run their linters in CI/CD and fail a job if any sufficiently severe findings are identified.
Teams then add exceptions as comments in source code, adjust rule severities, or ignore entire files, as a way to dismiss a finding and allow the job to pass.

GitLab provides additional value by integrating code quality findings into the merge request view, which helps reviewers and other stakeholders collaborate to understand and resolve areas for improvement.

### Azure DevOps

Azure DevOps does not offer in-product quality testing in the same way we do with CodeClimate, but does have a number of easy to find and install plugins in their [marketplace](https://marketplace.visualstudio.com/search?term=code%20quality&target=AzureDevOps&category=All%20categories&sortBy=Relevance) that are both paid and free. Their [SonarQube plugin](https://marketplace.visualstudio.com/items?itemName=SonarSource.sonarqube) appears to be the most popular, though it seems to have some challenges with the rating.

In order to remain ahead of Azure DevOps, we should continue to push forward the feature capability of our own open-source integration with CodeClimate. Issues like [Code Quality report for default branch](https://gitlab.com/gitlab-org/gitlab-ee/issues/2766) moves both our vision forward as well as ensures we have a high quality integration in our product. To be successful here, though, we need to support formats Microsoft-stack developers use. The current Code Quality scanner has some limited scanning capability but the issue [Support C# code quality results direction](https://gitlab.com/gitlab-org/gitlab/issues/29218) extends this to be more in line with scanning provided for other languages. Because CodeClimate does not yet have deep .NET support, we may need to build something ourselves.

## Top Customer Issue(s)

The top customer request currently is to allow for [multiple code quality reports](https://gitlab.com/gitlab-org/gitlab/-/issues/9014) to be shown in the pipeline report and diff view. We believe customers are running multiple scanners besides the one provided by the GitLab template to get around other issues such as Docker-in-Docker and limitations with pulling from Docker Hub. Not being able to see these reports natively within GitLab may result in them finding another solution for their code quality needs.

Another top customer priority is to be able to see the [Code quality report for default branch](https://gitlab.com/gitlab-org/gitlab/-/issues/2766) which will let developers get information about code quality issues in the default branch outside of a pipeline or MR context.

## Top Customer Success/Sales Issue(s)

Field feedback tells us that a significant number of customers consider adopting GitLab Code Quality but are blocked by its current scanning architecture, which:
- requires Docker-in-Docker.
- is difficult to use offline.
- includes old versions of other open-source tools.
- doesn't [support OpenShift](https://gitlab.com/gitlab-org/gitlab/-/issues/276081).

We will iterate to resolve these concerns, beginning with [Docker-in-Docker](https://gitlab.com/gitlab-org/gitlab/-/issues/9784).

Top missing features are Quality Gates and a Quality Dashboard. We have a good understanding about quality gates and are working to resolve this issue by resolving [Prevent merge on code quality degradation](https://gitlab.com/gitlab-org/gitlab/-/issues/34982). We are investigating what outcomes customers are looking to get from a Quality Dashboard and will iterate on a solution in our [MVC issue](https://gitlab.com/gitlab-org/gitlab/-/issues/322021).

## Top Internal Customer Issue(s)

Recently, GitLab team members have proposed using code quality reports with custom analyzers for [design system migration](https://gitlab.com/gitlab-org/gitlab/-/issues/355051#note_877306046) and [technical writing](https://gitlab.com/gitlab-org/gitlab/-/issues/340525#note_869630466).
Both use cases would allow teams to [collaborate](/handbook/values/#collaboration) more [efficiently](/handbook/values/#efficiency) and we are excited to enable these use cases.
A current identified blocker for these use cases is support for multiple reports in [diffs](https://gitlab.com/gitlab-org/gitlab/-/issues/328257) and [reports](https://gitlab.com/gitlab-org/gitlab/-/issues/9014).

A top request from our internal customers they want to enforce code quality standards accross departments by enforcing code quality cannot decrease in a [merge request without an approval](https://gitlab.com/gitlab-org/gitlab/-/issues/34982).

## Top Vision Item(s)

Our vision for Code Quality is for it to become another rich signal of confidence for users of GitLab. This will be not just a signal of the quality of a change but one of many inputs like Code Coverage to be able to view a project at a high level and make decisions about what code needs attention, additional tests or refactoring, to bring it up to the quality requirements of the group. This long term vision is captured in the issues [Instance wide code statistics](https://gitlab.com/gitlab-org/gitlab/-/issues/8406) and [Code Quality Dashboard](https://gitlab.com/gitlab-org/gitlab/-/issues/207117) and the team has started brainstorming what this may look like by creating wireframes like the design below.

We are currently evaluating the way that Code Quality scanning will evolve, as discussed in the [Code analysis](#code-analysis) section above.
This evaluation may lead us to reshape the way that Code Quality findings are generated and processed.

## Code Quality Dashboard Design

![Design for Vision of Code Testing and Coverage data summary](/images/code-testing-data-view-vision.png)

Last Reviewed: 2022-07-07

Last Updated: 2022-07-07
