---
layout: handbook-page-toc
title: UX roadmaps
description: "Introduction and usage guidelines for UX roadmaps"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

_**[Neilsen Norman Group UX roadmap guide](https://www.nngroup.com/articles/ux-roadmaps/) is a prerequisite** for understanding the overall purpose of this UX roadmapping process. The documentation that follows discusses the differences in process and structure between the Nielsen Norman Group's documentation for UX roadmaps and GitLab. Please refer to the [Neilsen Norman Group UX roadmap guide](https://www.nngroup.com/articles/ux-roadmaps/) for more details on UX roadmaps, including definition, structure, usage, and vocabulary._

UX Roadmaps are strategic, living artifacts that align, prioritize, and communicate a Product Design team's future work and problems to solve. UX roadmaps should act as a single source of truth for a team's North Star vision serving as the blueprint for their strategy. UX roadmaps will work in concert with product strategy and direction.

### Benefits of UX roadmaps

#### Alignment

UX roadmaps align across groups and stages achieving a better understanding of the work done through their problems to solve and expected outcomes. They identify areas of collaboration when teams are working on overlapping user needs or when needs cross workflows. Helping to unite stable counterparts, engineering, design, product, and research with a comprehensive approach to executing the category vision. 

#### Focus

UX roadmaps focus on a more significant, holistic problem area -rather than discrete features in a milestone- subsequently reducing the need for fire drills and mitigating context switching. This focus will allow designers to dive deep into a set of related needs-based problems that lead to a comprehensive experience inclusive of all related touch-points in the product. Additionally helping to allocate more time toward addressing validated user needs with solutions rather than assumptions will reduce design and research churn in the product development process.

#### Strategy

UX roadmaps influence strategy by collaborating with Product Managers to define the roadmap goals, identify and prioritize unmet user needs, and transparently maintain and update the roadmap over time. Additionally, roadmaps allow us to understand our value as a team by measuring our success against the business outcomes our counterparts define for each theme. 

### Product roadmaps and UX roadmaps

UX roadmaps complement the product roadmap; they do not replace or supersede them. It's helpful to think of these roadmaps as a view of the product roadmap through the lens of Product Design and UX research. 

#### Product roadmaps

Often seen as an epic {stage:group:category}{maturity level to next maturity level}. These are composed of engineering, design, research, tech writing, and other planned activities for the area.

#### Field UX roadmap (Stage)

At GitLab, this translates to a stage-level UX roadmap and is the byproduct of each Stage:group creating their stage:group UX roadmap. This level is owned by the Product Design Manager or Staff Product Designer and the UX researcher of the Stage, whose job is to ensure alignment of activities across their area. This roadmap is a composite of all the Stage:group-level UX roadmaps in the area, including UX research, and should serve as a high-level view of the UX activities across the stage. 

#### Specialty UX roadmap (Stage:group)

At GitLab, a specialty roadmap translates to a stage:group-level UX roadmap owned by the Product Designers and UX researchers, whose job is to ensure it is up to date and accurately depicts the activities they are working on or will be working on in the near future. Since roadmaps exist in a hierarchical relationship, the stage:group UX roadmap is where most maintenance and updating will occur. UX themes aligned to a common vision and prioritized by confidence are essentially all that make up a UX roadmap.

```
Breakdown: 
- Product stage direction
-- Stage UX roadmap - (Field UX roadmap)
--- Stage:group - Product roadmap
---- Stage:group UX roadmap - (Speciality UX roadmap)
```

### UX themes

At a high level, themes represent bundles of work aligned to a specific user need, their expected outcomes and the business goals that will result when the theme is delivered and implemented. Translated into how we work at GitLab, UX themes may represent a bundle of problem validation, feature, and solution validation issues centered around a common user need.

#### Benefits of UX themes

Working with themes rather than individual feature request one-offs, allows the team to deliver an end-to-end experience (within the scope of the theme and roadmap goals) while mitigating context switching, the risk of design churn, or a subsequent redesign. This approach also benefits the engineering teams as they can focus their efforts and build to the scope envisioned in the theme, also reducing context switching and avoiding the need to refactor the code in the event of a redesign.

#### Jobs To Be Done (JTBD) and UX themes

Given that themes are predicated on user needs and their expected outcome, we can directly relate UX themes and [JTBD](/handbook/engineering/ux/jobs-to-be-done/). From low-confidence and unvalidated to high-confidence and validated, all UX themes should be derived from a known JTBD. If the JTBD is assumptive, that indicates a low-confidence theme with a primary objective of validating the JTBD before working on solutions. Alternatively, If the JTBD is validated, that should indicate to the team that problem validation is not likely for the theme; however, this may not always be the case. 

Using JTBD to define and drive the roadmap through their incorporation of UX themes is, by design, what JTBD are intended to achieve. UX themes and the UX roadmap are practical applications for JTBD, ensuring their usage across teams.

## Creating UX roadmaps

Creating a UX roadmap is a collaborative process between the Product Manager, Product Design Manager, Staff Product Designer (if applicable), and Product Designer. It is important to highlight that roadmapping is a seasonal tool, not something that's done every day; once created, the hard part is done. All that remains is regular usage and maintenance of the roadmap, covered below in [Using UX Roadmaps](#using-ux-roadmaps).

Below are a few situations when a new UX roadmap would be created:

- The team does not have an existing UX roadmap 
- New category or category direction change
- Planning to uplevel a category's maturity
- The team needs to recalibrate goals and orient around a single set of vetted priorities. Typically when a team lacks focus or is spending a significant amount of time putting out fires.

### Roadmapping workshop

Creating a UX roadmap cannot and should not be done in isolation. For them to be successful, they require buy-in from team members who will be contributing to or consuming the content. To create a roadmap, it’s best practice and highly recommended to conduct a roadmapping workshop with the team. To help facilitate a roadmapping workshop, a workshop guide has been created that leverages our asynchronous value requiring as little synchronous meeting time as possible; however, to ensure this is a collaborative effort, some synchronous components are necessary.

- [Roadmapping workshop guide issue](https://gitlab.com/gitlab-org/gitlab/-/issues/356188)  
- [Roadmapping Mural template](https://app.mural.co/template/a712ef67-2136-4758-be8b-577347fd1288/e8609b18-ede3-45c8-9ce5-a3877f8860c4)

### Roadmap structure

There are a few key differences between the [Neilsen Norman Group UX Roadmaps](https://www.nngroup.com/articles/ux-roadmaps/) and the ones we will create and use at GitLab. Below, we will dive into the areas where there are differences.

```
- Stage UX roadmap - Issue board
-- Stage:group UX roadmap - Epic
--- Stage:group UX theme - Issue
```

#### Stage UX roadmaps and boards

>**A roadmap that is imperfect but is in a place where people typically work is better than a great roadmap that is in a tool rarely used.** 
>_Neilsen Norman Group, course on UX roadmaps_

There are many tools at our disposal to create and maintain a UX roadmap, from Mural to Trello and even Figma. However, it is recommended to use Gitlab boards as they are in a place we are comfortable with, not to mention this adds another use case for dogfooding boards and provides the team feedback for potential improvements. The UX roadmap board will be the primary way we consume and share the roadmap, while the individual themes will be the primary way we plan and work on the roadmap.

#### Stage:Group UX roadmaps and epics 

Following the guidelines for UX roadmaps, there has to be a stated goal/vision to work toward… working in themes will deliver on that goal/vision. Existing product epics, category maturity, and/or vision epics can still be used as containers for UX theme issues. The only requirement is that the epic containing the group’s UX themes include the goal/vision statement in the description for quick and easy reference. 

#### Stage:Group Theme issues

Each theme in the UX roadmap will have a dedicated issue and serve as the SSOT for all Research and Design activities related to the themes and subthemes. UX theme issues should follow the established labeling conventions for the stage:group along with two new additional labels.

- **UX Theme Label**: This is required to populate the UX roadmap board for the stage. 
- **Confidence label**: Used to aid in prioritization conversations and understand the next steps an upcoming theme will require. The RICE framework is used to assign confidence to _validated_ themes for consistency. Themes that require problem validation will utilize the high-level confidence assessment. 

### Theme structure 

Themes are composed of multiple elements to ensure they are defined and scoped according to the user need they are addressing. Below is a breakdown of the components that make up a theme along with their definitions. 

| Theme component | Description | Example | 
| ---------- | ---------- | ---------- | 
| Theme statement | Beneficiary + need + outcome | _Reduce the effort for security teams to identify and escalate business-critical risks_ |
| Beneficiary | The recipient(s) of the value the product or service provides; a customer, end-user, or buyer. | _Security teams_ | 
| Need | Abstracted from the JTBD  | _Identify and escalate business-critical risks in orgs assets._ |
| JTBD | JTBD that relates to the theme. Also known as the problem to solve. | _When I am triaging vulns, I want to address business-critical risks, So I can ensure there is no unattended risk in my orgs assets._ |
| Business objective | Objectives and potential outcomes (from a business point of view) that will be achieved upon completion | _Increase engagement by making the experience efficient while reducing the chances of users overlooking high-priority items._ |
| Subthemes | More specific needs and details added to a theme; other goals the theme addresses, existing validated feature issues, research initiatives    | _Search and filter enhancements, Grouping related items in tables, Taking action on multiple items at one time_ |
| Confidence | Informal assessments of likely impact and demonstrated need for the different themes. | _High_ | 
| Timeframe | Now, next, future, future+ | _Now_ |
| Owner | Stage:Group {Designer, Researcher} | _Secure:Threat Insights Designer_ |

#### Theme statements

A theme statement combines the beneficiary, their need, and the expected outcome when the work is delivered. Statements should include some form of measurement and the desired direction. In the example, the measurement is effort, and the direction is to reduce, aligning with the business objective of “Increase engagement…” The hypothesis is that users can complete the activity faster by reducing the effort, thus repeating the activity with a higher frequency. Well-defined statements are concise without sacrificing the substance of the theme so that anyone can understand it at a glance.

_Note: The theme statement is the defacto title that will be used to reference the theme and serve as the theme issue title._ 

#### Beneficiaries 

Beneficiaries are typically the end-user for product teams; however, there are instances where this is not always the case. Beneficiaries can also be internal teams, stakeholders, executives, etc. Anyone who is the direct recipient of the value provided by delivering the theme is the beneficiary.

#### Needs and JTBD

Addressing the need is the primary objective of the theme. Needs should be derived from the JTBD that the problem area is centered around. Essentially, the need is the job from the JTBD statement, "I want to {...}" and can be modified if it enhances the clarity of the theme statement. 

For example, the need above is; _Identify and escalate business-critical risks in org's assets_; however, the job from the JTBD statement, is; I want to _{address business-critical risks}_. The team that owns this JTBD knows that identification and escalation are tasks that comprise the addressing business-critical risk workflow, yet this may not be common knowledge for all groups. Therefore, modifying the job to convey the need makes the theme statement more explicit and discernible to everyone. This is important to remember because one team's UX roadmap isn't just for them to help drive their work, it also serves our transparency and collaboration values by allowing other teams to be more aware of what everyone else is working on.

_Note: If there is no JTBD or the JTBD is assumptive, that should indicate that you are working on a low confidence theme, and additional research is required before engaging in design activities._ 

#### Business objectives

The business objective is why we are working on a theme. Without this information, teams risk delivering features that do not enhance the product or add value to users. Additionally, the objective should help to influence the design team's solutions, as it serves as a hypothesis for the delivered solution, "We know we solved the need if: {business outcome} is achieved." 

The business objective is measurable and communicated by the potential movement of impactful or meaningful metrics. Below are a few examples of measurable business metrics: 

**Example increasing metrics**
- Adoption 
- Enagement 
- Efficiency 
- Sales 
- SUS-scores

**Example decreasing metrics**
- Error rate
- Time on task
- Customer churn
- Customer service requests

Business outcomes should be general rather than specific due to the difficulty in determining the cause and effect of any product change. Looking at the example: _Increase engagement by making the experience efficient while reducing the chances of users overlooking high-priority items_, notice that a number such as "increase engagement by x" isn't specified. Instead, we kept the objective generic and success predicated on any increase in engagement, regardless if it is incremental or exponential. Another way to think about this is if we say we'll see a 10% increase in engagement and the result was an 8% increase, would we consider this a success or a failure? 

#### Subthemes

Subthemes are more granular validated needs, goals, and additional details that the theme encompasses. These are typically reserved for themes in the next (1-3 milestones) column. Subthemes may also consist of existing feature or design issues that exist in GitLab and directly relate to the theme. Subthemes answer “how” we are going to solve the user need while the theme itself answers “what” the need is and “who” will be benefiting from the solution. 

#### Confidence

Confidence is the assessment of the product and design team's understanding of the problem and solution space the theme occupies. Use the table below to understand your confidence in the theme. 

|      | High confidence | Medium confidence | Medium confidence | Low confidence | 
| ---- | ----- | ----- | ----- | ----- | 
| Is the JTBD informed by research or other means? (not assumptive) | Yes | Yes | No | No |
| Has the problem been validated through research or other means? | Yes | No | Yes | No |

#### Timeframe

Most roadmaps will span four quarters and represent the work and activities of a Product Design and UX Research team for a year. We will follow the same pattern; however, we treat it as a guideline, not a rule. To meet our needs and work within the planning vocabulary of GitLab, we will define the timeframes as follows:

- **Now =** Next 1-3 Milestones 
  - High confidence, high priority themes.
  - Actively being worked on and will be delivered within the timeframe.
- **Next =** Next 4-7 Milestones 
  - Medium confidence themes, or lower priority high confidence themes. 
  - Research may be needed to increase the confidence and refine the scope.
- **Future =** Next 7-13 Milestones 
  - Low confidence themes, or lower priority medium confidence themes.
  - Research is likely required to increase the confidence and refine the scope.
- **Future+ =** Awaiting further demand 
  - Low confidence themes with user needs that are assumptive and not well defined.
  - Research is required to increase confidence and refine the theme
- **Completed =** Closed
  - The theme has been delivered, or the theme has been abandoned. Themes may be abandoned due to the group pivoting based on a shift in customer needs, or GitLab decided the problem is no longer a priority worth pursuing.  

_Note: These timeframes denote when work will take place and when work will be delivered. Think of this as design and research will be delivered within < timeframe >(e.g., research/design/research delivered in Now: Next 1-3 Milestones)_

#### Ownership

The Design DRI and respective Product Manager are the owners of themes in their group. However, in GitLab, we want to ensure themes are assigned to team members who are actively working on them. For example, a Product Designer and a UX Researcher may be assigned to a theme if the work demands it.

#### Example theme

View the [example theme issue](https://gitlab.com/gitlab-org/gitlab/-/issues/355736) for a better understanding of how UX themes translate into GitLab.

## Using UX roadmaps

### Milestone planning

#### Stage group planning

Before the next milestone, the Designer and Product Manager should discuss the progress on the UX roadmap, including progress made on themes and subthemes. During this time, Designers should ensure the themes are prioritized correctly, including the next 4-7 and 7-13 milestones bucket. These themes will impact the research priorities of the stage and the work the Designer will be doing after their current theme is delivered. 

#### Stage planning 

Each team member should talk about the theme and related subthemes they are working on. Designers should also point out any completed or added themes/subthemes, along with their progress. Finally, the team should discuss any changes to the roadmap, for example, a theme moving up in priority and any differences from the past planning session. This session should be recorded and shared in the #UX channel and related product channels to maintain transparency. 

_Note: This only applies to design teams that have a regular stage-level planning session._ 

### Working on themes

#### Product Designers working on themes

A majority of the work designers do will be on themes in the (Now) Next 1-3 milestone column. These themes are comprised of high-confidence outcomes and validated needs. The UX theme issue is where collaboration should occur, including plans and discussion on subthemes, research, and design feedback. Related issues for design exploration and solution validation should stem from the theme issue. The intention is to be working on the whole of the theme in a complete, holistic way as opposed to its individual issues.

Once the design deliverable is complete, assets should be uploaded to the UX theme issue, and the team should let their counterparts know it is ready for planning breakdown following the [Product Development Workflow](https://about.gitlab.com/handbook/product-development-flow/#build-goals--outcomes) guidelines. Themes issues should close once planning breakdown is complete to avoid issues staying open too long in the UX roadmap.

#### UX Theme issue scope

The work done on a theme should keep in mind the scope of the deliverables. If the design cannot be implemented within a reasonable timeframe, then the scope of the theme is too large and should be reduced. A good rule is three iterations to implement a UX theme; One MVC: (feature: addition) followed by two (feature:enhancements) iterations to successfully implement the designs. There may be instances where a theme will take fewer iterations or even more if it is a more significant back-end change. In these cases, it is recommended to collaborate within the team's stable counterparts, Product and Engineering, to reach a viable solution.

#### UX Research working on themes

A majority of UX researchers' work will be on the themes in the (Next) Next 4-7 milestones column or (Future) Next 7-13 milestones column. Working ahead affords Research the time and space to, design a study, recruit participants, execute the research and summarize the results without compromising the methodology due to time constraints. Research and insight issues should be referenced in the UX theme issue to maintain the SSOT.

### Revising and updating themes

Revising a theme can happen at any time while working on a theme or reviewing the roadmap. It is good practice to communicate when details change in theme issues so the team can remain informed without continuously monitoring the roadmap. For transparency, a comment should be added to the theme issue when changes are made that explains why the change was necessary.

### Submitting new themes 

>**Roadmaps fail when they are treated like backlogs** - _Nielsen Norman Group_

Creating new themes should be done with caution when doing so outside of a roadmapping workshop, since themes ladder to a common yet comprehensive goal and vision of the roadmap. Creating a new theme that extends beyond the vision may negatively impact the roadmap and its value to the team by inadvertently extending the scope. Below are a few situations when new themes may be generated;

- The research team uncovers an unmet need/JTBD that aligns with the goal and vision of the roadmap. 
- The product team identifies a new assumptive user need that aligns with the goal and vision of the roadmap.
- The product, design, and/or research team determines a theme needs to be refined into multiple themes due to scope or new information about the user's needs.

### Working on items outside of the UX roadmap

The UX roadmap will not represent all the work that may be needed in a given milestone. Rather, it represents strategically aligned activities that deliver on the strategy of the stage:group. There will be instances where items unrelated to a UX theme will still need to be worked on. Bugs, UX Debt, or other SUS-impacting issues and discrete urgent customer requests fall into this bucket. These do not need to be considered in your UX roadmap. 

Themes can be thought of as the strategic design initiatives that are needed to be completed in order to achieve the overarching goal of the roadmap. While the other issues are for maintaining the experience pertaining to our standards.

