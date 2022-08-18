---
layout: markdown_page
title: "Category Direction - GitLab Documentation Site"
canonical_path: "/direction/ecosystem/foundations/gitlab_docs/"
---

- TOC
{:toc}

## GitLab Documentation Site

|                       |                               |
| -                     | -                             |
| Stage                 | [Ecosystem](/direction/ecosystem/)      |
| Maturity              | N/A |
| Content Last Reviewed | `2022-06-20`                  |
| Maintained by | [Susan Tacker](https://gitlab.com/susantacker)|

## Overview

Our goal is to create documentation that is complete, accurate, and easy to use. It should be easy to browse or search for the information you need, and easy to contribute to the documentation itself. All standards and practices for contributing documentation are found in the [GitLab Documentation guidelines](https://docs.gitlab.com/ee/development/documentation/) section of the docs site.

GitLab documentation is designed to help you with all of your [DevOps needs](/topics/devops/).
The source is stored along with product code in repositories in GitLab. The primary repositories are:

- [GitLab](https://gitlab.com/gitlab-org/gitlab/tree/master/doc)

- [GitLab Runner](https://gitlab.com/gitlab-org/gitlab-runner/tree/master/docs)

Installation documentation comes from these repositories:

- [Charts](https://gitlab.com/gitlab-org/security/charts/gitlab)

- [Omnibus](https://gitlab.com/gitlab-org/gitlab/tree/master/doc)

- [Operator](https://gitlab.com/gitlab-org/security/cloud-native/gitlab-operator)

The documentation is published, by version, at [docs.gitlab.com](https://docs.gitlab.com/). The documentation is also included in each version of the product and is visible by selecting the ? icon in the top right corner of the navigation bar.

## Target audience

**GitLab Users:** GitLab administrators and users rely on accurate, up-to-date, and comprehensive documentation of available features.

**GitLab Team Members:** GitLab team members are both contributors to and consumers of the documentation. While the [Technical Writing](https://about.gitlab.com/handbook/product/technical-writing/) team owns the documentation, [anyone can and does contribute](https://about.gitlab.com/community/contribute/documentation/) to the docs.

**Leadership and Decision-makers:** The GitLab documentation site is a valuable resource for decision-makers to compare features across versions and evaluate implementation details that may impact a purchasing decision.

## Challenges to address

A recent round of UX research highlighted a few key opportunities for improving the GitLab documentation site:

- It’s confusing that `/help` and [docs.gitlab.com](https://docs.gitlab.com/) are different sites and different experiences.
- In general, it’s hard for people to find the information they’re looking for.
- Some basic information that people want is either missing or too hard to find.
- Users want more contextual _why_ information.
- Troubleshooting info is the hardest to find.
- The difference between versions, features in free vs paid, and self-hosted vs SaaS is not always clear.
- Almost 25% of docs site visitors are there for the first time.
- The percentage of new GitLab users who visit the docs site is rising.

Other problems not noted by research, such as a lack of context-sensitive Help, are also addressed in the [Documentation Roadmap](https://gitlab.com/groups/gitlab-org/-/epics/4602).

## Where we are headed

Our current focus is on [improving the /help experience](https://gitlab.com/groups/gitlab-org/-/epics/7738), [improving the search function on the docs site](https://gitlab.com/groups/gitlab-org/-/epics/4656), and [defining guidelines for context-sensitive Help](https://gitlab.com/gitlab-org/gitlab-services/design.gitlab.com/-/issues/1238).

## What's next and why

As outlined in the [Documentation Roadmap](https://gitlab.com/groups/gitlab-org/-/epics/4602) and in quarterly OKRs, a number of improvements are prioritized to address the challenges listed above. 

In addition, we're planning to invest in [versioning improvements](https://gitlab.com/groups/gitlab-org/-/epics/4707).

## What's not planned right now

At this time, we are not investigating any significant architectural changes to the documentation site itself, like migrating to a new static site generator.

The Technical Writing team is not currently investing in localization of the documentation.

## Maturity plan

<!-- It's important your users know where you're headed next. The maturity plan
section captures this by showing what's required to achieve the next level. The
section should follow this format:

This category is currently at the XXXX maturity level, and our next maturity target is YYYY (see our [definitions of maturity levels](https://about.gitlab.com/direction/maturity/)).

- Link to maturity epic if you are using one, otherwise list issues with maturity::YYYY labels) -->


Currently, the GitLab Documentation Site category is a *non-marketing category*, which means its maturity does not get tracked.


<!--
### User success metrics
- What specific user behaviors are indicate that users are trying these features, and solving their problems?
- How will users discover these features?
-->


<!--
### Why is this important?
- Why is GitLab building this feature?
- What impact will it have on the broader devops workflow?
- How confident are we? What is the effort?
-->

### Competitive Landscape
<!-- The top two or three competitors, and what the next one or two items we should
work on to displace the competitor at customers, ideally discovered through
[customer meetings](https://about.gitlab.com/handbook/product/product-processes/#customer-meetings). We’re not aiming for feature parity with competitors, and we’re not just looking at the features competitors talk
about, but we’re talking with customers about what they actually use, and
ultimately what they need.-->

* [Stripe's documentation](https://stripe.com/docs) is considered the gold standard of documentation sites
* [Algolia](https://www.algolia.com/doc/) has excellent documentation and information architecture


<!--

### Top Strategy Item(s)
What's the most important thing to move your strategy forward?-->
