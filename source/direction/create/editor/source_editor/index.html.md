---
layout: markdown_page
title: "Source Editor Direction"
description: "The Source Editor is the underlying component handling code editing across GitLab"
canonical_path: "/direction/create/editor/source_editor/"
---

- TOC
{:toc}

## Source Editor

**Content last reviewed on 2022-08-03**

Thanks for visiting the direction page for the Source Editor, a code editor maintained by the [Editor](/handbook/product/categories/#editor-group) group. While not a singular feature or official category in itself, the Source Editor is a critical component and cornerstone of the Editor group's strategy. More information about the Editor group's priorities and direction can be found on the [Editor group direction page](/direction/create/editor/) and additional questions can be directed to Eric Schurter ([E-Mail](mailto:eschurter@gitlab.com)).

### What is the Source Editor?

The Source Editor is a thin wrapper around the open source code editor, [Monaco](https://microsoft.github.io/monaco-editor/). In early development, you may have seen it referred to as "Editor Lite." It's primary function is to provide an interface on which we can extend the functionality of the code editor and provide a consistent code editing experience across GitLab.

### Who is it for?

Anyone writing code within the GitLab UI.

### Where can I use it?

The Source Editor is currently being used as the editing component that powers [Snippets](/direction/create/editor/snippets), [Web IDE](/direction/create/editor/web_ide), the Web Editor (also known as the "Single File Editor"), the Pipeline Editor, and in a few other places across GitLab.  

### What's next? 

Since the primary benefit of the Source Editor is realized through its extensions, our focus right now is iterating on the extension architecture and laying the foundation for new extension types (like [Toolbar Items](https://gitlab.com/groups/gitlab-org/-/epics/4862) and [Panel Widgets](https://gitlab.com/gitlab-org/gitlab/-/issues/288314)) that will unlock new ways in which we can deliver new value and integrate with features across GitLab. 

We are currently working on updating the Web IDE to use a full, browser-based instance of VS Code. As we move in this direction, it is important that we maintain a consistent and cohesive editing experience across GitLab. The focus for the Source Editor may shift slightly as we learn more about the specific use cases each editor is expected to support.