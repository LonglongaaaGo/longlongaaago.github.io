---

title: "FACEMUG: A Multimodal Generative and Fusion Framework for Local Facial Editing"
collection: publications
permalink: /publication/facemug
excerpt: '**Wanglong Lu**, Jikai Wang, Xiaogang Jin, Xianta Jiang, and Hanli Zhao∗'
date: 2024-07-26
venue: 'IEEE Transactions on Visualization and Computer Graphics'
paperurl: 'https://arxiv.org/abs/2412.19009'
teaser: 'https://longlongaaago.github.io/images/publications/facemug_teaser.png'

---

![results](https://longlongaaago.github.io/images/publications/facemug_teaser.png)
<b> Brief description:</b>
<div style="text-align: justify"> Existing facial editing methods have achieved remarkable results, yet they often fall short in supporting multimodal conditional local facial editing. One of the significant
evidences is that their output image quality degrades dramatically
after several iterations of incremental editing, as they do not
support local editing. In this paper, we present a novel multimodal
generative and fusion framework for globally-consistent local
facial editing (FACEMUG) that can handle a wide range of input
modalities and enable fine-grained and semantic manipulation
while remaining unedited parts unchanged. Different modalities,
including sketches, semantic maps, color maps, exemplar images, text, and attribute labels, are adept at conveying diverse
conditioning details, and their combined synergy can provide
more explicit guidance for the editing process. We thus integrate
all modalities into a unified generative latent space to enable
multimodal local facial edits. Specifically, a novel multimodal
feature fusion mechanism is proposed by utilizing multimodal
aggregation and style fusion blocks to fuse facial priors and
multimodalities in both latent and feature spaces. We further
introduce a novel self-supervised latent warping algorithm to
rectify misaligned facial features, efficiently transferring the pose
of the edited image to the given latent codes. We evaluate our
FACEMUG through extensive experiments and comparisons to
state-of-the-art (SOTA) methods. The results demonstrate the
superiority of FACEMUG in terms of editing quality, flexibility,
and semantic control, making it a promising solution for a wide
range of local facial editing tasks.</div>


<!-- [[Homepage]](https://longlongaaago.github.io/EXE-GAN/) -->
[[youtube]](https://www.youtube.com/watch?v=O5r40NIXUcM)


Recommended citation: 

```
@ARTICLE{Lu10612246,
  author={Lu, Wanglong and Wang, Jikai and Jin, Xiaogang and Jiang, Xianta and Zhao, Hanli},
  journal={IEEE Transactions on Visualization and Computer Graphics}, 
  title={FACEMUG: A Multimodal Generative and Fusion Framework for Local Facial Editing}, 
  year={2024},
  volume={},
  number={},
  pages={1-15},
  keywords={Facial features;Semantics;Codes;Generators;Image synthesis;Faces;Image color analysis;Generative adversarial networks;image-toimage translation;multimodal fusion;image editing;facial editing},
  doi={10.1109/TVCG.2024.3434386}}
```
