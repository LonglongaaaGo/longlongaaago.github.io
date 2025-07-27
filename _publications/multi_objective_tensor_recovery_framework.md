---

title: "Handling the Non-smooth Challenge in Tensor SVD: A Multi-objective Tensor Recovery Framework"
collection: publications
permalink: /publication/multi_objective_tensor_recovery_framework
excerpt: 'Jingjing Zheng, **Wanglong Lu**, Wenzhe Wang, Yankai Cao*, Xiaoqin Zhang, and Xianta Jiang'
date: 2025-03-10
venue: 'ECCV'
paperurl: 'https://arxiv.org/abs/2311.13958'
teaser: 'https://longlongaaago.github.io/images/publications/multi_objective_tensor_recovery_framework_teaser.png'

---

![results](https://longlongaaago.github.io/images/publications/multi_objective_tensor_recovery_framework_teaser.png)
<b> Brief description:</b>
<div style="text-align: justify">Recently, numerous tensor singular value decomposition (t-SVD)-based tensor recovery methods have shown promise in processing visual data, such as color images and videos. However, these methods often suffer from severe performance degradation when confronted with tensor data exhibiting non-smooth changes. It has been commonly observed in real-world scenarios but ignored by the traditional t-SVD-based methods. In this work, we introduce a novel tensor recovery model with a learnable tensor nuclear norm to address such a challenge. We develop a new optimization algorithm named the Alternating Proximal Multiplier Method (APMM) to iteratively solve the proposed tensor completion model. Theoretical analysis demonstrates the convergence of the proposed APMM to the Karush-Kuhn-Tucker (KKT) point of the optimization problem. In addition, we propose a multi-objective tensor recovery framework based on APMM to efficiently explore the correlations of tensor data across its various dimensions, providing a new perspective on extending the t-SVD-based method to higher-order tensor cases. Numerical experiments demonstrated the effectiveness of the proposed method in tensor completion.</div>


<!-- [[homepage]](https://sites.google.com/view/autonomous-prosthetic-hand) -->
<!-- [[youtube]](https://www.youtube.com/watch?v=O5r40NIXUcM) -->


Recommended citation: 

```
@inproceedings{10.1007/978-3-031-72630-9_26,
author = {Zheng, Jingjing and Lu, Wanglong and Wang, Wenzhe and Cao, Yankai and Zhang, Xiaoqin and Jiang, Xianta},
title = {Handling the Non-smooth Challenge in&nbsp;Tensor SVD: A Multi-objective Tensor Recovery Framework},
year = {2024},
isbn = {978-3-031-72629-3},
publisher = {Springer-Verlag},
address = {Berlin, Heidelberg},
url = {https://doi.org/10.1007/978-3-031-72630-9_26},
doi = {10.1007/978-3-031-72630-9_26},
abstract = {Recently, numerous tensor singular value decomposition (t-SVD)-based tensor recovery methods have shown promise in processing visual data, such as color images and videos. However, these methods often suffer from severe performance degradation when confronted with tensor data exhibiting non-smooth changes. It has been commonly observed in real-world scenarios but ignored by the traditional t-SVD-based methods. In this work, we introduce a novel tensor recovery model with a learnable tensor nuclear norm to address such challenge. We develop a new optimization algorithm named the Alternating Proximal Multiplier Method (APMM) to iteratively solve the proposed tensor completion model. Theoretical analysis demonstrates the convergence of the proposed APMM to the Karush-Kuhn-Tucker (KKT) point of the optimization problem. In addition, we propose a multi-objective tensor recovery framework based on APMM to efficiently explore the correlations of tensor data across its various dimensions, providing a new perspective on extending the t-SVD-based method to higher-order tensor cases. Numerical experiments demonstrated the effectiveness of the proposed method in tensor completion.},
booktitle = {Computer Vision – ECCV 2024: 18th European Conference, Milan, Italy, September 29–October 4, 2024, Proceedings, Part XIV},
pages = {449–464},
numpages = {16},
keywords = {Tensor Completion, Tensor SVD, Multi-Objective Optimization},
location = {Milan, Italy}
}
```
