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
| Content Last Reviewed | `2022-08-12`                  |

### Introduction
<!-- Introduce yourself and the category. Use this as an opportunity to point users to the right places for contributing and collaborating with you as the PM -->

Thanks for visiting this direction page on the Navigation & Settings category at GitLab. This page belongs to the [Foundations Group](https://about.gitlab.com/handbook/product/categories/#foundations-group) within the Ecosystem Stage and is maintained by [Christen Dybenko](mailto:cdybenko@gitlab.com). 

As a global, foundational aspect of the GitLab product, the Foundations Group within the Ecosystem stage leads navigation and settings. Still, it is a collaborative cross-stage effort, because Navigation is vital to the GitLab experience and significantly impacts users. Because of this, Foundations must align with every stage group to ensure that Navigation's overall useability takes precedence when balancing the business needs of individual stage groups.

You can find biweekly updates on Navigation in this [epic](https://gitlab.com/groups/gitlab-org/-/epics/8434). Our [most recent update](https://gitlab.com/gitlab-org/ecosystem-stage/team-tasks/-/issues/160) includes information on the progress of our current North Star Design prototypes that are currently in testing.

This direction is constantly evolving and everyone can contribute:

- Please comment and contribute in the linked [issues](https://gitlab.com/groups/gitlab-org/-/issues/?sort=weight&state=opened&label_name%5B%5D=Category%3ANavigation%20%26%20Settings&first_page_size=20) and [epics](https://gitlab.com/groups/gitlab-org/-/epics?state=opened&page=1&sort=start_date_desc&label_name[]=Category:Navigation+&+Settings) on this page. Sharing your feedback directly on GitLab.com or submitting a merge request to this page are the best ways to contribute to our strategy.
- Please share feedback directly via email, Twitter, or [schedule a video call](https://calendly.com/cdybenko-gitlab/meeting-30). If you're a GitLab user and have direct feedback about your needs for Navigation, we'd especially love to hear from you. To contribute, please open an issue using the `~"Category:Navigation & Settings"` label, or reach out to us internally in the `#g_ecosystem_foundations` Slack channel.



### Overview
<!-- A good description of what your category is today or in the near term. If there are
special considerations for your strategy or how you plan to prioritize, the
description is a great place to include it. Provide enough context that someone unfamiliar
with the details of the category can understand what is being discussed. -->

Navigation is the highway through which every feature is accessed or discovered, and it must be accessible for all types of people and abilities. For this reason, Navigation is one of the most important parts of any application’s user interface. 

When Navigation is effective, users trust that they can rely on it to help orient and empower them within the product. This is an example of the habituating UI tenet of “I quickly achieve mastery”[<sup>1</sup>](#footnotes), which means the user can go from zero knowledge to completing their task. From a business perspective, habituation can drive overall user retention, net retention, and conversions to paid tiers as the users trust the product more and return to use it on a daily basis.

Users with accessibility needs must be considered when designing and building Navigation. Many companies cannot adopt software that is not compliant with accessibility standards, and accessible Navigation is essential to comply with accessibility standards such as [VPAT](https://en.wikipedia.org/wiki/Voluntary_Product_Accessibility_Template).

#### Scope of Vision

Our near-term vision includes an overhaul of the top and left Navigation in GitLab. Looking further down the road, we will also start to focus on things like the product landing page and global search to increase success in navigating GitLab. Settings are also part of the long-term Navigation strategy, but right now we have put that on hold to focus on primary Navigation.

#### Investment

Knowing that Navigation is a crucial part of our user’s adoption and confidence in GitLab, we are investing heavily in a new Navigation design. We have seen a great deal of user feedback showing that users have frustration and difficulty feeling oriented in GitLab, including picking up where they left off, because our robust feature set can be overwhelming. 

We resourced a full product team (Foundations) to address foundational parts of GitLab like Navigation & Settings and our Design System to help improve the overall usability of our product. We believe that iterating on the user feedback helps us reach our goal of a fulfilling experience in GitLab. It’s a big undertaking and will take many steps, but we are on our way to delivering an amazing user experience.

#### Challenges

##### Complexity of Navigation

At GitLab, our current Navigation structure has compounded complexity. The first challenge is that we have nine stages and [500+ features](https://about.gitlab.com/features/?stage=plan), and we know that our Navigation must enable the users to quickly find the things that matter to them. The second challenge is that we have [14 user personas](https://about.gitlab.com/handbook/product/personas/#list-of-user-personas) who use our features for their day-to-day work, and our Navigation has to consider their varying needs. This means that Navigation that works well for one persona may not work well for others.


#### Who moved my cheese?

Due to habituation, Navigation can be difficult to change, because users learn patterns and gain muscle memory around the things they use every day. For these reasons, big changes or constant updates to Navigation could adversely affect a user’s ability to do their daily work. Even features that are eventually high satisfaction can undergo an initial phase of negative feedback (who moved my cheese?), since they can initially disrupt existing use patterns. We should be mindful that this reaction exists and use feature flags,  surveys, and beta testing as necessary. 

#### Custom Navigation

We're still evaluating if we need customizable navigation to address the challenges our users face.  There have been many references to wanting to customize the Projects and Group menus  in GitLab. However, we also know that Navigation customization presents some risks. For example, it’s incredibly difficult to write consistently helpful documentation for an inconsistent menu experience. Similarly, users may forget they’ve customized their menu by removing something and assume it no longer exists. In light of this, we will continue to listen and learn, if we add customizable aspects to Navigation, we must do so in non-destructive ways to ensure that the needs of both a customized experience and a consistent experience are in balance.



### Where we are Headed
<!-- Describe the future state for your category. What problems will you solve?
What will the category look like once you've achieved your strategy? Use narrative
techniques to paint a picture of how the lives of your users will benefit from using this
category once your strategy is fully realized -->

Given the challenges outlined above, we use a three-pronged approach to ensure we design a great Navigation experience for our users.

**1)**  Our north star vision (see the [six designs that are being tested](https://gitlab.com/gitlab-org/gitlab/-/work_items/111592007)) will set the tone for Navigation going forward. Once complete, it will be a guidepost for future work to reference as we build MVCs. We will exit (complete) the north star design ideation phase when it passes UX research (UXR)  testing with the themes in the following point.

**2)**  A quarterly review of SUS verbatims has given us insight to these 3 themes that we are using to test our north star vision during UXR. We will continue to refine these themes as we move forward.

1. Minimize feeling overwhelmed
1. Orient users across the platform
1. Pick up where you left off

We can consider these themes “closed” when we test the design prototype with our users and they report overall feelings in alignment with each of them. We can use the same user survey to collect feedback about MVCs that we ship, which will ensure we continue to deliver improved usability.

We will also monitor the SUS verbatims for instances of negative sentiment decreasing over time and a decreasing ratio of navigation feedback in the total number of verbatims.

**3)** We will validate any Navigation changes in the app by tracking all usage data on Navigation. In the future, we will have a process for A/B testing to compare the performance of Navigation updates.

#### Other types of Navigation

Our vision includes space for many other navigational concepts that we can consider to help users feel oriented and to pick up where they left off. Examples of these are dashboards, user landing pages, keyboard Navigation, and other complementary features that will support this vision and give users what they need.



### Target Audience and Experience
<!-- An overview of the personas (https://about.gitlab.com/handbook/marketing/strategic-marketing/roles-personas#user-personas) involved in this category. An overview
of the evolving use cases and user journeys as the category progresses through minimal,
viable, complete and lovable maturity levels. -->

All [roles & personas](https://about.gitlab.com/handbook/product/personas/) interact with Navigation. We are focusing on helping users orient themselves around the things that are most important to them, so that they can be more productive.

### Driving Business Value

We feel we can have an impact in the retention of users and drive the overall net retention of our customers. All of our PPI metrics are segmented by tier, and we will also track our SUS (lag metric) verbatims based on tiered feedback.

Please see this [doc](https://docs.google.com/document/d/1j3vrJbQv_c7dQpATwGiQWzSvPL965zrELr02H14PP-U/edit) which explains the growth we think we could get and how we tie this to ARR.

#### How we will measure impact on business value

We’ll do a 3-month beta opt-in of our new menu as we iterate via a user opt-in in their user profile. This will allow us to weather the storm of who moved my cheese and see what the user sentiment is before wider adoption.

At the 3 month mark, we will be set to deliver to the wider community and measure the impact to retention. We’ll launch an A/B test to  20% of our users where there would be a 50/50 split of  the old vs. new navigation. We will then measure the overall net retention and free to paid conversion of the cohort over 3 months. We will also look at overall Free/Trial to Paid conversion over the 30 days they are using the new menu. We will gradually roll out at 20% of  all users per month until we achieve 100% receiving the new menu and work with the data team to ensure we don’t have conflicting A/B tests.


### What's Next & Why
<!-- This is almost always sourced from the following sections, which describe top
priorities for a few stakeholders. This section must provide a link to an issue
or [epic](https://about.gitlab.com/handbook/product/product-processes/#epics-for-a-single-iteration) for the MVC or first/next iteration in the category.-->

**In Progress:** 15.3 - 15.4 - Create and test [six designs](https://gitlab.com/gitlab-org/gitlab/-/work_items/111592007) from the [north star vision](https://gitlab.com/gitlab-org/gitlab/-/issues/365403) with two phases of testing in UXR and get it down to 1 final design. This final design is the guidepost for all of our MVCs and ultimately what we ship to customers for the next year+. It’s the most valuable design investment we are doing on Navigation to meet our goals.

**In Progress:** 15.4 - Ship the [“Menu Menu” change](https://gitlab.com/groups/gitlab-org/-/epics/8405) as a small but valuable iteration on our current top Navigation that sets the stage for the north star design. It brings the current “Menu” menu, in alignment with the top bar and removes the redundant word “Menu.” 

**In Progress:** 15.3-15.9 - Add [tracking to all navigational elements](https://gitlab.com/gitlab-org/gitlab/-/issues/369016) in GitLab to fill out our PPI of total clicks and give us the groundwork for Navigation updates. Having each menu item tracked will allow us to get accurate counts on usage. Having correct event names will allow us to move elements around in new designs and not have them tied to old event names.

**Next:** 15.5 - After narrowing down the north star direction, we will utilize [RITE to iterate on a single proposal](https://gitlab.com/gitlab-org/gitlab-design/-/issues/2050#the-approach) that addresses any lingering usability questions.

**Next:** ~15.5 - Once we have confidence in our north star direction, we’ll then [break it down into at least 3 MVCs](https://gitlab.com/gitlab-org/ecosystem-stage/team-tasks/-/issues/164#star-kr-define-3-mvcs-from-the-chosen-north-star-designs) and work with engineering to build and test with users. We’ll continue to ship from this point on, but this will be the first point of delivery for our users and critical to the mechanics of how we ship Navigation.

**Later:** TBD - Audit Navigation accessibility to check how we measure against the high bar of inclusive standards.



### What is Not Planned Right Now
<!-- Often it's just as important to talk about what you're not doing as it is to
discuss what you are. This section should include items that people might hope or think
we are working on as part of the category, but aren't, and it should help them understand why that's the case.
Also, thinking through these items can often help you catch something that you should
in fact do. We should limit this to a few items that are at a high enough level so
someone with not a lot of detailed information about the product can understand
the reasoning-->
**Navigation:** As a general rule, we are not redesigning individual content pages that are owned by other teams. 

For now, we have de-prioritized all other Navigation issues and work until we get the North Star MVC live. We are also not diving into full designs for dashboards or user pages until we get our north star underway. We will still be pursuing opportunity canvases and exploration into the business value of re-prioritizing these items.

**Settings:** Even though the category is Navigation & Settings, Settings are not prioritized on our current roadmap in the interest of getting the north star Navigation designed and into the build track. 

In the future, we aim to focus on the following goals for settings:

- Improving discoverability of existing settings
- Incorporating search within the settings experience
- Consistently applying UI patterns and realigning the information architecture within settings pages
- Providing quick access to settings without removing the user from their current context
- Ensuring that settings are visible by the correct permission levels

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

Here is a list of the [top user upvoted issues](https://gitlab.com/groups/gitlab-org/-/issues/?sort=popularity&state=opened&label_name%5B%5D=group%3A%3Afoundations&label_name%5B%5D=Category%3ANavigation%20%26%20Settings&first_page_size=20) with descending popularity:

- [Command palette for easy beginner and power user navigation with 1 keyboard shortcut](https://gitlab.com/gitlab-org/gitlab/-/issues/17390)
- [Introduce a landing page for the top-level navigation menu items to facilitate the user's workflow and feature discovery](https://gitlab.com/gitlab-org/gitlab/-/issues/225465)
- [Hide features in navigation if you have Guest or Reporter role](https://gitlab.com/gitlab-org/gitlab/-/issues/26929)
- [Feature: compression of breadcrumbs should take available space into account](https://gitlab.com/gitlab-org/gitlab/-/issues/25396)

### Top customer issue(s)

By descending popularity

- [New integrations should be discoverable in the left sidebar](https://gitlab.com/gitlab-org/gitlab/-/issues/347390)
- [Handling keyboard interaction for top nav menu](https://gitlab.com/gitlab-org/gitlab/-/issues/331874)


### Top dogfooding issue(s)
<!-- These are sourced from internal customers wanting to [dogfood](/handbook/values/#dogfooding)
the product.-->

None

### Other Important Links
<!-- What's the most important thing to move your strategy forward?-->

- [https://about.gitlab.com/handbook/engineering/ux/navigation/](https://about.gitlab.com/handbook/engineering/ux/navigation/)
- [https://about.gitlab.com/blog/2019/07/31/navigation-state-of-play/](https://about.gitlab.com/blog/2019/07/31/navigation-state-of-play/)
- [Design System Docs for Navigation](https://design.gitlab.com/regions/navigation/?_gl=1%2a1pbpte6%2a_ga%2aMTc2NjY3NzExMi4xNjAxNTcxMjg5%2a_ga_ENFH3X7M5Y%2aMTY2MDI4MzYzMi4xMC4xLjE2NjAyODM2NDguMA..)


##### Footnotes

1. [UI Traps](https://uitraps.com/) is a UXR framework created by [researchers](https://uitraps.com/about/) from various large tech companies. See this [screenshot](https://drive.google.com/file/d/1SwnMRMWEZ8TtAaPgEmvvBggZkwPsOxJ1/view) of the tenets. They are presented as cards.
