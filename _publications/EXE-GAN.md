---

title: "Do Inpainting Yourself: Generative Facial Inpainting Guided by Exemplars"
collection: publications
permalink: /publication/exe-gan
excerpt: ' **Wanglong Lu**, [Hanli Zhao](http://i3s.wzu.edu.cn/info/1104/1183.htm), [Xianta Jiang](http://www.cs.mun.ca/~xiantaj/), [Xiaogang Jin](http://www.cad.zju.edu.cn/home/jin/), Yongliang Yang, Min Wang, Jiankai Lyu, and Kaijie Shi'
date: 2025-02-07
venue: 'Neurocomputing 617, 128996'
paperurl: 'https://arxiv.org/abs/2202.06358'
teaser: 'https://longlongaaago.github.io/images/publications/exe_celeba_diverse.png'

---

![results](https://longlongaaago.github.io/images/publications/exe_celeba_diverse.png)
<b> Brief description:</b>
<div style="text-align: justify"> We present EXE-GAN, a novel exemplar-guided facial inpainting framework using generative adversarial networks. Our approach can not only preserve the quality of the input facial image but also complete the image with exemplar-like facial attributes. We achieve this by simultaneously leveraging the global style of the input image, the stochastic style generated from the random latent code, and the exemplar style of exemplar image. We introduce a novel attribute similarity metric to encourage networks to learn the style of facial attributes from the exemplar in a self-supervised way. To guarantee the natural transition across the boundaries of inpainted regions, we introduce a novel spatial variant gradient backpropagation technique to adjust the loss gradients based on the spatial location. Extensive evaluations and practical applications on public CelebA-HQ and FFHQ datasets validate the superiority of EXE-GAN in terms of the visual quality in facial inpainting. </div>


[[Homepage]](https://longlongaaago.github.io/EXE-GAN/)


Recommended citation: 

```
@article{LU2025128996,
title = {Do inpainting yourself: Generative facial inpainting guided by exemplars},
journal = {Neurocomputing},
volume = {617},
pages = {128996},
year = {2025},
issn = {0925-2312},
doi = {https://doi.org/10.1016/j.neucom.2024.128996},
url = {https://www.sciencedirect.com/science/article/pii/S0925231224017673},
author = {Wanglong Lu and Hanli Zhao and Xianta Jiang and Xiaogang Jin and Yong-Liang Yang and Kaijie Shi},
keywords = {Generative adversarial networks, Image generation, Image inpainting, Facial image inpainting},
abstract = {We present EXE-GAN, a novel exemplar-guided facial inpainting framework using generative adversarial networks. Our approach not only preserves the quality of the input facial image but also completes the image with exemplar-like facial attributes. We achieve this by simultaneously leveraging the global style of the input image, the stochastic style generated from the random latent code, and the exemplar style of the exemplar image. We introduce a novel attribute similarity metric to encourage the networks to learn the style of facial attributes from the exemplar in a self-supervised way. To guarantee the natural transition across the boundaries of inpainted regions, we introduce a novel spatial variant gradient backpropagation technique to adjust the loss gradients based on the spatial location. We extensively evaluate EXE-GAN on public CelebA-HQ and FFHQ datasets with practical applications, which demonstrates the superior visual quality of facial inpainting. The source code is available at https://github.com/LonglongaaaGo/EXE-GAN.}
}
```
