---

title: "Tuning-Free Latent Diffusion Models for Ultrahigh-Resolution Image Editing"
collection: publications
selection_score: 100
selected_badge: TNNLS
publication_filters: [lead-author, ieee-transactions, generative-ai, editing-inpainting]
permalink: /publication/tuning_free_latent_diffusion_editing
excerpt: '**Wanglong Lu**, Lingming Su, Kaijie Shi, Minglun Gong, Xiaogang Jin, Hanli Zhao, Xianta Jiang'
date: 2026-07-02
venue: 'IEEE Transactions on Neural Networks and Learning Systems, 1-15'
paperurl: 'https://arxiv.org/abs/2607.06136'
pdfurl: 'https://arxiv.org/pdf/2607.06136'
htmlurl: 'https://arxiv.org/html/2607.06136v1'
code: 'https://github.com/LonglongaaaGo/UltraDiffEdit'
teaser: 'publications/ultradiffedit_pipeline.png'
description: 'UltraDiffEdit extends off-the-shelf latent diffusion models to tuning-free real-image editing up to 8K resolution.'

---

![UltraDiffEdit pipeline](https://longlongaaago.github.io/images/publications/ultradiffedit_pipeline.png)

<b>Brief description:</b>
<div style="text-align: justify">UltraDiffEdit is a tuning-free framework for ultra-high-resolution real-image editing. It extends pre-trained latent diffusion models to high-resolution inputs without additional training or per-image fine-tuning, using a coarse-to-fine progressive editing process to preserve unedited regions while refining generated content.</div>

<b>Highlights:</b>
<ul>
  <li>Multi-scale progressive editing with an encode-diffuse-denoise-decode-blend loop.</li>
  <li>Multi-patch encoding for preserving high-resolution edited and unedited details in latent space.</li>
  <li>Global-local consistency denoising for reducing boundary artifacts and preserving background content.</li>
  <li>Patch-based hybrid sampling to combine local, intermediate, and global context; demonstrated up to 8K resolution on a single NVIDIA RTX 3090 GPU.</li>
</ul>

[[paper]](https://arxiv.org/abs/2607.06136)
[[pdf]](https://arxiv.org/pdf/2607.06136)
[[html]](https://arxiv.org/html/2607.06136v1)
[[github]](https://github.com/LonglongaaaGo/UltraDiffEdit)

Recommended citation:

```
@article{lu2026tuningfree,
  title={Tuning-Free Latent Diffusion Models for Ultrahigh-Resolution Image Editing},
  author={Lu, Wanglong and Su, Lingming and Shi, Kaijie and Gong, Minglun and Jin, Xiaogang and Zhao, Hanli and Jiang, Xianta},
  journal={IEEE Transactions on Neural Networks and Learning Systems},
  pages={1--15},
  year={2026}
}
```
