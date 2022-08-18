---
layout: handbook-page-toc
title: "実践的なハンドブック編集例"
description: "ハンドブック・ファーストでの仕事の進め方に関する非エンジニアリングチームメンバー向けのビデオの撮り方と文書の書き方のヒント"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## 実用ハンドブック編集例ページへようこそ

このページでは、非エンジニアリングチームメンバー向けに、ハンドブック・ファーストでの仕事の進め方に関するビデオ記録とヒントを紹介します。これらのビデオでは、エキスパートと一緒に GitLab ハンドブック を通して、日々の作業でどのように ハンドブック を使うのがベストなのかを明らかにし、その過程で ハンドブック編集のベストプラクティスを学んでいます。このページは、[GitLab社でのGitLabを使用](/handbook/using-gitlab-at-gitlab/#using-gitlab-competency) を補完する目的で作られており、まだ [GitLab 101 Tool Certification](/handbook/people-group/learning and-development/gitlab-101/) を完了していない場合は、そこから始めるよう勧めています。

**あなた自身の実用的なHandbook編集のヒントがありますか？下にビデオをドロップしてください！**。

This page contains video recordings and written tips for non-engineering team members on how to work Handbook-First. In these videos, we run through the GitLab Handbook with experts, uncovering how to best use the Handbook in our day-to-day work, and learning best-practices for Handbook editing along the way. This page is intended to be complementary to [Using GitLab at GitLab](/handbook/using-gitlab-at-gitlab/#using-gitlab-competency), and we suggest you start there if you have not yet completed the [GitLab 101 Tool Certification](/handbook/people-group/learning-and-development/gitlab-101/).

**Have your own practical Handbook editing tips? Drop a video below!**

### Creating new handbook pages and multimedia embedding best-practices
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/hQgS97M8abc" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**_Please note that the video mentions that you need to go to source/handbook to create a page which is no longer the case. The handbook is located under [sites/handbook/source/handbook](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/sites/handbook/source/handbook)_**. 

This video covers:
- Creating a new handbook page - @:37
- Embedding a video - @15:25, @18:53
- Making a URL open in a new tab - @17:05
- How this page got started - @22:48

### How to move the location of a handbook page 

[This video](https://youtu.be/aQl001ka3Y4) walks you through moving the location of a handbook page. There is a 1 min delay, so recommend starting the video at 1:03 for efficient viewing. We have seen that it may take over 24 hours for the move to completely take place, so even after the pipeline passes, you may still have an instance where the origial link AND the new link both still work. 

Keep in mind that if there are links throughout the handbook that link to the old page, you will need to update those links so people don't receive a 400 error when clicking on those links.

You may also request a redirect. That process is [outlined here](/handbook/marketing/inbound-marketing/search-marketing/#request-an-aboutgitlabcom-redirect). 

### Changing a page name and subsequent updates
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/HeQax_U74NM" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This video covers:
- Renaming a URL - @1:05
- Redirecting from one URL to the other - @2:17
- Finding places where an old URL is linked and updating it to a new URL - @ 4:30

### Creating mermaid diagrams
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/SQ9QmuTHuSI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This video covers:
- Creating a mermaid diagram for the handbook:
   - Intro to a mermaid diagram
   - What they look like
   - Use cases for using them in the handbook

Note: Flowcharts are universally used to outline the steps of a processes in sequential order. [Every shape or symbol has its own function in a flowchart.](https://www.lucidchart.com/pages/flowchart-symbols-meaning-explained)
### Creating issue templates
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/ObNWS3trqIY" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This video covers:
- Why you may want to use issue templates - @0:10
- What is an issue template and how to create one - @:54
- How issue templates and boards facilitate workflow management and automation - @3:55

### Adding images to the handbook and handbook analytics
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/P7Nv7bzksiY" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This video covers:
- How to see analytics on visits to a handbook page - @0:24
- When and how to add images to the handbook - @5:32
- How to keep up-to-date on changes in the handbook - @21:40

### How to add a new directory and page to the handbook
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/9NcJG9Bv6sQ" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This video covers:
- How to add a new page to your section of the handbook complete with a new main page and table of contents

### Updating individual team member YAML for managerial changes

Every GitLab team member has an entry in [team_members/person](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/team_members/person). There are step by step instructions on how to update the individual YAMLs in the [Edit this website locally handbook page](https://about.gitlab.com/handbook/git-page-update/#12-add-yourself-to-the-team-page)

When a new manager joins a team, updates are needed in three places:

- Manager's entry - Update job family
- Team member's entry - Update `reports_to` to include the new manager slug
- [`stages.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/stages.yml) to indicate the new manager for the team (if part of engineering/product)

### More Tips

#### Pre-requisites

Some tips may require terminal shell access on macOS/Linux. Ensure that your environment is working and that you have cloned the [www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com) project for example.

```
git clone https://gitlab.com/gitlab-com/www-gitlab-com.git
```

Sync it. Ensure that you stash away local changed not yet committed.

```
cd www-gitlab-com
git stash
git checkout master
git pull
```

On macOS it is advised to use Homebrew and install the GNU tools. See [this blogpost](https://about.gitlab.com/blog/2020/04/17/dotfiles-document-and-automate-your-macbook-setup/) for a macOS setup.

```
brew install gnu-sed
```

#### Find files

One of the shell tools provided with macOS/Linux GNU is `find`. Open a terminal an run the following command in the main directory of the `www-gitlab-com` repository to get a list of all `*.md` files. This matches `.md` as suffix.

```
find . -type f -name '*.md'
```

Instead of the `.` you can also use a directory in the current path.

```
find source/handbook -type f -name '*.md'
```

The type `f` specifies files, `d` matches for directories. When not specified, all files and directories are taken into account.

You can replace `-name` with `-regex` to do more sensitive matching, for example to match all `.md` and `.md.erb` files.

```
find . -type f -regex '.*\.md[.erb]*'
```

This can be useful to **check whether a blog post was merged to master**:

```
git checkout master
git pull
find . -type f -name '*blogpost-filename*'
```


#### Find files and perform an action

This comes in handy when you want to print all matches with a prefix, or perform additional replace actions. The main principle is to follow the matching rules explained above, and add the `-exec` parameter.

The `exec` action should start a shell and execute a command in there. `sh -c '' \;` takes care of this for every file that matches. Imagine this as a loop of sequential steps to perform the action. The last missing bit is accessing the file in the current loop iteration. This is done via the `{}` marker inside the `echo` example printing the output.

Run the command in a terminal to see how it works:

```
find source/handbook/marketing -type f -name '*.md' -exec sh -c 'echo "Matched {}"' \;
```

#### Replace strings in a file

The GNU `sed` shell command is useful to replace a defined string in a file. The `-i` flag specifies to do that inline in the same file. The `g` flag defines a global match, replacing all pattern matches.

```
sed -i 's/<searchtext>/<replacementtext>/g' file.md
```

On macOS, ensure that the `gnu-sed` package is installed, and run `gsed` (instead of `sed`).

```
gsed -i 's/<searchtext>/<replacementtext>/g' file.md
```

With using the `/` separator, it is necessary to escape all `/` characters in the string. You can avoid this by choosing another separator, for example `,`:

```
gsed -i 's,<searchtext>,<replacementtext>,g' file.md
```

#### Find and Replace a String in all (Matching) Files

##### Using a terminal

Sometimes a project, URL target or Slack channel is being renamed. You can easily search and edit with the Web IDE on GitLab.com but for other files there is a quick and automated way required.

This method combines the find, exec and sed tips explained above. The `exec` action is now to use sed to perform an inline replacement of a pattern/string.

The following example is used in [this MR](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/49617) for updating the Corporate Marketing project URL in all files.

```
git checkout master
git pull origin master

git checkout -b handbook/corp-mktg-project-url

find source/handbook -type f -exec sh -c 'gsed -i "s,https://gitlab.com/gitlab-com/marketing/corporate-marketing,https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing,g" "{}"' \;

git status
git diff

git commit -av -m "Handbook: Update corporate marketing project URL"

git push -u origin handbook/corp-mktg-project-url

<open URL in browser for MR>
```

To cut it down:

- Find and match all files in the `source/handbook` directory. The URL might be found in other files too.
- `exec` runs a `sed/gsed` action
- The replacement is `https://gitlab.com/gitlab-com/marketing/corporate-marketing` with `https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing`
- Verify the changes with `git status` and `git diff` before committing them
- Commit, push and create the MR from the URL

##### Using Visual Studio Code

You can also do bulk find and replace operations using [Visual Studio Code](https://code.visualstudio.com/download) along with the [GitLab Workflow extension for VS Code](https://docs.gitlab.com/ee/user/project/repository/vscode.html). The following steps were used in this [MR](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/106599) for updating `sub-value` to `operating principle`.

On macOS this can be a fairly seamless experience if you clone the `www-gitlab-com` project [using SSH](https://about.gitlab.com/handbook/git-page-update/#clone-via-ssh), and then add the following to your `.ssh/config` to add your [SSH-Keys](https://docs.gitlab.com/ee/user/ssh.html) to the SSH-Agent:

```
Host *
  UseKeychain yes
  AddKeysToAgent yes
  IdentityFile ~/.ssh/[your-secure-ssh-key-name]
```

Once you've configured and installed `Visual Studio Code` and logged into the `GitLab Workflow extension for VS Code` open the `www-gitlab-com` directory where you've synced the repo.

Create a new branch by:

1. Clicking on `master` in the bottom bar
1. Select `Create new branch`
1. Enter a branch name
1. Press the enter key

You can then use the `Search` functionality (`⌘⇧F`) to find all files matching your desired search. Searching in `Visual Studio Code` allows matching case, matching whole word, or using Regular Expressions. If you click on the ellipsis (`…`) you also have the option to include or exclude files by pattern matching on the path (uses commas to delimit multiple includes/excludes).

You can do a `Replace All` across all files with the matching search term directly in the `Search` functionality:

1. Click on the disclosure arrow next to the `Search` field or enter `⌘⇧H`
1. Enter the `Search` term
1. Enter the `Replace` term
1. Click on the `Replace All` button next to the `Replace` field or enter `⌥⌘Enter`

Once you've made your edits use the `Source Control` (`⌃⇧G`) functionality to:

1. Stage your changes by clicking on the `+` sign for each file, or the `+` sign for the entire commit
1. Provide a name to the commit in the Message field saving with a `⌘Enter`
1. Clicking on the publish or sync button

You can use the `GitLab Workflow` extension to manage the `Merge Request` (MR) once the branch has been pushed and MR created.
