---

title: "Real-time dual-eye collaborative eyeblink detection with contrastive learning"
collection: publications
permalink: /publication/dual_eye_blink
excerpt: 'Hanli Zhao, Yu Wang , **Wanglong Lu**, Zili Yi, Jun Liu∗, Minglun Gong'
date: 2025-06-06
venue: 'Pattern Recognition'
paperurl: 'https://www.sciencedirect.com/science/article/pii/S0031320325001001'
teaser: 'https://longlongaaago.github.io/images/publications/dual_eye_blink_teaser.png'

---

![results](https://longlongaaago.github.io/images/publications/dual_eye_blink_teaser.png)
<b> Brief description:</b>
<div style="text-align: justify">Real-time detection of eyeblinks in uncontrolled settings is crucial for applications such as driver fatigue monitoring, face spoofing prevention, and emotion analysis. This task, however, is significantly challenged by variations in facial poses, motion blur, and inconsistent lighting conditions, which frequently lead traditional facial landmark analysis tools to perform poorly, especially in low-light and dynamic environments. often lead to imprecise localization of key regions of interest, undermining the effectiveness of subsequent blink detection. To address these issues, we have developed a novel real-time dual-eye collaborative eyeblink detection method that incorporates contrastive learning. Our approach includes a consistent eye feature embedding technique that minimizes the impact of adverse lighting and extraneous noise during feature extraction. Through contrastive learning, we align feature embeddings of coarsely captured, low-light eye patches with those from finely detailed, well-lit patches. Furthermore, to enhance eyeblink detection and reduce false identifications of eye regions, we exploit the natural synchrony in blink patterns between the left and right eyes. We introduce a dual-eye collaborative spatio-temporal attention mechanism that captures both the inter-eye correlations and the temporal dynamics across sequences. Our collaborative learning approach maximizes the inherent synchrony and cooperation between the two eyes, significantly improving detection accuracy. Extensive experiments on three datasets and their low-light variants demonstrate that our method operates in real-time, adjusts effectively to varying lighting conditions, and performs robustly in untrimmed video scenarios. </div>


<!-- [[github]](https://github.com/LonglongaaaGo/VSPBFR) -->
<!-- [[youtube]](https://www.youtube.com/watch?v=O5r40NIXUcM) -->


Recommended citation: 

```
@article{ZHAO2025111440,
title = {Real-time dual-eye collaborative eyeblink detection with contrastive learning},
journal = {Pattern Recognition},
volume = {162},
pages = {111440},
year = {2025},
issn = {0031-3203},
doi = {https://doi.org/10.1016/j.patcog.2025.111440},
url = {https://www.sciencedirect.com/science/article/pii/S0031320325001001},
author = {Hanli Zhao and Yu Wang and Wanglong Lu and Zili Yi and Jun Liu and Minglun Gong},
keywords = {Eyeblink detection, Contrastive learning, Dual-eye collaborative learning, Spatio-temporal attention, Video analysis},
abstract = {Real-time detection of eyeblinks in uncontrolled settings is crucial for applications such as driver fatigue monitoring, face spoofing prevention, and emotion analysis. This task, however, is significantly challenged by variations in facial poses, motion blur, and inconsistent lighting conditions, which frequently lead traditional facial landmark analysis tools to perform poorly, especially in low-light and dynamic environments. often lead to imprecise localization of key regions of interest, undermining the effectiveness of subsequent blink detection. To address these issues, we have developed a novel real-time dual-eye collaborative eyeblink detection method that incorporates contrastive learning. Our approach includes a consistent eye feature embedding technique that minimizes the impact of adverse lighting and extraneous noise during feature extraction. Through contrastive learning, we align feature embeddings of coarsely captured, low-light eye patches with those from finely detailed, well-lit patches. Furthermore, to enhance eyeblink detection and reduce false identifications of eye regions, we exploit the natural synchrony in blink patterns between the left and right eyes. We introduce a dual-eye collaborative spatio-temporal attention mechanism that captures both the inter-eye correlations and the temporal dynamics across sequences. Our collaborative learning approach maximizes the inherent synchrony and cooperation between the two eyes, significantly improving detection accuracy. Extensive experiments on three datasets and their low-light variants demonstrate that our method operates in real-time, adjusts effectively to varying lighting conditions, and performs robustly in untrimmed video scenarios.}
}
```
