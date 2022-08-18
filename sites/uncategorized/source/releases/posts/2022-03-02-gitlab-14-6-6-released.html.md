---
title: "GitLab Patch Release: 14.6.6"
categories: releases
author: Ahmad Tolba
author_gitlab: gitlab
author_twitter: gitlab
description: "GitLab releases 14.6.6"
tags: patch releases, releases
---

<!-- For detailed instructions on how to complete this, please see https://gitlab.com/gitlab-org/release/docs/blob/master/general/patch/blog-post.md -->

Today we are releasing version 14.6.6 for GitLab Community Edition and Enterprise Edition.

This version resolves a number of regressions and bugs in
[14.6 release](/releases/2021/12/22/gitlab-14-6-released/) and
prior versions.

## GitLab Community Edition and Enterprise Edition

<!--
- [Description](GitLab MR LINK)
- [Description](GitLab MR LINK)
-->

* [Resolve "Imports fail in 14.5.2 fail with HTTParty::UnsupportedURIScheme error"](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/78479)
* [Fix Geo checksummable check failing when file is nil](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/80280)
* [Ensure cleanup job artifacts task does not include pipeline artifacts](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/81022)
* [Ensure EE services are added when gitlab-ee::config recipe is included](https://gitlab.com/gitlab-org/omnibus-gitlab/-/merge_requests/5861)
<!-- {{ MERGE_REQUEST_LIST }} -->

## Important notes on upgrading

This version does not include any new migrations, and for multi-node deployments, [should not require any downtime](https://docs.gitlab.com/ee/update/#upgrading-without-downtime).

Please be aware that by default the Omnibus packages will stop, run migrations,
and start again, no matter how “big” or “small” the upgrade is. This behavior
can be changed by adding a [`/etc/gitlab/skip-auto-reconfigure`](http://docs.gitlab.com/omnibus/update/README.html) file,
which is only used for [updates](https://docs.gitlab.com/omnibus/update/README.html).

## Updating

To update, check out our [update page](/update/).

## GitLab subscriptions

Access to GitLab Premium and Ultimate features is granted by a paid [subscription](/pricing/).

Alternatively, [sign up for GitLab.com](https://gitlab.com/users/sign_in)
to use GitLab's own infrastructure.
