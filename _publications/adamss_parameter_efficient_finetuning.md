---

title: "AdaMSS: Adaptive Multi-Subspace Approach for Parameter-Efficient Fine-Tuning"
collection: publications
publication_filters: [flagship-conference, generative-ai, multimodal]
permalink: /publication/adamss_parameter_efficient_finetuning
excerpt: 'Jingjing Zheng, **Wanglong Lu**, Yiming Dong, Chaojie Ji, Yankai Cao, Zhouchen Lin'
date: 2025-12-04
venue: 'NeurIPS 2025'
paperurl: 'https://neurips.cc/virtual/2025/loc/san-diego/poster/119606'
code: 'https://github.com/jzheng20/AdaMSS'
project_page: 'https://github.com/huggingface/peft/tree/main/examples/adamss_finetuning'
teaser: 'publications/adamss_framework.png'
description: 'An adaptive multi-subspace parameter-efficient fine-tuning method for expressive incremental updates, integrated into Hugging Face PEFT.'

---

![AdaMSS framework](https://longlongaaago.github.io/images/publications/adamss_framework.png)

<b>Brief description:</b>
<div style="text-align: justify">AdaMSS is an adaptive multi-subspace approach for parameter-efficient fine-tuning. It models incremental updates with multiple subspaces, improving the expressiveness-efficiency trade-off when adapting large pretrained models while keeping the base weights frozen.</div>

<b>Highlights:</b>
<ul>
  <li>Multi-subspace-based incremental update for parameter-efficient adaptation.</li>
  <li>Designed to capture richer update structures than single low-rank adaptation under a compact parameter budget.</li>
  <li>Accepted at NeurIPS 2025 and integrated into the Hugging Face PEFT package.</li>
</ul>

![AdaMSS multi-subspace structure](https://longlongaaago.github.io/images/publications/adamss_subspaces.png)

[[paper]](https://neurips.cc/virtual/2025/loc/san-diego/poster/119606)
[[github]](https://github.com/jzheng20/AdaMSS)
[[peft integration]](https://github.com/huggingface/peft/tree/main/examples/adamss_finetuning)

Recommended citation:

```
@inproceedings{zheng2025adamss,
  title={AdaMSS: Adaptive Multi-Subspace Approach for Parameter-Efficient Fine-Tuning},
  author={Zheng, Jingjing and Lu, Wanglong and Dong, Yiming and Ji, Chaojie and Cao, Yankai and Lin, Zhouchen},
  booktitle={The Thirty-ninth Annual Conference on Neural Information Processing Systems},
  year={2025},
}
```
