---
layout: handbook-page-toc
title: AI Assist - Docker
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Docker and AI Assist

Nowadays most repositories, regardless of language, have 3 aspects in common:
- Dockerized solution
- Utilizing CI/CD
- Deployed on Kubernetes

These aspects also have a few things in common:
- Mostly static, once it has been successfully deployed once
- Often considered to be "boring" and just part of the repo

Which makes them super important because it allows a repository to become stale in the sense of updates, attention and 
therefor prone to vulnerabilities. Which in turn makes it a perfect starting point for AI Assist as it can deliver value
to users regardless whether it's a problem that can be solved with AI.

Out of those three, Docker is the one that I think is most common and is something that I'm very interested in.

## Big Hairy Audacious Goal / Vision

In an ideal world the whole concept of fixed Dockerfiles should be replaced with dynamic Dockerfiles. At build time, the
ideal Dockerfile is determined and stored as an artifact, the image is subsequently tested and via an incremental 
rollout deployed. Resulting in an image that is always up-to-date, free from (relevant) vulnerabilities which will save
developers time from responding to container scanning incidents, but also increase confidence for security and 
compliance departments. Should container scanning tools find a vulnerable image in the registry, a simple trigger of the 
pipeline will restore the secure state of the image.  


## Strategy

I applied the strategy as defined on the main page, to this subject specifically. Below is the strategy applied to 
Docker and feedback on each step taken so far.

1. Use off the shelf products (collect feedback on the approach). No new ML models will be involved at this point.
   1. I started with Hadolint as it's the most popular Dockerfile linter and has Code Quality integration (see [research](https://gitlab.com/gitlab-org/incubation-engineering/ai-assist/meta/-/blob/main/docs/dockerfile-linters.md)).
2. Seamlessly integrate the output of step 1 into the UI
   1. I added support for GitLab Code Quality reports
   2. TODO: I plan on improving the functionality by also displaying it in the repo view
3. Figure out what the shortcomings / gaps are of step 1 and explore alternatives to fill the gaps
   1. I noticed that with Hadolint, it would be quite hard to capture the output in a data centric format
   2. I tried adding rules to Hadolint but the Haskell learning curve was slowing me down too much
   3. There was no perfect parser for data centric parsing of Dockerfiles, either no format was available, or instructions were ignored.
   4. So I needed to create my own parser, which led me also to create an analyzer

From here one the hypothesis was that I would need to focus on reducing irrelevant warnings, but since I made my own 
parser and analyzer, I figured I would only include relevant errors to begin with. So I need to update the strategy, 
hindsight is truly 20/20.

So why do we need this parser and analyzer? Well the answer is simple: data pre-processing and feature engineering.

Publicly available Dockerfiles are of varying quality, some plain don't even work, others are perfect. But all will be 
in a different format which makes it harder to use them for training. The end goal is that we are able to automatically
create a Dockerfile for a repo.

4. Create awareness for the product and attract users to collect and integrate feedback
5. Collect Dockerfiles for analysis on scale, to create a training dataset
   1. I already started work on this but so far it has proven to be quite difficult to collect working Dockerfile to actually build images and have a link between the Dockerfile and the repository
6. Train models for autocorrection, auto-generation and potentially next line prediction
7. Publish new major features and collect feedback
8. Start work on next subject

## Repositories

- Dokter: [https://gitlab.com/gitlab-org/incubation-engineering/ai-assist/dokter](https://gitlab.com/gitlab-org/incubation-engineering/ai-assist/dokter)


## Jobs to be done

Below are a few of the jobs to be done (JTBD) as defined in the
[Category Maturity Scorecard](https://about.gitlab.com/handbook/product/ux/category-maturity-scorecards/) and are
meant to be as a guideline for AI assist and are subject to change based on learnings and feedback.

1. When I want to dockerize my solution, I want to make sure my Dockerfile is reliable and secure, so I have peace of 
mind knowing my solution has a smaller attack surface.
2. When I want to dockerize my solution, I want to automatically be provided with a proper Dockerfile, so I don't have 
to spend time on creating and maintaining a Dockerfile.
3. When a suggestion is found to optimize my Dockerfile, I want to be provided with a merge request containing 
remediation and explanation, so that I understand and learn why these changes are desired.
4. When I have feedback on the result, I want to be able to easily give feedback, so that the maintainers can improve 
5. the product.
