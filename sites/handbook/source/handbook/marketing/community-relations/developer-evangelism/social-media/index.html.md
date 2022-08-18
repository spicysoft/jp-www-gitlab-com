---
layout: handbook-page-toc
title: "Developer Evangelism on Social Media"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Introduction

Developer Evangelism builds out their thought leadership through social media and community engagement. The tips and strategies shared here can be used by team members and the wider community to help build their own profile as an evangelist.

Topics:

- Education and Learning: Tips from own experience. Workshops, slides, blog posts, videos, etc.
- Events live tweets / tweet storms. Amplify talks with screenshots and messages. 
- [Release Evangelism](#release-evangelism): Share feature insights with personal views. 
- Community best practices and GitLab insights

## Target Platforms

Twitter and LinkedIn are the target platforms. Both platforms have different target audiences and content distribution.

> Wil Spillane in Slack:
>
> Tweets are more fleeting. I think a lot of folks choose to view tweets in reverse chronological order. For LinkedIn, the default is “top” posts and it’s not very visible to many to switch to “recent”. Also, LinkedIn shows posts with recent activity in the recent feed, not just the plain reverse chronological order that Twitter does. So in some ways, LinkedIn posts linger across feeds longer than a tweet. 

### Message Tips

- Keep the message short and appealing. If you have multiple sentences, break them down into a list.
  - 💡 Use emojis as list markers, this one to learn something. 
  - 🏗 This way users learn what you want to share and build together.
  - 🔥 Pick the right emoji, this one expresses a fast success for example. 
- Use 3-4 hashtags at maximum, at the end of the message. Twitter/LinkedIn are not Instagram and use different algorithms to amplify shares.
  - `#development` and `#DevSecOps` are good examples, avoid them to include in every tweet though. 
- Too many emojis can hide key messages.
- Use an appealing screenshot image or funny animated GIF to make people stop when scrolling. 
  - When attaching images to your posts, make sure to include an ALT text describing the content. 
- Do not start with an `@` character on Twitter, this can be hidden as reply and hinder audience reach on Twitter. Escape it with a leading `.` or an emoji. Example: `.@gitlab 13.9 adds ...`.


### Social Card Validators

Use the [Twitter card validator](https://cards-dev.twitter.com/validator) and [LinkedIn post inspector](https://www.linkedin.com/post-inspector/) to verify the social preview of included URLs.

### Fast Emojis Workflows

[Raycast](https://www.raycast.com/) is a productivity app and can replace Spotlight on macOS. Install the [Emoji Search](https://www.raycast.com/FezVrasta/emoji) extension, open Raycast with your preferred shortcut (`option + space` by default) and start typing `emoji`, press `enter` and type the emoji name. 

If you are using Alfred on macOS, you can use [Alfred's Powerpack with the emoji workflow](https://dev.to/dnsmichi/emojis-everywhere-supercharged-with-alfred-workflows-1o3n) to quickly access common emojis for tweets. 

[Rocket](https://matthewpalmer.net/rocket/) is another alternative which provides an emoji search on macOS. 

Alternatively, [Better Tweetdeck](https://better.tw/) as browser extension offers the same auto-complete mechanism known from GitLab and Slack: Start with a `:` and type the emoji name to start the live search. 

## Content

### Scheduled Content

You can use [Tweetdeck for scheduling tweets](https://help.twitter.com/en/using-twitter/advanced-tweetdeck-features).

Alternatively, you can use [Buffer](/handbook/marketing/community-relations/developer-evangelism/tools/#buffer) to create scheduling queues from browser extensions, mobile apps, and managed campaigns. 

### Live Content

Buffer can be used to "live tweet" with the `Share now` functionality.

#### Twitter

- [Twitter web app](https://twitter.com/home)
- [TweetDeck](https://tweetdeck.twitter.com/) with the [Better TweetDeck](https://better.tw/) extension for a column based view
  - Auto-completed emojis, GIFs and media preview
  - Add more columns with custom searches, list subscriptions and notifications

The TweetDeck search allows for logical expressions:

```
gitlab OR gitlabcommit
```

#### LinkedIn

- [Web app](https://www.linkedin.com/)

### Content Sources

- [Hacker News](https://news.ycombinator.com/)
  - Search example: [Rust](https://hn.algolia.com/?dateRange=all&page=0&prefix=false&query=rust&sort=byDate&type=story)
  - Slack: [#hn-mention](https://gitlab.slack.com/archives/CBL93C22D) (internal)
- Newsletters
  - [Developer Avocados 🥑 Weekly](https://tinyletter.com/developeravocados) (DevRel)
  - [Seven-Day DevOps](https://anaisurl.com) (DevOps, Cloud, SRE)
  - [o11y.news](https://o11y.news/) (Observability, Monitoring, SRE)
  - [Devops'ish](https://devopsish.com/) (DevOps, Cloud, Dev)
  - [The Cloud Security Reading List](https://cloudseclist.com/) (Cloud, DevSecOps)
  - [Last week in AWS](https://www.lastweekinaws.com/) (Cloud)
  - [The New Stack](https://thenewstack.io/newsletter-archive/) (Cloud Native, DevOps)
  - [Heavybit](https://www.heavybit.com/subscribe/) (Monitoring/Observability)
  - [Cassidy Williams - cassidoo](https://cassidoo.co/newsletter/) (Dev)
  - [allesnurgegloud.com](https://allesnurgecloud.com/) (Cloud, German)
  - [opsindev.news](https://opsindev.news/) (Dev, DevOps, SRE, day-2-ops - @dnsmichi)
  - [eCHO news](https://cilium.io/newsletter/) (Cloud, Network, Observability, eBPF)
- Learning websites
  - [learnk8s.io](https://learnk8s.io/) (Kubernetes, email subscription option)
  - [100daysofkubernetes.io](https://100daysofkubernetes.io/) (Kubernetes)
- Blogs & News
  - [opensource.com](https://opensource.com/)
  - [DZone](https://dzone.com/)
  - [Geeker's digest](https://www.geekersdigest.com/)
  - [GitLab blog](https://about.gitlab.com/blog/)
- Twitter lists
  - [@dnsmichi](https://twitter.com/dnsmichi/lists)   
- [dev.to Following tags](https://dev.to/dashboard/following_tags)
- [GitLab Forum](https://forum.gitlab.com/)
- GitLab Slack (internal): [#external-comms](https://gitlab.slack.com/archives/CB274TZRR), [#newswire](https://gitlab.slack.com/archives/CERAPFN7R), [#competition](https://gitlab.slack.com/archives/C1BBL1V3K), [#ceo](https://gitlab.slack.com/archives/C3MAZRM8W)

## Analytics

Please see [Metrics Collection & Analysis](/handbook/marketing/community-relations/developer-evangelism/metrics/) for our methods and tools.

## Thought Leadership Strategy

This strategy can help amplify impressions and build out thought leadership.

- Attract more active followers and therefore improve impression numbers and engagements.
  - Users can follow you on LinkedIn, you do not need to accept every invitation. If you plan to extend your business network, ensure that profile details such as private email/phone are not shared with anyone. 
- Help and educate users
- Analyse profile statistics
  - The why on the most impressions, top media tweet or most engaging tweets
- Follow users who share interesting stories
  - They may follow back, increasing the follower count.
- Retweet with comment and add your own thoughts or a funny emoji.
  - Mix this with "normal" retweets.
- Engage with tweets, like often, add replies and join the discussion.
  - Say `Thanks for sharing :emoji:` whenever needed
  - Share positive vibes
  - Follow the [team member social media policy](/handbook/marketing/team-member-social-media-policy/)
- Listen to criticism and ignore hate speech. 
- Do not criticize GitLab competitors. 
  - Instead, engage with their communities and learn how to improve.  
- Channel back feedback to product and engineering teams.
- Adopt new ideas with live streaming or community coffee chats. 
  - Engage community members in discussions.

Example: Chromium build times discussion led to [Self-Managed GitLab with auto-scaling runners](https://twitter.com/dnsmichi/status/1351241954349223944) on Monday. On Wednesday, we decided to try it [live on YouTube](https://twitter.com/dnsmichi/status/1351944765697363974) in the [#everyonecancontribute cafe](https://www.youtube.com/watch?v=isKaBJ4VT24). Max wrote a [blog post](https://fotoallerlei.com/blog/post/2021/13-everyonecancontribute-cafe-autoscaling-gitlab-runners-on-hetzner-cloud/post) afterwards. 

### Build your Social Profile

- Add a personal note and allow users to view a window into your life. Be it food, leisure activities, or a quirky habit. 
- Share your impressions and thoughts with `#allremote` and `#remotework`
- Regularly tweet about daily work. Use the hash tag `#LifeAtGitLab` to share insights and funny moments.
- Pick outstanding GitLab features from another stage/group and post about them (could be a blog post, screenshot, etc.). 
  - Share praise in Slack with linking the Tweet/LinkedIn URL.
- Post something funny, use an animated GIF which relates to a tech story. Something which makes you laugh when you look at it.

When you find something interesting to be shared with our brand account, please share it on Slack in [#social_media_action](https://gitlab.slack.com/archives/C01AZ9C8Z4G) and retweet by yourself too.

### Thought Leader Examples

- [@kelseyhightower](https://twitter.com/kelseyhightower) 160k+ (cloud-native)
- [@editingemility](https://twitter.com/editingemily) 70k+ (cloud)
- [@casidoo](https://twitter.com/cassidoo) 180k+ (dev)
- [@shanselman](https://twitter.com/shanselman) 280K+ (dev)
- [@denicmarko](https://twitter.com/denicmarko) 110k+ (dev)
- [@dabit3](https://twitter.com/dabit3) 100K+ (web3, dev)
- [@b0rk](https://twitter.com/b0rk) 200K+ (dev, learning zines)
- [@emmabostian](https://twitter.com/EmmaBostian) 200k+ (dev, design)


## Social Campaigns

### Release Evangelism

[GitLab releases](/releases/) add lots of value every month. As a developer, you know about use cases and workflow enhancements they may solve specifically. Use this knowledge to describe **why** this new feature helps you.

The [product kick-off](/direction/kickoff/) provides insights into planned features. As we plan ambitiously, there is no guarantee that everything gets released as planned. Therefore release evangelism campaigns need to happen short notice around the 22nd each month. 

> **Tip**: GitLab team members can access the [#release-post](https://gitlab.slack.com/archives/C3TRESYPJ) Slack channel to check for updates on the monthly release blog post.
> Wider community members can check the `gitlab-com/www-gitlab-com repository` for the [release post MR](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?label_name%5B%5D=release+post), or follow the Developer Evangelism issues with the [DE-Release-Evangelism](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/issues?sort=updated_desc&state=opened&label_name[]=DE-Type::Evangelist) label. 

Workflow:

- Our [DE Bot](/handbook/marketing/community-relations/developer-evangelism/projects/#developer-evangelism-bot) automatically creates and assigns issues.
- Developer Evangelists review the release blog post draft. 
  - Use the review app.
  - Add feedback and suggestions to the merge request before release day.
- Developer Evangelists schedule their favourite features.
  - Use the existing media (images, videos) from the release blog post, or create new screenshots/videos. 
  - Link to the documentation, or the release post anchor if already released. **Never link to the review app.**
- Impressions are collected with Keyhole, and happen async. 

Tips:

- 1-2 shares stretched over 1 week around the release
  - If you are on PTO, engage later. Do not schedule shares into your spare time. 
- Message format: `Problem? -> Solution`
- Add emojis and a CTA URL. 
- Animated Gifs or videos can help with people stopping "doom scrolling". 
- Target a time window for PT and CEST (9-11am PT)

KPIs:

- Impressions and engagement

#### Release Post share  

Use the [social card validator](/handbook/marketing/community-relations/developer-evangelism/social-media/#social-card-validators) to verify the social preview of the release blog post. There might be a situation where the preview does not render correctly, or otherwise needs more attention from readers. As a boring solution, resize your browser and [take a screenshot](/handbook/tools-and-tips/mac/#taking-screenshots-and-videos) from the header, including the sub title listing the features, and attach the image to the social shares. Examples for 15.1: [Twitter](https://twitter.com/dnsmichi/status/1539646159500853248), [LinkeDIn](https://www.linkedin.com/posts/dnsmichi_it-is-the-22nd-of-the-month-gitlab-activity-6945411563717574656-ZZdr?utm_source=linkedin_share&utm_medium=member_desktop_web)

#### Release Evangelism MVP

The monthly release post awards the [MVP](/handbook/marketing/blog/release-posts/#mvp-entry) to a community contributor. A personal shoutout from a Developer Evangelist helps with community engagement, and helps increasing visibibility so that everyone wants to contribute. 

Workflow:

- Open the release blog post 
- [Create a screenshot](/handbook/tools-and-tips/mac/#taking-screenshots-and-videos) from the MVP section
- Prepare the social share in 280 characters
  - Use a personalized message based on the feature contributions
  - Tag the MVP using their social tags listed on their GitLab profile (Twitter, LinkedIn)
  - Add the `#EveryoneCanContribute` hashtag
  - Add the release blog post with the `/#mvp` anchor in the URL
  - Example from [14.9, LinkedIn](https://www.linkedin.com/posts/dnsmichi_terraform-everyonecancontribute-activity-6912476005810999296-ig8Q): `Shoutout to Timo Furrer for becoming the GitLab 14.9 MVP 🎉 Your work on the #Terraform provider, automating all things GitLab, is invaluable. Thanks for all your contributions! 💜 🦊 #EveryoneCanContribute https://about.gitlab.com/releases/2022/03/22/gitlab-14-9-released/#mvp`
- Post the MVP share on Twitter and LinkedIn
  - Add the URLs to the release evangelism issue
- Ask Sid in the [#ceo Slack channel](https://gitlab.slack.com/archives/C3MAZRM8W) to engage with the MVP shares
  - Suggested actions: Reshare/like, add a comment thanking for the contributions. Follow the [CEO voice](/handbook/ceo/#ceo-voice) to suggest a text to copy.
  - Check the shares for comments, and engagement metrics  

#### Release Evangelism Examples

High performing share examples for GitLab 14:

- 14.9: MVP on [LinkedIn](https://www.linkedin.com/posts/dnsmichi_terraform-everyonecancontribute-activity-6912476005810999296-ig8Q) (3,000+ views, 60+ reactions)
- 14.8: MVP on [Twitter](https://twitter.com/dnsmichi/status/1496140144067465227) (8,000 impressions, 150 engagements) [LinkedIn](https://www.linkedin.com/posts/dnsmichi_everyonecancontribute-devops-activity-6901905241671835648-X4Vk) (2,500 views, 32 reactions)
- 14.7: MVP on [Twitter](https://twitter.com/dnsmichi/status/1484898545849315333) (18,000 impressions, 600 engagements) [LinkedIn](https://www.linkedin.com/posts/dnsmichi_everyonecancontribute-community-devops-activity-6890664006277754880-OCJ5) (7,500 views, 150 reactions)
- 14.6: Render markdown titles of issues on [LinkedIn](https://www.linkedin.com/posts/dnsmichi_yesssss-gitlab-146-allows-to-render-markdown-activity-6879493371191156736-RHCu) (3,000 views, 62 reactions)
- 14.6: MVP on [LinkedIn](https://www.linkedin.com/posts/dnsmichi_everyonecancontribute-activity-6879464875018465280-skt5) (1,500 views, 30 reactions)
- 14.5: IaC Security scanning on [LinkedIn](https://www.linkedin.com/posts/dnsmichi_security-infrastructureascode-kics-activity-6870082879037173761-kyaQ) (2,300 views, 28 reactions)
- 14.5: Conditional includes with exists in CI/CD on [Twitter](https://twitter.com/dnsmichi/status/1464279272214958095) (12,000 impressions, 600 engagements)
- 14.3: Conditional includes in CI/CD on [Twitter](https://twitter.com/dnsmichi/status/1440690461673340933) (21,000 impressions, 1,800 engagements)
- 14.2: Stageless CI/CD Pipelines on [Twitter](https://twitter.com/dnsmichi/status/1429475480030351364) (55,000 impressions, 1,900 engagements) and [LinkedIn](https://www.linkedin.com/posts/dnsmichi_async-cicd-pipelines-with-needs-as-job-activity-6835241415748939776-I6kI) (9,000 views, 127 reactions)
- 14.2: Open MR in Gitpod MVP on [Twitter](https://twitter.com/dnsmichi/status/1429469773058936841) (43,000 impressions, 300 engagements) [RT-quoted tweet](https://twitter.com/ludmann/status/1429735681513951235)
- 14.2: Live Markdown Preview on [Twitter](https://twitter.com/dnsmichi/status/1429463680182276100) (7,000 impressions, 300 engagements) [LinkedIn](https://www.linkedin.com/posts/dnsmichi_wohooooooo-live-markdown-preview-while-typing-activity-6835229767072014336-sDCg) (5,000 views, 62 reactions)
- 14.2: Parametrize CI/CD include statements on [Twitter](https://twitter.com/dnsmichi/status/1429473222098100233) (8,000 impressions, 400 engagements) [LinkedIn](https://www.linkedin.com/posts/dnsmichi_you-can-parametrize-cicd-include-statements-activity-6835239058843688960-Xc6v) (800 views, 13 reactions)
- 14.2 Creating branches directly in @gitlab from a @Jira issue?!  Yes please on [Twitter](https://twitter.com/olearycrew/status/1429899257700618249) (15,000 impressions, 900 engagements)
- 14.2 Oh hey check it out. Pronouns AND name pronunciation is now in GitLab profiles on [Twitter](https://twitter.com/olearycrew/status/1429459101294157829) (5,000 impressions, 150 engagements)
- 14.1: External API for status checks in MRs on [Twitter](https://twitter.com/dnsmichi/status/1418271636722274307) (8,000 impressions, 500 engagements)
- 14.1: Helm Charts repository on [LinkedIn](https://www.linkedin.com/posts/dnsmichi_cloudnative-helm-activity-6823949221377388544-9spE) (1,100 views, 17 reactions)
- 14.1: Kubernetes cluster image scanning on [LinkedIn](https://www.linkedin.com/posts/dnsmichi_kubernetes-activity-6823916460750974976-FJEc) (2,500 views, 27 reactions)
- 14.0: Pipeline Editor on [Twitter](https://twitter.com/dnsmichi/status/1407359717282828298) (38,000 impressions, 1,400 engagements) 
- 14.0: Container Scanning in GitLab to use Trivy from @AquaSecTeam on [Twitter](https://twitter.com/olearycrew/status/1407358974601707520) (7,000 impressions, 100 engagements)
- 14.0: Introduction of Terraform Module Registry on [Twitter](https://twitter.com/sarki247/status/1407995667121901568) (4,200 impressions, 55 egagements)
- 14.0: Cluster management project template using Helm 3 on [Twitter](https://twitter.com/sarki247/status/1408056830551601159) (2,000 impressions, 64 engagements)

Past examples:

- [13.12: Dynamic CI/CD variables based on conditions on Twitter](https://twitter.com/dnsmichi/status/1396129739622998022) (23,000 impressions, 2,300 engagements)
- [13.11: Tweetstorm to highlight 13.11 and tease 13.12](https://twitter.com/dnsmichi/status/1395686623132758017) (32,000 impressions)
- [13.10: Nested CI/CD variables on Twitter](https://twitter.com/dnsmichi/status/1383014333500813322) (18,000 impressions, 1,100 engagements) [LinkedIn](https://www.linkedin.com/posts/dnsmichi_gitlab-1310-allows-to-nest-cicd-variables-activity-6787693633425424384-WelD) (2,300 views, 35 reactions)
- [13.10: Parallel CI/CD job execution in child pipeline triggers on Twitter](https://twitter.com/dnsmichi/status/1382351735960797184) (13,000 impressions, 700 engagements) [LinkedIn](https://www.linkedin.com/posts/dnsmichi_parallel-cicd-job-execution-in-gitlab-improves-activity-6788117887266652160-hNIV) (1,100 views, 25 reactions)
- [13.9: Expanded CI/CD configuration on Twitter](https://twitter.com/dnsmichi/status/1363879804785803268) (5,000 impressions, 400 engagements)
- [13.9: SAST with .NET 5.0](https://www.linkedin.com/posts/dnsmichi_gitlab-dotnet-activity-6772576735876714496-noR_) (1,600 views, 43 reactions)
- [13.8: CI pipeline editor on LinkedIn](https://www.linkedin.com/posts/dnsmichi_best-release-ever-gitlab-inc138-is-here-activity-6758427487870451712-TttR) (5,000 views, 10 comments, 316 reactions, 15 reshares)
- [13.8: Download CI/CD job artifacts in the MR widget on LinkedIn](https://www.linkedin.com/posts/dnsmichi_gitlab-activity-6758714643964805120-9Yyd) (800 views, 14 reactions)
- [13.7: Merge Request Reviewers on LinkedIn](https://www.linkedin.com/posts/dnsmichi_gitlab-devops-productivity-activity-6756907989321433088-TRW9) (500 views, 16 reactions)
- [13.7: Rendered URLs in CI/CD job logs on LinkedIn](https://www.linkedin.com/posts/dnsmichi_everyonecancontribute-activity-6723982784492273664-cwg0) (4,800 views, 350 reactions, 12 comments)
- [13.6: VS Code GitLab workflow on Twitter](https://twitter.com/dnsmichi/status/1336362663107063808) (16,000 impressions, 700 engagements)
- [13.5: Group wikis on Twitter](https://twitter.com/dnsmichi/status/1319656105249820672) (18,000 impressions, 600 engagements)
- [13.4: Pipeline Efficiency docs on LinkedIn](https://www.linkedin.com/posts/dnsmichi_on-a-personal-note-my-first-larger-contribution-activity-6714235003447853056-Kkv4) (2,100 views, 49 reactions)
- [13.3: KubeCon Kubernetes teaser](https://twitter.com/dnsmichi/status/1296051268448915456) (18,000 impressions, 500 engagements)
- [13.3: Matrix builds of parallel CI/CD job execution on LinkedIn](https://www.linkedin.com/posts/dnsmichi_gitlab-development-cicd-activity-6702933595721351168-c-nV) (2,400 views, 49 reactions)
- [13.1: Individual CI/CD job artifcat reports on LinkedIn](https://www.linkedin.com/posts/dnsmichi_gitlab-cicd-development-activity-6683033972479451136-VNVL) (700 views, 16 reactions)

#### Wider community involvement is encouraged

- Ask GitLab heroes in [Gitter](https://gitter.im/gitlab/heroes) to share their favourite upcoming feature on social.
- Share the release MR with the review app, including this handbook URL for tips and best practices.

### Review Features for Release Posts

Developer Evangelists will take the end-user point-of-view and help review the release blog post items prior to a release around the 18th of each month. Reviews include:

- Feature description and clarify on the problem/use case being solved.
- Suggest promoting a feature to primary.
- Add a feature from the Changelog, seeing huge impact or a missing addition.

The first pilot experiment was established with our [Verify product group](/handbook/product/categories/verify/) for [GitLab 14.2 in August 2021](https://gitlab.com/gitlab-org/verify-stage/-/issues/97#note_664350725). The DRIs were @jreporter (Group Manager, Product) and @dnsmichi (DE stable counterpart).

### Product Feedback

Next to our user research campaigns and feedback in the project issues, we often see feedback and interesting ideas on social media. Sometimes users tag our brand account `@gitlab`, in other scenarios we discover them with searching for `gitlab`.

With moving this into a direct question like `If there would be one feature you could add, what would it be?`, this can help identify stakeholders and encourages for a more direct feedback loop.

This effort needs a cross-team collaboration between product & engineering, social and DE teams. Assigned DE DRI is [Michael Friedrich](/company/team/#dnsmichi).

Workflow:

- Create a new DE request issue
- Define the topic/scope
- Propose a message for social, max. 280 characters.
- Schedule the social share & document
- Monitor the social share for responses
- Move the specific responses to #product in Slack

Second iteration: Make this a self-service with a request form, and automated response collection/updates in Slack or similar. 

KPIs: 

- Number of engagements
- Issues updated/created

### Team Evangelism

Move social shares into product channels, be it good feedback or additional experts required to answer. Tag GitLab team members and encourage them to respond/discuss on social media when they can benefit from the conversation. For heated discussions, stay within a small group of social media DRIs.

For incoming questions and involving more experts, Developer Evangelists can help in Slack in [#developer-evangelism](https://gitlab.slack.com/archives/CMELFQS4B).

#### Release Management

Example tweets for [GitLab 12.9](/releases/2020/03/22/gitlab-12-9-released/):

- Pick a nice title and encourage everyone to try to create a new release: `Have you created your first release through the in @gitlab yet? Let's do this!`
- Go to your demo environment and create 1-4 screenshots, including guiding steps (make this a mini tutorial)
- URL to the release blogpost should be included
- Mention @gitlab with the @ before the username
- Use hashtags `#gitlab #releasemanagement`

#### Package

Example tweets for [open-sourcing the registries](/blog/2020/03/30/new-features-to-core/):

- Pick a cool title to encourage users to solve a use-case for them: `Unstable npm mirrors no more: @gitlab got you covered - the NPM registry will be open sourced.`
- Go to your demo environment and create 1-4 screenshots, including guiding steps (make this a mini tutorial)
- URL to the release blogpost should be included
- Mention @gitlab with the @ before the username
- Use hashtags: `#gitlab #packages #registry`




