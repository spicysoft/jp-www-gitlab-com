---
layout: markdown_page
title: "Category Direction - Web IDE"
description: "GitLab want to make it easier for engineers to work on secondary development items in the Web IDE by removing barriers to the code review process. Learn more!"
canonical_path: "/direction/create/editor/web_ide/"
---

- TOC
{:toc}

## Web IDE

| | |
| --- | --- |
| Stage | [Create](/direction/dev/#create) |
| Maturity | [Viable](/direction/maturity/) |
| Content Last Reviewed | `2022-08-03` |

### Introduction and how you can help
Thanks for visiting this direction page on the Web IDE in GitLab. This page belongs to the [Editor](/handbook/product/categories/#editor-group) group of the Create stage and is maintained by Eric Schurter ([E-Mail](mailto:eschurter@gitlab.com)). More information about the Editor group's priorities and direction can be found on the [Editor group direction page](/direction/create/editor/).

This direction is constantly evolving and everyone can contribute:

 - Please comment and contribute in the linked [issues](https://gitlab.com/gitlab-org/gitlab/issues?label_name%5B%5D=Category%3AWeb+IDE) and [epics](https://gitlab.com/groups/gitlab-org/-/epics?label_name[]=Category%3AWeb%20IDE) on this page. Sharing your feedback directly on GitLab.com  or submitting a Merge Request to this page are the best ways to contribute to our strategy.
 - Please share feedback directly via email, Twitter, or [schedule a video call](https://calendly.com/eschurter/45min). If you're a GitLab user and have direct knowledge of your need for the Web IDE, we'd especially love to hear from you.

### Overview

Code Editors are one of the most important tools in a software engineers toolkit because the majority of their work is writing and working with code. They're customized with extensions for programming languages, coding standards and frameworks and more for the type of working being done. They're also optimized for connecting to development runtime environments and services engineers need to do their work. The context in which engineers use this tool dictates the type of configuration required.

Software development is an iterative process that involves requesting feedback from peers (Developers, Designers, Product Mangers etc), and responding to that feedback. In GitLab, this is done using a Merge Request. Reviewing is in fact a specialized editing task (other professions would call this same task editing), for example suggesting specific changes to functions, documentation, and interface text. A local development environment is often not ideal for these editing tasks:

  - As a developer reviewing the merge request this often involves checking the code out locally and creating an environment for that review. Sometimes this process can be complicated due to local dependencies, their own local development branch, database migrations and other issues which prevent just cleanly changing branches. Reviews also involve reviewing the code changes to gain understanding and providing feedback to the author of the MR in the form of code suggestions, patches and other general comments.
  - As a designer or product manager setting up and maintaining an environment to perform reviews may not be feasible. Reviewing these changes inside of a review application is valuable, but it can be hard to provide as actionable comments back to the MR.
  - As a the author, responding to feedback this often involves leaving MR feedback open in one window while working in an editor in a different window. Feedback in the form of suggestions and patch files needs to be handled outside of the MR interface and back in the local development environment. At the same time some feedback requires manually updating comments and threads that feedback has been actioned after the changes have been pushed back to the MR.

Configuration files are also common to software development and the tools of the DevOps life cycle. Files like gitlab-ci.yml or CODEOWNERS can be difficult to use because they need to be both syntactically (correct commas, quotes, value types etc) and semantically valid (expresses what you intended it to). Local development environments can be configured with syntax checkers, and schemas to help verify syntactic correctness, but lack the context for deeper features.

GitLab CI is fast and highly configurable within GitLab, but it can be hard to remember all the configuration parameters for your goal and a typo can make the complete configuration invalid. Editing this file often involves having documentation open while make changes. Once those changes have been made users leave their editor to validate the file or commit and wait for feedback from a running pipeline.

Once your GitLab CI configuration has been created and validated, it may be responsible for providing review applications for previewing changes, code quality and coverage reports or vulnerability information. As an engineer who is working on a contribution information contained on these reports must be reconciled within their editor.

GitLab's web editors are familiar to developers, and easy to use for designers, product managers and more. It brings editing capabilities into the context of their current task in GitLab, by providing an editing experience designed for the workflow they're trying to accomplish.

#### Scope of Vision

Our vision for editing inside of GitLab extends to both the Web IDE and our [Web Editor](https://docs.gitlab.com/ee/user/project/repository/web_editor.html). We believe that both task and context are important aspects to consider when choosing an editing experience and we want to focus on providing complete experiences in all areas.

With the Web IDE, we want to meet the developers where they are and offer a mature, feature-rich editing experience in the browser. By replacing the current Web IDE with a browser-based instance of VS Code, the [most popular code editor](https://insights.stackoverflow.com/survey/2021#section-most-popular-technologies-integrated-development-environment), we can enable developers to complete more complex tasks and work more efficiently inside GitLab. 

On the other hand, with the Web Editor we'll continue to deliver a lightweight experience and explore opportunities for [in-context single file editing experiences](https://gitlab.com/groups/gitlab-org/-/epics/3601) that present editors inline to the task trying to be accomplished. 

#### Live Preview

Live Preview is a valuable feature that can be [enabled within the Web IDE](https://docs.gitlab.com/ee/user/project/web_ide/#enable-live-preview). Developers working on projects often need to preview their changes while developing, during review and to demo progress. Previewing changes often involves having pre-configured development environments running locally or in the cloud. With Live Preview in the Web IDE you can view your simple JavaScript apps and static sites, in real time, right next to the code. 

The path to wider reach and adoption of Live Preview hinges on the ability to offer server-side compilation of code or remote development environments, something you can read more about in the [Remote Development](/direction/create/remote_development/) direction page.

GitLab is also supportive of 3rd party integrations to extend these features to developers. One example is the community contribution [Gitpod](https://www.gitpod.io/) made to add a native integration to GitLab, making it possible to [launch a remote Gitpod instance](https://docs.gitlab.com/ee/integration/gitpod.html) from the repository or merge request with a single click.

### Target Audience and Experience

<!-- An overview of the personas (https://about.gitlab.com/handbook/marketing/strategic-marketing/roles-personas#user-personas) involved in this category. An overview
of the evolving user journeys as the category progresses through minimal,
viable, complete and lovable maturity levels. -->
The software development process involves many people working across various parts of configuration, contribution and review. All of these users work together to advance software projects in their organization.

Engineering personas who are contributing to development, configuring or interacting with continuous integration and reviewing contributions from other team members. Users performing these tasks need tools that allow them to deeply understand the changes and provide meaningful feedback of both comments and code suggestions. These are specifically addressed by the following GitLab Personas:
 - [Sasha (Software Developer)](/handbook/product/personas/#sasha-software-developer)
 - [Devon (DevOps Engineer)](/handbook/product/personas/#devon-devops-engineer)

Non-Engineer personas who are focused on reviewing and providing feedback for contributions. These users need tools and features that help them preform reviews of code, documentation and interfaces without requiring local environments or complex configurations. Feedback should be easy to leave and actionable by engineers within their editor. These are specifically addressed by the following GitLab Personas:
 - [Parker (Product Manager)](/handbook/product/personas/#parker-product-manager)
 - [Presley (Product Designer)](/handbook/product/personas/#presley-product-designer)
 - [Delaney (Development Team Lead)](/handbook/product/personas/#delaney-development-team-lead)

#### Challenges to address
<!--
- What needs, goals, or jobs to be done do the users have?
- How do users address these challenges today? What products or work-arounds are utilized?

Provide links to UX Research issues, which validate these problems exist.
-->
**Configuration**
Users who configure projects or GitLab need editing tools to help them be efficient at this process. Creating specialized configuration files for working with GitLab CI or other areas of GitLab benefit from feedback provided directly in the editor.

**Contribution**
Engineering personas who work on contributing directly to the code in projects need to action feedback from the review process. Having easy access to the feedback from reviewers and CI jobs inside of the editor should ensure that it's easy to action.

**Review**
The code review process encompasses both engineering personas and non-engineering personas who contribute through design, product and other feedback. In solving for these users it will be important to make sure that people who want to give feedback are able to easily accomplish that.

### Where we are headed
<!-- Describe the future state for your category. What problems will you solve?
What will the category look like once you've achieved your strategy? Use narrative
techniques to paint a picture of how the lives of your users will benefit from using this
category once your strategy is fully realized -->

The Web IDE is loved by many but universally considered a great option for relatively simple edits. In order to achieve a more complete, full-featured editing experience capable of supporting complex development tasks, we need to think bigger. We are currently working to [replace the Web IDE with a browser-based instance of VS Code](https://gitlab.com/groups/gitlab-org/-/epics/7683). Afterward we'll be able to address many of the focus areas below and provide a more performant and extensible editing experience. 

#### Areas of focus

Editor [configuration and customization](https://www.cmcrossroads.com/article/beware-ide-risks-standardizing-one-ide) are important parts of IDE experiences. Teams working together often standardize editor configurations through the use of an `.editorconfig` file and developers customize other aspects of the editor to their own preference. Ensuring support for various syntax highlighting preferences and colorization will make working in the Web IDE feel more like a user's local editor.

Providing [first class support for editing](https://gitlab.com/groups/gitlab-org/-/epics/2707) specialized GitLab files like [`.gitlab-ci.yml`](https://gitlab.com/gitlab-org/gitlab/-/issues/218472) file, issue templates and [CODEOWNERS](https://docs.gitlab.com/ee/user/project/code_owners.html) ensures developers have the tools needed to efficiently accomplish their goals.

Extending the Web IDE to support other GitLab features like [executing CI Jobs](https://gitlab.com/gitlab-org/gitlab/-/issues/213604) and integrating [review app preview](https://gitlab.com/groups/gitlab-org/-/epics/3213) will help provide more feedback to changes in the Web IDE.

Documentation is a less intensive type of engineering effort that requires fewer tools than traditional development environments. Enabling technical users to produce documentation in the Web IDE easier and more quickly will be important as we continue to expand the Web IDE. This includes enhancing markdown tooling and support for more prose based content in the Web IDE.

When working through the code review process users are often trying to understand feedback in the context of their changes. Engineers must examine feedback in one window and then return to their editor to make changes. By expanding [code review tools in to the Web IDE](https://gitlab.com/groups/gitlab-org/-/epics/72) we can help provide that review feedback in the Web IDE so that changes can be made more easily.

It's also important to help users quickly jump to definition and find references while reviewing and editing code within the Web IDE. Supporting [code intelligence](https://gitlab.com/groups/gitlab-org/-/epics/1576) features [in the Web IDE](https://gitlab.com/groups/gitlab-org/-/epics/2332) will move that vision forward.

### Maturity

Currently, GitLab's maturity in the Web IDE is *viable*. Here's why:

 - GitLab currently offers a rich editing experience via the Web IDE. However, the Web IDE does not currently support meaningful development or contribute to secondary engineering activities effectively. Without these features the Web IDE cannot be effectively used to support engineers.

A **[complete](https://gitlab.com/groups/gitlab-org/-/epics/1469)** Web IDE category ensures that the Web IDE is used for tightly integrated editing experiences in GitLab. Moving beyond the focus will be on standardization of editing environments through the use of `.editorconfig` and support for user syntax highlighting (including dark mode). Finally, the Web IDE must provide [1st class editing experiences](https://gitlab.com/groups/gitlab-org/-/epics/2707) for GitLab features. We aim to achieve this by implementing the [web-base VS Code editor](https://gitlab.com/groups/gitlab-org/-/epics/7683) and pre-installing the [GitLab Workflow extension for VS Code](https://docs.gitlab.com/ee/user/project/repository/vscode.html). 

Part of a **[Lovable](https://gitlab.com/groups/gitlab-org/-/epics/1470)** Web IDE comes by providing support for the Code Review process inside of the Web IDE. This involves support for both leaving and responding to feedback inside of the Web IDE. The Web IDE should also include code navigation features like `Jump to Definition` and `Find References` to better support this process.

To truly offer a full development experience in the browser, we need a server runtime solution. The [Remote Development category](/direction/create/editor/remote_development/) has been created to explore this direction and provide a "full" development experience within GitLab. 

### What's Next & Why

At the moment, our focus is on [replacing the Web IDE with a VS Code instance](https://gitlab.com/groups/gitlab-org/-/epics/7683). This effort will help us address many of the issues already in our backlog as well as provide options for introducing additional functionality throught the extension framework. 

With the deprecation of the Static Site Editor, we have an opportunity to deliver similar value across all types of projects by making it easier to edit Markdown in the Web Editor and Web IDE. The editors already have a real-time side-by-side Markdown preview, but to fully solve the needs of non-developer personas, we will be working to integrate the Content Editor as an option for editing Markdown files. 

### What is Not Planned Right Now
<!-- Often it's just as important to talk about what you're not doing as it is to
discuss what you are. This section should include items that people might hope or think
we are working on as part of the category, but aren't, and it should help them understand why that's the case.
Also, thinking through these items can often help you catch something that you should
in fact do. We should limit this to a few items that are at a high enough level so
someone with not a lot of detailed information about the product can understand
the reasoning-->

We're not currently focused on solving the needs of non-engineering based personas with the Web IDE. Non-engineers require a different type of editing experience and that can largely be focused around different types of content. These editing experiences may include documentation or notes based in Markdown, or more WYSIWYG experiences related to content management systems. The [Content Editor](https://about.gitlab.com/direction/create/editor/content_editor/) will be more focused on these efforts and will eventually be available as an alternative editing experience within the Web IDE. 

While our [complete maturity](/direction/create/editor/web_ide/#maturity) plan also aims to ensure some [compatibility with the iPad](https://gitlab.com/groups/gitlab-org/-/epics/756). We won't be focusing on making the iPad or other mobile devices 1st class devices due to our upstream dependencies on Monaco and various mobile OSs. We also do not have sufficient evidence to support mobile devices as code creation devices inside the Web IDE. As our research in this area continues to expand we may revisit mobile support.

The Editor group does not have plans to bring real-time collaborative coding features to the Web IDE at this time. While we previously outlined this as a category to focus on, we don't believe there is enough market demand to warrant investment. We'll continue to evaluate the space and may revisit this use case at a later date.

### Competitive Landscape
- [Cloud9](https://aws.amazon.com/cloud9/)
- [Codesandbox](https://codesandbox.io/)
- [Repl.it](https://repl.it/)
- [Koding](https://www.koding.com/)
- [StackBlitz](https://stackblitz.com/)
- [Theia](https://www.theia-ide.org/)
- [Gitpod](https://www.gitpod.io/)
- [Coder](https://coder.com/)
- [Visual Studio Online](https://online.visualstudio.com/)
- [GitHub Codespaces](https://github.com/features/codespaces)

### Analyst Landscape

Currently the Analyst landscape is fragmented on cloud native development experiences. This market will continue to mature as Microsoft pushes ahead with Codespaces and Amazon further integrates Cloud9 in to their offerings.

[https://www.g2crowd.com/categories/integrated-development-environment-ide](https://www.g2crowd.com/categories/integrated-development-environment-ide)
[https://www.theserverside.com/news/450433105/AWS-Cloud9-IDE-threatens-Microsoft-developer-base](https://www.theserverside.com/news/450433105/AWS-Cloud9-IDE-threatens-Microsoft-developer-base)


<!-- ### Top Customer Success/Sales issue(s) -->
<!-- These can be sourced from the CS/Sales top issue labels when available, internal
surveys, or from your conversations with them.-->

### Top user issue(s)
<!-- This is probably the top popular issue from the category (i.e. the one with the most
thumbs-up), but you may have a different item coming out of customer calls.-->

Top user issues relate to the configurability and customization of the Web IDE. These focus on items like standardizing editor coding style through configuration files and supporting user customization for themes and other preferences.

 - Add Vim keybindings to Web IDE [#22786](https://gitlab.com/gitlab-org/gitlab/-/issues/22786)
 - Support `.gitattributes` and `.editorconfig` for correct encoding [#14222](https://gitlab.com/gitlab-org/gitlab/-/issues/14222)
 - Project custom file templates [#16814](https://gitlab.com/gitlab-org/gitlab/-/issues/16814)

### Top dogfooding issues
<!-- These are sourced from internal customers wanting to [dogfood](/handbook/values/#dogfooding)
the product.-->

GitLab's current internal usage of the Web IDE is very heavily focused around non-developer personas and so there are not any current issues. We aim to enable more widespread usage of the Web IDE by implementing a bro

### Top Vision Item(s)
<!-- What's the most important thing to move your vision forward?-->

The most important item to delivering on the Web IDE Vision are:

 - [Replace Web IDE with client-only VS Code](https://gitlab.com/groups/gitlab-org/-/epics/7683)
