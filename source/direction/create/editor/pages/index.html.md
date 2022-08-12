---
layout: markdown_page
title: "Category Direction - GitLab Pages"
description: GitLab Pages allows you to create a statically generated website from your project that is automatically built using GitLab CI and hosted on our infrastructure.
canonical_path: "/direction/create/editor/pages/"
---

- TOC
{:toc}

## GitLab Pages

| | |
| --- | --- |
| Stage | [Create](/direction/dev/#create) |
| Maturity | [Complete](/direction/maturity/) |
| Content Last Reviewed | `2022-08-02` |

### Introduction and how you can help

Thanks for visiting this direction page for Pages in GitLab. GitLab Pages allows you to create a statically generated website from your project that is automatically built using GitLab CI and hosted on our infrastructure. This category belongs to the [Editor](/handbook/product/categories/#editor-group) group of the Create stage and the direction page is maintained by Eric Schurter ([E-Mail](mailto:eschurter@gitlab.com)). More information about the Editor group's priorities and direction can be found on the [Editor group direction page](/direction/create/editor/).

This direction is a work in progress, and everyone can contribute:

- [Issue List](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3APages)
- [Category Maturity Epic](https://gitlab.com/groups/gitlab-org/-/epics/7766)
- [Documentation](https://docs.gitlab.com/ee/user/project/pages/) 

### Overall Prioritization

Pages is a popular feature and one that people really enjoy engaging with as part of the GitLab experience. It exists at the intersection of multiple stages of the DevOps lifecycle. The long-term vision for Pages is to provide an experience that guides and supports you through Create, Verify, Package, and Release to host static assets on the web, regardless of your level of development experience. 

Our immediate focus is on improving the stability and security of Pages. Having a reliable and performant service is our number one priority. Afterward, we'll address our most popular issues and compelling blockers for those hosting static content and documentation.

Futher down the line, we'll validate bigger opportunities around improving the experience of creating and configuring Pages sites and making content management and collaboration easier for non-developer personas.

## What's Next & Why

Now that we have completed the [Object Storage re-architecture](https://gitlab.com/groups/gitlab-org/-/epics/3901) to support [cloud native installations of GitLab](https://gitlab.com/gitlab-org/gitlab/issues/39586) our focus is entirely on improving the overall [resiliency of the Pages service](https://gitlab.com/groups/gitlab-org/-/epics/6729). We are primarily focused on: 

- Introducing a [caching strategy for the Pages internal API](https://gitlab.com/groups/gitlab-org/-/epics/7920)
- Evaluating whether some or all of [Pages can be served from a CDN](https://gitlab.com/groups/gitlab-org/-/epics/6757)
- Researching [other options](https://gitlab.com/groups/gitlab-org/-/epics/6729) like offloading SSL to NGINX or instituting reasonable limits on storage size and bandwidth

After we focus on reliability, we will look to address some of the most popular features in our backlog that block adoption and unlock more dogfooding opportunities. These include: 

- [Group level access control for Pages](https://gitlab.com/gitlab-org/gitlab/-/issues/254962)
- [Multiple version support](https://gitlab.com/gitlab-org/gitlab/-/issues/16208)
- [Use Pages without a DNS wildcard](https://gitlab.com/gitlab-org/gitlab/-/issues/17584)

## Long-term vision

The recently deprecated Static Site Editor was conceived as a way to lower the barrier to collaborating on static site content. Publishing a site to Pages is one thing, but collaborating on content with Product Managers, Designers, Marketing Managers, Technical Writers, and executives without requiring a deep understanding of the underlying technologies or programming languages would open the doors for _everyone to contribute_.

The WYSIWYG Markdown editing experience introduced with the Static Site Editor has evolved into a [shared editing component](/direction/create/editor/content_editor/) that can be used in many places across Gitlab. With the deprecation of the Static Site Editor as a standalone feature, the vision for managing and contributing to static sites in an intuitive and accessible way will be carried forward by the Pages category. 

A future state of Pages could be described as a lightweight content management system (CMS), abstracting away the repository and git terminology in favor of WYSIWYG editing and more accessible publishing workflows. Others like [Netlify CMS](https://www.netlifycms.org/), [TinaCMS](https://tina.io/), and [Stackbit](https://www.stackbit.com/) have successfully bridged the gap between git-backed repositories of static assets and visual editing workflows accessible to all. The ideal user journey may look something like: 

- You, a developer, create a new project on GitLab from a template pre-configured to publish to Pages.
- You configure the domains, visibility permissions, customize the project's theme, and populate the initial content in the repository.
- You preview the site and merge your branch into `main`.
- The site publishes automatically to Pages after the build is complete.
- You invite your colleague to collaborate on the content.
- Your colleague, a Product Manager unfamiliar with Markdown, opens a page in a WYSIWYG editor and adds their contribution.
- The changes are available to preview immediately and your colleague is confident in their contribution so they submit for review.
- You review the changes, accept them, and merge them into `main`, triggering another Pages deploy. 
- The new page is published in seconds!

## Maturity Plan

This category is currently at the "Complete" maturity level, and our next maturity target is "Lovable" (see our [definitions of maturity levels](/direction/maturity/)). The key features and deliverables necessary to promote Pages are captured in the [Lovable Maturity epic](https://gitlab.com/groups/gitlab-org/-/epics/8511).

However, the assessment of this maturity level was made prior to our [new process for measuring maturity](/handbook/engineering/ux/category-maturity-scorecards/). We will be [conducting a category maturity assessment](https://gitlab.com/gitlab-org/gitlab/-/issues/360965) to validate the current maturity level and understand more about what is necessary to get it to the next level. 

## Competitive Landscape

We are invested in supporting the process of developing and deploying code from a single place as a convenience for our users. Other providers, such as [Netlify](https://www.netlify.com/), deliver a more comprehensive solution. There are project templates available that offer the use of [Netlify for static site CI/CD](https://gitlab.com/pages?filter=netlify), while also still taking advantage of GitLab for repository, merge requests, issues, and everything else. GitLab offers configurable redirects, a well-loved featured of Netlify, made available in [gitlab-pages#24](https://gitlab.com/gitlab-org/gitlab-pages/-/issues/24).

We are seeing a rise in [JAMStack](https://jamstack.org/) and static site generators partnering in the media. This trend toward API-first, affirms our modernization effort of Pages, reinforcing our cloud native installation maturity plan. 

GitHub also offers hosting of static sites with [GitHub Pages](https://pages.github.com/). Key differentiators between the two are: 

- GitHub Pages configuration and deployment is more "automatic" in that it doesn't require you to edit a CI configuration file.
- GitHub Pages has limits placed on bandwidth, builds, and artifact size where GitLab currently does not.

## Top Customer Issue(s) and Top Customer Success/Sales Issue(s)

The most popular customer issues are:

1. [Multiple-version Pages support](https://gitlab.com/gitlab-org/gitlab/issues/16208): This feature would allow you to publish from multiple branches simultaneously. There is a work around described in [#33822](https://gitlab.com/gitlab-org/gitlab/-/issues/33822) but it is not a complete solution for use cases like our own GitLab Documentation Site.
1. [Pages without DNS wildcard](https://gitlab.com/gitlab-org/gitlab/issues/17584): Creating Gitlab pages today requires admins to setup wildcard DNS records and SSL/TLS certificates. Some services and/or corporate security policies forbid wildcard DNS records, preventing users from using Gitlab Pages.
1. [Review Apps for GitLab Pages](https://gitlab.com/gitlab-org/gitlab/-/issues/16907): Review Apps provide an automatic live preview of your environment. Extending this support to Pages domains would increase collaboration and accelerate feedback loops.
1. [Redirect to custom domains](https://gitlab.com/gitlab-org/gitlab/-/issues/14243): Adding granular control over redirects to custom domains, if they exists, would improve efficiency and search engine optimization.

## Top Internal Customer Issue(s)

GitLab Pages is dogfooded extensively across GitLab, most prominently as the hosting platform for [docs.gitlab.com](https://docs.gitlab.com). Our top internal customer issue is [support for versions](https://gitlab.com/gitlab-org/gitlab/issues/16208), or multiple GitLab Pages generated based on branches or tags. [Review Apps for GitLab Pages](https://gitlab.com/gitlab-org/gitlab/-/issues/16907) is another important feature for internal usage as the GitLab Internal Handbook is hosted on Pages and would benefit from having Review Apps integrated with the MR workflow.

## Top Vision Item(s)

Adding Review Apps for Pages ([gitlab#16907](https://gitlab.com/gitlab-org/gitlab/issues/16907)) will allow for more sophisticated development flows involving testing and review of Pages deployments. Enhancing the maturity of deployment would integrate Pages more critically within projects and groups. 

Another vision item being investigated is to leverage JAMstack for Pages. The primary goal would be to ([enhance the user experience](https://gitlab.com/groups/gitlab-org/-/epics/2179)) and allow easy to set up Pages from the UI without expanding APIs. Lastly, in combination with [feature flags](/direction/release/feature_flags/), Pages can be used to ([support A/B testing](https://gitlab.com/gitlab-org/gitlab/issues/14122)). 
