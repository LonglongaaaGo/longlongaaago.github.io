---

title: "Degradation-Aware Frequency-Separated Transformer for Blind Super-Resolution"
collection: publications
permalink: /publication/degradation_aware_super_resolution
excerpt: 'Hanli Zhao, Binhao Wang, **Wanglong Lu***, Juncong Lin'
date: 2025-04-19
venue: 'International Conference on Computational Visual Media'
paperurl: 'https://link.springer.com/chapter/10.1007/978-981-96-5809-1_13'
teaser: 'https://longlongaaago.github.io/images/publications/degradation-aware_super_resolution_teaser.png'

---

![results](https://longlongaaago.github.io/images/publications/degradation-aware_super_resolution_teaser.png)
<b> Brief description:</b>
<div style="text-align: justify">Blind image super-resolution involves reconstructing high-resolution images from low-resolution inputs with various unknown degradations. It is a challenging task due to the limited information available from the degraded images. While existing methods have achieved impressive results, they often overlook high-frequency or low-frequency features, reducing their effectiveness. To solve this problem, we propose a frequency-separated Transformer framework with degradation-aware learning for blind super-resolution. We first introduce a multi-patch contrastive learning approach to implicitly learn discriminative degradation representations. To fully utilize degradation representations as guidance information, a frequency-separated self-attention mechanism is introduced to extract global structural and local detail features separately. Our degradation-aware frequency-separated Transformer progressively restores high-quality images using successive frequency-separated self-attention blocks. Extensive experiments demonstrate that our approach outperforms state-of-the-art methods on four benchmark blind super-resolution datasets, while also achieving lower GPU memory usage during training and faster inference speed.</div>


<!-- [[github]](https://github.com/LonglongaaaGo/VSPBFR) -->
<!-- [[youtube]](https://www.youtube.com/watch?v=O5r40NIXUcM) -->


Recommended citation: 

```
@InProceedings{10.1007/978-981-96-5809-1_13,
author="Zhao, Hanli
and Wang, Binhao
and Lu, Wanglong
and Lin, Juncong",
editor="Didyk, Piotr
and Hou, Junhui",
title="Degradation-Aware Frequency-Separated Transformer for Blind Super-Resolution",
booktitle="Computational Visual Media",
year="2025",
publisher="Springer Nature Singapore",
address="Singapore",
pages="231--252",
abstract="Blind image super-resolution involves reconstructing high-resolution images from low-resolution inputs with various unknown degradations. It is a challenging task due to the limited information available from the degraded images. While existing methods have achieved impressive results, they often overlook high-frequency or low-frequency features, reducing their effectiveness. To solve this problem, we propose a frequency-separated Transformer framework with degradation-aware learning for blind super-resolution. We first introduce a multi-patch contrastive learning approach to implicitly learn discriminative degradation representations. To fully utilize degradation representations as guidance information, a frequency-separated self-attention mechanism is introduced to extract global structural and local detail features separately. Our degradation-aware frequency-separated Transformer progressively restores high-quality images using successive frequency-separated self-attention blocks. Extensive experiments demonstrate that our approach outperforms state-of-the-art methods on four benchmark blind super-resolution datasets, while also achieving lower GPU memory usage during training and faster inference speed.",
isbn="978-981-96-5809-1"
}
```
