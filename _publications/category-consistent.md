---
title: "Category-consistent deep network learning for accurate vehicle logo recognition"
permalink: /publication/category-consistent
collection: publications
excerpt: '**Wanglong Lu**, [Hanli Zhao](http://i3s.wzu.edu.cn/info/1104/1183.htm), [Qi He](http://i3s.wzu.edu.cn/info/1104/1181.htm), [Hui Huang](http://i3s.wzu.edu.cn/info/1104/1163.htm), [Xiaogang Jin](http://www.cad.zju.edu.cn/home/jin/).'
date: 2021-08-09
venue: 'Neurocomputing, doi:https://doi.org/10.1016/j.neucom.2021.08.030  (IF:5.719)'
paperurl: 'https://www.sciencedirect.com/science/article/abs/pii/S0925231221012145/'
citation: 'https://github.com/LonglongaaaGo/longlongaaago.github.io/tree/master/files/bibtex/CCM_S0925231221012145.bib'
code: 'https://github.com/LonglongaaaGo/CCML_Learning'


---
![framework](https://longlongaaago.github.io/images/publications/CCML_framework.png)

<b>Abstract:</b>
Vehicle logo recognition (VLR) is essential in intelligent transportation systems. Although many VLR algorithms have been
proposed, efficient and accurate VLR remains challenging in machine vision. Many VLR algorithms explicitly detect the coarse
region of the vehicle logo either by offsetting the detected location of the license plate or by training on numerous images with
manual bounding-box annotations. However, the results of license plate detection can significantly influence the VLR accuracy,
whereas bounding-box annotations are considerably labor-intensive. Thus, we propose a novel category-consistent deep network
learning framework for accurate VLR. A convolutional-neural-network-based vehicle logo feature extraction model is proposed
to extract deep features by considering both high- and low-level features in an image. Moreover, a novel category-consistent
mask learning module is proposed to help the framework to focus on category-consistent regions without relying on license plate
detection or manual box annotations. The deep network is trained and optimized iteratively with the objective function incorporating
classification loss and category-consistency loss. Extensive experimental evaluations and comparisons on the publicly available
HFUT, XMU, CompCars, and VLD-45 datasets demonstrate the feasibility and superiority of the proposed algorithm.

![framework](https://longlongaaago.github.io/images/publications/CCML_Table3.png)
![framework](https://longlongaaago.github.io/images/publications/CCML_Table4.png)


[[pdf]](https://www.sciencedirect.com/science/article/abs/pii/S0925231221012145)
[[code]](https://github.com/LonglongaaaGo/CCML_Learning)

Recommended citation: 
```
Category-consistent deep network learning for accurate vehicle logo recognition. Wanglong Lu, Hanli Zhao, Qi He, Hui Huang, Xiaogang Jin. Neurocomputing, 463 (2021), 623-636. https://doi.org/10.1016/j.neucom.2021.08.030 
```

