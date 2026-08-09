---
title: "DocPure: Prompt-Free Unified Document Restoration via Degradation-Aware Structure-Guided Wavelet Modulation"
collection: publications
selection_score: 91
selected_badge: TCSVT
selected_signals: [Co-First Author, Prompt-Free, Unified Restoration, Wavelet Modulation]
publication_filters: [lead-author, ieee-transactions, restoration-sr]
permalink: /publication/docpure_unified_document_restoration
excerpt: '**Lingming Su**, **Wanglong Lu**, Tao Wang, Kaihao Zhang, Nan Zhang, Liyan An, Hanli Zhao'
date: 2026-08-01
venue: 'IEEE Transactions on Circuits and Systems for Video Technology, 2026'
paperurl: 'https://ieeexplore.ieee.org/document/11643289'
code: 'https://github.com/LingmingSSS/DocPure'
teaser: 'publications/docpure_framework.png'
description: 'A prompt-free unified document restoration framework that adapts to diverse degradations through structure-aware routing and wavelet-domain feature interaction.'

---

![DocPure framework](https://longlongaaago.github.io/images/publications/docpure_framework.png)

<b>Brief description:</b>
<div style="text-align: justify">DocPure is a prompt-free unified framework for restoring document images affected by diverse degradations. It uses a degradation-aware structure auto-encoder to predict clean structural priors from degraded inputs, then combines spatial semantics with frequency-domain features through structure-guided wavelet interaction. This design enables one model to handle multiple restoration tasks without manual task prompts during inference.</div>

<b>Highlights:</b>
<ul>
  <li>Degradation-aware structure extraction through input-conditioned feature routing.</li>
  <li>Structure-guided wavelet interaction between spatial and frequency-domain representations.</li>
  <li>Cross-frequency adaptive modulation for recovering high-frequency text details while preserving document structure.</li>
  <li>Unified restoration across deblurring, denoising, compression artifact reduction, and deshadowing.</li>
</ul>

[[paper]](https://ieeexplore.ieee.org/document/11643289)
[[github]](https://github.com/LingmingSSS/DocPure)

Recommended citation:

```
@article{su2026docpure,
  title={DocPure: Prompt-Free Unified Document Restoration via Degradation-Aware Structure-Guided Wavelet Modulation},
  author={Su, Lingming and Lu, Wanglong and Wang, Tao and Zhang, Kaihao and Zhang, Nan and An, Liyan and Zhao, Hanli},
  journal={IEEE Transactions on Circuits and Systems for Video Technology},
  year={2026}
}
```
