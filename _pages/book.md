---
layout: single
permalink: /book/
title: "From the First Token"
excerpt: "A bilingual, example-led introduction to building language models from scratch."
author_profile: false
---

**Building Language Models from Scratch**<br>
Wanglong Lu · 卢望龙<br>
English and Simplified Chinese · First public reading edition

Follow a language model from text and token IDs through predictions, loss, gradients, attention, training and generation. The book develops each idea with formulas, small worked examples, illustrations and guided implementation exercises.

The electronic reading editions are free. Independent technical review is ongoing; corrections will be incorporated in future updates.

## Read the book

- [Download the English PDF](https://github.com/LonglongaaaGo/from-the-first-token/releases/download/v0.2.4-teaching.1/From-the-First-Token-English.pdf)
- [下载简体中文 PDF](https://github.com/LonglongaaaGo/from-the-first-token/releases/download/v0.2.4-teaching.1/From-the-First-Token-Chinese.pdf)
- [Download the book, code and teaching data](https://github.com/LonglongaaaGo/from-the-first-token/releases/download/v0.2.4-teaching.1/From-the-First-Token.zip)
- [English manuscript source](https://github.com/LonglongaaaGo/from-the-first-token/blob/v0.2.4-teaching.1/book/en/manuscript.md)
- [中文书稿源文件](https://github.com/LonglongaaaGo/from-the-first-token/blob/v0.2.4-teaching.1/book/zh-CN/manuscript.md)

The PDFs are the primary reading editions and retain the book's typeset equations and illustrations. The manuscript files are downloadable source snapshots; GitHub may limit previews of large files. Chapter-by-chapter web reading is deferred to a later update.

## Use the companion materials

The [companion repository](https://github.com/LonglongaaaGo/from-the-first-token) keeps the book, exercises, examples and teaching data together.

- **70 numbered exercises:** supplied contracts, hints and check drivers. Assigned core functions start as TODOs for the reader to implement.
- **A runnable CPU baseline:** a complete character bigram example connects data loading, training, evaluation and generation. Its prediction uses one character of context.
- **Corresponding synthetic data:** a small English and Simplified Chinese fixture includes a generator, a fixed split, provenance and content checksums.

Start with the [setup instructions](https://github.com/LonglongaaaGo/from-the-first-token/blob/v0.2.4-teaching.1/README.md), follow the [exercise map](https://github.com/LonglongaaaGo/from-the-first-token/blob/v0.2.4-teaching.1/EXERCISES.md), or run the [complete baseline example](https://github.com/LonglongaaaGo/from-the-first-token/blob/v0.2.4-teaching.1/examples/README.md). The baseline is a small teaching demonstration with deliberately repetitive data; it does not establish general language or chatbot ability.

## Learning route

The ten chapters contain 71 sections:

1. Text, bytes and token IDs.
2. Byte-pair encoding.
3. Parameters, gradients, training and generation.
4. Context and causal attention.
5. Modern model components and reliable optimization.
6. Data preparation and pretraining.
7. Evaluation and inference.
8. Dialogue formatting and post-training objectives.
9. Efficient execution and distributed-training foundations.
10. Reproducible experiments and research comparisons.

Read a worked example, trace its intermediate values, then implement the matching exercise. Passing a supplied check and explaining the calculation are separate learning goals.

## 简体中文读者

《从第一个 Token 开始：从零构建语言模型》提供与英文版对应的十章、71 节内容。请先[下载中文 PDF](https://github.com/LonglongaaaGo/from-the-first-token/releases/download/v0.2.4-teaching.1/From-the-First-Token-Chinese.pdf)阅读，再按[中文运行说明](https://github.com/LonglongaaaGo/from-the-first-token/blob/v0.2.4-teaching.1/README.zh-CN.md)使用配套代码。[中文书稿源文件](https://github.com/LonglongaaaGo/from-the-first-token/blob/v0.2.4-teaching.1/book/zh-CN/manuscript.md)作为可下载的来源快照保留；GitHub 可能限制大文件的预览，逐章网页阅读留待后续完善。

70 个编号练习保留核心待办（TODO），由读者动手实现。另附可直接运行的字符二元语言模型（character bigram language model）示例和对应合成数据，演示从数据到训练、评估与生成的流程。该小型示例只使用一个字符的上下文，不代表通用语言能力或聊天能力。

## Corrections and permissions

This is the first public reading edition. Report a correction through the [companion repository's issue tracker](https://github.com/LonglongaaaGo/from-the-first-token/issues), including the chapter, section and a small reproduction where relevant.

The book uses **CC BY-NC-ND 4.0**. Selected teaching code and the separately identified synthetic teaching fixture use **PolyForm Noncommercial 1.0.0**. See the package's [license scope](https://github.com/LonglongaaaGo/from-the-first-token/blob/v0.2.4-teaching.1/LICENSE.md) and [notices](https://github.com/LonglongaaaGo/from-the-first-token/blob/v0.2.4-teaching.1/NOTICE.md) for the applicable terms.

AI tools assisted with drafting, revision, translation and polishing. The author is responsible for the released material.
