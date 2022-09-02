<!--
### Notes for the Release post manager

The release post MR and the related MRs, issues, and files required for the release post process should be automatically generated on the 3rd.

If there was a problem and you are creating this MR manually, first try to restart the automated process by referring to the [Release post branch creation Rake task](https://about.gitlab.com/handbook/marketing/blog/release-posts/#release-post-branch-creation-rake-task) in the GitLab handbook.

If the task continues to fail, follow these steps to perform a [Manual Release Post Kickoff](https://about.gitlab.com/handbook/marketing/blog/release-posts/manual-release-post-kickoff/).

-->

# Overview

Process Improvements? Have suggestions for improving the release post process as we go?
Capture them in the [Retrospective issue](RETRO_ISSUE_LINK).

- **[Preview page](https://about.gitlab.com/releases/gitlab-com/)** (shows the latest merged content blocks, for reference use untill the 17th)
- **[View App](https://release-X-Y.about.gitlab-review.app/releases/YYYY/MM/DD/gitlab-X-Y-released/index.html)** (shows the introduction, MVP and latest merged content blocks, for reference use between 18th - 21st

_Release post:_

- **[Intro](https://gitlab.com/gitlab-com/www-gitlab-com/blob/release-X-Y/sites/uncategorized/source/releases/posts/YYYY-MM-22-gitlab-X-Y-released.html.md)**
- **[Items](https://gitlab.com/gitlab-com/www-gitlab-com/blob/release-X-Y/data/release_posts/X_Y)**
- **[Images](https://gitlab.com/gitlab-com/www-gitlab-com/tree/release-X-Y/source/images/X_Y)**
- **[MVP Nomination Issue](MVP_ISSUE_LINK)**
- **[Retro](RETRO_ISSUE_LINK)**

_Related MRs:_

- **[Bug Fixes](BUG_MR_LINK)**
- **[Usability improvements](USABILITY_MR_LINK)**
- **[Performance improvements](PERFORMANCE_MR_LINK)**

_Related files:_

- **[Features YAML](https://gitlab.com/gitlab-com/www-gitlab-com/blob/release-X-Y/data/features.yml)**
- **[Features YAML Images](https://gitlab.com/gitlab-com/www-gitlab-com/blob/release-X-Y/source/images/feature_page/screenshots)** link
- **[Homepage YAML](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/index.yml#L1)**
- **[MVPs](https://gitlab.com/gitlab-com/www-gitlab-com/blob/release-X-Y/data/mvps.yml)**

_Release post task and branch ownership:_

- The **Release Post Manager** is solely in charge of changes to the release post branch. To avoid potential merge conflicts later during content assembly, it is imperative that Technical Writers do not merge updates from `master` to the release post branch even if it is falling behind or if there is a conflict. The Release Post Manager will take care of conflicts as part of the content assembly process on the 18th and work with the Technical Advisor as needed.

_Reminding and Alerting DRIs:_

It's important to keep PMs up to date regularly with items they need to deliver for the release post. Early reminders are especially helpful due to how async and distributed GitLab team members are. The release post manager will alert DRIs (PMs, EMs and others as needed) at least one working day before each due date (post a comment to the `#release-post` Slack channel, issues or MRs) per the release post manager task list below. But the release post manager can also opt to do addtional reminders or announements specific to the release post they're leading as they see fit. 

_Handbook references:_

- [Blog handbook](https://about.gitlab.com/handbook/marketing/blog/)
- [Release post handbook](https://about.gitlab.com/handbook/marketing/blog/release-posts/)
- [Markdown guide](https://about.gitlab.com/handbook/engineering/technical-writing/markdown-guide/)

_People:_

- [Release Post Managers](https://about.gitlab.com/handbook/marketing/blog/release-posts/managers/)
- [Release Managers](https://about.gitlab.com/community/release-managers/)

| Release post manager | Tech writer | Technical Advisor | Social | PMM lead | Product Operations DRI | Release post manager shadow |
| --- | --- | --- | --- | --- | --- | --- |
| `@release_post_manager` | `@tw_lead` | `@tech_advisor` | DRI: `@wspillane` & `@social` for Slack Checklist item | `@pmm_lead` | `@fseifoddini` | `@release_post_manager_shadow` |

---

### Release post kickoff (`@release_post_manager`) due by the 7th

**Note:** Throughout the release post process, you'll do various Slack reminders/announcements. It is recommended you cc the Product Operations DRI and the rest of your release post team as you do these Slack posts because it helps keep everyone on the same page. Some Release Post Managers, pre-schedule messages in Slack for the respective notifications.

**Note:** There are several tasks in this checklist that can be done any time before the listed due date. If a task says "no earlier than", it is important to follow that guideline.

#### Opening tasks

**Due date: YYYY-MM-07**

1. [ ] Confirm that the [release-post-creation-task](https://about.gitlab.com/handbook/marketing/blog/release-posts/#release-post-branch-creation-rake-task) successfully completed the following:
  1. [ ] This MR has the active milestone assigned
  1. [ ] This MR is labeled ~"priority::1" ~"blog post" ~"release post" ~"release"
  1. [ ] All of the links in the [Overview](#overview) of this MR load the correct page

1. [ ] Read the [RPM specific section](https://about.gitlab.com/handbook/marketing/blog/release-posts/#release-post-manager-responsibilities) of the release post handbook page in detail
1. [ ] Review the rest of the [release post handbook page](https://about.gitlab.com/handbook/marketing/blog/release-posts/) and all the tasks in this MR template, not just your own, so you're familiar with the overall process, roles and tasks involved
1. [ ] Consider setting up a coffee chat with the previous release post manager and/or Product Operations DRI to ask for tips and any helpful "latest info"
1. [ ] After meeting with the previous release post manager and/or Product Operations for insights, consider setting up a meeting with your release post shadow (`@release_post_manager_shadow`) to help them understand their role and how much capacity they have to support the work that month
1. [ ] Schedule a 30 min Live Retrospective meeting for some time after the 22nd. All action items for the retro need to be completed prior to the 3rd of the next month in order to incorporate any process changes before the next [release post automation](https://about.gitlab.com/handbook/marketing/blog/release-posts/#release-post-branch-creation-rake-task) begins. Make sure to invite Product Ops to the Live Retro meeting. Product Ops will need to approve any major updates to the process identified during the Retrospective.
1. [ ] Create a `X-Y-release-post-prep` channel in Slack
  1. [ ] Invite `@tw_lead`, `@tech_advisor`, `@pmm_lead`, `@release_post_manager_shadow`, `@fseifoddini`, and `@brhea`. There is no need to invite the social team to the channel.
  1. [ ] Post the following message in `X-Y-release-post-prep`: `Hi team! This channel is to discuss production-specific topics that don't concern the broader product team. By keeping our conversations in this channel, we can help keep #release-post focused.`
  - See additional guidance on [release post communication](https://about.gitlab.com/handbook/marketing/blog/release-posts/#communication)
1. [ ] Update the `#X-Y-release-post-prep` Slack bookmarks in the `#release-post` channel:

  ```md
  MR: RP_MR_LINK
  Preview page: https://about.gitlab.com/releases/gitlab-com/
  Review App: https://release-X-Y.about.gitlab-review.app/releases/YYYY/MM/DD/gitlab-X-Y-released/
  Retro issue: RETRO_ISSUE_LINK
  MVP nomination: MVP_ISSUE_LINK
  ```

9. [ ] In `#X-Y-release-post-prep` ask the TW Lead and Technical Advisor to familiarize themselves with their role by reading their section of the release post handbook page.
  - Link to their handbook sections: [TW Lead](https://about.gitlab.com/handbook/marketing/blog/release-posts/#tw-lead) and [Technical Advisors](https://about.gitlab.com/handbook/marketing/blog/release-posts/#technical-advisors)
  - Tell them that if they have any questions, post them to you in the `#X-Y-release-post-prep` Slack channel and cc Product Operations
  - Tell them it's recommended they set up a coffee chat with their predecessor for any helpful tips. The previous TW lead and TA can be found on the [RP scheduling page](https://about.gitlab.com/handbook/marketing/blog/release-posts/managers/)
  
10. [ ] Update the `#release-post` Slack bookmarks in the `#release-post` channel:

  ```md
  MR: RP_MR_LINK
  Preview page: https://about.gitlab.com/releases/gitlab-com/
  Review App: https://release-X-Y.about.gitlab-review.app/releases/YYYY/MM/DD/gitlab-X-Y-released/
  Retro issue: RETRO_ISSUE_LINK
  MVP nomination: MVP_ISSUE_LINK
  ```

11. [ ] Announce yourself as the Release Post Manager in the `#release-post` channel, as well as the Technical Advisor, and TW lead for reference. cc the Product Operations DRI
12. [ ] Schedule at least two sync 15-minute weekly standups using this [agenda as an example](https://docs.google.com/document/d/1Ai5DHRXg39w_4rPEeztwUrYH-FxASs_eJyOf3MqPsh0/edit). Considering the timezones of the RP team and/or potential holidays over the weekend, consider not scheduling the sync stand-ups on Mondays.
  - The standups should ideally happen the 2nd and 3rd weeks of the month to allow for collaboration leading up to the 17th.
  - Add attendees TW Lead, Tech advisor as required and the PMM Lead and Product Operations DRI as optional.
  - If times zones conflict too much, initiate at least two weekly virtual standups to happen at the same time/day of the week in Slack `#X-Y-release-post-prep` channel. Leverage the agenda template above to conduct it
  - For any who can't attend, recordings should be posted in the agenda and/or Slack `#X-Y-release-post-prep` channel after the standup
  - **Please note a sync standup is always required for major releases**
13. [ ] Review  the release post major due dates in the [standup agenda](https://docs.google.com/document/d/1LhAEBgZmSq8gs7Dm60RwqU60EZK5cafvILgQUoiakBM/edit) you created. If any fall on a weekend, Family and Friends day or other holiday, flag this to your release post team in Slack prep channel for awareness and to initiate any necessary planning to ensure smooth handoffs/completion of tasks over weekends, etc.
14. [ ] In the `#release-post` Slack channel, remind Product Managers that all [content blocks (features, recurring, bugs, etc.)](#content-blocks) should be drafted and under review by the 10th. All direction items and notable community contributions should be included in the release post.
15. [ ] Confirm your local dev environment is running a current version of Ruby. See Handbook section [Local dev environment setup to run content assembly script](https://about.gitlab.com/handbook/marketing/blog/release-posts/#local-dev-environment-setup-to-run-content-assembly-script). Ask the Technical Advisor for help.
  - If you have any difficulty installing dependencies, reach out to your Technical Advisor.
16. [ ] Remind the Technical Writer in Slack prep channel to not to merge in changes from `master` to the release post branch. See the `Release post branch ownership` section above for more details.

### Release post item creation reminders (`@release_post_manager`) due by the 10th

#### Initial reminders

**Due date: YYYY-MM-10**

1. [ ] Paste the following message in `#release-post`

```md
@product-team 📣 Release post reminders 📣

1. Today is the day to have your release post items created and in review by your PMM and TW counterparts.
2. Please follow the [file naming guidelines](https://about.gitlab.com/handbook/marketing/blog/release-posts/#instructions) as it affects the release post template as well as the release post team's ability to find release post items with ease.
3. Please work with your EM to add high-impact bugs to the [release-x-y-bugs MR](BUG_MR_LINK)
4. Please work with your Product Designers to highlight significant usability improvements in the [release-x-y-usability-improvements MR](USABILITY_MR_LINK)

cc: @fseifoddini @brhea
```

2. [ ] Paste the following message in `#development` and `#eng-managers`

```md
Your notable bugs and performance improvement MRs are ready to receive your contributions.

- BUG_MR_LINK
- PERFORMANCE_MR_LINK

cc: @fseifoddini @brhea
```

3. [ ] Paste the following message in `#ux_managers`

```md
Your notable usability improvement MR is ready to receive your contributions!

- USABILITY_MR_LINK

(Remember that we have to limit the content block to [notable improvements](https://about.gitlab.com/handbook/marketing/blog/release-posts/#contributing-to-usability-improvements) but you can add as many items as you'd like to the [UI Polish gallery](https://nicolasdular.gitlab.io/gitlab-polish-gallery/)`.)

cc: @fseifoddini @brhea
```

---

### General contributions (`@release_post_manager`) due by the 10th

The release post is authored following a changelog-style system. Each item should be in an individual YAML file. See the Handbook: [Contributing to the release post](https://about.gitlab.com/handbook/marketing/blog/release-posts/#general-contributions).

#### Content blocks

**Due date: YYYY-MM-10**

Product Managers are responsible for [raising MRs for their content blocks](https://about.gitlab.com/handbook/marketing/blog/release-posts/#pm-contributors) and ensuring they are reviewed by necessary contributors by the due date. Content blocks should also be added for any epics or notable community contributions that were delivered.

Product Managers are also responsible for making sure all [Tech Writing reviews (required), and PM Director and PMM reviews (recommended)](https://about.gitlab.com/handbook/marketing/blog/release-posts/#reviews) are done for their content blocks. To help reviewers prioritize what to review, PMs should communicate which content blocks are most important for review by applying the proper labels to the release post item MR prior to assigning the MR to reviewers. (ex: Tech Writing, Direction, Deliverable, etc). PMs can also [follow these guidelines](https://about.gitlab.com/handbook/marketing/blog/release-posts/#recommendations-for-optional-director-and-pmm-reviews) to help decide which content blocks should get PM Director and PMM reviews.

To enable Engineering Managers [to merge the content blocks](https://about.gitlab.com/handbook/marketing/blog/release-posts/#merging-content-block-mrs) as soon as an issue has closed, PMs should ensure all scheduled items have MRs created for them and have the Ready label applied when content contribution and reviews are completed.

_Reminder: be sure to reference your Direction items and Release features._ All items which appear
in our [Upcoming Releases page](https://about.gitlab.com/upcoming-releases/) should be included in the relevant release post.
For more guidance about what to include in the release post, check the [Product Handbook](https://about.gitlab.com/handbook/product/product-processes/#communication#release-posts).

#### Recurring content blocks

**Due date: YYYY-MM-10**

The following sections are always present and managed by the PM or Eng lead owning the related area. 

- [ ] Add GitLab Runner improvements: `@DarrenEastman`
- [ ] Add Omnibus improvements: `@dorrino`
- [ ] Add Mattermost update to the Omnibus improvements section: `@dorrino`

### Recurring items (`@release_post_manager`) 12th onward

#### Maintain (rebase) the branch

1. [ ] Occasionally rebase this MR by typing in the command `/rebase` in a new comment in this MR. This will help keep your branch up to date with `master`. Consult with the Tech Advisor as needed.

### Content assembly and initial review (`@release_post_manager`) 12th - 15th

Note: All the `Final Content Assembly` and `Structural Check` steps happen in sequence on the 18th starting ~8am PST (`America/Los_Angeles`). If the Release Post Manager and Technical Writer are in significantly different timezones, coordinate ahead of the 18th to understand how this could impact working hours for each team member. If need be, the time of initiating the `final content assembly` and the subsequent coordinated tasks can be shifted, as long as `Final content review` with the CEO and CProdO begins no later ~12pm PST on the 19th, to allow enough time for feedback and updates.

 **Due date: YYYY-MM-12**

1. [ ] Encourage team members to vote on MVP nominations in the `#release-post`, `#community-relations`, `#mr-coaching` and `#core` Slack channels by sharing a link to the [MVP Issue](MVP_ISSUE_LINK).
1. [ ] Remind PMs/EMs to contribute to the bugs, usability, and performance improvement MRs by commenting on the various Slack threads you initiated in `#release-post`, `#development` and `#eng-managers` by the 12th

#### General Content Review due by the 14th

**Due date: YYYY-MM-14**

As PMs finalize their release post items it can be helpful for the RPM to review and offer feedback. This reduces pressure on the 17th as items are merged and provides additional review from someone with a fresh perspective.

1. You can start as early as the 12th, but it should be an ongoing task leading up to content assembly on the 18th.
1. Review each MR labeled ~Ready for content that follows handbook guidance. See [What RPM should look for when reviewing content blocks](https://about.gitlab.com/handbook/marketing/blog/release-posts/#what-rpm-should-look-for-when-reviewing-content-blocks).
1. When you have finished reviewing a merge request, `Approve` it to clearly communicate who has reviewed and approved the content of the release post item.
1. Add the ~"rp manager reviewed" label to release post item MRs you have reviewed and approved. This may seem redundant, but it will allow you to search for release post items that have been merged before you have reviewed them.
1. It can also be helpful to filter MRs using the `Approved-By != <yourself>` to easily track what needs work.

**To track release post items you haven't reviewed, bookmark filtered MR lists similar to the following:**

1. [Release post item MRs with the ~Ready label](https://gitlab.com/dashboard/merge_requests?scope=all&state=opened&label_name[]=release%20post%20item&label_name[]=release%20post&label_name[]=Ready)
1. [Merged release post item MRs without the ~"rp manager reviewed" label](https://gitlab.com/dashboard/merge_requests?scope=all&state=merged&label_name[]=release%20post%20item&label_name[]=release%20post&label_name[]=Ready&not[label_name][]=rp%20manager%20reviewed&milestone_title=_MILESTONE_)
1. [Release post item MRs for this milestone](https://gitlab.com/dashboard/merge_requests?scope=all&state=opened&label_name[]=release%20post%20item&label_name[]=release%20post&milestone_title=_MILESTONE_)
1. [Deprecation item MRs (in the `gitlab` project) for this milestone](https://gitlab.com/gitlab-org/gitlab/-/merge_requests?scope=all&state=opened&label_name[]=release%20post%20item&label_name[]=release%20post%20item%3A%3Adeprecation&milestone_title=_MILESTONE_)

#### Various tasks and followups due by the 15th

 **Due date: YYYY-MM-15**

1. [ ] In the `#release-post` channel remind all PMs that have their release post item MRs merged by EOD on the 17th or bump the milestone if they know it won't make it.
1. [ ] No later than the 15th, if [final contnet review](#final-content-review) dates fall on a weekend, Family and Friends day or other holiday, post a message in Slack `#release-post` letting the final reviewers `@Sid` and `@david` know you'll be requsting review from them over the weekend. Cc the TW lead and Product Operatoins DRI
1. [ ] Provide [the list of the `primary` features](https://gitlab.com/dashboard/merge_requests?scope=all&state=opened&label_name[]=release%20post%20item&label_name[]=release%20post&milestone_title=_MILESTONE_&label_name[]=release%20post%20item%3A%3Aprimary) to VP of Product `@david` in `#release-post` and recommend a [top feature](https://about.gitlab.com/handbook/marketing/blog/release-posts/#top-feature).
  - Tip: If you're using an IDE such as VS Code, search for `primary:` and add `data/release_posts/X_Y` to the `files to include` input
1. [ ] Select a [cover image](https://about.gitlab.com/handbook/marketing/blog/release-posts#cover-image) for the release post
1. [ ] Verify that the selected cover image has not been used before.
  - Tip: MacOS users, navigate to the `source/images/` directory and use the search bar in the Finder to search for `cover`. Make sure the scope is set to only search **images**. This won't reveal all previous images, but the last couple of years have had pretty consistent naming.
1. [ ] On the `release-X-Y` branch, add the cover image to `source/images/X_Y/X_Y-cover-image.jpg`. Tip: Be sure to use an underscore (`_`) between release numbers, not a hyphen or dash (`-`).
  - Note that as you add references to the cover image throughout the release post branch, (including for social sharing) you need to match the filename and extension **exactly**. For example, if your image in the directory is `cover_image.jpg` but in another file, you reference it as `cover_image.jpeg`, it will not display as the extension does not match, so the file will not be found.
1. [ ] On the `release-X-Y` branch, in `sites/uncategorized/source/releases/posts/YYYY-MM-DD-gitlab-X-Y-released.html.md`, [add details about the source image](https://about.gitlab.com/handbook/marketing/blog/release-posts/#cover-image-license).
1. [ ] Choose an [MVP](https://about.gitlab.com/handbook/marketing/blog/release-posts/#mvp) for this release based on what's surfaced in the [MVP issue](MVP_ISSUE_LINK)
  1. [ ] If no MVP nominations have been added to the [MVP issue](MVP_ISSUE_LINK) by the 15th, send reminders in Slack with the link to the [MVP issue](MVP_ISSUE_LINK). An easy way to do this is to respond to your original Slack solicitation posts and resend to the whole channel.
  1. [ ] After one or more quality nominations have been received, choose one and notify the `#release-post` channel of your choice. Use this chance to confirm that the contribution your MVP choice was nominated for will make it into this release.
1. [ ] Before handing off the bugs, usability, and performance improvements MRs to the TW lead for final review, remind PMs/EMs about the content due date by revisiting and commenting on the Slack threads you created by the 10th in `#release-post`, `#development`, and `#eng-managers`. Let them know it's the "last call" and no further contributions to the MRs will be taken after the 15th.
1. [ ] In the threads of this MR, look for a GitLab Mattermost update, similar to [this example comment](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/78893#note_546017926). Thank the poster, then tag the [Distribution PM](https://about.gitlab.com/handbook/product/categories/#distribution-group) as an FYI and ask them to [check the box](#recurring-content-blocks) and resolve the thread.
1. [ ] If there are no [deprecation announcements for this milestone](https://docs.gitlab.com/ee/update/deprecations), do [a search](https://gitlab.com/gitlab-org/gitlab/-/merge_requests?scope=all&state=opened&label_name%5B%5D=release%20post%20item%3A%3Adeprecation) to see if there are any open or merged MRs for the current milestone.
  1. Depending on any discrepancies you find, engage the PMs in Slack `#release-post`
  1. If there are no deprecations MRs in the search, remind PMs to create deprecations MRs, if they have them for this milestone
1. [ ] Remind PMs to review existing deprecations on the [Docs page](https://docs.gitlab.com/ee/update/deprecations.html) in case any edits are needed.
1. [ ] Assign [Bug](BUG_MR_LINK) [Usability improvements](USABILITY_MR_LINK) and [Performance Improvement](PERFORMANCE_MR_LINK) MRs to the technical writer

### Final merge related tasks (`@release_post_manager`) due by the 17th

**Due date: YYYY-MM-17**

Engineering managers listed in the MRs are responsible for merging content blocks (release post item MRs) as soon as the implementing issue(s) are officially part of the release. All release post items must be merged on or before the 17th of the month. Earlier merges are preferred whenever possible. If a feature is not ready and won't be included in the release, the EM should push the release post item to the next milestone.

To assist managers in determining whether a release contains a feature. The following procedure [documented here](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/34519) is encouraged to be followed. In the coming releases, Product Management and Development will prioritize automating this process both so it's less error-prone and to make the notes more accurate to release cut.

---

 **Due date: YYYY-MM-17**

1. [ ] In the `#release-post` channel remind all PMs that it's the 17th, so they need to either have their EMs merge their release post item MRs or bump the milestone if they know it won't make it.
1. [ ] Mention the [Distribution PM](https://about.gitlab.com/handbook/product/categories/#distribution-group) in the `#release-post` channel, reminding them to add any relevant [upgrade warnings](https://about.gitlab.com/handbook/marketing/blog/release-posts/#important-notes-on-upgrading) by doing an [upgrade MR](https://about.gitlab.com/handbook/marketing/blog/release-posts/#upgrades).
1. [ ] Finalize your [MVP](https://about.gitlab.com/handbook/marketing/blog/release-posts/#mvp) selection and work with the person that nominated the MVP to write the MVP section in `data/release_posts/X_Y/mvp.yml` on the `release-X-Y` branch.
  1. [ ] On the `release-X-Y` branch, add the MVP's name and other profile info to `data/mvps.yml`.
- Use `/rebase` on the release post MR. If you receive an error that the rebase cannot be scheduled, resolve any conflicts appear in the merge request widget. If no conflicts appear, consult with the Tech Advisor to resolve them locally.
1. [ ] Merge [Bug](BUG_MR_LINK) [Usability improvements](USABILITY_MR_LINK) and [Performance Improvement](PERFORMANCE_MR_LINK) MRs
1. [ ] Perform a dry-run of the content assembly **without pushing to master** by completing the following commands:

```bash
  git checkout master
  git pull
  git checkout release-x-y
  git pull
  git merge master
  bin/release-post-assemble
```

- You should get a list of changed files. If no errors have been detected, use `git reset --hard` to return back to your last commit.
- If you get any errors, reach out to the Technical advisor for support and keep product operations and your TW lead informed as needed

### Content assembly (`@release_post_manager`) due on the 18th

**Due date: YYYY-MM-18** (18th at 8 AM PT and NO earlier)

1. [ ] Ping Product Operations `@brhea` to [generate the deprecations and removals indexes](https://about.gitlab.com/handbook/marketing/blog/release-posts/index.html#adding-deprecations-and-removals-index-to-www-gitlab-com).
  1. The release post manager will proceed with their tasks as this task will be completed by `@brhea` asyncrhonously prior to the publication date.
  1. However, if `@brhea` will be unavailable from the 18th through the 20th, collaborate with your technical advisor to complete the following steps yourself:
    1. [ ] Run `bin/rake gitlab:docs:write_deprecations` in the `gitlab` repo `@brhea`
    1. [ ] Run `bin/rake gitlab:docs:write_removals` in the `gitlab` repo `@brhea`
    1. [ ] Copy and paste the output files to the `data` directory in this repo `@brhea`
1. [ ] Post in Slack `#release-post` notifying the team content assembly has begun and any un-merged MRs should no longer be merged to `master`. Point them to this link for info on how to merge MRs after content assembly has begun `https://about.gitlab.com/handbook/marketing/blog/release-posts/#adding-editing-or-removing-merged-content-blocks-after-the-18th-and-before-the-22nd`
  1. [ ] Perform **final content assembly** by pulling all content block MRs merged to `master` into the release post branch [following these instructions in the handbook](https://about.gitlab.com/handbook/marketing/blog/release-posts/#content-assembly-merging-release-post-items-content-blocks-to-your-branch).

1. [ ] Do a visual check of the `release-X-Y` content block and image folders to make sure paths and names are correct
1. [ ] Make sure the **View App** button shows up in the MR as expected
1. [ ] Do a visual check of the blog post and ordering of content blocks for secondary items to confirm they are grouped by stage in descending alphabetical order.
1. [ ] Update the release post intro in the `sites/uncategorized/source/releases/posts/YYYY-MM-DD-gitlab-X-Y-released.html.md` with 4 primary features to highlight. To do this:
  1. [ ] Make sure to remove the backticks around the features
  1. [ ] Link the release post items mentioned in the intro to the item blocks within the release post. For example, for a feature named `"Define test cases in GitLab"`, the link from the introduction should point to `#define-test-cases-in-gitlab`.
  1. [ ] Count the feature blocks to get the total number of improvements and add it to the intro, replace the `XX` in `from the XX improvements` and remove the backticks in `sites/uncategorized/source/releases/posts/YYYY-MM-DD-gitlab-X-Y-released.html.md`. This count includes the top feature, primary features, secondary features, usability improvements, and performance improvements. Do not count bugs, upgrades, etc. **You should use an approximate count (i.e. 40+ instead of 43)** because the number can shift after the release post goes live.
  1. [ ] Replace the `XX` in `We thank our community for the XX contributions` with the count of merged milestones found in [this query](https://gitlab.com/gitlab-org/gitlab/-/merge_requests?label_name%5B%5D=Community+contribution&milestone_title=X.Y&scope=all&sort=popularity&state=merged). Remove the backticks as well.
  1. [ ] Change the entry for the [top feature](https://about.gitlab.com/handbook/marketing/blog/release-posts/#top-feature) from `primary` to `top` based on the feedback from VP of Product `@david`.
    1. If you did not receive feedback, you may either choose the feature you recommended or solicit feedback from `@product-team` in `#release-post`.

1. [ ] **Update the yml block that will announce the release post after it is published.**

The release post kickoff task has already created a branch and MR in the project that generates the homepage. But, you will need to update a few fields with information about this release post.

You will be updating the contents of the `card` block that has `event_type: "Release"`.

  1. [ ] [Follow this link](https://gitlab.com/-/ide/project/gitlab-com/marketing/digital-experience/buyer-experience/edit/X-Y-release-post-changes/-/content/index.yml#:~:text=event_type%3A%20Release%0A) to edit the contents of `index.yml` in the `X-Y-release-post-changes` branch.
    1. (If the link doesn't take you directly to the section to edit, use your browser's find command to search for `event_type: "Release"` to quickly locate the yml block you will be updating.)
  1. [ ] Update `header` and `data_ga_name` with a copy/paste of the blog title. For example, `GitLab X.X released with Feature A and Feature B`.
  1. [ ] Update the `href` line with the URL of the blog. For example, `/releases/2021/06/22/gitlab-14-0-released/`.
  1. [ ] Update `image` (line 119) to the current version (note that we have pre-made all 15_*.png images, anything beyond that may need a design resource). Example: `/nuxt-images/home/resources/15_1.png`
  1. [ ] Commit your changes with a commit message of "Updates to release post homepage content"
  1. [ ] Add `@mpreuss22` and an engineer on the [Digital Experience team  Conversion Group](https://about.gitlab.com/handbook/marketing/digital-experience/#groups-metrics--team-members) as a Reviewer (commonly, `@justin.vetter` or `@tywilliams`).
  1. [ ] Ping `@mpreuss22` or `@justin.vetter` in `#digital-experience-team` on Slack to review the changes, with a [link to your MR](BUYER_EXPERIENCE_LINK).

1. [ ] Ensure that the social media sharing text for the click to tweet button on the bottom of the release post page is available in the introduction of the release post page.
1. [ ] Notify the PM team in the `#release-post` channel that final content assembly has happened and all work must now shift from `master` to the release post branch via coordination with the release post manager.
  1. Include a link to how to merge MRs after the 18th `https://about.gitlab.com/handbook/marketing/blog/release-posts/#adding-editing-or-removing-merged-content-blocks-after-the-18th-and-before-the-22nd`
  1. Include a link to the review app (**View App**) page, asking them to make sure all their content is showing up as expected with correct image/video links, etc.

### Hand off for TW review (`@release_post_manager`) due on the 18th

**Due date: YYYY-MM-18**

1. [ ] Label this MR: ~"blog post" ~release
1. [ ] Make sure there are no broken links in the review app (**View App**) page (use a dead link checker like [Check my Links](https://chrome.google.com/webstore/detail/check-my-links/ojkcdipcgfaekbeaelaapakgnjflfglf))
  1. [ ] Links to confidential issues may be missed. It is helpful to check for broken links as an unauthenticated GitLab user (either logged out, in another browser, or in Incognito mode).
  1. [ ] If there are links to external blogs that are still broken in the review app, check with PMs and others as needed to make sure the referenced blogs go live before the 22nd.
1. [ ] Check all comments in the MR thread (make sure no contribution was left behind).
1. [ ] Make sure all discussions in the thread are resolved.
1. [ ] Confirm the list of deprecations and removals in the release post reflects the [deprecations](https://docs.gitlab.com/ee/update/deprecations.html) and [removals](https://docs.gitlab.com/ee/update/removals.html) in docs. On the docs pages, all `H2` titles that apply to the release should be listed as bullets at the bottom of the release post. Ping `@brhea` and `@fseifoddini` in `#x-y-release-post-prep` if there is a mismatch.
1. [ ] If the pipeline is failing, confirm all release post content blocks have the right formatting. Common issues include extra spaces, missing quotes, or missing `---` at the beginning and end. If you are unable to locate these items, give the TW lead a heads up and proceed with TW Lead structural check.
1. [ ] Assign the MR to the next reviewer (Technical Writer lead) and ping them to complete the [structural check](#structural-check)
1. [ ] Ask the Technical Advisor in Slack `#X-Y-release-post-prep` channel to prep handoff of any release post issues to the next Technical Advisor by referencing [TA handoff](https://about.gitlab.com/handbook/marketing/blog/release-posts/#handoff)

### Final content review (`@release_post_manager`)

In the run-up to publishing the release post on the 22nd, some release post managers have found it helpful to [post a daily summary](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13791#note_1073158756) to the team in `x-y-release-post-prep`. This is not a requirement, but it can prove helpful to communicate status to the rest of the team and invite feedback if something is missed or off-track.

**Due date: YYYY-MM-19**

**Note: The final review should happen after the TW Lead [structural check](#structural-check) is complete.**

#### Verify content and post for review

1. [ ] Check to be sure there are no broken links in the View app (use a dead link checker like [Check my Links](https://chrome.google.com/webstore/detail/check-my-links/ojkcdipcgfaekbeaelaapakgnjflfglf).
1. [ ] Check [deprecations in Docs](https://docs.gitlab.com/ee/update/deprecations) to see if there were any deprecations listed with a _planned removal date_ for the current milestone. If so, make sure that you see those deprecations listed in the removals section of your release post page (View App). If there's any missing, alert the PM DRI to get it resolved.
1. [ ] Mention `@Sid`, `@david` in the `#release-post` channel when the post has been generated for their review per these [communication guidelines](https://about.gitlab.com/handbook/marketing/blog/release-posts/#communication).
1. [ ] Capture any feedback from Slack into a single comment on the Release Post MR with action items assigned to the DRIs to address. Check the [content review guidelines](https://about.gitlab.com/handbook/marketing/blog/release-posts/#content-reviews) for more details.

#### Incorporating Feedback

1. [ ] Make sure all feedback from CEO and Product team reviews have been addressed by working with the DRIs of those areas as needed.
1. [ ] If you receive feedback about the ordering of the primary Items, you might need to adjust the order.
1. [ ] If needed. re-order secondary items by adjusting the `titles` in the content blocks. More information to consider about altering secondary items in the [content review guidelines](https://about.gitlab.com/handbook/marketing/blog/release-posts/#content-reviews) and [feature order technical instructions](https://about.gitlab.com/handbook/marketing/blog/release-posts/#feature-order)
1. [ ] Make sure there are no open feedback items in this MR or in the `#release-post` channel.
1. [ ] On the 20th, ping Product Operations DRI (`@fseifoddini` ) for final check in the `#release-post` channel. You should also assign them as a reviewer to the release post merge request.
1. [ ] After the Product Operations review, the Product Operations DRI (`@fseifoddini` ) will `approve` the release post merge request
1. [ ] After content assembly on the 18th and by 10 AM PDT on the 20th, the RPM will identify the 3-7 items for **What's New** and create the MR by following the guidance in [Creating an MR for What's New entries](https://about.gitlab.com/handbook/marketing/blog/release-posts/index.html#creating-an-mr-for-whats-new-entries).
  1. [ ] Post the following message in `#backend_maintainers` on Slack:
    > I am the release post manager for XX.Y and will need help merging in the "What's new" notification following the publication of the release post. This will be a time-sensitive MR on the 22nd. Could I please request a volunteer or two to be ready and available to help merge the MR when I have it ready to go? Thanks! cc: @a_akgun
  1. [ ] The RPM will create and finalize the MR draft by 11:59 PDT on the 21st.
  1. [ ] The RPM will tag in What's New DRIs Product Operations `@fseifoddini` and `@brhea` as Reviewers, to review and Approve.
  1. [ ] The RPM will tag in any maintainers who respond to the above message in `#backend_maintainers` as Reviewers, to review and Approve.
  1. [ ] The RPM will merge the MR after the release post is live on the 22nd and images have been checked to load correctly locally.

---

### Prepare and merge to `master` (`@release_post_manager`) 20th - 22nd

**Due date: YYYY-MM-20**

1. [ ] Check if the number of features you added in the introductory paragraph has changed. To get the number, do a hand count of just the features (top, primary, secondary) in `/data/release_posts/X_Y`, and also count the number of items in the performance improvements and the usability improvements files in the current `release-X-Y` branch. Do not include bugs, upgrades, etc. You can use an approximate count (i.e. 40+ instead of 43). Remove the backticks around the number if you have not already.
1. [ ] Check if the number of [merged community contributions](https://gitlab.com/gitlab-org/gitlab/-/merge_requests?label_name%5B%5D=Community+contribution&milestone_title=X.Y&scope=all&sort=popularity&state=merged) you added in the introductory paragraph has changed. Remove the backticks around the number if you have not already.
1. [ ] Use `/rebase` on the release post MR. If you receive an error that the rebase cannot be scheduled, resolve any conflicts that appear in the merge request widget. If no conflicts appear, consult with the Tech Advisor to resolve them locally.
1. [ ] Alert the product team of the top/primary items in Slack.
  1. PMs can use `[this query](https://gitlab.com/gitlab-org/gitlab/-/merge_requests?scope=all&utf8=%E2%9C%93&state=merged&milestone_title=X.Y&not%5Blabel_name%5D%5B%5D=released%3A%3Acandidate)` (update it with the current milestone) and check with their EMs to verify the features did make it into the release.
  1. Post in the `#release-post` channel:

  ```md
  _Hello PMs! The following features are top/primary!_

  (Provide link to review app (**View App**) and tag the PMs for the top/primary features listed in the release post).

  _Please let us know if any of your merged primary release post items shifted out of the release after the 18th and will not make it into the final release packages by the 22nd._
  ```


5. Top/Primary items can move.
  1. It is the Release Post Manager's responsibility to make sure any top/primary items mentioned in the introduction are accurate prior to the 22nd, because release post items can sometimes move in/out of the packaged release after the 18th, and this could affect the themes, headline, etc.
  1. If you learn that any top/primary items have moved in/out of the packaged release after the 18th, communicate this directly to stop or start associated actions, with the DRIs for:
    1. [Technical Marketing](https://about.gitlab.com/handbook/marketing/strategic-marketing/technical-marketing/) (the TMM team), who produce demo videos per release.
    1. [Social Marketing](https://about.gitlab.com/handbook/marketing/corporate-marketing/social-marketing/), who produce feature campaigns per release.
    1. [Corporate Communications](https://about.gitlab.com/handbook/marketing/corporate-marketing/corporate-communications/), who lead media outreach and may have produced a press release
    1. Any other related efforts you're aware of, for example related blog posts.
6. [ ] Post a comment in the `#whats-happening-at-gitlab` channel.
  ```md
  Hey all!
  This month's release post is almost ready!
  Take a look at the preview and either report any problems in `#release-post`, or leave a comment to the release post MR.
  MR: RP_MR_LINK
  Review app (this link is temporary and should only be shared internally):
  https://release-X-Y.about.gitlab-review.app/releases/YYYY/MM/DD/gitlab-X-Y-released/index.html
  cc @release_post_manager @fseifoddini @brhea
  ```

**Due date: YYYY-MM-21**

1. [ ] Mention `@community-team` in the `#community-relations` channel to ask them to send the swag pack to the MVP.
1. [ ] Check if all the anchor links in the intro are working.
1. [ ] Confirm there are no broken links in the review app (**View app**) with a dead link checker like [Check my Links](https://chrome.google.com/webstore/detail/check-my-links/ojkcdipcgfaekbeaelaapakgnjflfglf)).
1. [ ] Check the total feature count statement in the introductory paragraph to make sure the number stated is accurate, and if not, update it. To get the number, do a hand count of the top feature, primary features, secondary features, and performance improvements (do not count bugs, upgrades, etc.) in `/data/release_posts/X_Y` on the current `release-X-Y` branch.
1. [ ] Use the [`/rebase` quick action](https://docs.gitlab.com/ee/user/project/quick_actions.html) to rebase `master` on to the `release-x-y` branch. If you receive an error that the rebase cannot be scheduled, consult with `@brhea` or the Tech Advisor.
1. [ ] Check to make sure all unresolved threads on this MR are resolved and there are no merge conflicts. If you need help resolving merge conflicts or other technical problems, ask for help from the [Technical Advisor](https://about.gitlab.com/handbook/marketing/blog/release-posts/#technical-advisors) in the `#dev-escalation`channel in Slack then cross-post to the `#release-post` channel to make others aware.
1. [ ] In the `#releases` channel, post the following: " I'm the release post manager for X.Y. I'll be awaiting your cue that packages have been released to push the release post live. Please let me know if there are any changes to the typical timeline."

**Due date: YYYY-MM-22**

##### At 12:30 UTC

1. [ ] Read the [important notes](#important-notes) below
1. [ ] Say hello in the `#releases` channel to let the release managers know you're online and awaiting their signal in `#release-post` to start the release post's merge process.
  1. Release Managers will alert you in `#release-post` if there are any issues with the release. You can follow along on the release issue to see the packaging progress on the 22nd. Check the [issue list](https://gitlab.com/gitlab-org/release/tasks/-/issues/) to find the issue ([example issue](https://gitlab.com/gitlab-org/release/tasks/-/issues/1261)). The `#releases` channel is also a good place to track any updates or announcements.
  1. If everything is okay, the packages should be published around [13:30 UTC](https://gitlab.com/gitlab-org/release-tools/-/blob/fac347e5fc4e1f31cffb018d90061ef4f25747f3/templates/monthly.md.erb#L104-125), and available publicly around 14:10 UTC.
1. [ ] Check to make sure there aren't any alerts on in the `#release-post` and `#whats-happening-at-gitlab` channels.
1. [ ] Check to make sure there aren't any alerts on this MR or merge conflicts.

##### When packages are published (usually around 13:30 UTC)

After the release manager confirms that the packages are publicly available by pinging you in Slack:

1. [ ] Announce to the team in the `#release-post` channel that you are starting the final merge process, you will reach out for help if the MR fails, and that you will lead collaboration with the appropriate team members to resolve any problems.
  1. Depending on the complexity of the failure it is recommended that you first try to resolve the issue yourself and then reach out to the `#dev-escalation` channel per [What to do if your pipeline fails or you have other technical problems](#What-to-do-if-your-pipeline-fails-or-you-have-other-technical-problems).
1. [ ] Add the MR to the merge train
1. [ ] Wait for the pipeline. This can take anywhere from 20-45 minutes to complete.
1. [ ] Check the live URL on social media (after the MR is merged) with [Meta Tags](https://metatags.io/). Make sure that in both cases, you can see the cover image of the release post displayed along with social sharing copy
  1. If the cover image is not displaying or you see other error messages, resolve these issues by consulting with the Tech Advisor, Product Operations, or Social team as needed.
  1. You may get a warning from Facebook that says `Missing Properties - The following required properties are missing: fb:app_id` - this can be ignored.
1. [ ] Check for broken links again after the post is live.
1. [ ] Hand off social posts to the social team and confirm that it's ready to publish: Mention `@social` in the `#release-post` Slack channel. Be sure to include the live URL link and social media copy (you can copy/paste the final copy from the review app).
1. [ ] Share the links to the post on the `#release-posts` and `#whats-happening-at-gitlab` channels in Slack.
1. [ ] Ping an engineer on the [Digital Experience Conversion Group team](https://about.gitlab.com/handbook/marketing/digital-experience/#groups-metrics--team-members) to merge the homepage update MR (link to the MR should be found in [here](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/merge_requests)).

##### After the MR is merged

1. Keep an eye on Slack and in the blog post comments for a few hours to make sure no one found anything that needs fixing.

#### What to do if your pipeline fails or you have other technical problems

For assistance related to failed pipelines or eleventh-hour issues merging the release post, reach out to release post [technical advisors](https://about.gitlab.com/handbook/marketing/blog/release-posts/#technical-advisors) for assistance in the `#dev-escalation` Slack channel. Cross-post the thread from `#dev-escalation` in `#release-post` so all Product Managers and release post stakeholders are aware of status and delays.

##### Important notes

1. The post is to be live on the **22nd** at **15:00 UTC**. It should be merged as soon as GitLab.com is up and running on the new release version (or the latest RC that has the same features as the release), and after all packages are publicly available. Not before. Ideally, merge it around 14:20 UTC as the pipeline takes about 40 min to run.
1. The usual release time is **15:00 UTC** but it varies according to the deployment. If something comes up and delays the release, the release post will be delayed with the release.
1. Coordinate the timing with the [release managers](https://about.gitlab.com/community/release-managers/). Ask them to keep you in the loop. Ideally, the packages should be published around 13:30-13:40, so they will be publicly available around 14:10 and you'll be able to merge the post at 14:20ish.
1. After the release post is live, wait a few minutes to see if anyone spots an error (usually posted in the `#whats-happening-at-gitlab` or `#company-fyi` channels), then follow the `handoff to social team` checklist item above.
1. The tweet to share on Slack will not be live, it will be scheduled during a peak awareness time on the 22nd. After the tweet is live, the social team will share the tweet link in the `#release-post` and `#whats-happening-at-gitlab` Slack channels.

---

## Other reviews

Ideally, the team should complete all the reviews by the 19th of the month, so that the 2 days before the release can be left for fixes and small improvements.

### [Structural check](https://about.gitlab.com/handbook/marketing/blog/release-posts/#structural-check)

**Due date: 18th** (`@tw_lead`)

The structural check is performed by the technical writing lead: `@tw_lead`

Before starting the structural check:

1. [ ] Ensure that the [docs release process](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/doc/releases.md) **is started** (but not completed). This process should start around the same time as the release post structural check, and be completed soon after the release post goes live.

When starting the structural check:

For suggestions that you are confident don't need to be reviewed, change them locally
and push a commit directly to save the PMs from unneeded reviews. For example:

1. Clear typos, like `this is a typpo`
1. Minor front matter issues, like single quotes instead of double quotes, or vice versa
1. Extra whitespace

For any changes to the content itself, make suggestions directly on the release post
diff, and be sure to ping the reporter for that block in the suggestion comment, so
that they can find it easily.

In the `www-gitlab-com` repository:

1. [ ] Check [frontmatter](https://about.gitlab.com/handbook/marketing/blog/release-posts/#frontmatter) entries and syntax.
1. [ ] Check that the item's `name` contains backticks when referring to code. (Previously we had to use single quotes, but backticks work now.)
1. [ ] Check all images (png, jpg, and gifs) are smaller than 150 KB each.
1. [ ] Remove any `.gitkeep` files accidentally included.
1. [ ] Add or check `cover_img:` license block in `releases/posts/YYYY-MM-DD-gitlab-XX-Y-released.html.md`. Should include `image_url:`, `license:`, `license_url:`.
1. [ ] Search for `available_in: [free, premium, ultimate]` and change to `available_in: [core, premium, ultimate]`.

In the review app:

1. [ ] Check that images match the context in which they are used, and are clear.
1. [ ] Check for duplicate entries.
1. [ ] Search for the text `gitlab-ci.yml` and ensure there is a period before the filename, for example, `.gitlab-ci.yml`.
1. [ ] Check that features introduced in this release do not mistakenly reference previous releases (this often happens after features slip to a future release after an RPI is already written). If, for example, the current release is 13.8, and an item reads: _"In GitLab 13.7 we introduced XXX..."_, this means the feature most likely slipped to 13.8. In that case, correct the text to _"In GitLab 13.8 we introduced XXX..."_. A search for two or three previous release numbers ("13.7", "13.6", and "13.5" in our example) in the review app should be enough to spot this.
1. [ ] Check all dates mentioned in entries, ensuring they refer to the correct year.
1. [ ] Check the anchor links in the intro. All links in the release post markdown file should point to something in the release post YAML file.
1. [ ] Check for structural consistency between release post items. Check for consistent use of white space, lists, and punctuation.
1. [ ] Run a dead link checker like [Check my Links](https://chrome.google.com/webstore/detail/check-my-links/ojkcdipcgfaekbeaelaapakgnjflfglf) and ping reporters directly on Slack asking them to fix broken links.
  1. [ ] Links to confidential issues may be missed. It is helpful to check for broken links as an unauthenticated GitLab user (either logged out, in another browser, or in Incognito mode).
1. [ ] Run a spelling check against the release post's review app (**View app**) page. For example, you can use [Webpage Spell-Check](https://chrome.google.com/webstore/detail/webpage-spell-check/mgdhaoimpabdhmacaclbbjddhngchjik?hl=en) for Google Chrome.
1. [ ] Confirm the list of deprecations and removals in the release post reflects the [deprecations](https://docs.gitlab.com/ee/update/deprecations.html) and [removals](https://docs.gitlab.com/ee/update/removals.html) in docs. On the docs pages, all `H2` titles that apply to the release should be listed as bullets at the bottom of the release post. Ping `@brhea` and `@fseifoddini` in `#x-y-release-post-prep` if there is a mismatch.

In general:

1. [ ] Report any problems from the structural check in the `#release-post` channel by pinging the reporters directly for each problem. Do NOT ping `@all` or `@channel`, and do NOT leave a general message that no one will pay attention to. If possible, ensure open discussion threads in this merge request track any issues.
1. [ ] Ping the release post manager in Slack `#X-Y-release-post-prep` to let them know your review is over and they can start [final content review](#final-content-review)
1. [ ] `Approve` the release post merge request to communicate you have completed your tasks
1. [ ] Within 1 week, update the release post templates and release post handbook with anything that comes up during the process.

---

## Release highlights

`@pmm_lead` shares the release highlights to be distributed to the PR and Field Enablement teams on or before 22nd of the month. Detailed process [here](https://about.gitlab.com/handbook/marketing/blog/release-posts/#pmm-lead).

1. [ ] Create Product marketing issue with PMM-Release-Post template
1. [ ] Create release highlights - 3-4 themes with description
1. [ ] Share with PR and Field enablement team and tag release post manager

/label ~"blog post" ~release ~"release post" ~"priority::1"
/assign @release_post_manager
/milestone %_MILESTONE_
