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
* 2018-2021 M.Sc. Computer Software and Theory, Wenzhou University.
* 2014-2018 B.Sc. Digital Media Technology, Communication University of Zhejiang.

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
### Nasdaq / Nasdaq Verafin
St. John's, NL, Canada

**Senior Data Scientist, AI/Analytics | 2025.03-Present**
* Designed cross-scale ensemble feature selection, removing 77.2% of input features while retaining competitive performance on cheque-fraud ML (CFML) data; presented the work to 60+ attendees.
* Deployed an existing UI/backend prototype of a cross-team internal ML training platform into an internal workspace, configuring network connectivity and IAM roles.
* Implemented PostgreSQL-backed user-state persistence and deployed FastAPI services to AWS Lambda using Mangum.
* The platform is under development for data ingestion, preprocessing, distributed training, feature selection, evaluation, and an auditable model registry. My contribution focuses on application deployment and integration.
* Built **SageMaker Job Submitter**, a Python package that packages local scripts and dependencies for SageMaker Processing, Training, Hyperparameter Tuning, and multi-step pipelines. Package-based submission cut developer job-configuration time from **7 days to 1 day, an approximately 86% reduction**.
* Developed Bedrock-based feature-formula validation with structured logical-consistency checks and reliability scores.
* Built a **PagerDuty RAG incident-response assistant** as an internal hackathon project on the company's GenAI platform, using incident context to retrieve troubleshooting guidance and resolution steps for on-call engineers.
* Mentored industry research on cheque OCR quality assessment and text extraction, and tabular-data generation, supporting pipeline design and generative-model architecture.

**AI Algorithm Intern | 2024.05-2025.01**
* Designed diffusion-based restoration for degraded cheque images in Python/PyTorch and ran comparative experiments using AWS, SLURM, CUDA, and shell scripts [[TextDoctor]](https://arxiv.org/abs/2503.04021).
* Developed patch-level Gaussian latent modeling for image verification; presented research progress to 39 cross-functional attendees at the end of the internship.

### Earlier Experience

* 2022.07-2022.11 AI algorithm intern, [Beaufort Solutions Inc.](https://www.beaufortsolutions.com/) , 1 Church Hill, St. John's, NL A1C 3Z7, Canada
  * Building an image theme recognition method using image caption and instance segmentation algorithms
 

* 2017.12-2018.08 AI algorithm intern, Hangzhou Zhongkong Hanlian Electronic Commerce Co. LTD, Hangzhou
  * Vehicle logo images Analysis and Processing
  * Assisting the development of image annotation tools






<!--* Fall 2015: Research Assistant
  * Github University
  * Duties included: Merging pull requests
  * Supervisor: Professor Hub -->

Selected Engineering Projects
======
* **Local Agentic Code Editor: Nasdaq Internal Exploratory Prototype (2026)**
  * Prototyped a local AI code editor with an agentic loop that selects between code writing, code review, and shell-tool execution based on the current task.
  * Integrated language-model APIs with local tool execution to support code generation, debugging, and iterative review.
* **AI Headshot Generation Deployment**
  * Implemented model invocation and application deployment for AI-generated headshots.

Teaching experience
======
* 2021.09-2021.12 Teaching assistant of [Data Structures and Algorithms](https://www.mun.ca/computerscience/undergraduates/courses/comp-2002-data-structures-and-algorithms/), Memorial University

* 2024.01-2024.04 Teaching assistant of [Introduction to Machine Learning](https://www.mun.ca/computerscience/undergraduates/courses/comp-3202-introduction-to-machine-learning/), Memorial University


<!-- Talks
======
  <ul>{% for post in site.talks %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>



Service and leadership
======
* Currently signed in to 43 different slack teams -->
