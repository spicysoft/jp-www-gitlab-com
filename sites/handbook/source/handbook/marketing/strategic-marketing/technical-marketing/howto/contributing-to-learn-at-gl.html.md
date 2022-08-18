---
layout: markdown_page
title: "Contributing content to Learn@GitLab"
---

The Learn@gitLab webpage provides a one stop shop for viewers to find educational content about GitLab, the areas of the development life cycle that it supports, DevOps, DevSecOps, and other use cases that software folks might find themselves needing to solve for.

## Assets
- Assets are defined in the www-gitlab-com repository under [/data/learn/assets.yml](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/learn/assets.yml)
- Assets in this file have been validated by staff before being added to the website.
- This is the SSoT for what can/should be defined for an asset entry

```
assets:
  - vcc-001:                                # unique short asset identifier. Suggest use use case name or your inititals
    title: VCC Solution Overview            # Title for the asset. Will appear in web interface
    author: warias                          # gitlab login
    team: technical-marketing               # what group you are part of, or "" if no group.
    asset_type: video                       # asset type. currently video, demo, sim_demo are expected
    date_published: september 2020          # the month and year of publishing
    gitlab_release: 13.3                    # what gitlab version the content is based off of
    use_case: Version Control and Collaboration  # what use case, from https://about.gitlab.com/handbook/use-cases/
    roles: developer, devops engineer       # roles from https://about.gitlab.com/handbook/product/personas/
    doc_link: https://docs.google.com/presentation/d/e/2PACX-1v/embed  # URL to the downloadable or copyable source file
    asset_link: https://www.youtube.com/embed/2LRb5tnTYxY  # URL to a playable/runnable version of the asset 
    thumbnail_url: "https://img.youtube.com/vi/ljth1Q5oJoo/sddefault.jpg"  # if asset is on YouTube
    thumbnail_file: /images/learn/paths/platform/platform-004.jpg   # path to thumbnail image file in source code

```

## Learning Paths
- Learning Paths are defined in the www-gitlab-com repository under [/data/learn/paths.yml](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/learn/paths.yml)
- Paths in this file have been validated and curated before being added to the website.
- This is the SSoT for what can/should be defined for a path entry

```
paths:
- path_id: CI-Path-001                            # unique short path identifier. Suggest use use case name or your inititals
  title: Continuous Integration (CI)              # Name of the path. Will appear in web interface
  thumbnail: /images/learn/paths/ci/ci-009.jpg    # path to thumbnail image file in source code
  description: |
     Learn how CI helps you develop and deliver better software faster.   # Brief description of path content. Will appear in web interface
  author: iganbaruch                              # gitlab login
  verified: false                                 # default to false. Will be changed to true once curated.
  time: 30                                        # estimated runtime in minutes:seconds. should be sum of asset times
  level:                                          # target skill level of viewer - beginner, intermediate, or advanced
  roles: developer, devops engineer               # roles from https://about.gitlab.com/handbook/product/personas/]
  tags:                                           # keywords(tags) someone might search for this path under
    - tag 1                                       # add 1-10 short tags
    - tag 2
  related:                                        # list 1-5 related path_ids here
    - CI-Path-002                                 # can be path_ids from outside this file
    - CI-Path-003
  asset_list:                                     # Ordered list of asset_id's which make up the path
    - ci-001                                      # can be asset_id's from this file or from outside this file
    - ci-002

```

## Contributing
- This page is the SSoT for what goes into a path and asset definition (see above)
- New learning paths an/or assets can be contributed by adding a file in the www-gitlab-com repository under the directory [/data/learn/incoming/](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/learn/incoming). See [learning_path_example.html](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/learn/incoming/learning_path_example.yml) for an example.
- Contributions through seperate files in this way helps reduce the merge conflict potential of the assets.yml and paths.yml files, while still allowing us to have a contributed path be validated and curated before it is added.