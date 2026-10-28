---
layout: single
permalink: /book/from-the-first-token/
title: "From the First Token"
excerpt: "A bilingual, example-led introduction to building language models from scratch."
author_profile: false
---

[← All books]({{ '/book/' | relative_url }})

**Building Language Models from Scratch**<br>
Wanglong Lu · 卢望龙<br>
English and Simplified Chinese · First public reading edition

Follow a language model from text and token IDs through predictions, loss, gradients, attention, training and generation. The book develops each idea with formulas, small worked examples, illustrations and guided implementation exercises.

The electronic reading editions are free. Independent technical review is ongoing; corrections will be incorporated in future updates.

<details lang="en">
<summary>A note to the reader</summary>

<p>Near the end of 2023, I gave GPT a serious try for the first time. I had heard about it, but the descriptions had not made much of an impression on me. Then I asked it to write some PyTorch code. I remember being surprised by what appeared on the screen. I did not even run that first snippet. Seeing it write familiar code from a short conversation was enough to make me stop and pay attention.</p>

<p>I already had experience with machine learning and PyTorch, and Transformer-based methods were part of my research and practical work. As I followed later model releases and papers, and built agent workflows in my day-to-day work, I kept returning to a question: how did all the pieces inside a language model actually work together? Using a model, reading its architecture and tracing an implementation each reveal different parts of the answer. I wanted to connect them.</p>

<p>That led me back through the whole pipeline. I took each step apart, worked through a small example, wrote and ran the code, and checked the intermediate results. Then I put the pieces together and trained a small model from scratch. Each run gave me something concrete to examine: a shape I had misunderstood, a loss that needed explaining, or a result that did not support the conclusion I had expected. Writing those explanations down became this book.</p>

<p>For me, learning by doing means giving an idea a calculation and an implementation that I can inspect. The small examples matter because they make it possible to follow every value. Connecting those examples matters because a working system creates questions that isolated formulas leave open. I hope the route in these pages gives you room to try things, make mistakes, and work out why a correction helps.</p>

<p>You may be building your first language model, or revisiting methods you already use. Either way, take your time with the examples. Change a value, predict what should happen, and then run the code. I hope you enjoy the process, and that the next model or paper you encounter becomes a little easier to reason about.</p>

</details>

<details lang="zh-CN">
<summary>致读者</summary>

<p>2023年年底，我第一次认真试用了 GPT。此前听说过它，但那些介绍并没有让我特别在意。后来，我让它写了一段 PyTorch 代码。看到屏幕上出现的内容时，我确实有些惊讶。我当时甚至没有把那段代码运行起来。仅仅是看到它通过几句对话，就能写出自己熟悉的代码，已经足以让我停下来，认真关注它。</p>

<p>那时，我已经有机器学习（machine learning）和 PyTorch 的使用经验，也一直在研究和实际工作中使用 Transformer 相关方法。后来，随着模型和论文不断推出，以及我在日常工作中搭建智能体工作流（agent workflows），一个问题越来越值得追问：语言模型内部的各个部分，究竟是怎样一起工作的？使用模型、阅读架构、追踪具体实现，各自能让人看到一部分答案。我希望把它们连起来。</p>

<p>于是，我重新梳理了整条流程。每一步都先拆开，走完一个小算例，再写代码、运行代码、检查中间结果；然后把这些部分接起来，从头训练一个小模型。每次运行都会留下可以具体追查的问题：某个形状是不是理解错了，损失为什么这样变化，某个结果是否真的支持原先的判断。把这些解释逐步整理下来，就成了这本书。</p>

<p>对我来说，边做边学（learning by doing）意味着给一个想法配上能够检查的计算和实现。小算例的价值，在于可以追清每一个数值；把算例接成系统，则会带出单看公式时不容易遇到的问题。我希望书中的路线能给你留出动手尝试、犯错，以及弄清一次修正为什么有效的空间。</p>

<p>你可能正在搭建自己的第一个语言模型，也可能是在重新梳理已经使用过的方法。无论从哪里开始，都可以在算例上多花一点时间：改一个数，先想想结果应该怎样变化，再运行代码。我希望你能享受这个过程，也希望你下次遇到一个新模型或一篇新论文时，能够更容易地想清楚它在做什么。</p>

</details>

## Read the book

- [Download the English PDF](https://github.com/LonglongaaaGo/from-the-first-token/releases/download/v0.2.4-teaching.1/From-the-First-Token-English.pdf)
- [下载简体中文 PDF](https://github.com/LonglongaaaGo/from-the-first-token/releases/download/v0.2.4-teaching.1/From-the-First-Token-Chinese.pdf)
- [Download the book, code and teaching data](https://github.com/LonglongaaaGo/from-the-first-token/releases/download/v0.2.4-teaching.1/From-the-First-Token.zip)
- [English manuscript source](https://github.com/LonglongaaaGo/from-the-first-token/blob/main/book/en/manuscript.md)
- [中文书稿源文件](https://github.com/LonglongaaaGo/from-the-first-token/blob/main/book/zh-CN/manuscript.md)

The PDFs are the primary reading editions and retain the book's typeset equations and illustrations. The manuscript files are downloadable source snapshots; GitHub may limit previews of large files. Chapter-by-chapter web reading is deferred to a later update.

## Use the companion materials

The [companion repository](https://github.com/LonglongaaaGo/from-the-first-token) keeps the book, exercises, examples and teaching data together.

- **70 numbered exercises:** supplied contracts, hints and check drivers. Assigned core functions start as TODOs for the reader to implement.
- **A runnable CPU baseline:** a complete character bigram example connects data loading, training, evaluation and generation. Its prediction uses one character of context.
- **Corresponding synthetic data:** a small English and Simplified Chinese fixture includes a generator, a fixed split, provenance and content checksums.

Start with the [setup instructions](https://github.com/LonglongaaaGo/from-the-first-token/blob/main/README.md), follow the [exercise map](https://github.com/LonglongaaaGo/from-the-first-token/blob/main/EXERCISES.md), or run the [complete baseline example](https://github.com/LonglongaaaGo/from-the-first-token/blob/main/examples/README.md). The baseline is a small teaching demonstration with deliberately repetitive data; it does not establish general language or chatbot ability.

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

《从第一个 Token 开始：从零构建语言模型》提供与英文版对应的十章、71 节内容。请先[下载中文 PDF](https://github.com/LonglongaaaGo/from-the-first-token/releases/download/v0.2.4-teaching.1/From-the-First-Token-Chinese.pdf)阅读，再按[中文运行说明](https://github.com/LonglongaaaGo/from-the-first-token/blob/main/README.zh-CN.md)使用配套代码。[中文书稿源文件](https://github.com/LonglongaaaGo/from-the-first-token/blob/main/book/zh-CN/manuscript.md)作为可下载的来源快照保留；GitHub 可能限制大文件的预览，逐章网页阅读留待后续完善。

70 个编号练习保留核心待办（TODO），由读者动手实现。另附可直接运行的字符二元语言模型（character bigram language model）示例和对应合成数据，演示从数据到训练、评估与生成的流程。该小型示例只使用一个字符的上下文，不代表通用语言能力或聊天能力。

## Corrections and permissions

This is the first public reading edition. Report a correction through the [companion repository's issue tracker](https://github.com/LonglongaaaGo/from-the-first-token/issues), including the chapter, section and a small reproduction where relevant.

The book uses **CC BY-NC-ND 4.0**. Selected teaching code and the separately identified synthetic teaching fixture use **PolyForm Noncommercial 1.0.0**. See the package's [license scope](https://github.com/LonglongaaaGo/from-the-first-token/blob/main/LICENSE.md) and [notices](https://github.com/LonglongaaaGo/from-the-first-token/blob/main/NOTICE.md) for the applicable terms.

AI tools assisted with drafting, revision, translation and polishing. The author is responsible for the released material.
