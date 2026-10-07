---

title: "AdaMSS: Adaptive Multi-Subspace Approach for Parameter-Efficient Fine-Tuning"
collection: publications
selection_score: 94
selected_badge: NeurIPS
selected_badge_style: gold
selected_project_label: PEFT
selected_signals: [NeurIPS, Hugging Face PEFT, Efficient Adaptation, Code Available]
publication_filters: [flagship-conference, generative-ai, multimodal]
permalink: /publication/adamss_parameter_efficient_finetuning
excerpt: 'Jingjing Zheng, **Wanglong Lu**, Yiming Dong, Chaojie Ji, Yankai Cao, Zhouchen Lin'
date: 2025-12-04
author_role: Second author
venue: 'NeurIPS 2025'
paperurl: 'https://proceedings.neurips.cc/paper_files/paper/2025/hash/1c85c302ece39939c1b334c78f7ee1b8-Abstract-Conference.html'
doiurl: 'https://doi.org/10.52202/085713-0664'
pdfurl: 'https://proceedings.neurips.cc/paper_files/paper/2025/file/1c85c302ece39939c1b334c78f7ee1b8-Paper-Conference.pdf'
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

[[paper]](https://proceedings.neurips.cc/paper_files/paper/2025/hash/1c85c302ece39939c1b334c78f7ee1b8-Abstract-Conference.html)
[[doi]](https://doi.org/10.52202/085713-0664)
[[github]](https://github.com/jzheng20/AdaMSS)
[[peft integration]](https://github.com/huggingface/peft/tree/main/examples/adamss_finetuning)

Recommended citation:

```
@inproceedings{zheng2025adamss,
  title={AdaMSS: Adaptive Multi-Subspace Approach for Parameter-Efficient Fine-Tuning},
  author={Zheng, Jingjing and Lu, Wanglong and Dong, Yiming and Ji, Chaojie and Cao, Yankai and Lin, Zhouchen},
  booktitle={Advances in Neural Information Processing Systems},
  volume={38},
  year={2025},
  doi={10.52202/085713-0664},
}
```
