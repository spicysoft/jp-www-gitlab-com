---
title: "Introducing paid subscriptions on GitLab.com"
author: Mike Bartlett
author_gitlab: mydigitalself
author_twitter: mydigitalself
categories: company
description: "Subscriptions and limits to private CI minutes on shared runners are coming to GitLab.com"
---

For the past few years, we've run GitLab.com as our free SaaS offering, featuring unlimited public and private repositories, unlimited contributors, and access to key features, like issue tracking, code review, CI, and wikis. None of those things are changing! We're committed to providing an integrated solution that supports the entire software development lifecycle at a price where everyone can contribute.

<!-- more -->

So what's changing? Over time, the usage of GitLab.com has grown significantly to the point where we now have over two million projects hosted on GitLab.com and have seen a 16x increase in CI usage over the last year. While we're excited by the exponential growth of GitLab.com, we also want to ensure that we can maintain our commitment to offering a free plan with unlimited private repos, unlimited contributors, and access to the key features that allow you to bring your entire software development lifecycle into a single platform. To keep this commitment and to offer users who have more specialized needs access to additional [enterprise features](/enterprise/), we're [introducing new paid subscriptions](/pricing/#gitlab-com) to GitLab.com.

These paid plans will do three things:
 * introduce a limit to the amount of private CI minutes on shared runners from May 1st
 * offer additional paid plans for GitLab.com users who are looking for a more robust feature set without the overhead of managing their own Enterprise Edition instance
 * offer a new level of support for teams who use GitLab.com for mission critical code

## Introducing our paid plans

[![paid-plans](/images/blogimages/ci-limits/paid-plans.png){: .shadow}](/images/blogimages/ci-limits/paid-plans.png)

You can see more information on the [Product section](/pricing/#gitlab-com) of our website.

Right now, the plans offer additional minutes and levels of support. Future GitLab
EE Starter and EE [Premium](/pricing/premium/) features will be added exclusively to Bronze, Silver and
Gold plans over time.


## Capping CI minutes on private shared runners

Thanks to [the generosity](/blog/2016/04/19/gitlab-partners-with-digitalocean-to-make-continuous-integration-faster-safer-and-more-affordable/) of Digital Ocean we were able to offer unlimited CI minutes for the last year.  Over this time, we've run billions of free CI minutes across thousands of projects on GitLab.com.

We are going to continue to give away free CI, but from May 1st, the number of minutes on our shared runners will be capped at 2000 minutes a month per group
and our paid plans will allow for additional minutes. This limit will only apply to
private projects. This will affect less than 3% of all groups using CI on GitLab.com today. 2000 minutes means you can run a pipeline of 10 minutes
five times a day, every working day.

With free [GitLab CI](/stages-devops-lifecycle/continuous-integration/) on GitLab.com you'll get unlimited number of pipelines, with
unlimited parallelism on unlimited groups with unlimited number of
collaborators. We only count minutes per group and you can run anything
you want, including full Docker support.

We’ve chosen to restrict minutes as this will still allow you to have parallel pipelines and therefore fast CI runs.

Note that this will only restrict your minutes for our shared runners. If you
have a specific runner set up for your projects, there is no limit to your pipeline minutes
on GitLab.com.

You still have and will always have the option to bring your own Runner.
Runners are very easy to set up, require little to no maintenance and run on almost any platform.

[Read how to set up your own Runner in the documentation](https://docs.gitlab.com/runner/)

## New paid features

Every month, without fail, we ship improvements to GitLab. As always, everyone will be able to access GitLab Community Edition features for free. New GitLab Enterprise Edition Starter (EES) features will be made available to all of the paid plans, whilst new EEP features will only be made available to the Silver and Gold plans.

## New levels of support

In addition to the private CI build minutes and Enterprise Edition feature access, you now have broader options for support. The Bronze and Silver plans will offer next business day support, similar to our previous Bronze Support.

For those requiring more speedy help, our Gold plan offers a 4-hour response time on any ticket submitted to our support team.

## Timeline

The plans are available to purchase now and the CI limits will be activated on May 1st, at which
point you will be able to visualise your usage by clicking on the settings cog on your group home page
and selecting `Pipelines Quota`.

## FAQ

**How are public projects on GitLab.com affected by the CI usage cap?**

Public projects that are hosted on GitLab.com ans are part of the GitLab Open Source Program [receive access to Gold tier features](/solutions/open-source/) and CI usage benefits.

**Does the number of minutes apply per project?**

The number of minutes applies to a group or an individual. This means the sum of
all minutes in all projects for a group or for all an individual's projects.

The quota is reset every month.

**Does the number of users impact the limit?**

The limit is per group, regardless of how many users are in the group.

**What about storage limits?**

Today, each project is limited to 10G of repository storage, but this has not been
actively enforced for some time. We will continue to allow 10G of storage, but will
soon start enforcing this limit, including across  [job artifacts](/gitlab-com/settings/#gitlab-ci) and other storage
mechanisms that are currently unmetered.

Since GitLab 8.9 we've [introduced](https://docs.gitlab.com/ee/ci/yaml/#artifacts-expire_in)
the ability to set a expiry time on artifacts, then in 9.0 we
[added the ability to set a default expiry time](https://gitlab.com/gitlab-org/gitlab-ce/merge_requests/9219)
and this value is currently set to two weeks on
GitLab.com. You can also manually delete or keep any artifact.

**Can I use my own runners instead?**

Absolutely, you can run specific runners for any of your projects. Take a look at
[the documentation](https://docs.gitlab.com/runner/) for more information on
how to do this. We only count minutes on the shared runners we provide on GitLab.com.


UPDATED 2019-03-08 - The original version of this FAQ mentioned that public projects would receive unlimited CI minutes and Ultimate benefits. That policy has changed
to public projects that are members of the GitLab Open Source Program now receive [Gold Tier features and CI usage caps](/solutions/open-source/). 

UPDATED 2020-03-18 - We changed what [CI minutes free users get](/releases/2020/03/18/ci-minutes-for-free-users/).
