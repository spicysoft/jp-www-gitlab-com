---
layout: markdown_page
title: "Category Direction - Certify"
description: View the group strategy for the Certify group, part of the plan stage.
canonical_path: "/direction/plan/certify/"
---

- TOC
{:toc}

## Certify Group

**Last Updated:** 2022-05-02

This is the direction page for the Certify group, which is part of the [Plan stage](/direction/plan/) of the DevOps life cycle and is resposible for the following categories:

| Category                | Direction | Description | Maturity |
| :---                    | :---      | :---        | :---:    |
| Requirements Management | See the [Requirements Management](#requirements-management) section | Manage functional requirements within GitLab | [minimal](/direction/maturity/) |
| Quality Management | See the [Quality Management](#quality-management) section | Manage and trace test cases within GitLab | [minimal](/direction/maturity/) |
| Service Desk | See the [Service Desk](#service-desk) section | Collaborate with users within GitLab | [viable](/direction/maturity/) |

### What are we working on and why

*The Certify team is migrating existing requirements data and awaiting the Work Items implementation before migrating Requirements to the new Work Item standard. As this effort is evolving, we have prioritized rolling out our [confidential notes MVC](https://gitlab.com/groups/gitlab-org/-/epics/7407). We believe that this update will add significant value across all issues and epics, as well as greatly benefit Service Desk functionality.*

Given the surface area of the Certify team, and sharing [engineering resources](https://about.gitlab.com/handbook/engineering/development/dev/plan-product-planning-certify-be/) with the Product Planning team, aggressive prioritization is necessary. As such, the following is a breakdown of our current level of effort spent on each category and why.

#### Requirements Management: Allocation: 45+%

As discussed in our [certify goals](#current-certify-goals), we believe that we can make the largest positive impact to our customers by supporting requirement decomposition and traceability from within GitLab, so we are devoting the bulk of our resources to these areas.

#### Quality Management: Allocation 45+%

In conjunction with Requirements Management, tracing requirements to test cases aligns closely with our vision to have work for software requirements down to test cases developed and tracked within GitLab.

#### Service Desk: Allocation 0-10%

While our focus is currently around Requirements Management and Quality Management, we are continuing to prioritize bug fixes and functional problems with the Service Desk category. We also enjoy working with community collaborators in this area as well until we can provide additional focus.

### Current Certify Goals

The Certify Group aims to provide capabilities to allow requirements based development and testing within GitLab. The belief is that bringing requirements and traceability within GitLab will yield less context switching for our users, and provide increased productivity.

One of the most time consuming aspects of requirements based development is providing traceability between source code, testing, and design. This often requires switching between multiple tools, and manually inputting and updating traced artifacts during code updates and test runs. Our aim is to start with the [Software Developer](/marketing/strategic-marketing/roles-personas/#sasha-software-developer) and [Software Engineering in Test](/marketing/strategic-marketing/roles-personas/#simone-software-engineer-in-test) personas, with the goal of solving their immediate frustrations.

At present, both [Quality Management](#quality-management) and [Requirements Management](#requirements-management) categories are considered at [minimal maturity](/direction/maturity/).

It is our belief that solving the following three fundamental problems will bring both the Requirements Management and Quality Management capabilities to [viable maturity](/direction/maturity/).

#### Documenting requirements and test cases within GitLab

| **Status** | Complete - Both Requirements and test cases can be created and managed within GitLab |

It is our fundamental belief that for maximum efficiency and reduced cycle time, users should be able to complete their jobs to be done in a single cohesive application. This reduces the overall mental strain of switching between applications, but also allows for automation which can reduce manual steps.

#### Bi-directional linking between requirements, test cases and other artifacts

| **Status** | In Progress - We aim to build on top of the current [work item initiative](https://gitlab.com/groups/gitlab-org/-/epics/6033) provide bi-directional linking between requirements, test cases, and other work item types. |

The intention of requirements based development is to provide traceability between the requirements, and the other product artifacts such as code, design, and test cases. If this traceability is not provided within GitLab, then external tooling will be necessary which reduces productivity.

#### Allow testing to satisfy requirements

| **Status** | In Progress - It is possible to [satisfy requirements from automated CI/CD pipelines](https://docs.gitlab.com/ee/user/project/requirements/#allow-requirements-to-be-satisfied-from-a-ci-job) within GitLab. Please check out our [Walk-through of Requirements Traceability within GitLab](https://youtu.be/VIiuTQYFVa0). |

We would like to extend this functionality to provide additional methods for linking requirements to test cases.

### Certify Team Long term goals

Once we have certify a great option for the software developers and software engineers in test, we plan to continue iterating as follows.

- As GitLab expands to support larger enterprises, it is natural that there would be a need multiple levels of requirements and test cases which can be decomposed down to requirements or test cases at lower levels. Our goal is to expand our work item definition to allow for multi-level objects. This would allow for teams to create a system of sub-systems and perform all requirement tracing and test tracing directly within GitLab.
- We recognize that requirements and their associated trace data is often required as release evidence / artifacts. We would like to work closely with our release team to integrate requirements traceability into release evidence.
- Visual representation of traceability and test coverage. We would like to provide a visual representation of ancestors and descendants of requirements, making it easy to visualize decomposition and traceability. It would also be ideal for passing / failing test results to roll up visually to the requirements, allowing for quick visualization of the requirement status with regards to implementation and verification.

### Requirements Management

|                       |                                 |
| -                     | -                               |
| Maturity              | [Minimal](/direction/maturity/) |
| Documentation Link    | [Requirements Management](https://docs.gitlab.com/ee/user/project/requirements/) |

Requirements Management enables documenting, tracing, and control of changes to agreed-upon requirements in a system. Our strategy is to make it simple and intuitive to create and trace your requirements throughout the entire Software DevOps lifecycle.

We believe we can reduce the friction associated with managing requirements by tying it directly into the tools that a team uses to plan, create, integrate, and deploy their products. This can also provide real-time traceability and remove the need to track requirements across many disparate tools.

#### What is Requirements Management

It is often necessary to specify behaviors for a system or application. Requirements Management is a process by which these behaviors would be captured so that there is a clearly defined scope of work. A good general overview is provided in an [article from PMI](https://www.pmi.org/learning/library/requirements-management-planning-for-success-9669). For less restrictive environments, Requirements Management can take the form of jobs to be done (JTBD) statements, which are satisfied through iterative improvements or additional features.

Requirements management tools are often prescriptive in their process, requiring users to modify their workflows to include traceability. Our goal is to allow for such rigid process where required, but remove these barriers for organizations looking to achieve the process improvements offered by working with requirements in a less formal manner.

#### Aerospace Use Case

Regulated industries often have specific standards which define their development life-cycle. For example, commercial software-based aerospace systems must adhere to [RTCA DO-178C, Software Considerations in Airborne Systems and Equipment Certification](https://en.wikipedia.org/wiki/DO-178C). While this document covers all phases of the software development life cycle, the concept of traceability (defined as a documented connection) is utilized throughout. This connection must exist between the certification artifacts.

The most common trace paths needed are as follows:

- Software Allocated System Level Requirements <- High Level Software Requirements (HLR) <- Low Level Software Requirements (LLR) / Software Design <- Source Code <- Executable Object Code
- Software High Level & Low Level Requirements <- Test Cases <- Test Procedures <- Test Results

It is important to recognize that all artifacts must be under revision control.

During audits, teams are asked to demonstrate traceability from the customer specification through all downstream, version-controlled artifacts. Teams are often asked to analyze a change in a system level requirement, assessing exactly which downstream artifacts will need to be modified based on that change.

#### Other Regulated Industries

Further research has shown that many other regulated industries have similar process requirements. Medical, financial, and automative industries are held to similar standards as their aerospace counterparts.

#### Key Terms / Concepts

**Traceability** - The ability to link requirements to other requirements (both higher level and lower level), design, source code, or verification tests.

**Requirements Decomposition** - It is up to the developers and architects to decompose (break down) high level requirements into many smaller low level requirements. All of these decomposed requirements would generally trace up to the high level requirement, thus forming a one-to-many (HLR to LLR) relationship.

**Derived Requirements** - Because regulated industries often require that all functionality within the software trace to a requirement, it is often necessary to create requirements at the LLR / Design level. These requirements, that were not decomposed from a higher level requirement, are called Derived Requirements.

**Traceability Matrix** - A common artifact that is often required is a traceability matrix. This is a released document which shows all traceability links in the system / sub-system.

#### Competitive landscape

Top competitors in this area are traditional tools that do requirements management used by business analysts, managers, and similar personas. Jama Connect and IBM Rational DOORS are two popular tools. Both of these tools offer limited integration with version control systems, making linking to necessary artifacts cumbersome. While these tools may be necessary for complex system level requirement work, we believe that managing requirements within GitLab can offer a much better user experience for individual teams who are not trying to integrate numerous complex systems.

### Quality Management

|                       |                                 |
| -                     | -                               |
| Maturity              | [Planned](/direction/maturity/) |
| Documentation Link    | [Test Cases](https://docs.gitlab.com/ee/ci/test_cases/) |

Many organizations manage quality through both manual and automated testing. This testing is organized by test cases. These test cases can be run in different combinations and against different environments to create test sessions. Our goal for Quality management in GitLab is to allow for uses to track performance of test cases against their different environments over time, allowing for analysis of trends and identifying critical failures prior to releasing to production.

We have performed a Solution Validation for the [Quality Management MVC](https://gitlab.com/gitlab-org/gitlab/-/issues/208306).

#### What's next & why

The first step in building out Quality Management is a scaffolding framework for testing. In particular, we are calling these test cases, and test sessions. These will be first class native objects in GitLab, used to track the quality process of testing itself. The MVC can be seen at [https://gitlab.com/groups/gitlab-org/-/epics/3852](https://gitlab.com/groups/gitlab-org/-/epics/3852).

Over the next year, the Plan stage will be focused on consolidating Issues, Requirements and Epics into Work Items.

#### Competitive landscape

Competitors in this space include qTest, Test Rail, and HPQC (HP Quality Center). They are focused on managing test cases as part of the software development lifecycle. Our approach and response will be to have similar basic test case management features (i.e. test objects), and then quickly move horizontally to integrate with other places in GitLab, such as issues and epics and even requirements management. See [this epic](https://gitlab.com/groups/gitlab-org/-/epics/670) for more information. With this strategy, we would not be necessarily competing directly with these existing incumbents, but helping users with the integration pains of multiple tools and leveraging other, more mature areas of GitLab as we iterate.

### Service Desk

|                       |                               |
| -                     | -                             |
| Maturity              | [Viable](/direction/maturity/) |
| Documentation Link    | [Service Desk](https://docs.gitlab.com/ee/user/project/service_desk.html#service-desk) |

Great products need to offer a great support experience. The GitLab Service Desk aims to be the primary medium which connects customers to product support staff.

Service Desk allows your organization the opportunity to provide an email address to your customers. These customers can send issues, feature requests, comments, and suggestions via email, with no external tools needed. These emails become issues right inside GitLab, potentially even in the same project where you are developing your product or service, pulling your customers directly into your DevOps process.

#### Intent

In an effort to clearly define a concrete and inspirational intent, it is important to answer this single question -- *"If Service Desk can be truly excellent at only one thing, what would it be?"* This is the intent of the Service Desk:

> To provide a conduit through which customers and support staff can **effectively collaborate** using **familiar process flows** to achieve  **prompt problem resolution**.

At GitLab, we don't really have a concept of `done`, but instead believe we should continue to iterate toward a more mature product as defined by our [maturity framework](https://about.gitlab.com/direction/maturity/). To better clarify our strategy, we must first understand what it will mean to have achieved Lovable Maturity. This is how we will know:

It is important to clearly define the desired user experience for a feature like the Service Desk. Not only do we desire to make providing support and issue resolution fluid and collaborative, but this feature can be exposed to the end-user. Ensuring that end-users receive exceptionally high quality communication is imperative to both us and our customers.

**Intuitive:** When users find issue or need support, communication should be as simple as possible -- ideally utilizing existing collaboration mechanisms. Currently, we support email integration in an effort to make requests as simple as sending an email. We're also exploring ways to integrate other communication channels such as Slack, to provide additional ways of reaching out to support teams. Since the Service Desk creates issues, the entire host of issue tracking and management tools can be utilized.

**Collaborative:** Sometimes it takes a team to resolve an end-user's problem. We're attempting to break down the silo surrounding help-desk requests and bring those issues into the existing issue tracking paradigm. Support Engineers can easily tag software developers, security analysts, or any other team members who can all share a single issue and therefore a single source of truth.

**Efficient:** Support is requested when features are missing or problems arise. This can be a stressful time, so it's important to ensure fast and accurate support interactions. Notes, comments, and any other internal / customer interactions should be easily available for all necessary parties. We are also looking for ways to provide support metrics, to track time to resolution as well as repeat issues.

**Intelligent:** We are looking to leverage [autonomation](https://en.wikipedia.org/wiki/Autonomation) to decrease human intervention and improve the accuracy of support interactions. We want to strive for a few manual steps as possible for categorization, triage, and other administrative tasks to allow the support team to spend more time providing valuable customer interactions and resolving issues. Moreover, we want to automate the routing of support tickets to the right team when they are created.

#### Top Strategy Item(s)
<!-- What's the most important thing to move your vision forward?-->

Earlier this year, we made the decision to [move Service Desk to our Core product](https://gitlab.com/groups/gitlab-org/-/epics/3103). This has been completed, allowing users of all tiers to enjoy the benefits of Service Desk.

One of our one year goals is to improve communication flow between the end-user and the support team. To accomplish this, we are undertaking the following:

- Identify and resolve issues with text formatting and attachment handling within the Service Desk. It should be a seamless process to engage in bi-directional communication between an end-user and the Service Desk to collaborate using formatted text and attachments.
- It should be easy to add additional end-users and support team members to an issue, and they should receive the expected level of communication surrounding that issue.

Another goal is to make the Service Desk an integral part of the GitLab support workflow.

- We strive to [dogfood everything](/handbook/values/#dogfooding). We are in the process of interviewing and collaborating with our internal customers to make the Service Desk a much more widely utilized feature. Our hope is that through our own use, we will identify which additional features would allow the Service Desk to be a truly collaborative and efficient environment.

We also intend to make use of [on-call schedule management](https://gitlab.com/groups/gitlab-org/-/epics/3960) which is being built by the [Monitor:Health group](https://about.gitlab.com/handbook/engineering/development/ops/monitor/health/). Once completed, that feature set will allow managers to put support teams on-call and to automate the routing of support tickets to the right team member.

#### Target Audience

The target audience for the Service Desk is as follows:

- Support Engineer - These engineers are the customer facing representatives of the business, and want to be able to efficiently resolve problems as they arise. They are frustrated by manual steps which divert their focus from solving real problems for the customers they serve, and strive to represent their company in the best way possible.
- Software Developers - Software developers may be called on by the Support Engineers to collaborate on customer issues. They want to be able to easily understand the issue, and provide timely feedback. They are frustrated by needing to work in a separate system as it delays collaboration and creates a disjointed workflow.

#### What's next & why
<!-- This is almost always sourced from the following sections, which describe top
priorities for a few stakeholders. This section must provide a link to an issue
or [epic](https://about.gitlab.com/handbook/product/product-processes/#epics-for-a-single-iteration) for the MVC or first/next iteration in
the category.-->

Over the next year, the Plan stage will be focused on consolidating Issues, Requirements and Epics into Work Items. Rationalizing the backend implementation will allow us to build Plan functionality more efficiently in the future. Due to that focus, we will not be dedicating significant capacity to the Service Desk category.

Items that we may tackle in the future as more capacity becomes available are:

- [Customize Service Desk to reflect our business, not GitLab specifically](https://gitlab.com/groups/gitlab-org/-/epics/1991) - (👍 29)
  - **Outcome:** Allow for a more seamless experience between the support team and the customer
- [Service Desk functionality insufficient for IT Helpdesk use](https://gitlab.com/groups/gitlab-org/-/epics/2383) - (👍 24)
  - **Outcome:** Improve communication between customers and support team

The Certify group level [issue board](https://gitlab.com/groups/gitlab-org/-/boards/1235846?&label_name[]=devops%3A%3Aplan&label_name[]=group%3A%3Acertify) provides insight into everything currently in flight.


#### What is Not Planned in Next Year
<!-- Often it's just as important to talk about what you're not doing as it is to
discuss what you are. This section should include items that people might hope or think
we are working on as part of the category, but aren't, and it should help them understand why that's the case.
Also, thinking through these items can often help you catch something that you should
in fact do. We should limit this to a few items that are at a high enough level so
someone with not a lot of detailed information about the product can understand
the reasoning-->

Given the amount of amazing ideas we receive, it's not always possible to implement everything in the near future. This section shows ideas that we haven't forgotten about, but simply cannot schedule in the near term.

- Creating a web interface for the Service Desk. While this may be important in the future, right now it is more important to focus on improving the existing experience for the customer and support team. We want to ensure we have a solid foundation for issue report, issue triage and issue resolution.
