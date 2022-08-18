---
layout: markdown_page
title: "Category Direction - Wiki"
description: "GitLab Wikis are a great way to share documentation and organize information via built-in functionality. View further information here!"
canonical_path: "/direction/create/editor/wiki/"
---

- TOC
{:toc}

## Wiki

| | |
| --- | --- |
| Stage | [Create](/direction/create/) |
| Maturity | [Viable](/direction/maturity/) |
| Content Last Reviewed | `2022-08-03` |

### Introduction and how you can help
<!-- Introduce yourself and the category. Use this as an opportunity to point users to the right places for contributing and collaborating with you as the PM -->

Thanks for visiting the Wiki category direction page in GitLab. This page belongs to the [Editor](/handbook/product/categories/#editor-group) group of the Create stage and is maintained by Eric Schurter ([E-Mail](mailto:eschurter@gitlab.com)). More information about the Editor group's priorities and direction can be found on the [Editor group direction page](/direction/create/editor/).

This strategy is a work in progress, and everyone can contribute to it:

 - Please comment and contribute in the linked [issues](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=Category%3AWiki) and [epics](https://gitlab.com/groups/gitlab-org/-/epics?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3AWiki) on this page. Sharing your feedback directly on GitLab.com is the best way to contribute to our strategy and vision.
 - Please share feedback directly via email, Twitter, or on a video call. If you're a GitLab user and have direct knowledge of your need for Wiki, we'd especially love to hear from you.

### Overview
<!-- A good description of what your category is today or in the near term. If there are
special considerations for your strategy or how you plan to prioritize, the
description is a great place to include it. Provide enough context that someone unfamiliar
with the details of the category can understand what is being discussed. -->

GitLab Wikis are a great way to share documentation and organize information via built-in functionality. Each GitLab project includes a Wiki rendered by [Gollum](https://github.com/gollum/gollum), and backed by a Git repository. Premium and Ultimate customers also have a group-level Wiki for consolidating documentation across multiple projects or teams.

**Walkthrough of GitLab wikis (starts at 9 minutes):**

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/LzFRBMGl2SA?start=541" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

### Where we are Headed
<!-- Describe the future state for your category. What problems will you solve?
What will the category look like once you've achieved your strategy? Use narrative
techniques to paint a picture of how the lives of your users will benefit from using this
category once your strategy is fully realized -->

We want the wiki to serve as a single source of truth for project- or group-level documentation that is approachable and easily accessibly by anyone. As we look to future plans, we will be exploring ways to encourage collaboration across all personas by improving the editing and navigation experience. 

### Target Audience and Experience
<!-- An overview of the personas (https://about.gitlab.com/handbook/marketing/strategic-marketing/roles-personas#user-personas) involved in this category. An overview
of the evolving use cases and user journeys as the category progresses through minimal,
viable, complete and lovable maturity levels. -->
Our primary persona is Sasha, the [Software Developer](https://about.gitlab.com/handbook/product/personas/#sasha-software-developer), but all personas can use Wikis for storing information and everyone should be able to quickly and easily contribute to a wiki page. As the wiki matures, we may need to investigate other, non-developer personas as our research found they are frequent users of wikis.

### What's Next & Why
<!-- This is almost always sourced from the following sections, which describe top
priorities for a few stakeholders. This section must provide a link to an issue
or [epic](https://about.gitlab.com/handbook/product/product-processes/#epics-for-a-single-iteration) for the MVC or first/next iteration in the category.-->

We are **currently** working on migrating the backend wiki functionality to native Gitaly RPCs, an effort that will bring performance and stability improvements and make it easier to maintain long-term. 

Afterward, however, we will only be prioritizing high-impact bug fixes and maintenance. The next areas we will focus on when we are able to increase investment in Wiki again are: 

- [Decoupling the page title, slug, and filename](https://gitlab.com/groups/gitlab-org/-/epics/3192) to address issues related to renaming pages, case sensitivity, and redirects
- [List child pages of directories](https://gitlab.com/gitlab-org/gitlab/-/issues/346941) 

### What is Not Planned Right Now
<!-- Often it's just as important to talk about what you're not doing as it is to
discuss what you are. This section should include items that people might hope or think
we are working on as part of the category, but aren't, and it should help them understand why that's the case.
Also, thinking through these items can often help you catch something that you should
in fact do. We should limit this to a few items that are at a high enough level so
someone with not a lot of detailed information about the product can understand
the reasoning-->

We know that our new WYSIWYG Markdown editor can support real-time collaborative editing, but we may need an entirely new backend to support collaborative editing of Wiki pages. Ideally, we want to solve the problem of collaborative note taking, be highly approachable for everyone, but also offer the tremendous benefits of storing the content in a portable plain text format that can be cloned, viewed and edited locally (properties of Git). However, we are not actively working on a new architecture that can support this experience.

### Maturity Plan
<!-- It's important your users know where you're headed next. The maturity plan
section captures this by showing what's required to achieve the next level. The
section should follow this format:

This category is currently at the XXXX maturity level, and our next maturity target is YYYY (see our [definitions of maturity levels](https://about.gitlab.com/direction/maturity/)).

- Link to maturity epic if you are using one, otherwise list issues with maturity::YYYY labels) -->

Please be aware that Wiki is Viable maturity and has been maintenance mode since FY23Q2 (May 2022). Due to this, there will be no dedicated investment in feature maturity until further notice.

### Competitive Landscape
<!-- The top two or three competitors, and what the next one or two items we should
work on to displace the competitor at customers, ideally discovered through
[customer meetings](https://about.gitlab.com/handbook/product/product-processes/#customer-meetings). We’re not aiming for feature parity with competitors, and we’re not just looking at the features competitors talk
about, but we’re talking with customers about what they actually use, and
ultimately what they need.-->

We currently most closely compete with **GitHub Wikis** but we would like to compete with:

- [Confluence](https://www.atlassian.com/software/confluence)
- [Notion](https://www.notion.so/)
- [Roam Research](https://roamresearch.com/)
- [Google Docs](https://docs.google.com/)

We've heard from customers that managing wikis with tens of thousands of pages can be challenging. And while a full-featured product like Confluence has advanced features and integrations, the GitLab wiki would be a stronger competitor if we fixed some low-hanging fruit related to [page title and redirects](https://gitlab.com/groups/gitlab-org/-/epics/3192) and improved the functionality of the sidebar to aide navigation.


<!-- ### Analyst Landscape -->
<!-- What analysts and/or thought leaders in the space talking about, what are one or two issues
that will help us stay relevant from their perspective.-->

<!-- TBD -->

### Top Customer Success/Sales issue(s)
<!-- These can be sourced from the CS/Sales top issue labels when available, internal
surveys, or from your conversations with them.-->

- [Decouple wiki page slugs, filename, and titles](https://gitlab.com/groups/gitlab-org/-/epics/3192)
- [Improve AsciiDoc, RDoc and reStructuredText support in Wikis](https://gitlab.com/groups/gitlab-org/-/epics/701)
- [Improve wiki navigation](https://gitlab.com/groups/gitlab-org/-/epics/700)

### Top user issue(s)
<!-- This is probably the top popular issue from the category (i.e. the one with the most
thumbs-up), but you may have a different item coming out of customer calls.-->

- [Markdown Export to PDF](https://gitlab.com/gitlab-org/gitlab/issues/13932) (219)
- [Reflect next pages in sidebar](https://gitlab.com/gitlab-org/gitlab/issues/17673) (173)
- [Make it possible to edit wiki through CI](https://gitlab.com/gitlab-org/gitlab/-/issues/16261) (155)
- [Draw.io integration with wiki](https://gitlab.com/gitlab-org/gitlab/-/issues/20305) (151)


### Top dogfooding issues
<!-- These are sourced from internal customers wanting to [dogfood](/handbook/values/#dogfooding)
the product.-->

GitLab does not have any organization-wide wikis, but some teams do use them for various purposes.

### Top Strategy Item(s)
<!-- What's the most important thing to move your strategy forward?-->

- [Use the Content Editor to edit wiki pages](https://gitlab.com/groups/gitlab-org/-/epics/5403)
