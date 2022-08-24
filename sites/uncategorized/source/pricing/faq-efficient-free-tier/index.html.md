---
layout: markdown_page
title: Efficient GitLab SaaS free tier
description: "On this page you can view frequently asked questions for changes related to free tier efficiency"
canonical_path: "/pricing/faq-efficient-free-tier/"
---

# Frequently Asked Questions - GitLab SaaS Free Tier

{:.no_toc}

### On this page

{:.no_toc}

{:toc}

- TOC

## Storage limits on GitLab SaaS Free Tier

**Q. What is changing with storage?**  
A. We are introducing a storage limit of 5GB per top-level namespace to the [GitLab SaaS Free tier](/pricing/).

| GitLab SaaS Tier              | Free | Premium | Ultimate |
|-------------------------------|:----:|:-------:|:--------:|
| Price                         | $0   | $19     | $99      |
| Storage (in GB per namespace) | 5 GB | 50 GB   | 250 GB   |

**Q. Which users are these changes applicable to?**  
A. Storage limits are applicable to free and paid tier users of the GitLab SaaS offerings. Community programs - including GitLab for Open Source, Education and Startups users - will have the limits applicable for GitLab Ultimate. This change does not apply to self-managed users (both free and paid tier).
Customers who are still on the Bronze subscription are not impacted by this change immediately, and the new limits on Premium / Ultimate will be applicable when they upgrade.

**Q. Does this change apply to Trials?**  
A. Yes, GitLab Ultimate Trial and Premium Trial will receive entitlements from GitLab Ultimate and Premium respectively.

**Q. Is this change applicable to public projects as well?**  
A. Yes, the change is applicable to both public and private projects. Free tier users using GitLab for public open source projects should consider applying for the [GitLab for Open Source program](/solutions/open-source/), which provides access to the GitLab Ultimate features and entitlements for free.

**Q. What is the effective date of the changes?**  
A. For existing free tier users, storage limits will not be applied before **2022-10-19**.

### Managing your Storage Usage

**Q. What constitutes Storage usage?**  
A. Currently storage includes [pipeline job artifacts](https://docs.gitlab.com/ee/ci/pipelines/pipeline_artifacts.html#storage), [repositories](https://docs.gitlab.com/ee/user/project/repository/#repository), [package](https://docs.gitlab.com/ee/user/packages/package_registry/) and [container](https://docs.gitlab.com/ee/user/packages/container_registry/) registries, [snippets](https://docs.gitlab.com/ee/user/snippets.html#snippets), [Git LFS](https://docs.gitlab.com/ee/topics/git/lfs/#git-large-file-storage-lfs), [wiki](https://docs.gitlab.com/ee/user/project/wiki/#wiki) storage, [dependency proxy](https://docs.gitlab.com/ee/user/packages/dependency_proxy/). Future product features that allow you to store data will also be incorporated into the storage usage count, when available.

**Q. How can I view and manage my storage usage?**  
A. You can view the storage usage on the Group Settings page for [Usage Quota](https://docs.gitlab.com/ee/user/usage_quotas.html#view-storage-usage) in the `Storage` tab. The summaries are divided into all storage types listed in the answer to the "What constitutes Storage usage?" question. Each type provides details on how to proceed with detailed analysis and cleanup procedures.

**Q. What happens if I exceed my storage limits?**  
A. Namespaces exceeding the storage limit will continue to have read access but will be unable to write any new data. This applies to all types of storage including Repository, LFS, Packages, and Registry.

**Q. How can I reduce the amount of Storage consumed?**  
A. Below you will find steps for managing the different storage types:

- Pipeline job artifacts: You can set an [expiration policy](https://docs.gitlab.com/ee/ci/pipelines/job_artifacts.html#when-job-artifacts-are-deleted) for when artifacts can be deleted. You can also [delete job artifacts](https://docs.gitlab.com/ee/ci/pipelines/job_artifacts.html#delete-job-artifacts) manually - remember this can lead to data loss.
- Repositories: Repositories can become large over time. You can reduce your repository size using the steps highlighted in the [documentation](https://docs.gitlab.com/ee/user/project/repository/reducing_the_repo_size_using_git.html).
- Container Registry: You can set an [cleanup policy](https://docs.gitlab.com/ee/user/packages/container_registry/reduce_container_registry_storage.html#cleanup-policy) to programmatically remove old, unused images and tags. You can also use the [user interface or API](https://docs.gitlab.com/ee/user/packages/container_registry/reduce_container_registry_storage.html)to delete items as well.
- Packages: You can delete an [entire package](https://docs.gitlab.com/ee/user/packages/package_registry/reduce_package_registry_storage.html#delete-a-package) or [files within a package](https://docs.gitlab.com/ee/user/packages/package_registry/reduce_package_registry_storage.html#delete-files-associated-with-a-package)
- Dependency Proxy: You can set an [expiration policy](https://docs.gitlab.com/ee/user/packages/dependency_proxy/reduce_dependency_proxy_storage.html#cleanup-policies) to programmatically clear the cache. Or, you can manually [purge the cache](https://docs.gitlab.com/ee/user/packages/dependency_proxy/reduce_dependency_proxy_storage.html#use-the-api-to-clear-the-cache) using the API.
- Snippets: Snippets follow the same process as [reducing repository size](https://docs.gitlab.com/ee/user/snippets.html#reduce-snippets-repository-size).
- Wikis: Wikis follow the same process as [reducing repository size](https://docs.gitlab.com/ee/administration/wikis/index.html#reduce-wiki-repository-size).

**Q: How can I automate storage usage analysis and cleanup?**
A: You can use the [GitLab API](https://docs.gitlab.com/ee/api/) to programmatically view and delete storage data types. There are [programming language libraries](https://about.gitlab.com/partners/technology-partners/#api-clients) available that can help with easy-to-use interfaces, for example listing and deleting job artifacts using the [Python library for GitLab](https://python-gitlab.readthedocs.io/en/stable/gl_objects/pipelines_and_jobs.html#jobs). A script based on the Python library has been developed by the GitLab Developer Evangelism team [in this project](https://gitlab.com/gitlab-de/gitlab-storage-analyzer). This MIT-licensed script is not officially supported by GitLab and comes without warranty. 

**Q. How will the storage limits affect me when I’m contributing to another project?**  
A. Forks of projects get deduplicated, so only the changes you make will contribute to your storage consumption as long as the fork relationship is maintained.

### Purchasing additional Storage

**Q. How much does it cost to buy additional Storage units?**  
A. Additional units can be purchased from the [GitLab Customer Portal](https://customers.gitlab.com/) at $60/year for 10GB of storage. More details [here](https://docs.gitlab.com/ee/subscriptions/gitlab_com/#purchase-more-storage-and-transfer). 
For example:

- If you require 15GB storage, you will pay $120 for the year.
- If you have purchased 5 add-ons, you will be entitled to 50GB storage

### Next steps

- Reduce storage consumption by following the suggestions in the [Managing Your Storage](#managing-your-storage-usage) section of this page.
- Apply for [GitLab for Education](/solutions/education/join/), [GitLab for Open Source](/solutions/open-source/join/), or [GitLab for Startups](/solutions/startups/) if you meet the eligibility requirements.
- Consider using a [self-managed instance](https://docs.gitlab.com/ee/subscriptions/self_managed/) of GitLab which does not have these limits on the free tier.
- [Purchase additional storage](https://docs.gitlab.com/ee/subscriptions/gitlab_com/#purchase-more-storage-and-transfer) units at $60/year for 10GB of storage.
- [Start a trial](/free-trial/) or [upgrade to GitLab Premium or Ultimate](/pricing/) which include higher limits and features that enable growing teams to ship faster without sacrificing on quality.
- [Talk to an expert](https://page.gitlab.com/usage_limits_help.html) to learn more about your options and ask questions.

## User Limits on GitLab SaaS Free Tier

**Q. What is changing with user limits?**  
A. There will be a 5-user limit for top-level namespaces with private visibility. At this time, top-level namespaces with public visibility will not have a user limit.

**Q. Who do these changes apply to?**  
A. These user limits are applicable only to users of the free tier of the GitLab SaaS offering in a top-level namespace with private visibility. These changes do not apply to users of the free tier of the GitLab SaaS offering in a public top-level namespace, paid tiers, the free tier of the self-managed offering and [community programs](/community/), including GitLab for Open Source, GitLab for Education, and GitLab for Startups users.

**Q. Do these changes apply to Trials?**  
A. No. These user limits do not apply to Trials during the trial period.

**Q. Do these changes apply to public projects as well?**  
A. No, these changes are applicable to top-level namespaces with private visibility. At this time, public projects in a top-level namespace with public visibility do not have a user limit. If you're a public open source project, you should consider applying for the [GitLab for Open Source Program](/solutions/open-source/), which provides access to the GitLab Ultimate features and entitlements for free.

**Q. What happens if I change the top-level visibility from private to public?**
A. The namespace is [publicly visible](https://docs.gitlab.com/ee/user/public_access.html), this includes information such as members, issues, and merge requests. The namespace will be indexed by search engines. 

**Q. Do these changes apply to private projects within a top-level namespace with public visibility?**
A. User limits are currently applied based on the visibility of the top-level namespace. We will monitor how top-level namespaces with public visibility are using private projects to identify whether any limits on such projects are needed.

**Q. When are these changes effective?**  
A. The new user limit on the free SaaS tier will not be applied before 2022-10-19 to new and existing free SaaS top-level namespaces with private visibility.

**Q. Will I be personally notified of the changes?**  
A. Namespaces impacted by this change will receive an in-product notification in the coming weeks. Those who do not engage with the in-app notification will also receive an email notification approximately four weeks prior to the effective date.

### Managing User Limits (Free tier only)

**Q. What does namespace in the context of user limits refer to?**  
A. In GitLab, a [namespace](https://docs.gitlab.com/ee/user/group/#namespaces) is a unique name for a user, a group, or subgroup, under which a project can be created. User limits are implemented at the **top-level group or personal namespace**.

**Q. How are the total number of users in my namespace calculated?**  
A. We count the sum of unique users within a namespace which includes the users in the top-level namespace (group), subgroups, and projects. For example:
If a user has a group named `top` and two sub-groups under `top` named `child1` and `child2` with 4 different unique users in each group, then the `top` namespace will have a total of 8 users, which is above the user limit of 5. If the two sub-groups contain the same 4 users, then `top` would only have 4 total users.

**Q. Where can I view and manage the number of users in my namespace?**  
A. Users can view and manage the users in their namespace by going to Group > Group Settings > Usage Quotas > Seats. Only Group Owners can add or remove users from the Usage Quotas page. Owners and Maintainers of individual sub-groups and projects can still manage the specific users in their sub-groups/projects.

**Q. How can I view and manage my users if my project is not located within a group?**  
A. If your project is not located within a group, you can manage the users in each of your personal projects but the sum of the unique users within all your personal projects cannot exceed 5.
GitLab strongly encourages personal projects to be moved into Groups which will allow these projects to access all GitLab features as well as give you the ability to manage all users from the Usage Quotas page, start a trial, and purchase a subscription.

**Q. What happens if I don’t reduce my user count before the date they're applied?**  
A. When the 5-user limit is applied to top-level namespaces with private visibility, only the most recently active 5-users can continue to access the namespace. The remaining users will be moved to the over-limit user state. These users will not be able to access the namespace. The namespace owner will be able to manage users from the Usage Quotas page - including deleting users, moving users from over-limit to active and vice versa.

**Q. How can I add users beyond the limit of 5 users?**  
A. The free tier has a limit of 5 users on top-level namespaces with private visibility which cannot be increased. GitLab recommends the paid tiers - Premium or Ultimate - for larger teams as there are no user limits and they contain features designed to increase your team’s productivity. We recommend starting a [free trial](https://gitlab.com/-/trial_registrations/new?glm_source=about.gitlab.com&glm_content=storage-usage-blog-post) of GitLab Ultimate to experience the value of the paid features while also getting access to unlimited users for the trial period.

Free tier users can also consider using the self-managed deployment option that does not have user limits. GitLab also has special programs for Open Source projects and students/educators granting access to GitLab Ultimate. If you believe you could qualify for one of these programs you can learn more [here](/community/).

### Next Steps

- Apply for [GitLab for Education](/solutions/education/join/), [GitLab for Open Source](/solutions/open-source/join/), or [GitLab for Startups](/solutions/startups/) if you meet the eligibility requirements.
- Consider using a [self-managed instance](https://docs.gitlab.com/ee/subscriptions/self_managed/) of GitLab which does not have these limits on the free tier.
- [Start a trial](/free-trial/) or [upgrade to GitLab Premium or Ultimate](/pricing/) which include higher limits and features that enable growing teams to ship faster without sacrificing on quality.
- [Talk to an expert](https://page.gitlab.com/usage_limits_help.html) to learn more about your options and ask questions.

## Public projects on GitLab SaaS Free Tier
### Overview
**Q. What is changing with public projects?**  
The GitLab for Open Source Program was created to give back to the open source community by encouraging individuals and teams to contribute to open source. Public open source projects will need to be part of the GitLab for Open Source program to continue to receive GitLab Ultimate features.

As previously announced, [all free tier public projects will not receive Ultimate by default](/blog/2022/02/04/ultimate-perks-for-open-source-projects/), and [all public projects will be subject to CI/CD minutes quotas applicable to their plan](/blog/2021/11/11/public-project-minute-limits/). Free tier users using GitLab for public open source projects should consider applying to the [GitLab for Open Source program](/solutions/open-source/) to continue to take advantage of GitLab Ultimate features such as portfolio management, advanced security testing, security risk mitigation, and compliance.

**Q. Which users are these changes applicable to?**  
A. These changes are applicable to users with public projects on the free tier of GitLab SaaS. These changes do not apply to self-managed free and paid tier users, SaaS paid tier users, and community programs - including GitLab for Open Source, Education and Startups users.

**Q. What is the effective date of the changes?**  
A. The CI/CD limits on public projects will be applicable for all users including paid and free tier with public projects starting June 1, 2022.  
Public projects on the free tier will stop receiving Ultimate entitlements by default starting July 1, 2022.  

**Q. How can I retain the Ultimate entitlements for my public projects?**  
A. There are two ways:
- Enroll in the GitLab Open Source Program. [Learn more](/solutions/open-source/join/) on how to apply to the GitLab for Open Source Program.
- Upgrade to GitLab Ultimate. Learn more [here](/pricing/).

### Managing CI/CD Usage

**Q. What happens when my namespace has used all of the month’s allocated CI/CD Minutes limit of 400 minutes?**  
A. You will not be able to run new jobs until you purchase additional CI/CD Minutes, or until the next month when you receive your monthly allotted CI/CD Minutes. Running jobs will be cancelled when  a namespace reaches its limit while a pipeline is running.

**Q. How can I manage my CI/CD usage to stay under the limit?**  
A. This detailed FAQ covers how to manage your CI/CD usage.
Watch this deep dive video on how you can manage your CI/CD Minutes usage.
<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/GrO-8KtIpRA" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

**Q. I am an active contributor to GitLab. Will the same limits be applicable to me as well?**  
A. All free tier users receive 50,000 CI/CD minutes for running pipelines on public forks of public open source projects, like GitLab. Contributions to all other projects by free tier users are subject to the new limits.

### GitLab for Open Source Program

**Q. How can I apply for the GitLab for Open Source program?**  
A. The GitLab for Open Source Program gives access to unlimited seats per license of GitLab Ultimate (SaaS or Self-Managed), including 50,000 CI/CD minutes, excluding support.  View the program requirements and apply for the GitLab for Open Source program online here. In most cases, GitLab will respond with a decision or request for additional information within 15  business days.

**Q. What happens to my account if I do not enroll in the GitLab for Open Source program or I am not accepted into the program?**  
A. If you are not part of the GitLab for Open Source program, after July 1, 2022, your account will stop receiving GitLab Ultimate capabilities and will receive the entitlements available to the free tier.
You will not lose any data, but you will not be able to create any new jobs or artifacts nor access Ultimate features if you have exceeded the usage limits of the free tier.

**Q. Can I apply for GitLab’s Open Source program with some public projects and some private projects in my group?**  
A. No. In order to meet the [requirements of the Open Source Program](/solutions/open-source/join/), **all** of the code you host in this GitLab group must be published under [OSI-approved open source licences](https://opensource.org/licenses/category). All projects under this group must have public visibility. Individual projects are not eligible for the Open Source Program. Additionally, your organization must not seek to make a profit. Please check all the eligibility requirements for the Open Source program [here](/solutions/open-source/join/).

**Q. Do I need to apply for GitLab for Open Source Program for each individual project?**  
A. No. You will need to apply for GitLab for Open Source Program at the top-level [namespace](https://docs.gitlab.com/ee/user/group/#namespaces).

- All projects under this group must have public visiblity
- All projects must be published under [OSI-approved open source licences](https://opensource.org/licenses/category).
- All projects must be within a group or a sub-group, you cannot apply for the program for projects within a personal namespace. (for example, consider a user `username`. Projects within the personal namespace `username` will not be considered. If `username` creates a group `user-group` and has open source projects within that group, then `user-group` can be considered for the Open Source program)
- If you have projects unrelated to an `open source project` (for example, personal projects), you will need to move out the unrelated projects to a different group to be eligible for the GitLab for Open Source Program.

### Next Steps

- [Click here](/solutions/open-source/join/) to join the GitLab for Open Source program
- [Purchase online](https://customers.gitlab.com) or contact [GitLab Sales](/sales/) to upgrade to a paid GitLab.com tier - which have advanced capabilities and higher usage limits.
