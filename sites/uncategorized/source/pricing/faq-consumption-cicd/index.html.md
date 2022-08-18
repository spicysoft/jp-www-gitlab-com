---
layout: markdown_page
title: Managing CI/CD Minutes FAQ
description: "On this page you can view frequently asked questions for managing CI/CD minutes limits"
canonical_path: "/pricing/faq-consumption-cicd/"
---

# Customer FAQ - Managing CI/CD Minutes Usage

{:.no_toc}

### On this page

{:.no_toc}

{:toc}

- TOC

## Managing your CI/CD Minutes Usage

**Q. How can I view and manage my CI/CD Minutes usage?**

A. A Group Owner can view CI/CD Minutes usage on the Usage page in your Group settings page. Due to an [existing defect](https://gitlab.com/gitlab-org/gitlab/-/issues/243722), CI/CD minutes for public projects is currently not reflecting in the CI/CD minutes usage.

**Q. How can I view and manage my CI/CD Minutes usage on Public Projects?**

A. The CI/CD minutes limit is applicable for public projects on GitLab.com as well. For public projects on GitLab.com, after we resolve an [existing defect](https://gitlab.com/gitlab-org/gitlab/-/issues/243722) for displaying CI/CD minutes for public projects, users will be provided 8 weeks notice (via [our blog](https://about.gitlab.com/blog/) and [this issue](https://gitlab.com/gitlab-org/gitlab/-/issues/243722)) before implementing the CI/CD minute limits.

**Q. How can I reduce the amount of CI/CD Minutes consumed?**

A. There are a few methods to consider to reduce the number of CI/CD Minutes consumed:

- Utilize [interruptible](https://docs.gitlab.com/ee/ci/yaml/#interruptible) to abort out of date pipelines;
- Be more selective about when jobs run, for example setting certain jobs to only: run when certain files are changed using [only:changes](https://docs.gitlab.com/ee/ci/yaml/#onlychanges--exceptchanges); and
- Optimize your CI jobs to complete more quickly
- Bring your own runners

Watch this deep dive video on how you can manage your CI/CD Minutes usage.

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/GrO-8KtIpRA" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

**Q. What happens if I hit the CI/CD Minutes allotted limit and forget to purchase additional CI/CD Minutes?**

A. You will not be able to run new jobs and running jobs may be terminated until you purchase additional CI/CD Minutes, or until the next month when you receive your monthly allotted CI/CD Minutes.

**Q. Will I be notified before I hit my limit on CI/CD Minutes?**

A. You will receive notification banners in-app when your group has less than 30%, 5% or exceeded your total allotted CI/CD minutes.

<table>
 <tr>
 <td>Percentage Remaining
 </td>
 <td>Users Notified
 </td>
 <td>Notification Type
 </td>
 <td>Frequency
 </td>
 </tr>
 <tr>
 <td>30%
 </td>
 <td>Owners
 </td>
 <td>Banner
 </td>
 <td>Permanent
 </td>
 </tr>
 <tr>
 <td>5%
 </td>
 <td>Owners
 </td>
 <td>Banner
 </td>
 <td>Permanent
 </td>
 </tr>
 <tr>
 <td>0%
 </td>
 <td>Owners
 </td>
 <td>Banner
 </td>
 <td>Permanent
 </td>
 </tr>
</table>

**Q. Can I proactively monitor my CI/CD Minutes usage?**

A. Yes, you can use the [REST API](https://docs.gitlab.com/ee/api/) on GitLab.com to monitor your CI/CD Minutes usage and integrate this into your standard monitoring tools. Here are a few examples for check plugins and Prometheus integrations:

- https://gitlab.com/6uellerBpanda/check_gitlab/-/tree/master#ci-runner-jobs-duration
- https://github.com/mvisonneau/gitlab-ci-pipelines-exporter

**Q. Are CI/CD Minutes used on users/customers' own runners accounted into the quota?**

A. No. The CI/CD Minutes limit is for jobs using GitLab shared runners. Users/Customers can bring their own runners. CI/CD minutes used on their own runners are not accounted into the limit.

## Purchasing additional CI/CD Minutes

**Q. How much does it cost to buy additional CI/CD Minutes?**

A. CI/CD Minutes per top-level group (or personal namespace) are $10 per 1,000 minutes and it is valid for one year from the date of purchase. CI/CD minutes purchased do not auto-renew. Purchased minutes are only valid for 12 months from the date of purchase or until all minutes are consumed, whichever comes first.

**Q. Will I have different CI/CD Minute pricing for Windows and Linux?**

A. No. The pricing is the same regardless of the operating systems.

**Q. How do I purchase additional CI/CD Minutes?**

A. See [Purchase additional CI/CD minutes](https://docs.gitlab.com/ee/ci/pipelines/cicd_minutes.html#purchase-additional-cicd-minutes).

## More information

To upgrade to a paid GitLab.com Tier, [purchase online](https://docs.gitlab.com/ee/subscriptions/gitlab_com/) or contact [GitLab Sales](https://page.gitlab.com/ci-minutes.html)

To address your questions and feedback, we have created a space in the [GitLab Community Forum](https://forum.gitlab.com/t/ci-cd-minutes-for-free-tier/40241), which is actively monitored by GitLab Team members and Product Managers involved with this change.
