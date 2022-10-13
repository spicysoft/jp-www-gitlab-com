<!--
This MR template is used by the [release post branch creation task](https://about.gitlab.com/handbook/marketing/blog/release-posts/#release-post-branch-creation-rake-task) to generate bugs, UX, and performance improvement contributions for the Release Post.
-->
# Key dates & Review

- [ ] By the 10th, `@release_post_manager` informs EMs/PMs/PDs to draft/submit Usability improvements, Bugs, or Performance improvements via this MR per [release post MR task list item](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post.md#release-post-item-creation-reminders-release_post_manager)
- [ ] On 15th, no earlier than 5pm PT, `@release_post_manager` assigns MR to `@tw_lead` for review and applies label `in review`
  - If there are no usability improvements, alert UX DRI `@vkarnes` in this MR and ask for direction.
  - If there are no bug fixes or performance improvements, modify the content of this MR, referencing bugs or performance improvements as appropriate. For example, if you have no performance improvement highlights, you will change the copy from

       > In GitLab 14.8, we're shipping performance improvements for issues, projects, milestones, and much more!

       to:

       > In GitLab 14.8, we're shipping performance improvements for issues, projects, milestones, and much more! You can see the full list [here](https://gitlab.com/gitlab-org/gitlab/-/issues?sort=created_date&state=closed&milestone_title=14.8&label_name[]=bug::performance).

       Prior to merging the updated content, mention Product Operations DRI `@fseifoddini` in a comment on this MR.
- [ ] By the 16th: `@tw_lead` reviews, applies the `ready` label and assigns  to `@release_post_manager`
- [ ] By the 17th: `@release_post_manager` merges the MR into the main / master branch, prior to final content assembly

/assign @release_post_manager
/milestone %_MILESTONE_

/label ~"release post" ~"release post item" ~"Technical Writing"
