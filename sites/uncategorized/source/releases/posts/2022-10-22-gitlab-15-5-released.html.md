---
release_number: "15.5" # version number - required
title: "GitLab 15.5 released with GitLab Cloud Seed and Autocomplete suggestions" # short title (no longer than 62 characters) - required
author: Matt Wilson # author name and surname - required
author_gitlab: matt_wilson # author's gitlab.com username - required
image_title: '/images/15_5/15_5-cover-image.jpg' # cover image - required
description: "GitLab 15.5 released with with GitLab Cloud Seed, Autocomplete suggestions in the Content Editor, Error Tracking Open Beta, Operational Container Scanning and much more!" # short description - required
twitter_image: '/images/15_5/15_5-cover-image.jpg' # required - copy URL from image title section above
categories: releases # required
layout: release # required
featured: yes

# APPEARANCE
# header_layout_dark: true #uncomment if the cover image is dark
# release_number_dark: true #uncomment if you want a dark release number
# release_number_image: "/images/X_Y/X_Y-release-number-image.svg" # uncomment if you want a svg image to replace the release number that normally overlays the background image

# COVER IMAGE LICENCE
cover_img:
  image_url: "https://drive.google.com/file/d/1LrT1c-udF2ImonYJi0S3-YznQnsvaGIC/view?usp=sharing" # required - Matt Wilson took this picture personally
  licence: CC0 # which licence the image is available with - required
  licence_url: "https://creativecommons.org/publicdomain/zero/1.0/legalcode" # required

---

<!--
This is the release blog post file. Add here the introduction only.
All remaining content goes into data/release-posts/.

**Use the merge request template "Release-Post", and please set the calendar due
date for each stage (general contributions, review).**

Read through the Release Posts Handbook for more information:
https://about.gitlab.com/handbook/marketing/blog/release-posts/#introduction
-->

Today, we are excited to announce the release of GitLab 15.5 with [GitLab Cloud Seed](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#deploy-apps-to-google-cloud-with-gitlab-cloud-seed), [Autocomplete suggestions in the Content Editor](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#autocomplete-suggestions-in-the-content-editor), [Error Tracking Open Beta](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#error-tracking-open-beta), [Operational Container Scanning](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#operational-container-scanning) and much more!

These are just a few highlights from the 50+ improvements in this release. Read on to check out all of the great updates below.

## Developer Experience
_Making it easier for developers and users_

GitLab and Google Cloud customers can now [migrate to the cloud using a single platform](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#deploy-apps-to-google-cloud-with-gitlab-cloud-seed). [Autocomplete suggestions in the Content Editor](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#autocomplete-suggestions-in-the-content-editor) provide convenient shortcuts, and errors and other observability data are now easily accessible in the same dashboard with [Error Tracking (Beta). GitLab Runner 15.5](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#error-tracking-open-beta), a lightweight, highly-scalable agent, sends CI/CD job results back to a GitLab instance. 

## Strengthening Security
_Secure by design_

The Vulnerability Report is more robust with [Operational Container Scanning](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#operational-container-scanning), and users will now receive an immediate [email notification when a two-factor OTP attempt is wrong](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#email-notification-when-two-factor-otp-attempt-is-wrong). [Dependency scanning has improved accuracy for Go dependencies](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#dependency-scanning-improved-accuracy-for-go-dependencies) for a more accurate software bill of materials (SBOM), while the FIPS-compliant [Kubernetes integration](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#fips-compliant-kubernetes-integration) ensures compliant software for U.S. Government agencies and vendors. 

## Enhanced Integrations
_Building a better experience for you_

The GitHub project importer can now [import pull request events](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#import-more-relationships-when-importing-projects-from-github) and add them to the merge request’s metadata and [import GitHub project image resource and other attachments](https://about.gitlab.com/releases/2022/10/22/gitlab-15-5-released/#import-pull-request-and-issue-events-from-github) from release notes and comments. Also, now you can configure your GitLab instance to deliver emails using [Microsoft Graph API](https://learn.microsoft.com/en-us/graph/api/user-sendmail) with [OAuth 2.0 client credentials flow](https://learn.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow). 


We thank the wider GitLab community for the 153 contributions they provided to GitLab 15.5! At GitLab, everyone can contribute and we couldn't have done it without you!

To preview what's coming in next month's release, check out our [Upcoming Releases page](/direction/kickoff/), which includes our 15.6 release kickoff video.
