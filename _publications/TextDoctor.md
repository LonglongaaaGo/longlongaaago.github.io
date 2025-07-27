---

title: "TextDoctor: Unified Document Image Inpainting via Patch Pyramid Diffusion Models"
collection: publications
permalink: /publication/textdoctor
excerpt: '**Wanglong Lu**, Lingming Su, Jingjing Zheng, Vinícius Veloso de Melo, Farzaneh Shoeleh, John Hawkin, Terrence Tricco, Hanli Zha*o*, Xianta Jiang'
date: 2025-03-06
venue: 'ArXiv'
paperurl: 'https://arxiv.org/abs/2503.04021'
teaser: 'https://longlongaaago.github.io/images/publications/textdoctor_teaser.png'

---

![results](https://longlongaaago.github.io/images/publications/textdoctor_teaser.png)
<b> Brief description:</b>
<div style="text-align: justify">Digital versions of real-world text documents often suffer from issues like environmental corrosion of the original document, low-quality scanning, or human interference. Existing document restoration and inpainting methods typically struggle with generalizing to unseen document styles and handling high-resolution images. To address these challenges, we introduce TextDoctor, a novel unified document image inpainting method. Inspired by human reading behavior, TextDoctor restores fundamental text elements from patches and then applies diffusion models to entire document images instead of training models on specific document types. To handle varying text sizes and avoid out-of-memory issues, common in high-resolution documents, we propose using structure pyramid prediction and patch pyramid diffusion models. These techniques leverage multiscale inputs and pyramid patches to enhance the quality of inpainting both globally and locally. Extensive qualitative and quantitative experiments on seven public datasets validated that TextDoctor outperforms state-of-the-art methods in restoring various types of high-resolution document images. </div>


<!-- [[github]](https://github.com/LonglongaaaGo/VSPBFR) -->
<!-- [[youtube]](https://www.youtube.com/watch?v=O5r40NIXUcM) -->


Recommended citation: 

```
@misc{lu2025textdoctorunifieddocumentimage,
      title={TextDoctor: Unified Document Image Inpainting via Patch Pyramid Diffusion Models}, 
      author={Wanglong Lu and Lingming Su and Jingjing Zheng and Vinícius Veloso de Melo and Farzaneh Shoeleh and John Hawkin and Terrence Tricco and Hanli Zhao and Xianta Jiang},
      year={2025},
      eprint={2503.04021},
      archivePrefix={arXiv},
      primaryClass={cs.CV},
      url={https://arxiv.org/abs/2503.04021}, 
}
```
