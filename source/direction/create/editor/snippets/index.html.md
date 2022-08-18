---
layout: markdown_page
title: "Category Direction - Snippets"
description: "GitLab Snippets allow users to share small bits of code and text by directly linking, downloading, or embedding them in web apps within a `<script>` HTML tag."
canonical_path: "/direction/create/editor/snippets/"
---

- TOC
{:toc}

## Snippets

 | |
| --- | --- |
| Stage | [Create](/direction/dev/#create) |
| Maturity | [Complete](/direction/maturity/) |
| Content Last Reviewed | `2022-08-03` |

<!-- A good description of what your category is. If there are
special considerations for your strategy or how you plan to prioritize, the
description is a great place to include it. Please include usecases, personas,
and user journeys into this section. -->

### Introduction and how you can help

Thanks for visiting this direction page on Snippets in GitLab. This page belongs to the [Editor](/handbook/product/categories/#editor-group) group of the Create stage and is maintained by Eric Schurter ([E-Mail](mailto:eschurter@gitlab.com)). More information about the Editor group's priorities and direction can be found on the [Editor group direction page](/direction/create/editor/).

This direction is a work in progress, and everyone can contribute:

 - Please comment and contribute in the linked [issues](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3ASnippets) and [epics](https://gitlab.com/groups/gitlab-org/-/epics?label_name%5B%5D=Category%3ASnippets) on this page. Sharing your feedback directly on GitLab.com or submitting a Merge Request to this page are the best ways to contribute to our direction.
 - Please share feedback directly via email, Twitter, or on a video call. If you're a GitLab user and have direct knowledge of your need for snippets, we'd especially love to hear from you.

### Overview

[GitLab Snippets](https://docs.gitlab.com/ee/user/snippets.html) allows users to share small bits of code and text by directly linking, downloading, or embedding them in web apps within a `<script>` HTML tag. Each snippet is essentially a lightweight Git repository, meaning they are versioned and even support multiple files.

Commonly Snippets are often used for smaller pieces of code that are reused among several projects, additional documentation for specific one-off scripts/functions and instructions for using the main project.

As described in the [Editor group direction page](/direction/create/editor/), we aren't actively prioritizing feature development for Snippets but we welcome community contributions. The next areas of focus for Snippets would be: 

- Improving collaboration with multiple users
- Sharing snippets in and out of GitLab
- Adding the ability to execute snippets in a sandboxed environment.

### Target Audience and Experience
<!-- An overview of the personas involved in this category. An overview
of the evolving user journeys as the category progresses through minimal,
viable, complete and lovable maturity levels.-->

Snippets are primarily targeted at **engineering personas** who are looking for ways to quickly share bits of code and information with other users. GitLab personas that represent this are:

 - [Sasha (Software Developer)](/handbook/product/personas/#sasha-software-developer)
 - [Devon (DevOps Engineer)](/handbook/product/personas/#devon-devops-engineer)
 - [Sidney (Systems Administrator)](/handbook/product/personas/#sidney-systems-administrator)

#### Challenges to address

Currently, users of snippets have strong mental models of expected functionality based on existing competitors in the market. As new features are added to GitLab snippets to further running code or creating simple prototypes it will be important to gain feature parity and then build on top of that to increase adoption of the product.

### Where we are headed

We want GitLab to be the first choice for developers looking to share or demo small samples and prototypes with other users either within their team on GitLab or externally via links or embedded in the page. Now that we have added the ability to version control snippets and support multiple files, we will be researching and validating opportunities to extend the base functionality.

One area of interest is enhanced sharing and interactive capabilities. We're aiming to support the ability to [run simple scipts](https://gitlab.com/groups/gitlab-org/-/epics/2397) (e.g. python, ruby, shell) and support [html/css/js and javascript](https://gitlab.com/groups/gitlab-org/-/epics/2398) framework based demos.

We also want snippets to follow standard [embed](https://gitlab.com/groups/gitlab-org/-/epics/1496) capabilities so they can be used outside of GitLab easily. These enhancements will help to further make snippets a valuable tool for sharing knowledge across the ecosystem.

#### What's Next & Why

The Editor group is not actively prioritizing new features for Snippets at this time, in favor of furthering the direction of the Web IDE, Wiki, and Content Editor. However, when we do return to working on Snippets, we will focus on: 

**[Snippet Visiblity and Permissions](https://gitlab.com/groups/gitlab-org/-/epics/2521)** - Collaboration in Snippets are limited by the current permission models. We want to further collaboration and will start with [aligning project based snippet permissions](https://gitlab.com/gitlab-org/gitlab/-/issues/16256) with projects. 

**[Organizing Snippets](https://gitlab.com/groups/gitlab-org/-/epics/3204)** - There is currently no way to organize Snippets for easier access, nor is there a way to search within the contents of a Snippet. The ability to categorize, label, or otherwise add some hierarchy to Snippets will enable management of more robust Snippet libraries. 

<!-- #### What is Not Planned Right Now -->

#### Maturity Plan

Currently, GitLab's maturity in Snippets is *complete*. Here's why:

A **complete** snippets category would allow users to utilize snippets in way that aligns with other `git` functionality. Snippets can have multiple files that are easily versioned and shared with other users. GitLab has solved for `movingtogitlab` and supports the needs of those users looking for alternatives.

**Lovable** snippets build upon `git` support and expand the collaboration of Snippets inside of projects and groups. Project members can collaborate on the same snippet and groups can use and share those snippets across projects. Snippets will be the common way to communicate code across issue comments and wiki's within GitLab and outside of GitLab in other documentation.

### User success metrics
<!--
- What specific user behaviors are indicate that users are trying these features, and solving their problems?
- How will users discover these features?
-->

The success of Snippets can be measured in both the inception and consumption of the code. The creation of a snippet indicates that someone has identified reusable code and taken the extra step to make it more easily accessible. After the snippet is created, however, the success of the feature can be measured by how often (if at all) the code is shared, updated, referenced or, ultimately reused. 

<!-- ### Why is this important? -->
<!--
- Why is GitLab building this feature?
- What impact will it have on the broader devops workflow?
- How confident are we? What is the effort?
-->

### Competitive Landscape
<!-- The top two or three competitors, and what the next one or two items we should
work on to displace the competitor at customers, ideally discovered through
[customer meetings](https://about.gitlab.com/handbook/product/product-processes/#customer-meetings). We’re not aiming for feature parity
with competitors, and we’re not just looking at the features competitors talk
about, but we’re talking with customers about what they actually use, and
ultimately what they need.-->

Snippets capabilities are currently most close to [Pastebin](https://pastebin.com).

The primary competitor is [Gists](https://gist.github.com/discover) which is a no frills way to share snippets of code that are version controlled with Git. They allow multiple files to be shared (e.g. a mix of Javascript, CSS, HTML), forked (e.g. I can make a copy of something interesting I see), and remixed (e.g. I can take a cool snippet and tweak it for my own use). By being a Git repository, they are familiar to Git users and can be used in a variety of interesting ways from the command line.

A range of clever tools have since been built on top of Gists including:

- [Blocks](https://bl.ocks.org/)
- [Gist.io](http://gist.io/)

Atlassian has [Bitbucket Snippets](https://confluence.atlassian.com/bitbucket/snippets-719095082.html) which is very similar to Gists.

Other business built completely on Snippets are:

 - [Cacher](https://www.cacher.io/)
 - [Snipit](https://snipit.io/)

If Snippets were combined with the Web IDE with client-side and server-side evaluation it would also compete with:

- Javascript sandboxes: [Codesandbox](https://codesandbox.io), [JSBin](https://jsbin.com), [JSFiddle](https://jsfiddle.net), [Codepen](https://codepen.io)
- Server-side sandboxes: [Codesandbox](https://codesandbox.io), [repl.it](https://repl.it)

### Analyst Landscape
<!-- What analysts and/or thought leaders in the space talking about, what are one or two issues
that will help us stay relevant from their perspective.-->

Snippets and pastebins are not currently an area of analyst interest.

<!-- ### Top Customer Success/Sales issue(s) -->
<!-- These can be sourced from the CS/Sales top issue labels when available, internal
surveys, or from your conversations with them.-->

### Top user issue(s)
<!-- This is probably the top popular issue from the category (i.e. the one with the most
thumbs-up), but you may have a different item coming out of customer calls.-->

- [Snippet Visibility and Permissions](https://gitlab.com/groups/gitlab-org/-/epics/2521)

### Top dogfooding issues
<!-- These are sourced from internal customers wanting to [dogfood](/handbook/values/#dogfooding)
the product.-->

We are going to use the [dogfood everything](/handbook/values/#dogfooding) approach to increase the usage of Snippets internally.

- Use Snippets as a way to document project templates, optimized CI configurations, or data queries.
    - This will be easier once we improve the ability to organize and search Snippets.  

### Top Strategy Item(s)
<!-- What's the most important thing to move your vision forward?-->

- [Snippet Visibility and Permissions](https://gitlab.com/groups/gitlab-org/-/epics/2521)
- [Organizing Snippets](https://gitlab.com/groups/gitlab-org/-/epics/3204)
