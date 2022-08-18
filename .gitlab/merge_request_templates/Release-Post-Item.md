<!-- Set the correct label and milestone using autocomplete for guidance. Please @mention only the DRI(s) for each stage or group rather than an entire department. -->

/label ~"release post" ~"release post item" ~"Technical Writing" ~"devops::" ~"group::"
/milestone %
/assign `@PM`

Team members for review and approval: Engineer(s): `@engineers` | Product Marketing: `@PMM` | Tech Writer: `@TW`  | Product Designer(s): `@ProductDesigners`

Engineering Manager to merge when the feature is deployed and enabled: `@EM`

**Important note on tier labels: Until further notice, due to change management reasons, please leverage label `core` to indicate 'free' tier in all code and templates.**

Please review the guidelines for content block creation at https://about.gitlab.com/handbook/marketing/blog/release-posts/#content-blocks.
They are frequently updated, and everyone should make sure they are aware of the current standards (PM, PMM, EM, and TW). There are [separate (and slightly different) templates](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/release_posts/unreleased/samples) for primary and secondary features, bugs, removals, and upgrade notes. _Please make sure to use the right template!_

Please be aware [deprecations follow a different process in a different project](https://about.gitlab.com/handbook/marketing/blog/release-posts/#creating-a-deprecation-entry) and you should not be using this MR template unless you are making edits to a release post prior to 14.4.

## Links

- Feature Issue (required):
- Pricing theme MR (required for primary features in Premium or Ultimate only): 
- Feature MR (optional):
- Feature Flag Issue (optional):

## Key dates

- **By the 10th:** PMs should draft/submit for review ALL release post item content, whether they are feature or recurring blocks, earlier and no later than the 10th of the month.
- **By the 16th:** All required TW reviews as well as any optional PMM and PM Director/Group Manager reviews and resulting revisions should get done no later than the 16th of the month.
- **By the 17th:** Release post items need to be marked with the ~"Ready" label in order to be merged for the current release post.
- **By end of day 17th:** EMs will merge RP items with the ~"Ready" label by the end of day 11:59PM PT on the 17th. Any MRs merged into **master** after 11:59PM PDT will not make the release post and need to follow this process:

If you need to make a change or addition to a release post item **after** 11:59PM PT on the 17th, open a new MR targeting the `release-X-Y` branch and assign to the Release Post Manager, with `@mention` of the lead Tech Writer and PMM. Please **do not** re-target the existing MR. It is important you follow the instructions on how to create a new MR to the release X-Y branch in [Adding, editing, or removing merged content blocks after the 18th and before the 22nd](https://about.gitlab.com/handbook/marketing/blog/release-posts/#adding-editing-or-removing-merged-content-blocks-after-the-18th-and-before-the-22nd). **It's highly recommended the PM connect with the release post manager to make sure content can still be added prior to creating the new MR.**

Notes: Drafting release post content well in advance of the 10th is highly recommended, so reviews/revisions can happen in a rolling fashion and not bottleneck against the 17th merge due date.

## Getting ready for merge

**Reminder: Make sure any feature flags have been enabled or removed!**

Once all content is reviewed and complete, add the ~"Ready" label and set the Engineering Manager (EM) as the Assignee. The EM is responsible for merging as soon as the implementing feature is deployed to GitLab.com, after which this content will appear on the [GitLab.com Release page](https://about.gitlab.com/releases/gitlab-com/) and can be included in the next release post. All release post items must be merged on or before the 17th of the month. If a feature is not ready by the 17th due date, the EM should push the release post item to the next milestone.

## PM release post item checklist
<details>
<summary>Expand for Details </summary>

**Please only mark a section as completed once you performed all individual checks!**

- [ ] Set yourself as the Assignee.
- [ ] **Why?** – The benefit of this feature to the user is clearly explained
  - What is the problem we are solving for the user, and how is the situation improved?
  - Be specific about the problem, using examples so that the reader can recall the last time they had that problem.
  - Be specific about the solution, using examples so that the reader can quickly understand the improvement.
  - Describe the benefits in terms of outcomes like productivity, efficiency, velocity, communication.
  - Avoid feature language, like removing a limitation, that focusses on the product and not our users.
  - Avoid assumed knowledge, assume a customer or prospect will be linked this description without context.
- [ ] Title:
  - Length limit: 7 words (not including articles or prepositions). Exceptions may be allowed by the [Release Post Manager](https://about.gitlab.com/handbook/marketing/blog/release-posts/#release-post-manager) or the [Messaging Lead](https://about.gitlab.com/handbook/marketing/blog/release-posts/#messaging-lead).
- [ ] Content:
  - Make it clear if it is a new feature, or an improvement to an existing feature.
  - If your item is a [deprecation](https://about.gitlab.com/handbook/marketing/blog/release-posts/#deprecations), [upgrade](https://about.gitlab.com/handbook/marketing/blog/release-posts/#upgrades) or [removal](https://about.gitlab.com/handbook/marketing/blog/release-posts/#removals) reference the appropriate section in the release-posts handbook page for guidance. Please also see [communication guidelines](https://about.gitlab.com/handbook/marketing/blog/release-posts/#communicating-breaking-changes) for breaking changes.
  - Make sure your [content](https://about.gitlab.com/handbook/marketing/blog/release-posts/#content) is reasonably aligned with guidance in [Writing about features](https://about.gitlab.com/handbook/product/product-processes/#communication#writing-about-features)
  - Check title is in [sentence case](https://design.gitlab.com/content/punctuation#case), and feature and product names are in capital case.
  - Run the content through an automated spelling and grammar check.
  - Validate all links are functional and have [meaningful text](https://about.gitlab.com/handbook/communication/#writing-style-guidelines) for SEO (e.g., "click here" is bad link text).
- [ ] [Images](https://about.gitlab.com/handbook/marketing/blog/release-posts/#images) and [Video](https://about.gitlab.com/handbook/marketing/blog/release-posts/#videos):
  - Screenshot or video is included (required for all changes with a visible UI component). Consider preferring a speed run video since this will showcase your feature better, and also serve as a functional test to validate that it actually works as expected.
  - Check that the image follows the [image guidelines](https://about.gitlab.com/handbook/marketing/blog/release-posts/#images). It should be less than 150kb, and minimizes empty space. You may need to make your browser window smaller before taking the screenshot to bring UI elements closer together, or crop the image afterwards.
  - Check if the image shadow is applied correctly. Add `image_noshadow: true` when an image already has a shadow.
  - Ensure the videos added to the frontmatter use `/embed`, not `/watch`, URLs (e.g. `https://www.youtube-nocookie.com/embed/eH-GuoqlweM`) [more info here](https://about.gitlab.com/handbook/marketing/blog/release-posts/#videos).
  - Ensure that the YouTube link points to the `https://www.youtube-nocookie.com` domain as this will allow the video to render in the review app correctly.
  - Ensure videos and iframes added within the feature description are wrapped in `<figure class="video_container">` tags (for responsiveness).
  - [Clean up video captions](https://www.youtube.com/watch?v=uJnhnA1fELY); auto-generated captions often mangle technical terms.
  - Ensure screenshots have realistic looking data. Avoid screenshots that say "test", "demo", "example".  
  - Remove any remaining instructions (comments).
- [ ] Frontmatter:
  - Check feature availability frontmatter (`available_in:`) is correct: (Core, Premium, Ultimate). Make sure to set `gitlab_com: false` when the [feature isn't available](https://about.gitlab.com/handbook/marketing/blog/release-posts/#feature-availability) for GitLab.com users. Settings are also available for features only available for GitLab.com users.
  - Check documentation link points to the latest docs (`documentation_link:`), and includes the anchor to the relevant section on the page if possible. If documentation is not yet available/merged for the feature in question, you may use a placeholder or use the link where the documentation will be added (often the engineer and tech writer know this ahead of time). Be sure to update this placeholder prior to publication if you do not use the final link.
  - Check that documentation is updated, very clearly talks about the feature (mentions it by the same name consistently in all resources).
  - Check that all links to `about.gitlab.com` content are relative URLs.
- [ ] For any top or [primary features](https://about.gitlab.com/handbook/marketing/blog/release-posts/#primary-vs-secondary):
  - Be sure to include or revise the features.yml file as needed, as described in the [Handbook](https://about.gitlab.com/handbook/marketing/blog/release-posts/#features)
  - Be sure to label your MR ~"release post item::primary" to help the Messaging Lead find and review it for the release post. (Note that if your MR was auto-generated through your feature issue, you can skip this step)
- [ ] [Review Alpha, Beta, Limited, and General Availability guidelines](https://about.gitlab.com/handbook/product/gitlab-the-product/#alpha-beta-ga)
- [ ] Add Reviewers: Once the above are complete, add the Tech Writer, PMM, and Group Manager or Director as Reviewers.
</details>

### Pricing theme updates for Premium and Ultimate primary features

This is required as part of the release post workflow. However, since review/alignment on this may take longer than the release post allows, please use a separate MR to de-couple timeline dependencies.

<details>
<summary>Expand for Details </summary>

- [ ] In the bottom right corner of this screen, copy the name of the "Source branch" 
- [ ] [Create a new branch](https://gitlab.com/gitlab-com/www-gitlab-com/-/branches/new)
- [ ] Paste the name of this branch into the name and append it with "-pricing-theme"
- [ ] Select this branch name as the source from the "Create from" field

![pricing-theme-create-new-branch.png](./pricing-theme-create-new-branch.png)

- [ ] Click "Create Branch"
- [ ] Click the "Create merge request" button that appears near the top of the UI
- [ ] Choose the [Pricing Theme template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/pricing-theme-primary-feature.md) in the new MR and follow the steps in the template

</details>

## Review

When the above is complete and the content is ready for review, it must be reviewed by Tech Writing.
It can also be reviewed by Product Marketing, Product Design, and the Product Leader for this area.

Use the [Reviewers for Merge Requests](https://docs.gitlab.com/ee/user/project/merge_requests/getting_started#reviewer) feature in GitLab when adding team members for content reviews.
Reviewers will then `approve` the MR and remove themselves from Reviewers when their review is complete.

_Tip:_ Try using the [Review App](https://docs.gitlab.com/ee/ci/review_apps/) in this MR to see exactly how the release post item is rendered. This can help you catch issues that are harder to spot in YAML. Once this MR is merged, you can also see it on the release [preview page](https://about.gitlab.com/releases/gitlab-com/) prior to [content assembly](https://about.gitlab.com/handbook/marketing/blog/release-posts/#content-assembly-merging-release-post-items-content-blocks-to-your-branch).

- [ ] (Required) Tech Writer [reviewed and approved](https://about.gitlab.com/handbook/marketing/blog/release-posts/#tw-reviewers)
- [ ] (Recommended) PMM [reviewed and approved](https://about.gitlab.com/handbook/marketing/blog/release-posts/#pmm-reviewers)
- [ ] (Optional) Product Designer [reviewed and approved](https://about.gitlab.com/handbook/marketing/blog/release-posts/#product-design-reviewers)
- [ ] (Optional) Group Manager or Director [reviewed and approved](https://about.gitlab.com/handbook/marketing/blog/release-posts/#recommendations-for-optional-pm-directorgroup-manager-and-pmm-reviews) (ensuring the **why** is clearly explained: what is the problem we are solving for the user, and what value are we delivering.)
- [ ] PM adds ~"Ready" label and sets EM as Assignee for merge

### Tech writer review
<details>
<summary>Expand for Details </summary>

Once **added as a Reviewer to this merge request**, the [technical writer designated to the corresponding DevOps stage/group](https://about.gitlab.com/handbook/engineering/ux/technical-writing/#assignments) will perform their review according to the criteria described below.

**Please only mark a section as completed once you performed all individual checks!** When your review is complete, please `approve` this MR and remove yourself from Reviewers.

- [ ] Feature:
  - If the feature is listed as `top` or `primary` (not `secondary`), as described in the [Handbook](https://about.gitlab.com/handbook/marketing/blog/release-posts/#features), review changes (as needed) to `features.yml`. Make sure it's associated with the appropriate stage and group.
- [ ] Image:
  - All `top` and `primary` features require an image (`png`, `jpg`, or `gif` format).
  - Make sure the image (png, jpg, or gif) is [smaller than 150 KB](https://about.gitlab.com/handbook/marketing/blog/release-posts/#images), if included.
- [ ] Video:
  - Use the `/embed/` YouTube URL path and not `?watch=` parameter.
  - Ensure the PM has [reviewed the captions](https://www.youtube.com/watch?v=uJnhnA1fELY) for clarity.
- [ ] Title:
  - Length limit: 7 words (not including articles or prepositions).
  - Capitalization: ensure the title is [sentence cased](https://design.gitlab.com/content/punctuation#case).
- [ ] Consistency:
  - Ensure that all resources (docs, release post, `features.yml` when applicable, etc.) refer to the feature with the same term / feature name.
  - Review feature [availability](https://about.gitlab.com/handbook/marketing/blog/release-posts/#feature-availability) frontmatter (`available_in:`) for consistency with the documentation: (Core, Premium, Ultimate), and `features.yml` if applicable.
- [ ] Documentation and Content:
  - Review the post and documentation for consistency. If the post says "we've added feature X", the documentation should describe something about feature X.
  - Review the content. Make sure it accurately describes the feature based on your understanding. Look for typos or grammar mistakes. Work with PM and PMM to ensure a consistent GitLab style and tone for messaging, based on other features and release posts.
  - Review use of whitespace and bullet lists. Will the release post item be easily scannable when published? Consider adding line breaks or breaking content into bullets if you have more than a few sentences.
  - Make sure there aren't acronyms readers may not understand per https://about.gitlab.com/handbook/communication/#writing-style-guidelines
    - Note: if you are unsure whether the docs were updated, check the file history looking for a recent update. If you don't find any, check with the PM. If the docs are missing (or unclear, confusing), ask the PM to request the dev who shipped the feature for an MR updating it asap and make sure to review it. If required docs changes are minor, you can choose to do it yourself to speed things up.
- [ ] Links:
  - Make sure the linked `issue_url` is correct.
  - Ensure the `documentation_link` links to the correct document and anchor, and is wrapped in single quotes.
  - Verify that all links and anchors work as intended. Do not link to the H1 (top) anchor on a docs page. Links should not redirect. Links to pages within `about.gitlab.com` are given by the relative path, not absolute.
  - `documentation_link: 'https://docs.gitlab.com/ee/#amazing'` is wrapped in single quotes and `name: "Lorem ipsum"` wrapped in double quotes.
- [ ] Code. Make sure any included code is wrapped in code blocks.
- [ ] Capitalization. Make sure to capitalize feature names. Stay consistent with the Documentation Style Guidance on [Capitalization](https://docs.gitlab.com/ee/development/documentation/styleguide/#capitalization).
- [ ] Blank spaces. Remove unnecessary spaces (end of line spaces, double spaces, extra blank lines, and lines with only spaces).
- Notes:
  - The documentation is part of [GitLab's DoD](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#definition-of-done). A feature is not consider done while there's no documentation for it.
  - If there's something missing from the checklist above, you can request further action for PMs or other team members before approving this MR. You can remove yourself from Reviewers while there's nothing immediate for you to do, but request to be added as a Reviewer once the missing tasks are done so you can double-check and approve the MR.
  - Once all your review items have been checked, approve the merge request, check your checkbox in the [review](#review) checklist above, and remove yourself from Reviewers. Your job is done!
</details>

### PMM review
**PMM Review is Optional**
<details>
<summary>Expand for Details </summary>



**Please only mark this section as completed once you performed all individual checks!** When your review is complete, please `approve` this MR and remove yourself from Reviewers.

- [ ] PMM review
  - **problem/solution**: Does this describe the user pain points (problem) as well as how the new feature removes the paint points (solves the problem)?
  - **short/pithy:** Is this communicated clearly with the fewest words possible?
  - **tone clarify:** Is the language and sentence structure clear and grammatically correct?
  - **technical clarity**: Does the description of the feature make sense for various audiences, including folks who are not deeply familiar with GitLab?
  - [ ] Check/copyedit all your content blocks (including links/images)
  - [ ] If you think any features should change from primary to secondary, add a suggestion to the release post item and ping the PM owner to review.
  - [ ] Check/copyedit features.yml
</details>

## EM release post item checklist
<details>
<summary>Expand for Details </summary>

- [ ] Set at least one code MR as a blocker for this MR by going to Edit > Merge request dependencies. Setting a code blocker improves clarity, and prevents premature merge. If no feature MR exists, go to the most relevant issue and click "Create merge request" to create an empty merge request. Use the [feature flag rollout issue(https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Feature%20Flag%20Roll%20Out) if one exists.
- When this MR is labeled as ~"Ready" and assigned to you:
  - [ ] Confirm the feature is in the release. Be aware that merging code to `master` "does not guarantee that the feature will be in the m release" ([source](https://about.gitlab.com/handbook/engineering/workflow/#product-development-timeline)). If in doubt, you should confirm the feature commits are in the `x-y-stable-ee` branch (for example, `13-12-stable-ee`). If the code is not in the release or the deadline has passed, update this merge request's milestone accordingly and leave this unchecked.
  - [ ] If the feature has a feature flag, verify it is enabled by default.
  - [ ] If **before** 11:59PM PT on the 17th, merge this merge request to the `master` branch. If **after** that time, but you believe this should be merged late, follow [the process for late additions](https://about.gitlab.com/handbook/marketing/blog/release-posts/#adding-editing-or-removing-merged-content-blocks-after-the-18th-and-before-the-22nd) and be sure to inform the release post manager.
</details>
