---

title: "Visual style prompt learning using diffusion models for blind face restoration"
collection: publications
selection_score: 90
selected_badge: PR
selected_badge_style: green
selected_signals: [First Author, Diffusion Restoration, Pattern Recognition, Code Available]
publication_filters: [lead-author, generative-ai, restoration-sr]
permalink: /publication/vsp_face_restoration
excerpt: '**Wanglong Lu**, Jikai Wang, Tao Wang, Kaihao Zhang, Xianta Jiang, Hanli Zhao*'
date: 2025-05-01
author_role: First author
venue: 'Pattern Recognition 161, 111312'
paperurl: 'https://arxiv.org/abs/2412.21042'
doiurl: 'https://doi.org/10.1016/j.patcog.2024.111312'
code: 'https://github.com/LonglongaaaGo/VSPBFR'
teaser: 'https://longlongaaago.github.io/images/publications/VSP_restoration_teaser.png'
description: 'A diffusion-guided blind face restoration method that learns visual style prompts in pretrained generative latent space.'

---

![results](https://longlongaaago.github.io/images/publications/VSP_restoration_teaser.png)
<b> Brief description:</b>
<div style="text-align: justify">Blind face restoration aims to recover high-quality facial images from various unidentified sources of degradation, posing significant challenges due to the minimal information retrievable from the degraded images. Prior knowledge-based methods, leveraging geometric priors and facial features, have led to advancements in face restoration but often fall short of capturing fine details. To address this, we introduce a visual style prompt learning framework that utilizes diffusion probabilistic models to explicitly generate visual prompts within the latent space of pre-trained generative models. These prompts are designed to guide the restoration process. To fully utilize the visual prompts and enhance the extraction of informative and rich patterns, we introduce a style-modulated aggregation transformation layer. Extensive experiments and applications demonstrate the superiority of our method in achieving highquality blind face restoration. </div>


[[github]](https://github.com/LonglongaaaGo/VSPBFR)
<!-- [[youtube]](https://www.youtube.com/watch?v=O5r40NIXUcM) -->

### Downstream Evaluations

On CelebA-Test, restoration reduced FAN facial-landmark normalized mean error (NME) from **6.08% to 2.43%**, and increased HSEmotion agreement from **79.73% to 86.03%**. Both evaluations use the corresponding model's predictions on clean images as references, rather than manually annotated landmarks or emotion labels. See [Table V and Section IV-F](https://arxiv.org/html/2412.21042v1#S4.SS6).


Recommended citation: 

```
@article{LU2025111312,
title = {Visual style prompt learning using diffusion models for blind face restoration},
journal = {Pattern Recognition},
volume = {161},
pages = {111312},
year = {2025},
issn = {0031-3203},
doi = {https://doi.org/10.1016/j.patcog.2024.111312},
url = {https://www.sciencedirect.com/science/article/pii/S003132032401063X},
author = {Wanglong Lu and Jikai Wang and Tao Wang and Kaihao Zhang and Xianta Jiang and Hanli Zhao},
keywords = {Denoising diffusion probabilistic models, Generative adversarial networks, Blind face restoration},
abstract = {Blind face restoration aims to recover high-quality facial images from various unidentified sources of degradation, posing significant challenges due to the minimal information retrievable from the degraded images. Prior knowledge-based methods, leveraging geometric priors and facial features, have led to advancements in face restoration but often fall short of capturing fine details. To address this, we introduce a visual style prompt learning framework that utilizes diffusion probabilistic models to explicitly generate visual prompts within the latent space of pre-trained generative models. These prompts are designed to guide the restoration process. To fully utilize the visual prompts and enhance the extraction of informative and rich patterns, we introduce a style-modulated aggregation transformation layer. Extensive experiments and applications demonstrate the superiority of our method in achieving high-quality blind face restoration.}
}
```
