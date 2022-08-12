---
layout: markdown_page
title: "Category Direction - Review Apps"
description: Review Apps let you build a review process right into your software development workflow by automatically provisioning test environments for your code. 
canonical_path: "/direction/verify/review_apps/"
---
 
- TOC
{:toc}
 
## Review Apps
 
Review Apps let you build a review process right into your software development workflow by automatically provisioning test environments for your code, integrated right into your merge requests. Not only can you enable your teammates to easily participate in the review, but you also can also shift additional activities left, such as running [DAST](/direction/secure/dynamic-analysis/dast/) and [accessibility testing](/direction/verify/accessiblity_testing) in your review apps. Features such as Visual Review tools contribute to the overall functionality in Review Apps. 
 
Review Apps enable users to perform usability testing for any number of code changes, spanning the personas of product managers, release managers, designers, and software engineers in a single place. As an end to end application, we offer other features involving the designer in the DevOps lifecycle, including [Design Management](https://about.gitlab.com/direction/create/design_management/) in the [Create](https://about.gitlab.com/direction/create/) stage. Review Apps also ties into our [progressive delivery](/direction/ops/#progressive-delivery-and-deployment) vision of CI/CD as it gives you a glipse of how  your application will look after a specific commit, way before it reaches production.

Our ultimate goal is that Review Apps should spin up with a one-click button that works automatically regardless of the deployment target (this includes cloud-native and mobile as well). Anyone can view, comment and even fix any errors found directly from the review app itself.
 
![Review Apps]( /images/direction/cicd/review-apps.png) 
 
This area of the product is in need of continued refinement to add more kinds of Review Apps (such as for mobile devices), and a more robust and efficient experience, including configuration improvements and usability enhancements.
 
- [Maturity Plan](#maturity-plan)
- [Issue List](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Category%3AReview%20Apps)
- [Overall Vision](/direction/ops/#release)
- [Documentation](https://docs.gitlab.com/ee/ci/review_apps/)
- [UX Research](https://gitlab.com/gitlab-org/ux-research/-/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=Category%3AReview%20Apps) 
- [Research insights](https://gitlab.com/gitlab-org/uxr_insights/-/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=Category%3AReview%20Apps)
 
## What's Next & Why

Currently, Pipeline Insights is collecting feedback on Review Apps and plans to improve the discoverability of review apps in merge requests via [gitlab#343652](https://gitlab.com/gitlab-org/gitlab/-/issues/343652). 

## Maturity Plan
 
This category is currently at the "Complete" maturity level, and our next maturity target is Lovable (see our [definitions of maturity levels](/direction/maturity/#maturity-plan)).

The next set of features we are considering are captured in the [Review Apps to Lovable epic](https://gitlab.com/groups/gitlab-org/-/epics/6943).

We are also evaulating options for improving the Visual Review Tools user experience: 
* [Add screenshots to Visual Review Tool](https://gitlab.com/groups/gitlab-org/-/epics/3085)
* [Add full-screen annotations to Visual Review tool](https://gitlab.com/gitlab-org/gitlab/issues/10762)
* [Automatically wire in visual reviews in review apps](https://gitlab.com/gitlab-org/gitlab/-/issues/35322)
 
## Competitive Landscape
 
### Heroku

One big advantage Heroku Review Apps have over ours is that they are easier to set up
and get running. Ours require a bit more knowledge and reading of documentation to make
this clear. We can make our Review Apps much easier (and thereby much more visible) by
implementing [One button to enable review apps, auto-edit `.gitlab-ci.yml`, auto-configure GKE](https://gitlab.com/groups/gitlab-org/-/epics/2349), which does the heavy lifting of getting them working for you.

### Netlify Deploy Previews

Netlify Deploy Previews provide functionality similar to Review Apps and work with both GitLab and GitHub. Combined with their notifications capabilities this provides a compelling way to share a preview of changes with intersted stakeholders as they are happing. Netlify also provides the ability to let any user leave comments on these deploy previews as noted on the [Usability Direction Page](/direction/verify/usability_testing/#netlify-deploy-previews).
 
## Top Customer Success/Sales Issue(s)
 
Customers utilizing microservice architectures find it challenging to manage the pre-production environments needed to validate changes before they are shipped. While Review apps are great for single services it can be difficult to support a microservice architecture like this or applicates in which multi project pipelines are utilized to deploy the service(s). Two issues designed to address some of these challenges with Review Apps are:
 
* [Allow Review Apps to leverage a downstream deployment project](https://gitlab.com/gitlab-org/gitlab/-/issues/13249)
* [Multiple URL support for Review Apps](https://gitlab.com/gitlab-org/gitlab/-/issues/276905)
 
## Top Customer Issue(s)

[gitlab#235686](https://gitlab.com/gitlab-org/gitlab/-/issues/235686) extends support for review apps from a child pipeline when using [parent-child pipelines](https://docs.gitlab.com/ee/ci/parent_child_pipelines.html).
 
## Top Vision Item(s)

To use Review Apps it takes time and effort to setup and manage the environments that support it. What if customers don't have to do any of the work of setup and management? We are considering offering [Review Apps as a Service](https://gitlab.com/groups/gitlab-org/-/epics/5919). We see additional opportunities to [improve the Review Apps user experience](https://gitlab.com/groups/gitlab-org/-/epics/5918) and enable faster code reviews. 

