---
title: "Restoring Vision in Hazy Weather with Hierarchical Contrastive Learning"
permalink: /publication/restoring_in_hazy
collection: publications
excerpt: 'Tao Wang, Guangpin Tao, **Wanglong Lu**, Kaihao Zhang, Wenhan Luo, Xiaoqin Zhang, Tong Lu.'
date: 2024-01-01
venue: 'Pattern Recognition Volume 145, January 2024, 109956'
paperurl: 'https://www.sciencedirect.com/science/article/pii/S0031320323006544'
citation: ''

---
![framework](https://longlongaaago.github.io/images/publications/restoring_hazy_HCL.png)

<b>Abstract:</b>
<div style="text-align: justify">
Image restoration under hazy weather condition, which is called single image dehazing,
 has been of significant interest for various computer vision applications. 
 In recent years, deep learning-based methods have achieved success. However, 
 existing image dehazing methods typically neglect the hierarchy of features in 
 the neural network and fail to exploit their relationships fully.
  To this end, we propose an effective image dehazing method named Hierarchical
   Contrastive Dehazing (HCD), which is based on feature fusion 
   and contrastive learning strategies. HCD consists of a hierarchical 
   dehazing network (HDN) and a novel hierarchical contrastive loss (HCL).
    Specifically, the core design in the HDN is a Hierarchical Interaction 
    Module, which utilizes multi-scale activation to revise the feature responses
     hierarchically. To cooperate with the training of HDN, 
     we propose HCL which performs contrastive learning on hierarchically 
     paired exemplars, facilitating haze removal. Extensive experiments 
     on public datasets, RESIDE, HazeRD, and DENSE-HAZE, demonstrate that
      HCD quantitatively outperforms the state-of-the-art methods in terms
       of PSNR, SSIM and achieves better visual quality. </div>


[[pdf]](https://arxiv.org/abs/2212.11473)

Recommended citation: 
```
@article{WANG2024109956,
title = {Restoring vision in hazy weather with hierarchical contrastive learning},
journal = {Pattern Recognition},
volume = {145},
pages = {109956},
year = {2024},
issn = {0031-3203},
doi = {https://doi.org/10.1016/j.patcog.2023.109956},
url = {https://www.sciencedirect.com/science/article/pii/S0031320323006544},
author = {Tao Wang and Guangpin Tao and Wanglong Lu and Kaihao Zhang and Wenhan Luo and Xiaoqin Zhang and Tong Lu},
keywords = {Image dehazing, Hierarchical contrastive loss, Feature fusion, Contrastive learning},
abstract = {Image restoration under hazy weather condition, which is called single image dehazing, has been of significant interest for various computer vision applications. In recent years, deep learning-based methods have achieved success. However, existing image dehazing methods typically neglect the hierarchy of features in the neural network and fail to exploit their relationships fully. To this end, we propose an effective image dehazing method named Hierarchical Contrastive Dehazing (HCD), which is based on feature fusion and contrastive learning strategies. HCD consists of a hierarchical dehazing network (HDN) and a novel hierarchical contrastive loss (HCL). Specifically, the core design in the HDN is a hierarchical interaction module, which utilizes multi-scale activation to revise the feature responses hierarchically. To cooperate with the training of HDN, we propose HCL which performs contrastive learning on hierarchically paired exemplars, facilitating haze removal. Extensive experiments on public datasets, RESIDE, HazeRD, and DENSE-HAZE, demonstrate that HCD quantitatively outperforms the state-of-the-art methods in terms of PSNR, SSIM and achieves better visual quality.}
}
```

