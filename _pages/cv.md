---
layout: archive
title: "Wanglong Lu"
permalink: /cv/
author_profile: false
hide_title: true
redirect_from:
  - /resume
---

{% include base_path %}

<div class="wl-page-hero">
  <p class="wl-page-kicker">// curriculum vitae</p>
  <h1>Wanglong Lu</h1>
  <p>Senior Data Scientist in AI/Analytics at Nasdaq, Canada, with research experience in generative vision, image restoration, image editing, pattern recognition, and parameter-efficient adaptation.</p>
</div>

<div class="wl-toolbar">
  <a href="{{ '/cv-pdf/' | relative_url }}"><i class="fas fa-file-pdf" aria-hidden="true"></i>PDF Resume &amp; CV</a>
  <a href="{{ '/publications/' | relative_url }}"><i class="fas fa-book-open" aria-hidden="true"></i>Publications</a>
  <a href="{{ '/chinese_cv/' | relative_url }}"><i class="fas fa-language" aria-hidden="true"></i>中文简历</a>
  <a href="https://scholar.google.com/citations?user=TuxCf4UAAAAJ&amp;hl=en&amp;authuser=1"><i class="fas fa-graduation-cap" aria-hidden="true"></i>Google Scholar</a>
  <a href="mailto:lwlxhl@gmail.com"><i class="fas fa-envelope" aria-hidden="true"></i>Email</a>
</div>

<!-- <div style="text-align: justify"> -->
Wanglong Lu currently serves as a **Senior Data Scientist** in AI/Analytics at Nasdaq, Canada, and is based in **Toronto, ON, Canada**.
<!-- He also holds positions as an **Adjunct Supervisor** for PhD and Master's students at Memorial University of Newfoundland and Wenzhou University, working in close collaboration with Prof. Xianta Jiang and Prof. Hanli Zhao.  </div> -->

<!-- I am a Ph.D. student at Ubiquitous Computing and Machine Learning Research Lab ([UCML](https://sites.google.com/view/ucmi/home)), Memorial University of Newfoundland. -->

Education
======
* 2021-2025 Ph.D. Computer Science, Memorial University of Newfoundland.
* 2018-2021 M.Eng. (Master of Engineering), Computer Software and Theory, Wenzhou University.
* 2014-2018 B.Eng. (Bachelor of Engineering), Digital Media Technology, Communication University of Zhejiang.

Interests
======
* Computer Vision, Pattern Recognition, Generative Models, Parameter-Efficient Fine-Tuning, Multimodal AI Systems, and Financial AI.

Publications
======
<ul>{% for post in site.publications reversed%}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

Patents
======
* 2023-06 Chinese national invention patent: A category-consistent deep network learning for image recognition, Date of authorization: 2021.04.16, Hanli Zhao, **Wanglong Lu**, Qi He, Hui Huang. Patent number: ZL 2021 1 0408724.X 
* 2021-05 Chinese national invention patent: A deep feature-based convolutional neural network for vehicle logo recognition, Application number: 202010139043.3, Date of authorization: 2021.05.11, Hanli Zhao, **Wanglong Lu**, Qiang Chen. Patent number：ZL 2020 1 0139043.3 
* 2021-07 Chinese national invention patent: A GAN based intelligent segmentation method for retinal blood vessel image, Application number: 201910884346.5, Date of authorization: 2021.07.06, Hanli Zhao, **Wanglong Lu**, Xiaqing Qiu, Hui Huang. Patent number：ZL 2019 1 0884346.5
* 2021-09 Chinese national invention patent: A convolutional neural network-based intelligent vehicle logo detection method, Application number: 202010139068.3, Date of authorization: 2021.09.03, Hanli Zhao, **Wanglong Lu**. Patent number：ZL 2020 1 0139068.3

Selected honors
======
* 2024-04 Student Member Computer Innovation and Entrepreneurship Award of Wenzhou Computer Federation [(First Prize, Team Leader)](https://mp.weixin.qq.com/s/ZGJO5GGNbLVd2j58XkXYvw)
* 2023-04 Outstanding Research Award (Ph.D.) of The Department of Computer Science at Memorial University
* 2022-05 Mitacs Accelerate Award
* 2020-12 Outstanding Graduates of Wenzhou University
* 2019-12 National Post-Graduate Mathematical Contest in Modeling (Third Prize)
* 2019-07 College Students Programming Competition (CCPC)- Jiangxi College Students programming Competition Award, Jiangxi (Third Prize, Team Leader)
* 2018-06 Outstanding Graduates of Zhejiang Province
  <!-- * 2018-06 Outstanding Graduates of Communication University of Zhejiang, China  -->
* 2017-12 Zhejiang Provincial Government Scholarship, Zhejiang
* 2017-07 The 10th Chinese College Students Computer Design Competition service outsourcing "Parking Treasure Development" (second prize)
* 2016-12 Zhejiang Provincial Government Scholarship, Zhejiang
* 2015-12 Excellent Student Cadre of Communication University of Zhejiang

Work experience
======
### Nasdaq
St. John's, NL, Canada

**Senior Data Scientist, AI/Analytics | 2025.03-Present**
* Designed cross-scale ensemble feature selection, removing 77.2% of input features while retaining competitive performance on cheque-fraud ML (CFML) data; presented the work to 60+ attendees.
* Deployed an existing UI/backend prototype of a cross-team internal ML training platform into a **SageMaker workspace**, configuring network connectivity and IAM roles.
* Implemented PostgreSQL-backed user-state persistence and deployed FastAPI services to AWS Lambda using Mangum.
* The platform is under development for data ingestion, preprocessing, distributed training, feature selection, evaluation, and an auditable model registry. My contribution focuses on application deployment and integration.
* Built **SageMaker Job Submitter**, a Python package that packages local scripts and dependencies for SageMaker Processing, Training, Hyperparameter Tuning, and multi-step pipelines. Package-based submission cut developer job-configuration time from **7 days to 1 day, an approximately 86% reduction**.
* Designed a **feature-engineering workflow** that selects informative features using **feature-label AUROC**, with **PyTorch/CUDA-accelerated computation**. Used **Amazon Bedrock** to assess whether candidate features make semantic sense alongside their statistical signal.
* Developed **PagerDuty RAG incident-response assistant v2** on the company's GenAI platform, following the internal hackathon prototype. **Now used internally and recognized in a company shout-out**; retrieves incident context, troubleshooting guidance and resolution steps for on-call engineers.
* Mentored **cheque OCR quality assessment and text extraction** research. Identified a promising set of image-quality metrics consistent with human perception; the student completed a research presentation.
* Guided **sequential tabular-data generation** research leading to **StDDPM**, a **submitted manuscript** with a Research Square preprint. The Student-t diffusion/LSTM method was evaluated on **1.06 million Czech banking transaction records across 4,500 accounts** [[Paper]](https://doi.org/10.21203/rs.3.rs-7624993/v1) [[Code]](https://github.com/OmidTarkhaneh/StDDPM).
* Mentored **Seeam**, a **work-term student**, on an **input payload checker** from **June 2026**, and **Daniel**, a **Mitacs student**, on **graph neural networks (GNNs) for crime-ring detection** from **September 2026**.

**AI Algorithm Intern (two placements) | 2024.05-2025.01**
* Proposed **TextDoctor**, combining structure-pyramid prediction and patch-pyramid diffusion for document/cheque inpainting. Implemented the method in Python/PyTorch and ran comparative experiments with AWS, SLURM, CUDA, and shell scripts. **First-author manuscript submitted to Engineering Applications of Artificial Intelligence (EAAI)** [[Paper]](https://arxiv.org/abs/2503.04021).
* Evaluated **7 document datasets** without dataset-specific fine-tuning and demonstrated **8K inpainting on a 24GB RTX 3090**. On FUNSD, TextDoctor (GSDM) achieved **55.38% PaddleOCR word accuracy vs. 45.24% for DocDiff (+10.14 percentage points)** [[Results, Tables I-II]](https://arxiv.org/html/2503.04021v1).
* Designed **PLAID: Patch Gaussian Latent Discriminant Modeling for Few-Shot Biometric Image Verification**; **first-author submission to IEEE Transactions on Information Forensics and Security (TIFS)**. Submitted major revision in **April 2026**; currently awaiting the second-round decision.
* Modeled genuine and forged samples with **patch-level Gaussian discriminant learning without backbone fine-tuning**. Evaluated **8 signature/fingerprint benchmarks and 16 backbones**; under the **8-shot ResNet-152** setting, achieved **99.42% CEDAR AUROC and 98.42% GPDS-150 AUROC** in the revised manuscript's comparison table, averaged over five runs.
* Presented research after **both internship placements**: approximately **40-60 attendees** at the earlier talk and **39 cross-functional attendees** at the final talk.

### Beaufort Solutions
St. John's, NL, Canada

**AI Intern | 2022.07-2022.11**
* Led method design of **TEG**, a CLIP-based **few-shot adaptation** approach for personalized photo-book curation. Introduced a text-embedding-guided classifier and auxiliary classification loss to improve learning from limited labels.
* Designed the data-collection pipeline and led construction of **Theme25: 35,655 annotated images across 25 themes** [[Dataset]](https://github.com/YasuoFly/ThemeRecognition/blob/main/DATA_README.md).
* Evaluated on **Theme25, CIFAR100, and ImageNet** using Python/PyTorch and AWS/SLURM; research published in **Journal of Electronic Imaging 33(1), 013028 (2024)** [[Paper]](https://doi.org/10.1117/1.JEI.33.1.013028) [[Code]](https://github.com/YasuoFly/ThemeRecognition).

### Zhongkong Hanlian
Hangzhou, China

**AI Algorithm Intern | 2017.12-2018.08**
* Designed **ResNet-DenseNet fusion** for vehicle-logo recognition with Python and C++.
* Developed **Java annotation tools** and constructed a vehicle-logo dataset for training and evaluation.
* Deployed trained models using **Caffe for real-time inference at community security gates**.






<!--* Fall 2015: Research Assistant
  * Github University
  * Duties included: Merging pull requests
  * Supervisor: Professor Hub -->

Selected Engineering Projects
======
* **Local Agentic Code Editor: Nasdaq Internal Exploratory Prototype (2026)**
  * Built a working local AI code-editor prototype connecting **language-model APIs** to an **agentic loop** that selects code generation, code review or shell-tool execution based on the task.
  * Supports **bug diagnosis, code edits and automatic fixes**, using execution feedback to iterate and determine the next action. This remains an exploratory internal prototype, not an approved production product.
* **AI Headshot Generation Deployment**
  * Implemented model invocation and application deployment for AI-generated headshots.

Teaching and mentorship
======
* Mentored **12 students** across generative vision, restoration, recognition and applied ML research.
* 2021.09-2021.12 Teaching assistant of [Data Structures and Algorithms](https://www.mun.ca/computerscience/undergraduates/courses/comp-2002-data-structures-and-algorithms/), Memorial University

* 2024.01-2024.04 Teaching assistant of [Introduction to Machine Learning](https://www.mun.ca/computerscience/undergraduates/courses/comp-3202-introduction-to-machine-learning/), Memorial University

Academic service
======
Invited reviewer for **IEEE TPAMI, TIP, TMM, TCSVT, SPL**, [**IEEE Journal of Biomedical and Health Informatics (JBHI)**](https://www.embs.org/jbhi/articles/jbhi/), **Pattern Recognition**, **Engineering Applications of Artificial Intelligence (EAAI)**, Knowledge-Based Systems, Neurocomputing, Applied Soft Computing, Scientific Reports, The Visual Computer, and ECCV 2026.


<!-- Talks
======
  <ul>{% for post in site.talks %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>



Service and leadership
======
* Currently signed in to 43 different slack teams -->
