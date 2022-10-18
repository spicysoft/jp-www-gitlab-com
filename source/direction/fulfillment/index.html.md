---
layout: markdown_page
title: "Product Section Direction - Fulfillment"
description: "The Fulfillment section at GitLab focuses on supporting our customers to purchase, upgrade, downgrade, and renew paid subscriptions."
canonical_path: "/direction/fulfillment/"
---
 
## On this page
{:.no_toc}
 
- TOC
{:toc}
 
Last reviewed: 2022-10

## Fulfillment Section Overview
 
The GitLab Fulfillment section is responsible for creating seamless commercial experiences for our customers by investing in our order-to-cash systems. Our goal is to make it easy for customers to purchase, activate, and manage their GitLab subscriptions. By making it easier for customers to transact and manage their subscriptions, we increase customer satisfaction and improve our go-to-market (GTM) efficiency. Improving our GTM efficiency helps our team to accelerate revenue growth and helps GitLab scale as a company. 
 
Fulfillment currently spans [seven groups](#groups) and 12 categories. We collaborate frequently across all of GitLab to achieve our goals. Most commonly we work with [Field Operations](/handbook/sales/field-operations/), [Enterprise Applications](/handbook/business-technology/enterprise-applications/), [Billing Ops](/handbook/finance/accounting/finance-ops/billing-ops/), [Support](handbook/support/support-ops/), and [Data](/handbook/business-technology/data-team/) teams.
 
If you have any feedback on our direction we'd love to hear from you. Feel free and raise an MR, [open an issue](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/new), or contact [Omar Fernández](https://gitlab.com/ofernandez2)
 
### Mission

> Provide customers with a consistently great experience by making it easy for them to purchase GitLab paid subscriptions, provision the features they pay for, and manage any subscription changes needed such as increasing seat count, purchasing consumables, and renewing their subscription.

GitLab paid plans offer rich feature-sets that enable our customers to build software faster and more securely. For the Fulfillment section, success is to make it as easy as we can for a customer to transact with GitLab, pay the appropriate fees, and unlock the value of these rich feature sets in our paid plans. 

To do this, we strive to make our subscription purchase and management process simple, support our customer's preferred purchasing channels, as well as their preferred payment methods. Delivering on this vision requires investments across all interfaces where customers conduct business with GitLab. Given the breadth of countries, organization sizes, and industries that benefit from the GitLab product, we strive to be excellent at both direct transactions via our web commerce portal or our sales team, as well as sales via [Channels and Alliances](/handbook/sales/#channels--alliances).

### Impact on GitLab's addressable market

By providing seamless experiences, our vision is to improve operational efficiency, enabling our Sales teams to spend their time on accounts with [high LAM](/handbook/sales/sales-term-glossary/#landed-addressable-market-lam), and enable functions like Support and Finance to spend less time manually supporting customers and our field teams.
 
## Challenges

We have faced significant headwinds as we seek to make progress in Fulfillment systems.

1. Projects such as the end of availability of Bronze/Starter added significant complexity to our systems without corresponding investment in our foundations. This complexity has led to significant time and effort going towards fixing and patching up issues even now that we are 1+ years from the launch. 
2. The [launch of quarterly subscription reconciliations (QSRs), auto-renewals, cloud licensing, and operational data](/blog/2021/07/20/improved-billing-and-subscription-management/) bundled together many significant changes. This bundling has led to a few key challenges: 
   1. Slower adoption of cloud licensing, as it was being blocked by customer eligibility for QSRs. 
   2. We made a decision to de-couple Cloud Licensing from QSRs in 2022-01 to accelerate cloud licensing adoption, but decoupling something previously bundled caused significant confusion for our customer-facing team members. 
   3. In addition, team members and customers often mistakenly equate Cloud Licensing with operational data gathering, another headwind we've worked against in Cloud Licensing adoption.
3. Our current billing model was optimized for our legacy (pre-cloud licensing) licensing system which favored very strict enforcement of seat overage reconciliation at the instance (for self-managed instances) level. As we transitioned to cloud licensing, we kept aspects of that strict enforcement that has caused significant GTM inefficiencies and customer dissatisfaction. 
   1. As an example, a customer that renewed via a sales assisted deal and paid for 5 true-up seats, but then found out that they should have paid for 6, has been prevented from activating their subscription paid features until this is rectified. This often requires significant back-and-forth with sales and support to fix. 
   2. As another example, we strictly bill for overages based on "max users", which looks at the number of seats used on any given day during the subscription. This has been confusing to customers, and we are now catching up on optimizing our in-app reporting, visibility, and alerts to minimize customer confusion and unexpected surprises.
4. Any significant changes to Fulfillment systems has an impact on, and must be coordinated with, many cross-functional teams.

To address these challenges, we are taking a deliberate approach to slow down new feature development in favor of improving our systems foundations and addressing pain points with existing functionality. 

## 1-year Plan

To achieve our mission, over the next 12 months we are focusing on the following areas: 
 
- Complete key foundational improvements to our order-to-cash systems and data architecture
- Increase new customer acquisition via self-service
- Modernize and simplify license management for customers of all sizes
- Make it easy for customers to understand their subscription utilization
- Make subscription management intuitive and simple
- Enable channel partners and distributors to provide good selling motions

All of these efforts help us support our Mission (/direction/fulfillment/#mission) to support our customers experience purchasing and managing their GitLab paid subscriptions.

### Complete key foundational improvements to our order-to-cash systems and data architecture

Our ability to scale and innovate in the Fulfillment space will only be possible and accelerated if we invest in our systems and data architecture. To that point, we have identified a few key projects to complete in FY23 and FY24:

1. [Improve accuracy of determining subscription state using the Zuora Subscription API](https://gitlab.com/groups/gitlab-org/-/epics/8402) (COMPLETED: 2022-08)
1. [Upgrade CustomersDot to Zuora Orders API](https://gitlab.com/groups/gitlab-org/-/epics/6438)
1. [Align to Zuora Billing Account as a Customer Account](https://gitlab.com/groups/gitlab-org/-/epics/8331)
1. [SSO: Combine Gitlab.com and CustomersDot user databases](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1868)
1. [Deduplicate source of truth and remove data architecture problems across SFDC, Zuora, and Customers Portal](https://gitlab.com/groups/gitlab-org/-/epics/7725)

As we complete these investments we will reduce the complexity of our order-to-cash systems, making it easier to innovate and deliver improvements to GitLab customers and our internal stakeholders across sales, billing, and more. 

### Increase new customer acquisition via self-service

Many new customers start with a small subscription or first order. A common example would be [Alex (Application Development Manager)](/handbook/marketing/strategic-marketing/roles-personas/buyer-persona/#alex---the-application-development-manager) choosing to purchase GitLab for their team. Alex may work at a small startup or may be part of a sub-team within a large enterprise. Either way, Alex is looking for a quick, self-service way to get started with GitLab. By providing a simple and easy-to-use transaction experience we can get out of Alex's way and get them back to adopting newly acquired features. 
 
In FY23, we began an effort to evaluate, procure, and integrate a vendor solution for subscription commerce and management. This will enable GitLab to provide internal teams and our customers with the benefits of typical e-commerce functionality, without building and and maintaining standard e-commerce and subscription management functionality that a vendor solution can provide. We will focus our team's e-commerce efforts on differentiated functionality that enhances what the vendor solution can provide. We will also enable other teams, such as Growth, to contribute more to our webstore experience. 
 
As part of our efforts we also aim to provide more options at checkout and improve cohesion in our GTM self-service funnel. As one example: we want to enable promotions with discounts from a marketing campaign, making that experience seamless. This will help improve conversion and lead to a better overall experience transacting with GitLab.

To learn more about purchasing our efforts, see [Purchase Direction](/direction/fulfillment/purchase/).

### Modernize and simplify license management for customers of all sizes

#### Cloud Licensing adoption

With GitLab 14.1 we launched Cloud Licensing, which provides a foundation for an improved licensing and provisioning experience for our customers. For years GitLab was behind in modernizing our licensing systems and architecture; by building on the foundation of Cloud Licensing we will invest in further reducing friction in license management. 

In FY23, we have focused on continuing to increase adoption of Cloud Licensing and the switch to strict Cloud Licensing, making Cloud Licensing the default way to activate GitLab self-managed instances. 

#### Enterprise License Management

Licensing and seat management gets more challenging for very large organizations. These large organizations often need to move large amounts of users in and out of GitLab each month, often across multiple instances. We are learning more about these challenges and will deliver solutions to help these customers easily manage provisioning across multiple instances in their organization. The goal is to ensure [Sidney (Systems Administrator)](/handbook/product/personas/#sidney-systems-administrator) and [Skyler (Chief Information Security Officer)](/handbook/marketing/strategic-marketing/roles-personas/buyer-persona/#skyler---the-chief-information-security-officer) can easily set policies and provision seats, whether manually or via automated solutions such as LDAP syncs, to meet the evolving needs of their business.

To learn more about our licensing and provisioning efforts, see [Provision Direction](/direction/fulfillment/provision/).

### Make it easy for customers to understand their subscription utilization

Customers need visibility into usage history and trends so that they can best manage their GitLab paid subscription. This includes tracking historical seat usage and activity to show when and by who seats were taken as well as visibility into consumption of storage or CI minutes. We will provide solutions to provide this visibility to all customers, including proactive alerting as customers reach their subscription plan limits, to make it easier for customers to predictably manage their GitLab subscription. 

To learn more about our utilization efforts, see [Utilization Direction](/direction/fulfillment/utilization/).

### Make subscription management intuitive and simple

**Drive more self-service transactions**
 
We will enable more transactions to be completed via the web store to focus our GTM team on higher-value activities. This may first benefit simpler transactions, but we will invest to support our entire customer base over time. For example, adding seats to an active subscription or purchase additional CI minutes should be easy and quick to complete digitally and fully self-serve. 
 
As we enable more self-service transactions, we will provide the right visibility into all transactions so that both the customer and our customer-facing teams supporting them are aware of the relevant transaction history.
 
To ensure success in this area we partner closely with our [VP of Online Sales & Self Service](/job-families/sales/vice-president-online-sales-and-self-service/) and their team. We are working together to map out customer journeys across sales segments, and allow customers to select whether they want to purchase self-service or would benefit from speaking to a sales team member. 

### Enable channel partners and distributors to provide great selling motions
 
An increasing number of customers begin their GitLab journey via a partner. They may transact in a cloud provider's marketplace or purchase GitLab as part of a software bundle via a distributor. Our goal is to ensure those customers and partners get as high a quality of service as they would buying direct. 
 
This means extending our APIs to support "indirect" transactions and collaborating closely with our counterparts in Channel Ops, Finance, and Enterprise Apps to design solutions that extend our internal systems beyond their direct-sales use-cases. In addition, we plan to invest in additional tooling to give our customers and partners better visibility and flexibility in managing GitLab subscriptions. 
 
## What we are not doing

At the moment, Fulfillment is not investing in the following items: 
1. Automating seat overage reconciliations for customers that require a purchase order (PO)
2. Building new usage quota limits or controls
3. Updating analytics to show feature adoption and utilization by plan (e.g., how many users are adopting various Premium features vs. Ultimate)
4. Allowing multiple licenses to be used on a given GitLab instance (e.g., apply to separate licenses to an instance and have it combine them)
5. Building new GitLab user roles (in the GitLab Product) around billing or subscription management
6. Integrating with net new channels or resellers beyond currently ongoing initiatives
7. Investments to improve marketplace offerrings 

We would like to do more in each of these areas, and will reassess efforts as we wrap up existing projects and/or grow our team size. 

## Roadmap

Our latest roadmap can be seen within the GitLab product: **[Fulfillment Overall Roadmap](https://gitlab.com/groups/gitlab-org/-/roadmap?state=all&sort=end_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&label_name%5B%5D=Fulfillment+Roadmap&progress=COUNT&show_progress=true&show_milestones=false&milestones_type=GROUP)**

We also have [Fulfillment Roadmap Slides](https://docs.google.com/presentation/d/1eTH09QZqnazJ4jh-jVGTEYEFA3m6R2jwWuhY5_EtPL4/edit#slide=id.g123a13deda8_0_405) (Not Public), that internal team members can reference for executive reviews. 

### Roadmap Prioritization 

To learn more about our roadmap prioritization principles and process, please see [Fulfillment Roadmap Prioritization](/handbook/product/fulfillment-guide/#fulfillment-roadmap-prioritization)

## Groups


| Group | Description | Roadmap | Categories |
|------------|---------------|----------|-------|
| Billing and Subscription Management | The Billing and Subscription Management group is responsible for supporting sales-assisted purchasing, subscription management (e.g., reconciliation, auto-renewal, invoicing, payment collection), and more. | [Roadmap](https://gitlab.com/groups/gitlab-org/-/roadmap?state=all&sort=end_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&label_name%5B%5D=Fulfillment+Roadmap&label_name%5B%5D=group%3A%3Abilling+and+subscription+management&progress=COUNT&show_progress=true&show_milestones=false&milestones_type=GROUP) | `Billing & Payments`, `Subscription Management` |
| [Commerce Integrations](/direction/fulfillment/commerce-integrations/) | Commerce Integrations manages the buying experience for customers provisioning instances through third party distributors and marketplaces. | Coming soon | `Commerce Integrations` |
| [Fulfillment Admin Tools](/direction/fulfillment/fulfillment-admin-tools/) | The Fulfillment Admin Tools team works with internal teams to build robust systems that enable our internal, customer-facing teams better support our customers. | Coming soon | `Fulfillment Admin Tooling` |
| [Fulfillment Platform](https://about.gitlab.com/direction/fulfillment/platform/) | Fulfillment Platform maintains and evolves our underlying order-to-cash infrastructure, including integrations with Zuora to help accelerate our goals as a section. | [Roadmap](https://gitlab.com/groups/gitlab-org/-/roadmap?state=all&sort=end_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&label_name%5B%5D=Fulfillment+Roadmap&label_name%5B%5D=group%3A%3Afulfillment+platform&progress=COUNT&show_progress=true&show_milestones=false&milestones_type=GROUP) | `Fulfillment Infrastructure`, `Fulfillment Developer Productivity`, `CustomersDot Application` |
| [Provision](/direction/fulfillment/provision/) | The Provision group is responsible for provisioning and managing licenses across self-managed and SaaS (including Cloud License activation/sync and provisioning of legacy licenses). | [Roadmap](https://gitlab.com/groups/gitlab-org/-/roadmap?state=all&sort=end_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&label_name%5B%5D=Fulfillment+Roadmap&label_name%5B%5D=group%3A%3Aprovision&progress=COUNT&show_progress=true&show_milestones=false&milestones_type=GROUP) | `SM Provisioning`, `SaaS Provisioning` |
| [Purchase](/direction/fulfillment/purchase/)  | The Purchase group is responsible for optimizing the web-direct purchase experience, with a focus on first orders. | [Roadmap](https://gitlab.com/groups/gitlab-org/-/roadmap?state=all&sort=end_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&label_name%5B%5D=Fulfillment+Roadmap&label_name%5B%5D=group%3A%3Apurchase&progress=COUNT&show_progress=true&show_milestones=false&milestones_type=GROUP) | `Purchase` |
| [Utilization](/direction/fulfillment/utilization/) | The Utilization group endeavors to capture and deliver usage data to internal team members, prospects, and customers so that they can make the best decision for their business needs.  | [Roadmap](https://gitlab.com/groups/gitlab-org/-/roadmap?state=all&sort=end_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&label_name%5B%5D=Fulfillment+Roadmap&label_name%5B%5D=group%3A%3Autilization&progress=COUNT&show_progress=true&show_milestones=false&milestones_type=GROUP) | `Subscription Usage Reports`, `Subscription Cost Management` |

## OKRs
 
We follow the [OKR (Objective and Key Results)](/company/okrs/) framework to set and track goals quarterly. The Fulfillment section OKRs are set across the entire [Quad](/handbook/product/product-processes/#pm-em-ux-and-set-quad-dris). 
 
To see our recent and past OKRs, see the [OKR Issues in Fulfillment Meta](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/?sort=updated_desc&state=opened&label_name%5B%5D=OKR&first_page_size=20)
 
## Performance Indicators

[Fulfillment performance indicators](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/fulfillment-section/) are captured in the internal handbook.

## Recent Accomplishments and Learnings

See [Fulfillment Recap issues in Fulfillment Meta](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/?sort=updated_desc&state=closed&label_name%5B%5D=Fulfillment%20Recap&first_page_size=20) for recaps of recent milestones and the associated accomplishments and learnings. 
