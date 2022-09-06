---
layout: markdown_page
title: "Category Direction - Runner Core"
description: "GitLab Runner is the multi-platform execution agent that works with GitLab CI to execute the jobs in your pipelines. View more information here!"
---

- TOC
  {:toc}

## Vision


By 2025, our vision for GitLab Runner Core is to provide GitLab Runner administrators and developers with an almost zero-friction experience. We see this vision for Runner Core as enabling the broader GitLab product [vision](https://about.gitlab.com/direction/#vision) of continuing to mature the GitLab DevOps platform rapidly.

A critical goal to enable the Runer Core zero-friction vision is to eliminate CI job execution errors and customer-reported bugs directly related to the current Runner architecture. Today, the Runner handles both the lifecycle of the CI job execution environment and the execution of the build. This comingling of concerns has increased complexity and negatively impacted our innovation velocity.

So a critical pillar in our strategy is to address these architectural limitations. With that in place, we can deliver a near zero-friction experience across various computing architectures, operating systems, and Runner autoscaling on public cloud provider-hosted virtual machine stacks and public cloud or on-premise Kubernetes clusters.

A core guiding principle influencing the Runner strategy,  roadmap, and feature prioritization are that GitLab Runner's performance is best in class and deployable in environments with the most stringent security and compliance requirements.
## Who we are focusing on?

Check out our [Ops Section Direction "Who's is it for?"](/direction/ops/#who-is-it-for) for an in depth look at the our target personas across Ops. For Runner, our "What's Next & Why" are targeting the following personas, as ranked by priority for support:

1. [Priyanka - Platform Engineer](/handbook/product/personas/#priyanka-platform-engineer)
2. [Devon - DevOps Engineer](/handbook/product/personas/#devon-devops-engineer)
3. [Sasha - Software Developer](/handbook/product/personas/#sasha-software-developer)
4. [Delaney - Development Team Lead](h/handbook/product/personas/#delaney-development-team-lead)

## Supported Compute Architectures & Platforms

### OS + Architecture

| Operating Systems | Compute Architectures           | 
|:--- |:--- |
|Linux| x86_64, ARM32, ARM64, ppc64le, s390x |
|macOS| x86_64, M1                      |
|Windows| x86_64                          |                    |

### Container Builds & Container Orchestration

|||
|----------|----------------|
|Container Builds|Docker, Podman, Buildah|
|Container Orchestration|Kubernetes, Red Hat Open Shift, AWS EKS, GCP ECS|

## Strategic Priorities

### What's next & Why?

The table below represents the current strategic priorities for runner core. This list will change with each monthly revision of this direction page.

|Theme-Category| Item  | Why? |Target delivery QTR|
|:--- |:--- |:---|:--- |
|Supply Chain Security|[Secure Software Supply Chain - Runner Workstream FY23](https://gitlab.com/groups/gitlab-org/-/epics/7017)|Supporting GitLab's supply chain security direction will require new features and capabilities in GitLab Runner. These include but are not limited to, generating industry standard [attestations](https://gitlab.com/gitlab-org/gitlab-runner/-/issues/28940) on completing a CI job and enabling support for [natively signining build artifacts](https://gitlab.com/gitlab-org/gitlab-runner/-/issues/29063).| Q3/Q4 FY 2023|
|Security and Compliance| [GitLab Runner Tokens Architecture Evolution](https://gitlab.com/groups/gitlab-org/-/epics/4791)                                       | A GitLab Runner can be described as a worker process that executes the CI/CD pipeline jobs you define for your project. A runner has access to the source code in your project repository, so you must follow best practices for securely running your CI/CD jobs. One of our goals in FY23 is to enhance the security architecture of the runner token mechanism to reduce security risks further and simplify compliance management.                      | Q4 FY 2023 |
|Platform Enablement| [Docker Machine Replacement - GitLab Runner Autoscaling plugins for public cloud providers](https://gitlab.com/groups/gitlab-org/-/epics/7668)                      | The [Next Runner Scaling Architecture](https://docs.gitlab.com/ee/architecture/blueprints/runner_scaling/index.html) is the architectural blueprint that serves as the foundation for replacing the [Docker Machine-based Runner Autoscaler](https://docs.gitlab.com/runner/executors/docker_machine.html) for scaling Runner on public cloud-hosted virtual machines. Based on the architectural blueprint, the solution we landed on for the MVC introduces three new concepts to GitLab Runner: **Fleeting**, **Taskscaler**, and **Fleeting-plugins**. With its minimal API focused on VM creation, connection, and deletion, Fleeting is the abstraction layer for public cloud providers' instance groups. Taskscaler is the new GitLab-developed autoscaler for provisioning VM instances using Fleeting and autoscaling instance groups. Taskscaler allocates and assigns tasks to execute each VM. Finally, Fleeting-plugins are cloud provider specific, and it is how customers can adopt the Next Runner Scaling on the target public or private cloud of their choosing. The first plugin that we are planning to deliver is for [Google Compute Engine](https://gitlab.com/gitlab-org/gitlab-runner/-/issues/28874). This prioritization of Google Compute Engine enables us to test the new architecture at scale on internal GitLab projects. However, since the abstraction layer will be well defined and documented, community contributions may help accelerate the development of plugins for the other major cloud platforms. |Q4 FY 2023|

### What are we not focused on?

The summary list below includes a few popular items that we have decided not to prioritize.

| Item  |Why Not?|
|:------ |:------ |
| [Local runner execution MVC](https://gitlab.com/gitlab-org/gitlab-runner/-/issues/2797)                                            |Our GitLab CI developer personas will derive significant value if a solution is available that enables the developer to thoroughly test changes to a GitLab pipeline on their local machine. The `gitlab-runner exec` [feature](https://docs.gitlab.com/runner/commands/#gitlab-runner-exec) had been the initial mechanism in GitLab that provided local pipeline debugging capabilities. However, as additional features and capabilities were introduced to GitLab CI, it was no longer tenable to replicate all GitLab CI features into `gitlab-runner exec`. So, while this seems like a simple feature request, implementing GitLab CI job debugging in a local runner is quite complex. To summarize, we will need to duplicate the CI logic handled in the Rails application. As a result of the level of effort and complexity, there are other investments with a higher return for Runner Core. Also, there are investments that we must make now in vital functional areas of Runner Core to enhance security and also the reliability of CI job execution. On the other hand, the Verify Pipeline Authoring team is exploring an [MVC feature](https://gitlab.com/gitlab-org/gitlab/-/issues/337282) that aims to validate a pipeline's syntax and logic.|
| [Sticky Runners MVC](https://gitlab.com/gitlab-org/gitlab/-/issues/17497) |In this issue, users need to improve CI job performance in scenarios where each job can generate intermediate build elements hundreds of GBs in size. In the current GitLab CI model,  a significant amount of pipeline execution time is due to the uploading and downloading of intermediate build elements between jobs in a pipeline. Given the current Runner executor implementation, i.e., we support several executor types out of the box (shell, docker, Kubernetes), changing the CI job execution paradigm in GitLab is a significant architectural change. One option on the table is to restrict this feature to Runners using the shell executor. The Sticky Runners MVC feature is currently not prioritized for roadmap delivery due to competing architectural investments of the Runner code base.|

## Runner Vision Scorecards

### Vision Category: Automated install and configuration

|Kubernetes  |Linux|macOS|Windows|
|:------ |:------ |:------ |:------ |
| Viable - HELM & Operator based installation capabilities available. Install and configuration is not yet 100% automated. Transition to an Operator only install model planned to complete by GitLab 16.0 |Viable - install and configuration is not yet 100% automated.|Viable - install and configuration is not yet 100% automated.|Viable - install and configuration is not yet 100% automated.|

### Vison Category: Autoscaling on public cloud provider virtual machines

|Amazon Web Services EC2|Google Cloud Compute Engine|Azure Virtual Machines|
|:------ |:------ |:------ |
|Viable - available today, but the foundation is legacy Docker Machine technology.|Viable - available today, but the foundation is legacy Docker Machine technology.|Viable - available today, but the foundation is legacy Docker Machine technology.|

## Architectural Strategy and Direction

Runner core is comprised of various components, features, and capabilities. This section aims to provide clarity regarding the Runner Core architecture direction at a more fine-grained level.

|Category|Strategy|
:------ |:------ |
|Shells|Today the current philosophy behind GitLab CI/CD job execution is that everything is a shell script. The use of shell scripts for job execution has benefits. Still, there are also significant drawbacks in maintenance costs and complexity, which in some cases has negatively impacted our ability to deliver new features quickly. In this issue, [Manager/Taskrunner design](https://gitlab.com/gitlab-org/gitlab-runner/-/issues/28736), which is currently confidential, we are discussing the architectural underpinning of Runner. Those discussions will guide the evolution of the core GitLab Runner CI job execution mechanism. It could become the basis of what we are currently referring to as Runner 3.0.|
|Helm Chart|The Helm Chart has been the traditional method to install GitLab Runner on Kubernetes. However, with the release of the GitLab Runner Operator and the GitLab Kubernetes agent, we need to carefully consider and define our long-term maintenance and development strategy for the Helm Chart and the Operator. The current thought process is to add critical functional pieces to the Operator to be fully on par with the Helm Chart. Then this will mean we will aim to deprecate the Helm Chart install option for GitLab Runner in 16.0. Follow along with the discussion in this [issue](https://gitlab.com/gitlab-org/gitlab-runner/-/issues/28878).|

## Prioritization for feature enhancements, maintenance and bugs

In addition to prioritizing the work required to deliver the strategic priorities listed above, the Runner Core team must [prioritize](https://about.gitlab.com/handbook/cross-functional-prioritization/#prioritization-for-feature-maintenance-and-bugs) and allocate resources for maintenance, security fixes, bugs, and feature enhancements in each milestone. A substantial percentage of the investment allocation for feature enhancements will be the Kubernetes executor. The general categories of maintenance work are as follows:

- Go or other dependency updates.
- Linux OS maintenance support.
- Windows OS maintenance support.
- macOS maintenance support.
- GitLab Runner Operator maintenance & new features
- GitLab Runner Red Hat OpenShift Operator maintenance & new features.
- Community contributions.

## Maturity Plan

- Runner core is at the "Lovable" maturity level (see our [definitions of maturity levels](/direction/maturity/)).
- As detailed in this [epic](https://gitlab.com/groups/gitlab-org/-/epics/6090), we plan to review the maturity scorecard for runner core and complete new category maturity scorecards for the other product development categories, runner cloud, and fleet management.

## Competitive Landscape

When you run a continuous integration pipeline job or workflow, the code in that pipeline must execute on some computing platform to complete your software's building, testing, and deployment. Terms used to describe the software that handles the pipeline code execution include worker, agent, or runner.

So while the basic functionality of pipeline code execution is table stakes in the industry, the ability to efficiently build software on multiple compute platforms with low operational maintenance overhead is critical to the value proposition for self-managed GitLab.

### GitLab Runner Value Proposition

For customers who need to run CI/CD workloads on environments that they manage (self-managed), GitLab runner includes a wide array of features and capabilities positioned competitively in the marketplace.

1. GitLab Runner is open-source and developed in Go. Our community members and customers have full access to the GitLab Runner source code and can contribute features, bug fixes directly to the code base.
1. GitLab Runner supports multiple executors. One of the most useful executor types is the Docker executor, which enables users to execute CI jobs inside a container, resulting in less maintenance for the CI/CD build environment.
1. GitLab Runner includes CI job execution autoscaling out of the box. Autoscaling is available for public cloud virtual machines or on Kubernetes clusters.
1. GitLab Runner supports several computing architectures. Customers who need to self-manage runners on platforms such as IBM Z mainframes to take advantage of GitLab and modern Value Stream Delivery Platforms can. We aim to meet and support customers on the platforms that they use in their environment.
1. A significant competitive differentiator is the availability of the GitLab Runner [custom executor](https://gitlab.com/gitlab-org/ci-cd/custom-executor-drivers). This open-source solution enables the community to add an executor to the GitLab Runner to execute CI jobs on a computing platform or infrastructure that's not currently supported. With this very powerful yet simple-to-implement driver, users can configure the GitLab Runner to use an executable to prepare the build environment, run the CI job, and clean-up the build environment on job completion.

### Competitive Matrix

|Solution| CI/CD Agent naming convention/brand       |Self-Managed Option Availablity| Notes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |                                                                                                                                                                                                              
:------ |:------------------------------------------|:------ |:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|GitHub Actions| Runners                                   |Available| GitHub released self-hosted runners in late 2019. Since then, GitHub has continued to invest in features and capabilities. We also notice similar investment themes as GitHub continues to target market segments requiring a self-managed platform. For example, GitHub self-hosted runners have added [support for Apple M1 silicon.](https://github.blog/changelog/2022-08-09-github-actions-self-hosted-runners-now-support-apple-m1-hardware/) GitHub is also investing in self-hosted runner auto-scaling with [plans](https://github.com/github/roadmap/issues/555) to add support for Kubernetes in  Q4 2022. The autoscaling roadmap issue also includes an interesting note about queue visibility and tooling to deploy runners from the UI, which is very much related to our vision for frictionless runners.                                                                                                  | 
| Jenkins      | Agent                                     |Available| A Jenkins agent is an executable residing on a node, whether virtual, bare-metal or a container that the Jenkins controller tasks to run a job. While installing the Jenkins agent on a target platform does require Java, the agent capability enables distributed builds in Jenkins and is flexible from a deployment standpoint. The Jenkins agent architecture is scalable; however, there will be ongoing maintenance overhead for organizations that self-manage large-scale Jenkins installations.                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Harness.io   | Harness Delegate                          |Available| Harness currently provides the following types of Delegate: Kubernetes, Shell Script, AWS ECS, Helm, Docker. Though the Delegates perform a similar essential function as GitLab Runner, i.e., executes tasks provided by the Harness Manager, the Delegates' primary purpose is to deploy software to the target platform. In this regard, the value proposition of the [GitLab Agent for Kubernetes](https://docs.gitlab.com/ee/user/clusters/agent/) is a critical consideration when evaluating capabilities in GitLab for developer frictionless cloud-native deployment.                                                                                                                                                                                                                                                                                                                                              
| Codefresh    | Codefresh Runner                          |Available*| The Codefresh Runner, which handles getting tasks from the Codefresh SaaS platform and executing them, is available only for Kubernetes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| CircleCI     | CircleCI Runner                           |Available| The CircleCi self-hosted runner, released in November 2020, is supported on Linux, Windows, macOS, and Kubernetes but is only available to customers on CircleCi's Scale Plan. In the near term, CirlceCI is adding support for additional platforms. Extending platform support is an expected and necessary by-product of targeting customers who cannot run CI/CD workloads on a SaaS solution.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Bitbucket    | Runners                                   |Available| Users can self-host Bitbucket Runners on Linux x64, Windows 2K19, or macOS Catalina. On Windows and macOS, a pre-requisite to using the runner is OpenJDK11.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| TeamCity     | Build Agent                               |Available| The TeamCity build agent, developed in Java uses a polling mechanism to retrieve commands from the associated TeamCity server - TeamCity Cloud or TeamCity On-Premises. TeamCity's build agent executes the build process on the target computing platform. The build agent is compatible with Linux, Windows, and macOS, and there is support for installing the build agent via the [TeamCity Agent Push](https://www.jetbrains.com/help/teamcity/install-teamcity-agent.html#Install+via+Agent+Push) option from the TeamCity server. The TeamCity agent setup capabilities for [Amazon EC2](/www.jetbrains.com/help/teamcity/setting-up-teamcity-for-amazon-ec2.html), [Kubernetes](https://www.jetbrains.com/help/teamcity/setting-up-teamcity-for-kubernetes.html), and [VMWare vSphere](https://www.jetbrains.com/help/teamcity/setting-up-teamcity-for-vmware-vsphere-and-vcenter.html) are mature and easy to use. |
| Cirrus CI    | [Cirrus CI](https://cirrus-ci.org/) agent |Available| Cirrus CI supports Linux and Windows Containers, macOS, and Free BSD virtual machines. In addition, their approach to task execution, where all configuration options are in the cirrus.yml file, including the VM image version and Docker Container image version, is a compelling value proposition. For example, you can specify the specific Google Cloud compute type needed for each task in your workflow.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |

### Threat of new entrants

The pace of change and innovation in DevOps is high. New entrants will likely challenge current paradigms and disrupt the market.  An example of that is [onedev](https://github.com/theonedev/onedev), an open-source project that relies solely on Kubernetes to execute CI jobs with Linux and Windows containers support. The long-term potential here is clear. Kubernetes continues to be the leading container orchestration platform. Assuming that continues and organizations develop a deep bench of expertise to manage Kubernetes at scale, then we can make the following hypothesis. Having a CI/CD runner solution that is easy to install, maintain and operate on Kubernetes, coupled with predictive DevOps capabilities, will be critical to long-term market success.

So, as we head into FY23 and beyond, we will continue to focus on adding key features to Runner Core to maintain our pace of innovation and competitive position

## Give Feedback

The near features highlighted here represent just a subset of the features and capabilities that have been requested by the community and customers. If you have questions about a specific runner feature request or have a requirement that's not yet in our backlog, you can provide feedback or open an issue in the GitLab Runner [repository](https://gitlab.com/gitlab-org/gitlab-runner/-/issues).

## Revision Date

This direction page was revised on: 2022-09-02
