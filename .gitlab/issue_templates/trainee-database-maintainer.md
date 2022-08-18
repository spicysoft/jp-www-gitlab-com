## Basic Setup

Thank you for becoming a database trainee! Please work on the list
below to complete your setup.

- [ ] Change issue title to include your name: `Database Trainee Maintainer: Your Name`
- [ ] Review general [code review guidelines](https://docs.gitlab.com/ee/development/code_review.html)
- [ ] Familiarize with [database review process](https://docs.gitlab.com/ee/development/database_review.html)
- [ ] Familiarize with [migration helpers](https://gitlab.com/gitlab-org/gitlab/blob/master/lib/gitlab/database/migration_helpers.rb) and review usage in existing migrations
- [ ] Familiarize with best practices in [database guides](https://docs.gitlab.com/ee/development/database/index.html)
- [ ] Watch [Optimising Rails Database Queries: Episode 1](https://www.youtube.com/watch?v=79GurlaxhsI)
- [ ] Read [Understanding EXPLAIN plans](https://docs.gitlab.com/ee/development/database/understanding_explain_plans.html)
- [ ] Get yourself added to [`@gl-database`](https://gitlab.com/groups/gl-database/-/group_members) group and respond to @-mentions to the group (reach out to any maintainer on the group to get added). You will get TODOs on gitlab.com for group mentions.
- [ ] Make sure you have proper access to at least an archive replica in production and a read-only replica in staging and production
- [ ] Indicate in [your team member entry](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/team_database.md) your role as a database reviewer ([example MR](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/19600/diffs)). Assign MR to your manager for merge.
- [ ] Once you are comfortable as a reviewer add `trainee_maintainer database` to your role
      in [your team member entry](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/team_database.md).
      Trainee maintainers count as reviewers and are [three times as likely to be picked as other reviewers](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/development/code_review.md#reviewer-roulette)
- [ ] Send one MR to improve the [review documentation](https://docs.gitlab.com/ee/development/database_review.html)
- [ ] _Optional:_ [Consider finding a mentor](https://about.gitlab.com/handbook/engineering/workflow/code-review/#trainee-maintainer-mentorship-pilot-program) to help you become a maintainer.

Note that *approving and accepting* merge requests is *restricted* to
Database Maintainers only. As a reviewer, pass the MR to a maintainer
for approval.

You're all set! Watch out for TODOs on GitLab.com.

## Working towards becoming a maintainer

There is no checklist here, only guidelines. Remember that there is no specific timeline on this.

It is up to you to ensure that you are getting enough MRs to review, and of
varied types. After you've added yourself as a Database Reviewer,
you should already be receiving regular reviews from Reviewer Roulette.
You could also seek out more reviews from your team, or on `#backend`/`#database` Slack channels.

Your reviews should aim to cover maintainer responsibilities as well as reviewer
responsibilities. Your approval means you think it is ready to merge.

After each MR is merged or closed, add a discussion to this issue using this
template:

```markdown
### (Merge request title): (Merge request URL)

During review:

- (List anything of note, or a quick summary. "I suggested/identified/noted...")

Post-review:

- (List anything of note, or a quick summary. "I missed..." or "Merged as-is")

(Maintainer who reviewed this merge request) Please add feedback, and compare
this review to the average maintainer review.
```

**Note:** Do not include reviews of security MRs because review feedback might
reveal security issue details.

**Tip:** There are [tools](https://about.gitlab.com/handbook/tools-and-tips/#trainee-maintainer-issue-upkeep) available to assist with this task.

## When you're ready to make it official

When reviews have accumulated, and recent reviews consistently fulfill
maintainer responsibilities, any maintainer can take the next step. The trainee
should also feel free to discuss their progress with their manager or any
maintainer at any time.

1. [ ] Create a merge request updating [your team member entry](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/team_database.md) using [the template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/.gitlab/merge_request_templates/Database%20maintainer.md) proposing yourself as a database maintainer, assigned to your manager.
2. [ ] Get yourself added to [`@gitlab-org/maintainers/database` group](https://gitlab.com/gitlab-org/maintainers/database) (this group is recognized in [CODEOWNERS](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/.gitlab/CODEOWNERS)). Reach out to any existing maintainer.
3. [ ] Keep reviewing, start merging :metal:

/label ~"trainee maintainer" ~Database

## Where to go for questions?

Reach out to `#database` on Slack.
