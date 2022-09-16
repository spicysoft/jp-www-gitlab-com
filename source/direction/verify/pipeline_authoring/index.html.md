---
layout: markdown_page
title: "Category Direction - Pipeline Authoring"
description: "Defining your pipelines is an important part of Continuous Integration, and we want to make it as easy as possible."
canonical_path: "/direction/verify/pipeline_authoring/"
---

- TOC
{:toc}

## Our Mission

Defining your pipelines is an essential step to getting started with Continuous Integration. In the Ops Section [direction](/direction/ops/#operations-for-all) this is the gateway to enable "Operations for All", where our goal is to make the authoring experience as easy as possible for both novice and advanced users alike. We believe that creating a green pipeline quickly and easily will help development teams leverage our CI to increase their efficiency. One of the ways we measure success is by improving the [% of first green pipelines.](/handbook/product/performance-indicators/#verifypipeline-authoring---other----first-green-project)

## Our vision


As a practitioner of [Speedy, Reliable Pipelines](/direction/ops/#speedy-reliable-pipelines), GitLab wants your time to a green pipeline to be the fastest on any platform.

When you're setting up something new, and especially when learning a new CI platform, there can be a lot to take in, and it can be hard to even know what you don't know, and what kinds of options and strategies are available to you. This is why our focus over the next three years is to create an amazing authoring experience in a way that leads to getting your first green pipeline as quickly as possible while leveraging all the available features and functionalities GitLab CI can offer.

### Our top visionary items are:

* [Pipeline editor improvments](https://gitlab.com/groups/gitlab-org/-/epics/7289) - Pipeline editor is our one-stop-shop for writing a CI/CD pipeline, our usability testing had uncover opportunities for improving the pipeline editor UI and functionality. 
* [Auto-complete](https://gitlab.com/groups/gitlab-org/-/epics/5246) - When writing a pipeline it's hard to keep track of all the keywords and remember the different nuances, we want to make your writing experience as easy as writing a text message on your phone
Triggering and retrying jobs and pipelines
* [CI/CD Public catalog](https://gitlab.com/groups/gitlab-org/-/epics/7462) - CI Templates lives in separate distributed projects which are scattered across different repositories. Developers don't have an easy way to find, access, understand and use the CI templates to create pipelines, a public catalog acts as a single source of truth available to anyone who wants to publish or use a CI template.
* [Pipeline simulation](https://gitlab.com/groups/gitlab-org/-/epics/6498) - Creating a complex pipeline configuration that is as efficient and reliable as it can be will require iteration. Organizations are interested in tools that can help them reduce the time to an efficient and reliable pipeline. Currently, it's possible to validate the pipeline syntax statically in the pipeline editor, but we don't evaluate the pipeline logic like rules and needs: job dependencies. We want to make it possible to validate your pipeline under different conditions, such as different pipeline sources and different variables directly from the pipeline editor
The standalone CI Lint tool offers an option to simulate the pipeline for the default branch, but that feature is not discoverable, not well documented, and is difficult to understand what it does from how it's presented in the Linter UI.
* [Setting a predefined list of values for CI environment variables](https://gitlab.com/gitlab-org/gitlab/-/issues/29159) - Adding variables manually to a pipeline is manual task that might be error prone, setting the wrong variables could fail your pipeline, users would like to be able to set a list of predefined variable values for CI environment variables to make it easier to run a pipeline with the available variables.

### Top Vision Items in Ultimate tier
* * [Expose variables in GitLab UI](https://gitlab.com/groups/gitlab-org/-/epics/6262) - Variables can help you perform complexed operations without scripting those tasks to save time, to help achieve that we would like to expose those variables in GitLab UI at the Job level
* [CI/CD Private catalog](https://gitlab.com/gitlab-org/gitlab/-/issues/359047) - CI Templates lives in separate distributed projects which are scattered across your organization. Developers don't have an easy way to access, understand and use the CI templates to create pipelines, a private catalog is a service that is completely controlled by a single organization and not shared with others 

## Who we are focusing on? 


Check out our [Ops Section Direction "Who's is it for?"](/direction/ops/#who-is-it-for) for an in depth look at the our target personas across Ops. For Pipeline Authoring, our "What's Next & Why" are targeting the following personas, as ranked by priority for support: 

1. [Priyanka - Platform engineer](/handbook/product/personas/#priyanka-platform-engineer)
1. [Devon - DevOps Engineer](/handbook/product/personas/#devon-devops-engineer)
1. [Sasha - Software Developer](m/handbook/product/personas/#sasha-software-developer)

### Everyone can contribute 

If you have any feedback on our 3 year vision which you would like to share please do so in the [Pipeline authoring 3 year vision](https://gitlab.com/groups/gitlab-org/-/epics/4534)

## What's Next & Why
As part of our [FY23 Product Investment Themes](https://about.gitlab.com/direction/#fy23-product-investment-themes) our team plan to support the following goals
* Increase in Paid GMAU for gitlab.com - by delivering the first iteration of a [private CI/CD template catalog](https://gitlab.com/gitlab-org/gitlab/-/issues/352347/), as an ultimate feature to allow engineers in an organization to discover and reuse their CI templates within their organization. The discussion on the [architectual blueprint](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/93574) is in progress

### Upcoming milestone 
The work in the [current milestone](https://gitlab.com/gitlab-org/ci-cd/pipeline-authoring/-/issues?scope=all&state=opened&milestone_title=%23started) has been scoped, is underway. The assigned issues listed on our [Pipeline Authoring planning issue](https://gitlab.com/gitlab-org/ci-cd/pipeline-authoring/-/issues?scope=all&state=opened&milestone_title=%23started). Our team's focus is outlined in the `Goals for the milestone` section for the [current milestone](https://gitlab.com/gitlab-org/ci-cd/pipeline-authoring/-/issues?scope=all&state=opened&milestone_title=%23started), in this milestone, our focus is to improve the way our pipeline processes variables which will allow us to implement some of the top feature requests such as:
  * [Set a predefined list of values for CI environment variables and surface them in the "Run pipeline" page form](https://gitlab.com/gitlab-org/gitlab/-/issues/29159) ~170 👍      
  * [Specify variables when retrying a manual job](https://gitlab.com/gitlab-org/gitlab/-/issues/37268) ~115 👍      
  * [Cannot use $ character in build variables](https://gitlab.com/gitlab-org/gitlab/-/issues/17069)  ~140 👍

The planning for next versions are underway and you can view and contribute directly to the [planning issues](https://gitlab.com/gitlab-org/ci-cd/pipeline-authoring/-/issues?scope=all&state=opened&not[milestone_title]=%23started).

## Maturity Plan

We are currently working to mature the Pipeline authoring category from viable to complete. Definitions of these maturity levels can be found on GitLab's [Maturity page](/direction/maturity/). The following epics group the functionality we have planned to mature pipeline authoring.

* [CI/CD Public catalog](https://gitlab.com/groups/gitlab-org/-/epics/7462)
* [Expose variables in GitLab CI](https://gitlab.com/groups/gitlab-org/-/epics/6262)
* [Improve variables experience](https://gitlab.com/groups/gitlab-org/-/epics/8209)

## Competitive Landscape

### Github Actions

Our main competitor doing innovative things in terms of pipeline authoring is GitHub, who have evolved Actions into more and more of a standalone CI/CD solution. GitLab remains far ahead in a lot of areas of CI/CD that they are going to have to catch up on, but Microsoft and GitHub have a lot of resources and have a large user base excited to use their product, especially when given away as part of a package. Actions has a more event-driven and community plugin-based approach than GitLab, whereas we take community contributions directly into the product where they can be maintained.

GitHub actions are a seemingly powerful toolkit with a high potential for low maintainability with community contributions as we have seen with Jenkins. We are monitoring to swiftly incorporate the best of their innovation into our product. We've already had some successes [running GitHub Actions directly in GitLab CI](https://gitlab.com/snippets/1988376) and will continue to explore that. We are also working on a [migration guide](https://gitlab.com/gitlab-org/gitlab/-/issues/228937) to help teams we're hearing from who are looking to move over to GitLab have an easier time. Features like [making the script section in containers optional](https://gitlab.com/gitlab-org/gitlab/-/issues/223203) would make it easier to build reusable plugins within GitLab that would behave more like Actions and [Allow `needs:` (DAG) to refer to a job in the same stage](https://gitlab.com/gitlab-org/gitlab/-/issues/30632) to enable users to run an entire pipline without defining stages. 

A limitation of the [GitHub Actions API](https://docs.github.com/en/rest/reference/actions) is the exclusiveness interaction with the service via a workflow YAML checked into a repository. By contrast, GitLab enables users to define units of work to execute as a service, for example, via [mutli-project pipelines](https://docs.gitlab.com/ee/ci/multi_project_pipelines.html), [dynamic child pipelines](https://docs.gitlab.com/ee/ci/parent_child_pipelines.html#dynamic-child-pipelines) and [parent-child pipelines](https://docs.gitlab.com/ee/ci/parent_child_pipelines.html).

 Watch this walkthrough video of Github actions 
 
 <figure class="video_container">
  <iframe src="https://www.youtube.com/embed/OlgXHnCPZZs" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

### Circle CI

Circle CI is a Continuous Integration platform that builds a robust process for using and contributing Orbs. Circle CI Orbs are reusable snippets of code packages as YAML configuration condenses repeated pieces of config into a single line of code. Once an orb is created, it could be published to the orb registry, which becomes available to any of the Circle CI user base.

Watch this walkthrough video of the different contribution frameworks available by GitHub Marketplace, Circle CI and CodeFresh.io
 
 <figure class="video_container">
  <iframe src="https://www.youtube.com/embed/7WSWGDtMD7A" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

## Top Customer Issue(s)

Our top customer issues ([search](https://gitlab.com/groups/gitlab-org/-/issues?label_name%5B%5D=Category%3APipeline+Authoring&label_name%5B%5D=customer&scope=all&sort=popularity&state=opened&utf8=%E2%9C%93)) include the following:

* [Surface the used custom variables for manual jobs and allow to retry the job with updated variables](https://gitlab.com/gitlab-org/gitlab/-/issues/32712)
* [Integrate GitLab with AWS CodePipeline](https://gitlab.com/gitlab-org/gitlab/-/issues/19082) - Not in our roadmap


## Top Internal Customer Issue(s)

Our top internal customer issues ([search](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3APipeline%20Authoring&label_name[]=internal%20customer)) include the following:
* [Design: Surface the used custom variables for manual jobs and allow to retry the job with updated variables](https://gitlab.com/gitlab-org/gitlab/-/issues/32712)
* [Specify variables when retrying a manual job](https://gitlab.com/gitlab-org/gitlab/-/issues/37268)
* [Frontend: Retry failed or canceled jobs in the downstream pipelines from the trigger job](https://gitlab.com/gitlab-org/gitlab/-/issues/32559)

## Analyst Landscape

Pipeline Authoring is not independently analyzed as an analyst category. See our [Continuous Integration Direction](/direction/verify/continuous_integration/) for this content.


