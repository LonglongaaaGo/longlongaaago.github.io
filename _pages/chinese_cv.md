---
layout: archive
title: "卢望龙"
permalink: /chinese_cv/
author_profile: false
hide_title: true
redirect_from:
  - /resume
---

{% include base_path %}

<div class="wl-page-hero">
  <p class="wl-page-kicker">// 中文简历</p>
  <h1>卢望龙</h1>
  <p>加拿大纳斯达克 AI/Analytics 高级数据科学家，现居 St. John's，纽芬兰与拉布拉多省，加拿大。研究方向包括生成式视觉、图像修复、图像编辑、模式识别、参数高效微调和多模态生成式 AI 系统。</p>
</div>

<div class="wl-toolbar">
  <a href="{{ '/cv-pdf/' | relative_url }}"><i class="fas fa-file-pdf" aria-hidden="true"></i>PDF 简历（英文）</a>
  <a href="{{ '/publications/' | relative_url }}"><i class="fas fa-book-open" aria-hidden="true"></i>发表论文</a>
  <a href="{{ '/cv/' | relative_url }}"><i class="fas fa-file-alt" aria-hidden="true"></i>English CV</a>
  <a href="https://scholar.google.com/citations?user=TuxCf4UAAAAJ&amp;hl=en&amp;authuser=1"><i class="fas fa-graduation-cap" aria-hidden="true"></i>Google Scholar</a>
  <a href="mailto:lwlxhl@gmail.com"><i class="fas fa-envelope" aria-hidden="true"></i>Email</a>
</div>

<!-- 纽芬兰纪念大学普适计算和机器学习研究实验室([UCML](https://sites.google.com/view/ucmi/home) )博士生。 -->

<div style="text-align: justify">
卢望龙现担任加拿大纳斯达克人工智能/分析领域高级数据科学家。2021年获温州大学计算机工学硕士学位，2025年获纽芬兰纪念大学计算机博士学位，研究方向为模式识别、图像编辑与重建、参数高效微调以及可扩展多模态/生成式 AI 系统。已联合发表20余篇高水平论文，涵盖TVCG、ECCV、Pattern Recognition、CVMJ、TNNLS、TCSVT、Information Fusion 等期刊和会议，并获得4项国家发明专利授权。同时担任IEEE TPAMI、TMM、TIP、TCSVT、Pattern Recognition、Applied Soft Computing、EAAI、Scientific Reports、Neurocomputing、KBS、JVCI、Displays等国际期刊和会议的审稿人。 </div>

教育背景
======
* 2021-2025 加拿大纽芬兰纪念大学-计算机科学博士
* 2018-2021 温州大学计算机科学与人工智能学院-计算机软件与理论-工学硕士（M.Eng.）
* 2014-2018 浙江传媒学院-数字媒体技术-工学学士（B.Eng.）

研究兴趣
======
* 计算机视觉, 模式识别, 生成式模型, 图像编辑与修复, 参数高效微调, 多模态 AI, 金融 AI

发表
======
<ul>{% for post in site.publications reversed%}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

专利
======
* 2023-06 一种基于类别一致性深度学习的图像识别方法. 国家发明专利, 赵汉理, **卢望龙**, 何奇, 黄辉. 专利号：ZL 2021 1 0408724.X
* 2021-05 一种基于卷积神经网络深度特征的车标识别方法. 国家发明专利, 赵汉理, **卢望龙**, 陈强. 专利号：ZL 2020 1 0139043.3
* 2021-07 一种基于GAN的视网膜血管图像智能分割方法. 国家发明专利, 赵汉理, **卢望龙**, 邱夏青, 黄辉. 专利号：ZL 2019 1 0884346.5
* 2021-09 一种基于卷积神经网络的车标智能检测方法. 国家发明专利, 赵汉理, **卢望龙**. 专利号：ZL 2020 1 0139068.3

部分荣誉
======
* 2024-04 温州市计算机学会学生会员计算机创新创业奖 [(一等奖，队长)](https://mp.weixin.qq.com/s/ZGJO5GGNbLVd2j58XkXYvw)
* 2023-04 纪念大学计算机科学系杰出研究奖 (博士)
* 2022-05 Mitacs Accelerate Award
* 2020-12 温州大学优秀毕业生 (研究生)
* 2019-12 全国研究生数学建模大赛(三等奖) 
* 2019-07 大学生程序设计大赛(CCPC)-江西省大学生程序设计大赛中国江西省(三等奖，队长)
* 2018-06 浙江省优秀毕业生
* 2017-12 浙江省政府奖学金，浙江省
* 2017-07 第十届中国大学生计算机设计大赛服务外包 “泊乐-智能路侧泊车系统” (二等奖)  
* 2016-12 浙江省政府奖学金，浙江省
* 2015-12 中国浙江传媒学院优秀学生干部

工作经历
======
### Nasdaq
St. John's，NL，加拿大

**高级数据科学家，AI/Analytics | 2025.03-至今**
* 设计跨尺度集成特征选择算法，在支票欺诈机器学习（CFML）数据上移除 77.2% 的输入特征并保持有竞争力的性能，向 60 余人分享成果。
* 将跨团队共建的内部 ML 训练平台原有 UI/后端原型部署并接入 **SageMaker workspace**，配置网络连接和 IAM 角色。
* 使用 PostgreSQL 持久化用户使用状态，通过 FastAPI + Mangum 将服务部署至 AWS Lambda。
* 平台仍在研发，整体范围包括数据采集、预处理、分布式训练、特征选择、模型评估及可审计的模型登记；本人贡献集中在应用部署与集成。
* 开发 **SageMaker Job Submitter**，通过 Python 包自动打包本地脚本及依赖，支持 SageMaker Processing、Training、Hyperparameter Tuning 及多步骤流水线。开发人员的作业配置时间从 **7 天缩短至 1 天，减少约 86%**。
* 设计**特征工程流程**，使用**特征与标签之间的 AUROC** 筛选有信息量的特征，通过 **PyTorch/CUDA 加速计算**；进一步使用 **Amazon Bedrock** 检查候选特征是否具有合理的语义，结合统计信号与业务含义进行判断。
* 基于公司 GenAI 平台，将内部 hackathon 原型推进为 **PagerDuty RAG 故障响应助手 v2**，**现已投入公司内部使用，并获得公司内部 shout-out 认可**；根据故障上下文检索排查指南及解决步骤，辅助值班工程师定位问题。
* 指导**支票 OCR 图像质量评估与文本提取**研究，找到一组与人类感知一致、具有潜力的图像质量指标；学生已完成研究汇报。
* 指导**时序表格数据生成**研究，形成 **StDDPM 已投稿稿件**，并发布 Research Square 预印本。该方法结合 Student-t 扩散与 LSTM，在 **106 万条捷克银行交易记录、4,500 个账户**上开展评估 [[论文]](https://doi.org/10.21203/rs.3.rs-7624993/v1) [[代码]](https://github.com/OmidTarkhaneh/StDDPM)。
* 自 **2026 年 6 月**起指导 **work-term 学生 Seeam**，开展**输入载荷检查工具（input payload checker）**项目；自 **2026 年 9 月**起指导 **Mitacs 学生 Daniel**，开展**基于图神经网络（GNN）的犯罪团伙检测**研究。

**AI 算法实习生（两段实习） | 2024.05-2025.01**
* 提出 **TextDoctor**，结合结构金字塔预测与 patch 金字塔扩散模型，用于文档及支票图像修补。使用 Python/PyTorch 实现方法，通过 AWS、SLURM、CUDA 及 shell 脚本开展对比实验；**以第一作者投稿 Engineering Applications of Artificial Intelligence（EAAI）** [[论文]](https://arxiv.org/abs/2503.04021)。
* 在 **7 个文档数据集**上评估，无需针对每个数据集重新微调，并在 **24GB RTX 3090 上完成 8K 图像修补**。在 FUNSD 上，TextDoctor（GSDM）的 **PaddleOCR 单词准确率为 55.38%，DocDiff 为 45.24%，提高 10.14 个百分点** [[实验表 I-II]](https://arxiv.org/html/2503.04021v1)。
* 设计 **PLAID：Patch Gaussian Latent Discriminant Modeling for Few-Shot Biometric Image Verification**，用于少样本生物特征图像验证；**以第一作者投稿 IEEE Transactions on Information Forensics and Security（TIFS）**，于 **2026 年 4 月提交大修稿，目前等待第二轮结果**。
* 通过 **patch 级高斯判别建模**区分真实与伪造样本，**无需微调骨干网络**；在 **8 个签名／指纹基准和 16 种骨干网络**上评估。新版大修稿对比表中，**8-shot、ResNet-152** 设置下的 **CEDAR AUROC 为 99.42%，GPDS-150 AUROC 为 98.42%**，结果为五次运行的均值。
* **两段实习均进行了研究汇报**：前次听众约 **40-60 人**，末次为 **39 位跨职能同事**。

### Beaufort Solutions
St. John's，NL，加拿大

**AI 实习生 | 2022.07-2022.11**
* 主导 **TEG** 方法设计，基于 CLIP 进行**少样本适配／微调**，用于个性化相册主题分类；提出文本嵌入引导的分类器和辅助分类损失，改善有限标注下的学习效果。
* 设计数据采集流程并主导构建 **Theme25：35,655 张标注图片、25 个主题类别** [[数据集]](https://github.com/YasuoFly/ThemeRecognition/blob/main/DATA_README.md)。
* 使用 Python/PyTorch 及 AWS/SLURM，在 **Theme25、CIFAR100 和 ImageNet** 上开展评估；研究发表于 **Journal of Electronic Imaging 33(1), 013028（2024）** [[论文]](https://doi.org/10.1117/1.JEI.33.1.013028) [[代码]](https://github.com/YasuoFly/ThemeRecognition)。

### 杭州中控瀚联电子商务有限公司
杭州，中国

**AI 算法实习生 | 2017.12-2018.08**
* 使用 Python 和 C++ 设计 **ResNet 与 DenseNet 融合的车标识别模型**。
* 开发 **Java 图像标注工具**，构建用于训练与评估的车标数据集。
* 使用 **Caffe** 将训练后的模型部署至**小区安防门禁场景进行实时推理**。

<!--* Fall 2015: Research Assistant
  * Github University
  * Duties included: Merging pull requests
  * Supervisor: Professor Hub -->

工程项目
======
* **本地 Agentic Code Editor：Nasdaq 内部探索原型（2026）**
  * 开发可运行的本地 AI 代码编辑器原型，将**语言模型 API**接入 **agentic loop**，根据任务选择代码生成、代码审查或 shell 工具调用。
  * 支持**定位 bug、修改代码与自动修复**，根据执行反馈迭代并决定下一步操作。目前仍为内部探索原型，尚未获批为正式生产产品。
* **AI 大头照生成部署**
  * 实现生成模型调用与应用部署，用于 AI 大头照生成。

教学与指导经历
======

* 累计指导 **12 名学生**，涵盖生成式视觉、图像修复、识别与应用机器学习研究。

* 2021.09-2021.12 数据结构与算法课程助教, [Data Structures and Algorithms](https://www.mun.ca/computerscience/undergraduates/courses/comp-2002-data-structures-and-algorithms/), 纽芬兰纪念大学, 加拿大

* 2024.01-2024.04 初阶机器学习课程助教, [Introduction to Machine Learning](https://www.mun.ca/computerscience/undergraduates/courses/comp-3202-introduction-to-machine-learning/), 纽芬兰纪念大学, 加拿大

学术服务
======
受邀担任 **IEEE TPAMI、TIP、TMM、TCSVT、SPL**、[**IEEE Journal of Biomedical and Health Informatics（JBHI）**](https://www.embs.org/jbhi/articles/jbhi/)、**Pattern Recognition**、**Engineering Applications of Artificial Intelligence（EAAI）**、Knowledge-Based Systems、Neurocomputing、Applied Soft Computing、Scientific Reports、The Visual Computer 及 ECCV 2026 的审稿人。


<!-- Talks
======
  <ul>{% for post in site.talks %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>



Service and leadership
======
* Currently signed in to 43 different slack teams -->
