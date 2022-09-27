---
layout: markdown_page
title: "Direction - Remote Development"
description: This is the direction page for Remote Development in GitLab.
canonical_path: "/direction/create/editor/remote_development/"
---

- TOC
{:toc}

## Remote Development

| Section | Stage | Maturity | Last Reviewed |
| --- | --- | --- | --- |
| [Dev](/direction/dev/) | [Create](https://about.gitlab.com/stages-devops-lifecycle/create/) | [Planned](/direction/maturity/) | 2022-09-27 |

### Introduction and how you can help

This is the direction page for the Remote Development category, part of the Create stage of the DevOps lifecycle. This page is maintained by Eric Schurter ([@ericschurter](https://gitlab.com/ericschurter), [eschurter@gitlab.com](mailto:eschurter@gitlab.com)) Senior Product Manager for the [Editor group](/direction/create/editor/).

Like most other category direction pages, this page will be continuously updated based on market dynamics, new data points, and customer conversations. Sharing feedback directly on the [category direction epic](https://gitlab.com/groups/gitlab-org/-/epics/7419) or specific issues contained within is the best way to contribute to our strategy and vision. 

### Overview

One of the first barriers to overcome before contributing to a project is configuring your local development environment. The time-consuming task of managing related dependencies and troubleshooting incompatible versions can be discouraging, especially for someone working who contributes infrequently or works on multiple projects. In more advanced environments, a development team may even have a standard set of tools, extensions, and configuration files, adding to the delicate nature of the development environment.

The GitLab Web IDE allows for anyone to contribute to a project right from their web browser. This makes contributing simple fixes to an existing project or responding to feedback in a merge request quick and effective. However, without code linting, real-time rendered previews, or the ability to run tests, many developers are unable to complete meaningful work in the Web IDE. The Web Terminal and Live Preview features offer some additional functionality for a narrow set of use cases, and code changes in the Web IDE can trigger a pipeline, but that doesn't provide the immediate feedback necessary for efficient development. 

Developers want to spend less time managing their development environment and more time contributing high-quality code. And at GitLab, we want _everyone_ to contribute. Eliminating the responsibility of configuring and maintaining a local development environment frees up valuable development time and streamlines onboarding of new developers joining the team. For developers working on larger teams, or those contributing to multiple open source projects, the cost of switching contexts can be so high that it discourages collaboration. With an on-demand, cloud-based development environment code reviews are less of a disruption because developers can move more quickly from project to project and sensitive data is securely stored in the cloud rather than distributed across numerous local devices. 

In addition, the global COVID-19 pandemic has accelerated the shift toward remote and hybrid workforces, increasing the emphasis on privacy and security. A cloud-based development environment enables organizations working in regulated industries to enforce a zero-trust policy that prevents source code from ever being stored locally while maintaining a high quality developer experience. Remote development environments also contribute to our v[ision for managing Software Supply Chain Security](/direction/supply-chain/) by providing a single place where dependencies and tools can be audited and verified and access to those environments can be controlled through strong authentication.       

<!-- ### Performance indicators

#### Primary metric

#### Secondary metrics -->

### Target audience

Remote Development, as the name suggests, directly targets software developers and those who manage or support teams of developers. However, a mature remote development offering lowers the technical barrier to collaboration and enables non-developer personas to effectively and efficiently contribute. As a result, we are able to target all the [user personas](/handbook/product/personas/#user-personas) we describe in our handbook, with a particular focus on:

- **[Sasha (Software Developer):](/handbook/product/personas/#sasha-software-developer)** targets full time contributors to all types of projects (commercial, OSS, data science, etc.). These users expect and need a high level of reliability and speed in their interactions with both project files and Git.

- **[Delaney (Development Team Lead):](/handbook/product/personas/#delaney-development-team-lead)** targets users who often times have elevated roles which allow for the management of project settings, such as access control, security, commit strategies, and mirroring.

- **[Devon (DevOps Engineer):](/handbook/product/personas/#devon-devops-engineer)** targets engineers tasked with supporting and enabling software teams. Their tasks often revolve around platform creation and maintenance, where [GitOps](/topics/gitops/)] workflows are crucial.

<!-- ### Challenges to address -->

<!-- - What needs, goals, or jobs to be done do the users have?
- How do users address these challenges today? What products or work-arounds are utilized?

Provide links to UX Research issues, which validate these problems exist. -->

<!-- - conflicting dependencies
- inefficient troubleshooting -->

### Where we are headed

Our goal is to eliminate the need to configure and maintain complex local development environments by providing secure on-demand environments in the cloud. Developers, however, have very specific requirements and individual preferences for how they configure their editors and environments. In support of this, we aim to meet developers where they are by providing editor-agnostic development environments with centrally-managed configurations and a seamless transition between editing either from the Web IDE or in your local IDE. 

By offering an end-to-end remote development solution within GitLab, we are uniquely positioned to gracefully extend the editing experience as the needs arise, reducing costs without sacrificing speed or quality. The GitLab Web IDE is ubiquitous and free for everyone, a fully-featured web-based editor enabling everyone to contribute from any web browser. As you need to make more complex changes or require a runtime environment to compile code, the Web IDE will connect seamlessly to a "headless" remote environment, reducing the need for context switching. And once we have access to these remote environments, we also unlock functionality that can bring other stages of the DevOps workflow closer to the developer and integrated in the Web IDE. 

These development environments will be configured in a single file stored in a repository, allowing you to provision a new environment on your existing cloud infrastructure with a single click. Monitoring tools and dashboards will be available in GitLab to manage running and suspended environments, ensuring efficient usage of resources. Eventually, we intend to offer GitLab-hosted shared infrastructure as well, abstracting away the burden of cloud service administration and simplifying billing.   

#### Ideal user journey

As you take on more complex editing tasks, the GitLab Web IDE will grow with you. 

1. You open the Web IDE with the intention of making some simple edits to a Markdown page. 
1. You commit those changes and create an MR. 
1. A maintainer points out that your change will require some SCSS and JavaScript updates. 
1. You open the Web IDE again, referencing the comments directly in the editor thanks to the integrated GitLab Workflow extension. 
1. After making the changes, you realize you need to preview them to make sure they look right. Rather than wait for a pipeline to run, you start up a Live Preview session, providing a real-time, client-side JavaScript preview.
1. You commit some more changes, only to find that you actually need to make some edits to Ruby and PHP files. Oh, and you need to run your test cases and generate some localization files for internationalization. 
1. Back to the Web IDE, this time you know you're going to need some compute. You start up a remote development environment from the Web IDE, and after a minute or so you have a fully interactive terminal panel at your disposal. 
1. You make your changes, run your tests, troubleshoot based on the terminal output, then commit the new changes. 
1. Your MR is accepted and you can move on, never having had to clone the repository locally or manually update your npm packages locally.

<!--
Describe the future state for your category.
- What problems are we intending to solve?
- How will GitLab uniquely address them?
- What is the resulting benefits and value to users and their organizations?

Use narrative techniques to paint a picture of how the lives of your users will benefit from using this category once your strategy is at least minimally realized.
-->

<!-- - ideal user experience, user journey(s)
- principles 
- future state -->

#### What's Next & Why

As we finalize our investigation of the underlying technologies and polish our initial proofs of concept, we are focused on defining our MVC for the category,  building an iteration plan, and validating our reference architecture with customers. 

The major focus areas right now are: 

1. Extending the VS Code-based Web IDE to connect securely to a remote host running VS Code Server
1. Use a Devfile that describes the components, credentials, and configuration of the development environments to provision a container on a Kubernetes cluster
1. Create a dashboard for managing running environments

**Eclipse Che**

Eclipse Che is an open source, Kubernetes-native platform that provides container-based developer workspaces capable of running multiple browser-based IDEs and extensible through a flexible plug-in architecture. Che offers many of the componenets necessary to provide a complete remote development solution within GitLab. Our initial iterations will focus on integrating with Che as the primary backend component for defining, provisioning, and managing the remote environment while we build out custom UI in GitLab for configuring and monitoring your environments. 

**Bring-your-own Cloud**

Our initial iterations will be focused on integrating with existing cloud providers like Amazon Web Services (AWS), Google Cloud, or Microsoft Azure to provide a solution for those who already have access to cloud compute. We will eventually look to offer a fully-managed option within GitLab. This is likely to be provided as a service billed based on consumption, much like our [Runner SaaS](/direction/verify/runner_saas) offering. 

**Packaging and Pricing**

Remote Developement as a category will be a multi-level offering, providing value across all tiers and distributions. 

**Free tiers** will be able to securely connect the Web IDE to a remote environment that is manually configured with a compatible code server and authentication token. We will provide detailed documentation and a configuration script to reduce friction in the configuration of the server.

In addition, **Premium tiers** will be able to define an environment as code in a devfile, use that file to provision remote environments on an existing cloud infrastructure, and monitor multiple environments from a GitLab dashboard. Team leads or DevOps Engineers will be able to define a standardized environment across their organization and improve team efficiency.

Eventually, **Ultimate tiers** will have access to advanced monitoring and auditing tools, providing insight into usage across the organization and enforcing security best practices through development tooling. 

_Note: Our pricing strategy is still being researched and validated. This strategy may be subject to change._

#### What is not planned right now
 
While we want to provide an editor-agnostic solution, our initial iterations will focus on support for VS Code. The vast majority of developers are using VS Code and facilitating the connection between a VS Code client and host simplifies the architecture. Support for vim, JetBrains editors, Xcode, or other IDEs will come as the category reaches `Complete` or `Loveable` maturity. 

#### Maturity plan 

<!--
It's important your users know where you're headed next.
The maturity plan section captures this by showing what's required to achieve the next level.
-->

This category is currently `Planned` with no specific date for moving to `Minimal`. 

As part of the [Web IDE](/direction/create/editor/web_ide/) strategy, the Editor group is working toward replacing the existing Web IDE with a [browser-based instance of VSCode](https://gitlab.com/groups/gitlab-org/-/epics/7143). 

Watch here as Paul Slaughter and Eric Schurter from the Editor group discuss the proof of concept and the various user experience benefits it provides.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/_9G45TNR7VA" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

Parts [two](https://www.youtube.com/watch?v=oyEFNOC1_Bo&list=PL05JrBw4t0KrRQhnSYRNh1s1mEUypx67-&index=4), [three](https://www.youtube.com/watch?v=1mTkNxrFXec&list=PL05JrBw4t0KrRQhnSYRNh1s1mEUypx67-&index=3), and [four](https://www.youtube.com/watch?v=qEiXtiInFIA&list=PL05JrBw4t0KrRQhnSYRNh1s1mEUypx67-&index=2) of the VSCode demo focus on extensions, performance, and customization, respectively. 

A more mature browser-based IDE is the first step toward a mature remote development platform. One potential path we may take would be: 

1. Replace the Web IDE with VSCode in the browser, improving the user experience and performance while introducing extensibility and customization
2. Improve the development experience for JavaScript-based projects by maturing the Live Preview feature inside the new Web IDE
3. Introduce cloud-native, container-based development environments that can be launched from the Web IDE
4. Allow secure access to remote development environments from local IDEs

### Competitive Landscape

The three most relevant competitors in this area are [GitHub Codespaces](https://github.com/features/codespaces), [Gitpod](https://www.gitpod.io/), and [Coder](https://coder.com/). Each one offers a slightly different take on remote development environments but aim to solve very similar problems. 

These companies and projects are also related to the remote development space:

- [Theia](https://theia-ide.org/)
- [Eclipse Che](https://www.eclipse.org/che/)
- [Replit](https://replit.com/)
- [CodeSandbox](https://codesandbox.io/)
- [Cloud9 IDE](https://aws.amazon.com/cloud9/)
- [Codeanywhere](https://codeanywhere.com/)
- [JetBrains](https://www.jetbrains.com/fleet/)
- [Stackblitz](https://stackblitz.com/)


### Analyst Landscape

Several analysts have recently published reports highlighting the rapid adoption of cloud-based development workflows.

#### Gartner®

Gartner report titled, **Hype® Cycle for Agile and DevOps, 2021** discusses "Browser-based integrated development environments (IDEs) are consumed “as a service.” They enable browser-based remote access to a complete development environment, which obviates the need for local installation/configuration."* 

Further, it states "Browser-based IDEs provide consistent, secure access to preconfigured development workflows to developers. This frees them from setting up their own environments, eliminating the need to install and maintain prerequisites, software development kits (SDKs), security updates and workstation plug-ins."*

"Gartner predicts that, by 2026, 60% of cloud workloads will be built and deployed using browser-based IDEs". The report adds, “Five factors are driving their increased adoption": 

1. "Remote work and remote onboarding of software developers create a need for a frictionless onboarding experience."
1. "Environment setup issues can impede productivity and hurt the onboarding experience."
1. "Cloud-native (e.g., Kubernetes) deployments require new tooling that either isn't available or is inconvenient to set up on-premises."
1. "Browser-based IDEs make it easier to support and secure bring your own PC (BYOPC) use cases."
1. "Automating DevOps workflows introduces more plug-ins, extensions and API integrations, which make it cumbersome to manage on local machines."*

*_Gartner, Hype Cycle for Agile and DevOps, 2021, George Spafford, Joachim Herschmann, 12 July, 2021. GARTNER and HYPE CYCLE are a registered trademark and service mark of Gartner, Inc. and/or its affiliates in the U.S. and internationally and are used herein with permission._

GitLab's Web IDE already addresses some of Gartner's recommendations, by providing a platform from which anyone can contribute. By [migrating the Web IDE to VSCode](https://gitlab.com/groups/gitlab-org/-/epics/7143), we can rapidly increase the complexity of work and meet the needs of more serious development tasks. Pairing that with a [Server Runtime](https://gitlab.com/gitlab-org/gitlab/-/issues/329602), GitLab is positioned well to meet our customers' expectations when it comes to security, agility, and flexibility. 

#### 451 Research

451 Research published an analysis of [Coder](https://coder.com/) and their approach to moving development workspaces to the cloud. 451 Research recognizes that "by moving developers, IT operators and others to the cloud, organizations can drive faster releases, productivity and efficiency by automating and abstracting IT environments and their management. The idea is that developers have more time to focus on new features, applications and innovation when they are unencumbered with setting up and running their own environments."

In the analysis, 451 Research cites results from their 2021 report, **Voice of the Enterprise: DevOps, Workloads & Key Projects**, that reveal a significant shift in the primary DevOps implementation environment, moving away from On-premise and Hosted Private Cloud workspaces to SaaS and Public Cloud over the next two years. 

451 Research's recommendation to stay competitive in this space is to "focus on enabling simplicity, speed and productivity for developers," something GitLab's single platform for DevOps is positioned well to deliver. 

_Source: 451 Research, a part of S&P Global Market Intelligence, Coverage Initiation: Coder moves development to the cloud with workspaces-as-code, September 2021, All Rights Reserved_

### Related issues

<!-- #### Top user issues

#### Top dogfooding issues

#### Top vision items -->

- [IDE / editor with a local editor via mirroring / sync](https://gitlab.com/gitlab-org/gitlab/-/issues/16069)
- [Remote Development Environments](https://gitlab.com/groups/gitlab-org/-/epics/3230)
- [Server Runtime](https://gitlab.com/gitlab-org/gitlab/-/issues/329602)
- [Server side evaluation in the Web IDE](https://gitlab.com/groups/gitlab-org/-/epics/167)
- [Web IDE Replacement w/ Theia](https://gitlab.com/groups/gitlab-org/-/epics/1619)

#### Opportunity reviews

- [Previous opportunity canvas](https://docs.google.com/document/d/1t1j98Wl1erG9b8cUT77yDsNUEPvCOMOp0ktbOkYZfWc/edit#heading=h.4mt5fmtn0ax4)
- [Investigation into replacing Web IDE with Theia](https://gitlab.com/groups/gitlab-org/-/epics/1619)
