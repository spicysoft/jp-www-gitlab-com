---
layout: markdown_page
title: "Content Editor Direction"
description: "The Content Editor is a visual Markdown editor designed to make contribution easy for everyone"
canonical_path: "/direction/create/editor/content_editor/"
---

- TOC
{:toc}

## Content Editor

**Content last reviewed on 2022-08-03**

Thanks for visiting the direction page for the Content Editor, a what-you-see-is-what-you-get (WYSIWYG) editor for Markdown content maintained by the [Editor](/handbook/product/categories/#editor-group) group. While not a singular feature or official category in itself, the Content Editor is a critical component and cornerstone of the Editor group's strategy. More information about the Editor group's priorities and direction can be found on the [Editor group direction page](/direction/create/editor/) and additional questions can be directed to Eric Schurter ([E-Mail](mailto:eschurter@gitlab.com)).

### What is the Content Editor?

The Content Editor is a WYSIWYG editor for Markdown content. 

While there are many rich text web editors out there, one aspect of the Content Editor that sets it apart is how it preserves the Markdown format. While others use intermediate file formats or require saving changes to a database, the Content Editor reads **and writes** valid Markdown, allowing collaboration from any editor and preserving the Markdown source. 

### Who is it for?

**Everyone!**

For many, writing in Markdown is a barrier to collaboration. Remembering the syntax for image references or working with long tables can be tedious even for those who are relatively experienced with the syntax. Still, Markdown as a common denominator for content enables efficient collaboration in a version controlled environment. The Content Editor aims to break down these barriers by providing a rich editing experience and an extensible foundation on which we can build custom editing interfaces for things like diagrams, content embeds, media management, and more.

There are many contributors to GitLab for whom writing Markdown is like writing a second (or third, or fourth) language. When you can see the Matrix, everything starts to make sense. We don't want to take that super power away from anyone. That's why writing in the Content Editor will support standard Markdown shortcuts. Typing `## ` followed by your content will create a rendered Header 2 and let you continue working without removing your fingers from the keyboard.

### Where can I use it?

We are starting by implementing the Content Editor in the GitLab [Wiki](/direction/create/editor/wiki/). Eventually, after we achieve full compatibility with the custom GitLab Flavored Markdown extensions, we will work to integrate it with issue and epic descriptions. Our goal is to make the Content Editor available wherever Markdown is written in Gitlab.

With the upcoming removal of the Static Site Editor feature, we plan to make the Content Editor available in the Web Editor and Web IDE to make it easier for everyone to contribute to Markdown content in a repository. Seamless integration of the Content Editor in the web editing experience will realize nearly all the benefits of the Static Site Editor but we are no longer limiting it to Middleman-based projects configured to use the Static Site Editor. 

### How does it work? 

At a really high level, the Content Editor:

1. Takes the Markdown source and converts the document into nodes on a tree
2. Translates each node to HTML for presentation and editing
3. Provides a WYSIWYG HTML editing experience with custom UI
4. Translates the edited content back to Markdown and apply the changes to the source document 

We have written [comprehensive development guidelines](https://docs.gitlab.com/ee/development/fe_guide/content_editor.html) that explain what's going on under the hood and can help get you up to speed if you're interested in contributing an extension to the Content Editor. 

### Just Markdown?

We have to start somewhere. The beauty of the Content Editor architecture is that it can be extended to support other flavors of Markdown and even entirely separate formats like AsciiDoc or RDoc.
