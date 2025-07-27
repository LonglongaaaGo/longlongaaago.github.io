---

title: "Promptrr: Diffusion models as prompt generators for single image reflection removal"
collection: publications
permalink: /publication/prmptrr_reflection_removal
excerpt: 'Tao Wang, **Wanglong Lu**, Kaihao Zhang, Wenhan Luo, Tae-Kyun Kim, Tong Lu, Hongdong Li, Ming-Hsuan Yang'
date: 2024-02-04
venue: 'ArXiv'
paperurl: 'https://arxiv.org/abs/2402.02374'
teaser: 'https://longlongaaago.github.io/images/publications/promptrr_teaser.png'

---

![results](https://longlongaaago.github.io/images/publications/promptrr_teaser.png)
<b> Brief description:</b>
<div style="text-align: justify">Existing single image reflection removal (SIRR) methods using deep learning tend to miss key low-frequency (LF) and high-frequency (HF) differences in images, affecting their effectiveness in removing reflections. To address this problem, this paper proposes a novel prompt-guided reflection removal (PromptRR) framework that uses frequency information as new visual prompts for better reflection performance. Specifically, the proposed framework decouples the reflection removal process into the prompt generation and subsequent prompt-guided restoration. For the prompt generation, we first propose a prompt pre-training strategy to train a frequency prompt encoder that encodes the ground-truth image into LF and HF prompts. Then, we adopt diffusion models (DMs) as prompt generators to generate the LF and HF prompts estimated by the pre-trained frequency prompt encoder. For the prompt-guided restoration, we integrate specially generated prompts into the PromptFormer network, employing a novel Transformer-based prompt block to effectively steer the model toward enhanced reflection removal. The results on commonly used benchmarks show that our method outperforms state-of-the-art approaches. The codes and models are available at https: //github.com/TaoWangzj/PromptRR.</div>


[[homepage]](https://github.com/TaoWangzj/PromptRR)
<!-- [[youtube]](https://www.youtube.com/watch?v=O5r40NIXUcM) -->


Recommended citation: 

```
@article{wang2024promptrr,
  title={PromptRR: diffusion models as prompt generators for single image reflection Removal},
  author={Wang, Tao and Lu Wanglong and Zhang, Kaihao and  and Luo, Wenhan and and Kim, Tae-Kyun and Lu Tong and Li, Hongdong and Ming-Hsuan Yang},
  journal={arXiv preprint arXiv:2402.02374},
  year={2024}
}
```
