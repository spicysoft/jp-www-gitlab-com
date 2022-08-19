---
layout: markdown_page
title: Storage and Transfer limits
description: "On this page you can view frequently asked questions for storage and transfer limits for the paid GitLab SaaS tiers"
canonical_path: "/pricing/faq-paid-storage-transfer/"
---

# Frequently Asked Questions

{:.no_toc}

### On this page

{:.no_toc}

{:toc}

- TOC

## GitLab SaaS Premium and Ultimate

**Q. What is changing with Storage and Transfer limits?**  
A. We are introducing storage and transfer limits to the [GitLab SaaS offerings](/pricing/).

| GitLab SaaS Tier                         | Free | Premium | Ultimate |
|------------------------------------------|:----:|:-------:|:--------:|
| Price                                    | $0   | $19     | $99      |
| Storage (in GB per namespace)            | 5 GB  | 50 GB  | 250 GB   |
| Transfer (in GB per namespace per month) | 10 GB | 100 GB | 500 GB   |

**Q. Which users are these changes applicable to?**  
A. These limits are applicable to users of the GitLab SaaS offerings. These changes do not apply to self-managed users (both free and paid tier) and community programs - including GitLab for Open Source, Education and Startups users.

Customers who are still on the Bronze subscription are not impacted by this change immediately, and the new limits on Premium / Ultimate will be applicable when they upgrade.

**Q. Do these changes apply to Trials?**  
A. Yes, GitLab Trial will receive entitlements from GitLab Ultimate.

**Q. What is the effective date of the changes?**  
A. For existing paid tier users:

- These limits will not apply immediately and will be applicable to your subscription at your next renewal on or after **2022-10-15**.
- Storage limits will be applicable for impacted subscriptions from **2023-02-15**.
- Transfer limits will not be applicable until further communication from GitLab.

**Q. Will limits apply only once both storage and transfer are available?**  
A. No, application of storage and transfer limits will be independent of each other. Storage usage visibility, and storage limits will be first, transfer usage visibility and transfer limits will follow.

### Managing your Storage Usage

**Q. What constitutes Storage usage?**  
A. Currently storage includes [pipeline job artifacts](https://docs.gitlab.com/ee/ci/pipelines/pipeline_artifacts.html#storage), [repositories](https://docs.gitlab.com/ee/user/project/repository/#repository), [package](https://docs.gitlab.com/ee/user/packages/package_registry/) and [container](https://docs.gitlab.com/ee/user/packages/container_registry/) registries, [snippets](https://docs.gitlab.com/ee/user/snippets.html#snippets), [Git LFS](https://docs.gitlab.com/ee/topics/git/lfs/#git-large-file-storage-lfs), [wiki](https://docs.gitlab.com/ee/user/project/wiki/#wiki) storage, [dependency proxy](https://docs.gitlab.com/ee/user/packages/dependency_proxy/). Future product features that allow you to store data will also be incorporated into the storage usage count, when available.

**Q. How can I view and manage my storage usage?**  
A. You can view the storage usage on the Group Settings page for [Usage Quota](https://docs.gitlab.com/ee/user/usage_quotas.html#view-storage-usage) in the `Storage` tab. The summaries are divided into all storage types listed in the answer to the "What constitutes Storage usage?" question. Each type provides details on how to proceed with detailed analysis and cleanup procedures.

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

### Managing your Transfer Usage

**Q. What constitutes transfer usage?**  
A. Transfer is measured as the amount of data egress leaving GitLab.com, except for:

- Transfer generated by GitLab.com [Shared Runners](https://docs.gitlab.com/ee/ci/runners/)
- Transfer generated by GitLab Runners authenticating with a `CI_JOB_TOKEN`
- Transfer generated by deployments authenticating with a `DEPLOY_TOKEN`
- The web interface

The primary use cases affected by transfer limits are end users working with code repositories, and public distribution of containers and packages.
Future product features that allow transfer of data will also be incorporated into the transfer usage count, when available.

**Q. Can I proactively monitor and reduce my transfer usage?**  
A. Viewing transfer usage is not yet available. Until the usage report is available on the Group Settings Usage `Quota Page`, transfer limits will not be programmatically applied. If your usage is significantly high, the GitLab team will reach out to you to help manage your usage.

### Purchasing additional Storage and Transfer

**Q. How much does it cost to buy additional Storage and Transfer units?**  
A. Additional storage or transfer units can be purchased from the [GitLab Customer Portal](https://customers.gitlab.com/) at $60/year that includes both 10GB of storage and 20GB/month transfer.
For example:

- If you require 15GB storage, you will pay $120 for the year.
- If you require 25GB transfer per month, you will pay $120 for the year.
- If you require both 15GB storage and $25GB Transfer per month, you will still pay $120 for the year.
- If you have purchased 5 add-ons, you will be entitled to 50GB storage and 100GB transfer/month.

### More information

For more information on managing and reducing your storage usage, please contact GitLab support or your GitLab sales representative.
