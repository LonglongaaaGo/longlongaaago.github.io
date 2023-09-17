---

title: "Detecting Blinks from Wearable Cameras using Spatial-Temporal-Aware Deep Network Learning"
permalink: /publication/spatial_temporal_aware_blinking
collection: publications
excerpt: 'Yu Wang, **Wanglong Lu**, Hanli Zhao, Xianta Jiang∗, Bin Zheng, M. Stella Atkins.'
date: 2023-05-30
venue: 'ETRA 23'
paperurl: 'https://dl.acm.org/doi/abs/10.1145/3588015.3589668'
citation: 'Yu Wang, Wanglong Lu, Hanli Zhao, Xianta Jiang, Bin Zheng, and Stella Atkins. 2023. Detecting Blinks from Wearable Cameras using Spatial-Temporal-Aware Deep Network Learning. In Proceedings of the 2023 Symposium on Eye Tracking Research and Applications (ETRA '23). Association for Computing Machinery, New York, NY, USA, Article 65, 1–7. https://doi.org/10.1145/3588015.3589668'

---
![framework](https://longlongaaago.github.io/images/publications/blink_detection_framework.png)

<b>Abstract:</b>
<div style="text-align: justify">
Blinks have been widely studied in various fields including medical and human computer interactions, and in driver fatigue. Automatic detection of blinks has valuable practical importance. While existing deep neural networks excel in extracting spatial features from images and demonstrate impressive performance in visual object recognition, their application for blink detection in videos on a frame-by-frame basis is suboptimal, as they only consider spatial features from single images. In this paper, we developed a spatial-temporal-aware deep learning framework that capitalizes on the rapid advancements of the existing state-of-the-art visual object recognition networks, aiming to enhance their performance specifically in blink detection. Our framework takes consecutive frames as input to extract spatial and temporal features simultaneously for better detection of eye movements. We also propose a sliding window re-sampling strategy to mitigate overfitting on training data. Extensive experimental evaluations and comparisons demonstrate the feasibility of the proposed algorithm, which delivers excellent performance for detecting blinks.
</div>

[[pdf]](https://dl.acm.org/doi/abs/10.1145/3588015.3589668)

Recommended citation: 
```
@inproceedings{Wang2023blink,
author = {Wang, Yu and Lu, Wanglong and Zhao, Hanli and Jiang, Xianta and Zheng, Bin and Atkins, Stella},
title = {Detecting Blinks from Wearable Cameras Using Spatial-Temporal-Aware Deep Network Learning},
year = {2023},
isbn = {9798400701504},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {https://doi.org/10.1145/3588015.3589668},
doi = {10.1145/3588015.3589668},
abstract = {Blinks have been widely studied in various fields including medical and human computer interactions, and in driver fatigue. Automatic detection of blinks has valuable practical importance. While existing deep neural networks excel in extracting spatial features from images and demonstrate impressive performance in visual object recognition, their application for blink detection in videos on a frame-by-frame basis is suboptimal, as they only consider spatial features from single images. In this paper, we developed a spatial-temporal-aware deep learning framework that capitalizes on the rapid advancements of the existing state-of-the-art visual object recognition networks, aiming to enhance their performance specifically in blink detection. Our framework takes consecutive frames as input to extract spatial and temporal features simultaneously for better detection of eye movements. We also propose a sliding window re-sampling strategy to mitigate overfitting on training data. Extensive experimental evaluations and comparisons demonstrate the feasibility of the proposed algorithm, which delivers excellent performance for detecting blinks.},
booktitle = {Proceedings of the 2023 Symposium on Eye Tracking Research and Applications},
articleno = {65},
numpages = {7},
keywords = {video processing, blinks detection, computer vision, neural networks},
location = {Tubingen, Germany},
series = {ETRA '23}
}
```

