---
layout: markdown_page
title: "Category Direction - Navigation & Settings"
description: "This is the Product Direction Page for the Navigation and Settings patterns within GitLab."
canonical_path: "/direction/ecosystem/foundations/navigation_settings/"
---

- TOC
{:toc}

## Navigation & Settings

|                       |                               |
| -                     | -                             |
| Stage                 | [Ecosystem](/direction/ecosystem/)      |
| Maturity              | N/A |
| Content Last Reviewed | `2022-08-04`                  |

### Introduction
<!-- Introduce yourself and the category. Use this as an opportunity to point users to the right places for contributing and collaborating with you as the PM -->

Thanks for visiting this direction page on the Navigation and Settings category in GitLab. This page belongs to the [Foundations Group](https://about.gitlab.com/handbook/product/categories/#foundations-group) within the Ecosystem Stage and is maintained by [Christen Dybenko](mailto:cdybenko@gitlab.com). As a global, foundational aspect of the GitLab product, the Foundations Group within the Ecosystem stage leads this area but it is a collaborative cross-stage effort. Because Navigation is a key part of the GitLab experience and has a high impact to users, Product partners closely with their Design and Research counterpart when considering changes and building out the long-term strategy.

This direction is constantly evolving and everyone can contribute:

- Please comment and contribute in the linked [issues](https://gitlab.com/groups/gitlab-org/-/issues/?sort=weight&state=opened&label_name%5B%5D=Category%3ANavigation%20%26%20Settings&first_page_size=20) and [epics](https://gitlab.com/groups/gitlab-org/-/epics?state=opened&page=1&sort=start_date_desc&label_name[]=Category:Navigation+&+Settings) on this page. Sharing your feedback directly on GitLab.com or submitting a merge request to this page are the best ways to contribute to our strategy.
- Please share feedback directly via email, Twitter, or [schedule a video call](https://calendly.com/cdybenko-gitlab/meeting-30). If you're a GitLab user and have direct knowledge of your need for Navigation, we'd especially love to hear from you. To contribute, please open an issue using the `~"Category:Navigation & Settings"` label or reach out to us internally in the `#g_ecosystem_foundations` slack channel.

### Overview
<!-- A good description of what your category is today or in the near term. If there are
special considerations for your strategy or how you plan to prioritize, the
description is a great place to include it. Provide enough context that someone unfamiliar
with the details of the category can understand what is being discussed. -->

The Foundations group is responsible for creating navigational structures that are intuitive, in tune with user needs, and representative of the numerous workflows of our community of users. Navigation is not just about getting from point A to B; it can shape workflows, empower users to discover more efficient ways of working, and ultimately determine how comfortable users are with a product. From the moment users log in for the first time to when they start diving deeper into GitLab’s diverse feature set, our navigation structure is critical for shaping the user's path and, ultimately, their success in using GitLab.

Similarly, GitLab can be customized and configured to meet a wide variety of use cases using instance, group and project settings. The flexibility offered within each feature is greatly impacted by the user's ability to discover, manipulate, and return to these settings with confidence and consistency.

- An overview of Navigation can be found [here](https://about.gitlab.com/handbook/engineering/ux/navigation/)
- We also have [design system documentation](https://design.gitlab.com/regions/navigation) related to navigation.

### Where we are Headed
<!-- Describe the future state for your category. What problems will you solve?
What will the category look like once you've achieved your strategy? Use narrative
techniques to paint a picture of how the lives of your users will benefit from using this
category once your strategy is fully realized -->

We've chosen three activities that help us align our design with what our customers need: 

#### 1. North star vision (now)

A navigation north star is a holistic exploration of how users might flow through common tasks. It is not an evaluation of individual pieces of navigation to determine how to iterate on them separately. It sets the big vision for navigation and is tested using [various early Solution Validation methods](https://about.gitlab.com/handbook/engineering/ux/ux-research-training/early-solution-validation-process-for-navigation/).

#### 2. Quarterly reviews of SUS themes (now and ongoing)

Right now, our goal is to align our north star vision for navigation and what we hear from customers in SUS, to create an awesome navigation. We'll continue to analyze the quarterly feedback and see how it falls under these themes or if new ones emerge.

In FY23 Q2, we analyzed all SUS feedback into [themes](https://docs.google.com/spreadsheets/d/1kNhuzu5dhRN-oQYCQkc5tBKxiP-s7ICe7RYXbZu4Jg8/edit#gid=458405380). The top three are:

1. **Minimize feeling overwhelmed** (Confidence High)
   - Left sidebar options
   - Customization requests
   - Align destinations with expectations
2. **Orient users across the platform** (Confidence: High)
   - Differentiating groups and projects
   - Feature location
   - Discoverability of settings
3. **Pick up where you left off** (Confidence: Medium)
   - Switching contexts
   - Watching pipelines
   - Things in draft

#### 3. Data and tracking (now and ongoing)

For our Dev Performance Indicator (PI), our current PI is the [total clicks on navivigation](https://app.periscopedata.com/app/gitlab/1025455/Foundations-PI-Product-dashboard?widget=15036645&udv=1713580). 

Since navigation is only partly instrumented, our biggest goal for the next 6-9 months is full coverage and adding tracking to all of the menu items. Total clicks is an initial and low granularity metric. Still, there are probably more effective metrics that might encompass concepts such as bounce rate, depth of clicks, or the percentage of app page views that had navigation as their source, which might be better suited. Stay up to date on our metrics in the [Dev PI Review](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/dev-section/#ecosystemfoundations---ppi---total-clicks-on-navigation).


### Target Audience and Experience
<!-- An overview of the personas (https://about.gitlab.com/handbook/marketing/strategic-marketing/roles-personas#user-personas) involved in this category. An overview
of the evolving use cases and user journeys as the category progresses through minimal,
viable, complete and lovable maturity levels. -->

All [roles & personas](https://about.gitlab.com/handbook/product/personas/) interact with navigation. We are focusing on helping users orient themselves around the things that are most important to them, so they can be more productive.

### What's Next & Why
<!-- This is almost always sourced from the following sections, which describe top
priorities for a few stakeholders. This section must provide a link to an issue
or [epic](https://about.gitlab.com/handbook/product/product-processes/#epics-for-a-single-iteration) for the MVC or first/next iteration in the category.-->

- Our immediate focus is to create a [compelling north star vision](https://gitlab.com/gitlab-org/gitlab/-/issues/365403). The north star will serve as a guidepost that helps align the team to a shared direction that addresses areas of opportunities discovered in SUS verbatim, previous research, and our issue backlog. We started this work by creating 6 mock-ups in 15.2 and are testing those concepts in 15.3. We've tied this to Q3 OKR efforts, and will continue to research and refine our direction as we learn more.
- In tandem with our north star vision exploration, we are creating a [repeatable research process](https://gitlab.com/gitlab-org/ux-research/-/issues/1979) to allow us to validate prototypes using consistent measures. This validation work will increase confidence in the direction of our north star.
- We have put our [diary studies](https://gitlab.com/groups/gitlab-org/-/epics/7661) on hold until after the north star work. They will help us learn how different personas use GitLab. This deep dive will help us understand how we might simplify navigation and group relative pathways in a way that matches our user's mental model. We have completed 2 of 4 diary studies.

Once we have confidence in a direction, we will collaborate with development to learn the best approach to breaking it down and building up towards an output that reflects the primary opportunities the north star aims to solve. Feature flags, canary deployments, and the ability to opt-in are all strategies we can utilize to intentionally roll out changes to users.

This work will also help us build a short-term roadmap with themes that drive us to the end of FY23. After this, we will draft a long-term vision for the ~two years to help us see how we can continue making navigation better and serving our users long-term.

We are making biweekly updates on navigation which can be found in this [epic](https://gitlab.com/groups/gitlab-org/-/epics/8434). Our most recent update is [here](https://gitlab.com/gitlab-org/ecosystem-stage/team-tasks/-/issues/158) and and includes information on the progress of our current North Star Design prototypes in testing.

#### Other goals

- Data: Get our Performance Indicator decided and reviewed by end of FY23 Q2 - https://gitlab.com/gitlab-org/ecosystem-stage/team-tasks/-/issues/114
- Narrow down a [direction for removing "Menu menu"](https://gitlab.com/gitlab-org/gitlab/-/issues/366082) from the top bar.

### What is Not Planned Right Now
<!-- Often it's just as important to talk about what you're not doing as it is to
discuss what you are. This section should include items that people might hope or think
we are working on as part of the category, but aren't, and it should help them understand why that's the case.
Also, thinking through these items can often help you catch something that you should
in fact do. We should limit this to a few items that are at a high enough level so
someone with not a lot of detailed information about the product can understand
the reasoning-->

- Settings is not prioritized on our current roadmap.
   - In the future, we aim to focus on the following:
      - Improving discoverability of existing settings
      - Incorporating search within the settings experience
      - Consistently applying UI patterns and re-aligning the information architecture within settings pages
      - Providing quick access to settings without removing the user from their current context
      - Ensuring that settings are visible by permission

### Maturity Plan
<!-- It's important your users know where you're headed next. The maturity plan
section captures this by showing what's required to achieve the next level. The
section should follow this format:

This category is currently at the XXXX maturity level, and our next maturity target is YYYY (see our [definitions of maturity levels](https://about.gitlab.com/direction/maturity/)).

- Link to maturity epic if you are using one, otherwise list issues with maturity::YYYY labels) -->

As this is not a marketing category, we don't have a specific measure of maturity. 

### Top user issue(s)
<!-- This is probably the top popular issue from the category (i.e. the one with the most
thumbs-up), but you may have a different item coming out of customer calls.-->

Recently, we conducted system usability research to better understand how our users interact with GitLab and also benchmark our results. In the feedback from the open text of the survey, we found a few key themes that tie back to our navigation. Below is a list of videos explaining our findings.

- [SUS Actionable Insights](https://www.youtube.com/playlist?list=PL05JrBw4t0KrPNM6WFlrsVM8tWwkYDyio)
- [Left-side navigation](https://www.youtube.com/watch?v=ZeCdGTe_hbU&list=PL05JrBw4t0KrPNM6WFlrsVM8tWwkYDyio&index=2&t=0s)
- [UI Polish](https://www.youtube.com/watch?v=yLaqC_hb9vs&list=PL05JrBw4t0KrPNM6WFlrsVM8tWwkYDyio&index=3&t=0s)

### Top internal customer issue(s) and epic(s)
<!-- These are sourced from internal customers wanting to [dogfood](/handbook/values/#dogfooding)
the product.-->

- [GitLab Navigation Prioritization & Scope](https://gitlab.com/groups/gitlab-org/-/epics/4413)
- [GitLab Settings Prioritization & Scope](https://gitlab.com/groups/gitlab-org/-/epics/4410)
- [System Usability Key Theme - Navigation and Discoverability](https://gitlab.com/groups/gitlab-org/-/epics/3848)

### Other Important Links
<!-- What's the most important thing to move your strategy forward?-->

- [https://about.gitlab.com/handbook/engineering/ux/navigation/](https://about.gitlab.com/handbook/engineering/ux/navigation/)
- [https://about.gitlab.com/blog/2019/07/31/navigation-state-of-play/](https://about.gitlab.com/blog/2019/07/31/navigation-state-of-play/)
