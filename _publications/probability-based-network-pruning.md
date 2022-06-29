---

title: "Probability-Based Channel Pruning for Depthwise Separable Convolutional Networks"
collection: publications
permalink: /publication/probability-based-network-pruning
excerpt: '[Han-Li Zhao](http://i3s.wzu.edu.cn/info/1104/1183.htm), Kai-Jie Shi, [Xiaogang Jin](http://www.cad.zju.edu.cn/home/jin/), Ming-Liang Xu, [Hui Huang](http://i3s.wzu.edu.cn/info/1104/1163.htm), **Wang-Long Lu**, Ying Liu.'
date: 2022-05-31
venue: 'Comput. Sci. Technol. 37, 584–600 (2022)'
paperurl: 'https://link.springer.com/article/10.1007/s11390-022-2131-8'

---
![vessel_segmentation](https://longlongaaago.github.io/images/publications/pruning.png)


<b>Abstract:</b>
<div style="text-align: justify"> Channel pruning can reduce memory consumption and running time with least performance damage, and is one of the most important techniques in network compression. However, existing channel pruning methods mainly focus on the pruning of standard convolutional networks, and they rely intensively on time-consuming fine-tuning to achieve the performance improvement. To this end, we present a novel efficient probability-based channel pruning method for depthwise separable convolutional networks. Our method leverages a new simple yet effective probability-based channel pruning criterion by taking the scaling and shifting factors of batch normalization layers into consideration. A novel shifting factor fusion technique is further developed to improve the performance of the pruned networks without requiring extra time-consuming fine-tuning. We apply the proposed method to five representative deep learning networks, namely MobileNetV1, MobileNetV2, ShuffleNetV1, ShuffleNetV2, and GhostNet, to demonstrate the efficiency of our pruning method. Extensive experimental results and comparisons on publicly available CIFAR10, CIFAR100, and ImageNet datasets validate the feasibility of the proposed method.</div>


[[pdf]](https://link.springer.com/article/10.1007/s11390-022-2131-8)

Recommended citation: 
```
Zhao, HL., Shi, KJ., Jin, XG. et al. Probability-Based Channel Pruning for Depthwise Separable Convolutional Networks. J. Comput. Sci. Technol. 37, 584–600 (2022).
```
