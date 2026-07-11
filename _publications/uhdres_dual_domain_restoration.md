---

title: "UHDRes: Ultra-High-Definition Image Restoration via Dual-Domain Decoupled Spectral Modulation"
collection: publications
selection_score: 92
selected_badge: TCSVT
selected_badge_style: green
selected_signals: [IEEE Transactions, 400K Parameters, UHD Restoration, Code Available]
publication_filters: [ieee-transactions, restoration-sr]
permalink: /publication/uhdres_dual_domain_restoration
excerpt: 'Shihao Zhao, **Wanglong Lu**, Binhao Wang, Tao Wang, Kaihao Zhang, Hanli Zhao'
date: 2026-07-01
venue: 'IEEE Transactions on Circuits and Systems for Video Technology'
paperurl: 'https://arxiv.org/abs/2511.05009'
pdfurl: 'https://arxiv.org/pdf/2511.05009'
htmlurl: 'https://arxiv.org/html/2511.05009v1'
code: 'https://github.com/Zhao0100/UHDRes'
teaser: 'publications/uhdres_architecture.png'
description: 'A lightweight UHD restoration framework using dual-domain decoupled spectral modulation with only 400K parameters.'

---

![UHDRes architecture](https://longlongaaago.github.io/images/publications/uhdres_architecture.png)

<b>Brief description:</b>
<div style="text-align: justify">UHDRes is a lightweight ultra-high-definition image restoration framework that integrates spatial-domain structure modeling with frequency-domain degradation modeling. It explicitly modulates the amplitude spectrum to capture robust global degradation patterns while implicitly restoring phase information through spatial refinement.</div>

<b>Highlights:</b>
<ul>
  <li>Dual-domain decoupled spectral modulation for jointly exploiting spatial structures and frequency features.</li>
  <li>Spatio-spectral fusion with multi-scale large-kernel convolutions for local textures and global structures.</li>
  <li>Shared gated feed-forward network for efficient feature interaction and structural consistency.</li>
  <li>Evaluated on UHD-LL, UHD-Haze, 8KDehaze-mini, UHD-Blur, and 4K-Rain13k, achieving strong performance with only 400K parameters.</li>
</ul>

![UHDRes efficiency comparison](https://longlongaaago.github.io/images/publications/uhdres_efficiency.png)

[[paper]](https://arxiv.org/abs/2511.05009)
[[pdf]](https://arxiv.org/pdf/2511.05009)
[[html]](https://arxiv.org/html/2511.05009v1)
[[github]](https://github.com/Zhao0100/UHDRes)

Recommended citation:

```
@article{zhao2026uhdres,
  title={UHDRes: Ultra-High-Definition Image Restoration via Dual-Domain Decoupled Spectral Modulation},
  author={Zhao, Shihao and Lu, Wanglong and Wang, Binhao and Wang, Tao and Zhang, Kaihao and Zhao, Hanli},
  journal={IEEE Transactions on Circuits and Systems for Video Technology},
  year={2026}
}
```
