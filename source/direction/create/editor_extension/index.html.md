---
layout: markdown_page
title: "Category Direction - Editor Extension"
---

- TOC
{:toc}

## Editor Extension

| | |
| --- | --- |
| Stage | [Create](/direction/dev/#create) |
| Maturity | [Minimal](/direction/maturity/) |
| Content Last Reviewed | `2022-08-23` |

### Introduction and how you can help
Thanks for visiting this direction page on Editor Extension. This page belongs to the [Code Review](/handbook/product/categories/#code-review-group) group of the Create stage and is maintained by Kai Armstrong ([E-Mail](mailto:karmstrong@gitlab.com)).

This direction is constantly evolving and everyone can contribute:

 - Please comment and contribute in the linked issues and epics on this page. Sharing your feedback directly on GitLab.com  or submitting a Merge Request to this page are the best ways to contribute to our strategy.
 -  - Please share feedback directly via email, Twitter, or [schedule a video call](https://calendly.com/gitlabkai). If you're a GitLab user and have direct knowledge of your need for Editor Extensions, we'd especially love to hear from you.

### Overview

Code Editors are one of the most important tools in a software engineers toolkit because the majority of their work is writing and working with code. They're customized with extensions for programming languages, coding standards and frameworks and more for the type of work being done. They're also optimized for connecting to development runtime environments and services engineers need to do their work.

Engineers working on contributions often collaborate with product managers, designers and other engineers to complete their work. Initially this collaboration takes place in issues where engineers can ask clarifying questions, review designs and discuss solutions. When engineers begin to work on these contributions, issues serve as the reference document and requirements to complete their task.

Once those contributions have been worked engineers contribute those via a Merge Request. Merge Requests are a collaborative process that involves getting feedback on the work completed and then responding to that feedback through additional revisions and comments.

Configuration files are also common to software development and the tools of the DevOps life cycle. In GitLab there are files like `.gitlab-ci.yml` and `CODEOWNERS` which have specific syntaxes and parameters to properly configure. Making changes to these files often involves having documentation available and then validating content through commits or tools outside the editor.

GitLab supports teams collaborating and building software together, however that collaboration is only available inside the GitLab application. 

Developers, on the other hand, spend the majority of their time working in local editors implementing work outlined in issues, responding to merge request feedback and testing/debugging their applications. These tasks are the core of the developer experience, but GitLab is missing from this experience in any integrated way.
### Target Audience and Experience
<!-- An overview of the personas (https://about.gitlab.com/handbook/marketing/strategic-marketing/roles-personas#user-personas) involved in this category. An overview
of the evolving user journeys as the category progresses through minimal,
viable, complete and lovable maturity levels. -->

The software development process involves many people working across various parts of configuration, contribution and review. All of these users work together to advance software projects in their organization.

Engineering personas who are contributing to development, configuring or interacting with continuous integration and reviewing contributions from other team members. Users performing these tasks need tools that allow them to deeply understand the changes and provide meaningful feedback of both comments and code suggestions. These are specifically addressed by the following GitLab Personas:
 - [Sasha (Software Developer)](/handbook/marketing/product-marketing/roles-personas/#sasha-software-developer)
 - [Devon (DevOps Engineer)](/handbook/marketing/product-marketing/roles-personas/#devon-devops-engineer)

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

GitLab should support developers closer to where they're doing their meaningful work and enable them to be more efficient in the delivery of that work. GitLab supports this effort through:

1. [GitLab Workflow](https://marketplace.visualstudio.com/items?itemName=GitLab.gitlab-workflow) extension for Visual Studio Code
1. [GitLab CLI](https://gitlab.com/gitlab-org/cli)

### What's Next & Why

**In Progress:** [Transition `glab` to GitLab](https://gitlab.com/groups/gitlab-org/-/epics/7514)

GitLab recently adopted the open source command line application `glab`. We're working on transitioning that project to be an officially supported and developed by GitLab. This will expand our reach to users who prefer to work in their terminal.

### What is Not Planned Right Now

We're currently only focused on our efforts to support users in VS Code and the CLI. We're continuing to evaluate places where we can better support developers and how to make that happen. 

Code Quality and Security Scan results in VS Code [&6515](https://gitlab.com/groups/gitlab-org/-/epics/6515): GitLab provides feedback to developers through code quality and security scans. This information is provided in GitLab through merge requests and report data, but it isn't immediately available to engineers as they're working in their editor. We'll continue to look for opportunities to expand our efforts here.

### Competitive Landscape

#### Local Editors

 - [GitHub Pull Requests and Issues](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github)
 - [Codestream](https://www.codestream.com/)


<!-- ### Analyst Landscape -->


<!-- ### Top Customer Success/Sales issue(s) -->
<!-- These can be sourced from the CS/Sales top issue labels when available, internal
surveys, or from your conversations with them.-->


<!-- ### Top user issue(s) -->
<!-- This is probably the top popular issue from the category (i.e. the one with the most
thumbs-up), but you may have a different item coming out of customer calls.-->


<!-- ### Top internal customer issue(s) -->
<!-- These are sourced from internal customers wanting to [dogfood](/handbook/values/#dogfooding)
the product.-->


<!-- ### Top Vision Item(s) -->
<!-- What's the most important thing to move your vision forward?-->

