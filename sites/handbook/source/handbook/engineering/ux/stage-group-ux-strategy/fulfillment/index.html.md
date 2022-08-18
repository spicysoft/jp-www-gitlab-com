---
layout: handbook-page-toc
title: Fulfillment UX Team
description: "The Fulfillment UX team supports the Fulfillment section to provide customers a great experience with buying, upgrading and renewing GitLab."
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview



## UX team members

- [Jacki Bauer](/company/team/#jackib) ([Jacki's ReadMe](https://gitlab.com/jackib/jacki-bauer/blob/master/README.md)) - Product Design Manager
- [Emily Sybrant](/company/team/#esybrant) - Product Designer, Purchase
- [Matthew Nearants](/company/team/#mnearents) - Senior Product Designer, Utilization
- [Philip Joyce](/company/team/#philipjoyce) - Senior Product Designer, Provision


## How We Work

We follow the [Product Designer workflows](/handbook/engineering/ux/product-designer/) and [UX Researcher workflows](/handbook/engineering/ux/ux-research/) described in the [Product Design section](/handbook/engineering/ux/) of the handbook. As Growth designers, we relentlessly measure the impact of our design changes following the [experimentation workflow](/handbook/engineering/development/growth/experimentation/). In addition:

- we have issue boards so we can see what everyone is up to.
- we **label** our issues with UX, devops::fulfillment, section::fulfillment and group::.
- we use the [workflow labels](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=workflow%3A%3A).
- we use **milestones** to aid in planning and prioritizing.
- we use [UX issue weights](https://about.gitlab.com/handbook/engineering/ux/product-designer/#ux-issue-weights).
- we create separate issues for UX work and name them with the prefix [UX]. This allows the Product Designer to add an issue weight specific to UX. The preference is to keep the designs and design feedback in the [UX] issue for clarity. 


#### Getting Work Ready for Design

We use the Product Development Flow to help move issues through the product lifecycle. For the design phase to being, the following are important:
- [ ] Problem is well understood and has been validated
- [ ] JTBD is well understood and has been validated
- [ ] PM has communicated the opportunity canvas to stable counterparts and group stakeholders, including the Product Designer and Product Design Manager

[Link to issue template](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issue%5Bmilestone_id%5D=#)

The template can also be copied into the main issue that is the SSOT.

#### Prioritizing Work 

| Type                         | % of Milestone | Description                                                                                     |
|------------------------------|----------------|-------------------------------------------------------------------------------------------------|
| Deliverable                  | 65%            | business priorities, includes design and solution validation                                    |
| Proactive UX and Measurement | 25%            | research and ideation for future improvements, CM Scorecards, competitive evaluation fixes      |
| UX Department Priorities     | 5%             | Pajamas, UX OKRs, professional development                                                      |
| Other                        | 5%             | designer picks, attending company wide meetings, administrative tasks, professional development |


#### Collaboration 

There is a lot of overlap between Fulfillment groups, so we work very closely. To keep things simple and clear, we follow [GitLab internal communication](/handbook/communication/internal-communications) guidelines. In addition the following tips will make it easier to collaborate with Product Designers who span multiple groups:

- Overcommunication is better than undercommunication, especially in this case.
    - Communicate priorities clearly and transparently. Communicate UX priorities via priority labels (ie ~"milestone::p1"), due dates and issue boards instead of in 1:1 docs or Slack channels.
    - Feel free to ping designers in more than one channel (GitLab + Slack + email). It can be easy to miss something when covering multiple stage groups.
- On our monthly planning issues, each designer should indicate high priority or time consuming issues from other groups. A link to the other planning issue is fine too, just so it's easy for the Product Design Manager and Product Managers to navigate to this information.
- Minimize meetings: Designers who span stage groups have 2-3 times more meetings than a designer on 1 stage group, so their teams can help them by ensuring we follow GitLab's async meeting practices to allow them to miss those meetings without negative consequences.

#### Communicating Due Dates

The order in which we approach our work can be complex, as we have priorities and severities, milestone plans, and the product design team has their own [guidance on selecting the next thing to work on](/handbook/engineering/ux/product-designer/#priority-for-ux-issues). Additionally, some UX issues need to be delivered earlier in the milestone than others. To help with communication you can use the Due Date field. As a PM, if you choose this route, please do the following:

- Continue using priority labels and issue weights. The due date isn't a substitution for these.
- Add an issue comment and suggest the due date. Mention the product designer.
- The product designer should respond within one day as to whether or not the due date is doable. If the due date works, the product designer will add the Due Date. If it doesn't work, they will offer trade-offs for the PM to consider.
- If the due date changes, comment in the issue and @mention people who will be impacted. Note that Due Date changes do not result in a notification.
- When changes are communicated via Slack or in a 1:1, update the issue so everyone else can see the change. Consider sharing in sync meetings.

#### Visual Reviews of MRs

The engineering team applies the `UX` label to any MR that introduces a visual, interaction or flow change. These MRs can be related to new issues, bugs, followups, or any type of MR. If the engineer isn't sure whether the MR needs UX, they should consult the designer who worked on the related issue, and/or the designer assigned to that stage group, or the Product Design Manager.

Visual reviews are required for any MR with the `UX` label. When the MR is in `workflow::In review`, the engineer assigns the MR to the designer for a visual review using the [reviewer functionality](https://docs.gitlab.com/ee/development/code_review.html#getting-your-merge-request-reviewed-approved-and-merged) in the sidebar. This can happen in parallel with the maintainer review, but designers should prioritize these reviews to complete them as quickly as possible.

There are times when it isn't possible or practical for a designer to complete their visual review via Review Apps or GDK. At these times the designer and engineer should coordinate a demo.


### Documenting transactional flows

When working through transactional issues related to new purchases, renewals, upgrades and trials, it helps to break down the flow into pieces. This way of working through issues enables product designers to document the beginning and end of a user journey in an easily digestible way for everyone.

- Entry Point(s): The initial touch points of user interactions. (i.e. A Page, CTA or Form etc)
- Decision: Giving users the ability to decide on Products, Options or Packages.
- Confirmation: Summary of a successful or unsuccessful purchase.

Each step may not always be needed and won’t always be linear. For instance, an Entry Point may also be a point at which a user selects a Product (Decision).

We have documented [Fulfillment user flows in Figma](https://www.figma.com/file/DCq7K8Srsv79tbH1yRkGbl/Document-user-flows-%5Bgitlab-org%2F-%2Fepics%2F3603%5D?node-id=0%3A1). These reflect what is currently in production. Product Designers are resposible for updating these user flows once their work is released.
