---
layout: markdown_page
title: "Category Direction - Merge Trains"
---

- TOC
{:toc}

## Merge Trains

A core tenet of our Ops section [direction](/direction/ops/#speedy-reliable-pipelines), is about balancing speed with reliability, keeping your pipelines green. This ultimately supports the stability of collaboration across branches and GitLab has introduced Merge Trains as the mechanism to accomplish this. When merge trains are used, each merge request joins as the last item in that train. Each merge request is processed in order and is added to the merge result of the last successful merge request. The merge request adds its changes, and starts the pipeline immediately under the assumption that everything is going to pass. If the merge request fails, it is kicked out of the train and the next merge request continues the pipeline of the last successful merge result. 

- [Maturity Plan](#maturity-plan)
- [Issue List](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3AMerge%20Trains)
- [Overall Vision](/direction/ops/)
- [UX Research](https://gitlab.com/groups/gitlab-org/-/epics/594)
- [Documentation](https://docs.gitlab.com/ee/ci/pipelines/merge_trains.html)

## What's Next & Why

For an overview of our plans for Merge Trains, see epic [Merge Trains Vision](https://gitlab.com/groups/gitlab-org/-/epics/5122).

In FY24, we plan to proceed with work to enable [Fast-forward merge support](https://gitlab.com/groups/gitlab-org/-/epics/4911#proposal) for merge trains. We have heard from users that while Merge Trains are great they often need to re-run the same pipeline to get the correct SHA value into a package prior to release. Reducing the number of pipelines required to merge a change by one means shipping value to customers faster.

### Overview

<!-- blank line -->
<figure class="video_container">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/H2KPKDBW6Tw" frameborder="0" allowfullscreen></iframe>
</figure>
<!-- blank line -->

## Who we are focusing on? 

Check out our [Ops Section Direction "Who's is it for?"](/direction/ops/#who-is-it-for) for an in depth look at the our target personas across Ops. For Merge Trains, our "What's Next & Why" are targeting the following personas, as ranked by priority for support: 

1. [Sasha - Software Developer](https://about.gitlab.com/handbook/product/personas/#sasha-software-developer)
1. [Devon - DevOps Engineer](https://about.gitlab.com/handbook/product/personas/#devon-devops-engineer)
 
## Maturity Plan

This category is currently at the "Viable" maturity level, and our next maturity target is "Complete" ([see our definitions of maturity levels](https://about.gitlab.com/direction/maturity/)). We currently have basic capabilities and want to continue and extend these in future milestones.

Key deliverables to achieve this are:

- [Merge Trains should support fast forward merge](https://gitlab.com/groups/gitlab-org/-/epics/4911)
- [API support for merge trains MWPS](https://gitlab.com/gitlab-org/gitlab/-/issues/32665)
- [Resolving Severity 1 and 2 bugs](https://gitlab.com/gitlab-org/gitlab/-/issues?sort=milestone_due_desc&state=opened&label_name[]=Category:Merge+Trains&label_name[]=type::bug&not[label_name][]=severity::3&not[label_name][]=severity::4)
- [Run pipeline on merge result](https://gitlab.com/gitlab-org/gitlab-ee/issues/7380) (Complete)
- [Parallel execution strategy for Merge Trains](https://gitlab.com/gitlab-org/gitlab-ee/issues/11222) (Complete)
- [Add/Remove TODO tasks according to the Merge Train events](https://gitlab.com/gitlab-org/gitlab/issues/12136) (Complete)
- [Have merge quick action add to merge train](https://gitlab.com/gitlab-org/gitlab/issues/32336) (Complete)

## Competitive Landscape

It looks like GitLab is the first to provide this functionality, although GitHub has a [partial solution](https://github.blog/changelog/2021-10-27-pull-request-merge-queue-limited-beta/). 

[Aviator](https://www.aviator.co/) is the most comparable offering against Merge Trains, promising to "keep builds green forever", much like how we [positioned Merge Trains in 2020](https://about.gitlab.com/blog/2020/01/30/all-aboard-merge-trains/) during their release. Today, Merge Queues seem to support parity of Merge Trains for GitHub repositories. 

[Mergify](https://mergify.com/features/merge-queue) is another offering that integrates with GitHub repositories and multiple CI providers to supporty queued pull requests.

## Top Customer Issue(s) and Top Customer Success/Sales Issue(s)

The most popular request is the epic [gitlab&4911](https://gitlab.com/groups/gitlab-org/-/epics/4911). When selecting to work with Fast Forward Merge without using merge trains, a user is offered to rebase master manually, in case master has advanced. Merge Train supporting fast forward merge would reconstruct the merge train and re-run pipelines automatically.

## Top Internal Customer Issue(s)

In an effort to dogfood our own features, we are actively working on using merge trains internally on gitlab-org [gitlab#195](https://gitlab.com/gitlab-org/quality/team-tasks/issues/195). A piece of functionality our internal team has requested after working with Merge Trains for a while is API support for merge trains to merge when pipeline succeeds, [gitlab#32655](https://gitlab.com/gitlab-org/gitlab/-/issues/32665). 

## Top Vision Item(s)

Our top vision item is [Merge Trains should support fast forward merge](https://gitlab.com/gitlab-org/gitlab/issues/35628) as this will eliminate the frequent need for manually rebasing. We have heard from many developers that a large portion of their day is dedicated to this activity, and with this functionality, Merge Trains will take care of this for them. 

Beyond that we want to provide Developers and DevOps Engineers a better way to [visualize](https://gitlab.com/gitlab-org/gitlab/-/issues/277391) and administer the merge train.

