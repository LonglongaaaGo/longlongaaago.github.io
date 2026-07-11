---
permalink: /
title: "Wanglong Lu"
excerpt: ""
author_profile: false
redirect_from:
  - /about/
  - /about.html
---

<style>
  :root {
    --wl-ink: #20221f;
    --wl-muted: #626a64;
    --wl-soft: #f5f6f1;
    --wl-panel: #ffffff;
    --wl-border: #d9ded5;
    --wl-blue: #2c638f;
    --wl-green: #55766a;
    --wl-gold: #a8752a;
    --wl-red: #a15045;
  }

  body {
    background: var(--wl-soft);
  }

  #main {
    max-width: 1180px;
    padding-left: 18px;
    padding-right: 18px;
  }

  #main .page {
    float: none;
    width: 100%;
    padding-right: 0;
  }

  #main .page__inner-wrap {
    float: none;
    width: 100%;
  }

  #main .page__title,
  #main .page__meta {
    display: none;
  }

  #main .page__content {
    font-size: 1rem;
    line-height: 1.68;
  }

  .wl-home,
  .wl-home * {
    box-sizing: border-box;
  }

  .wl-home {
    color: var(--wl-ink);
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
    margin: 0 auto 48px;
  }

  .wl-home a {
    color: var(--wl-blue);
    text-decoration: none;
  }

  .wl-home a:hover {
    color: var(--wl-red);
    text-decoration: underline;
  }

  .wl-shell {
    align-items: center;
    background: #1f2825;
    border: 1px solid #151c1a;
    border-radius: 8px;
    color: #f0f4ee;
    display: flex;
    gap: 18px;
    justify-content: space-between;
    margin: 10px 0 28px;
    min-height: 56px;
    padding: 12px 16px;
  }

  .wl-prompt {
    color: #dce7dd;
    font-family: "SFMono-Regular", Consolas, "Liberation Mono", Menlo, monospace;
    font-size: 0.92rem;
    overflow-wrap: anywhere;
  }

  .wl-prompt strong {
    color: #f7c870;
    font-weight: 700;
  }

  .wl-nav {
    align-items: center;
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    justify-content: flex-end;
  }

  .wl-nav a,
  .wl-button {
    align-items: center;
    border: 1px solid var(--wl-border);
    border-radius: 8px;
    display: inline-flex;
    gap: 7px;
    min-height: 34px;
    padding: 6px 10px;
    white-space: nowrap;
  }

  .wl-nav a {
    border-color: rgba(240, 244, 238, 0.24);
    color: #f0f4ee;
    font-size: 0.84rem;
  }

  .wl-nav a:hover {
    background: rgba(240, 244, 238, 0.12);
    color: #ffffff;
    text-decoration: none;
  }

  .wl-hero {
    display: grid;
    gap: 28px;
    grid-template-columns: minmax(230px, 310px) minmax(0, 1fr);
    margin-bottom: 38px;
  }

  .wl-identity {
    align-self: start;
    background: var(--wl-panel);
    border: 1px solid var(--wl-border);
    border-radius: 8px;
    padding: 16px;
  }

  .wl-portrait {
    aspect-ratio: 1 / 1;
    border-radius: 8px;
    display: block;
    height: auto;
    object-fit: cover;
    width: 100%;
  }

  .wl-name {
    font-size: clamp(1.65rem, 2vw, 2rem);
    line-height: 1.12;
    margin: 16px 0 4px;
  }

  .wl-role {
    color: var(--wl-muted);
    font-size: 0.96rem;
    margin: 0 0 14px;
  }

  .wl-contact {
    color: var(--wl-muted);
    display: grid;
    font-size: 0.88rem;
    gap: 6px;
    margin: 14px 0 0;
    overflow-wrap: anywhere;
  }

  .wl-links {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin-top: 16px;
  }

  .wl-button {
    background: #f8faf6;
    color: var(--wl-ink);
    font-size: 0.84rem;
  }

  .wl-button:hover {
    border-color: #bfc8bd;
    color: var(--wl-blue);
    text-decoration: none;
  }

  .wl-intro {
    min-width: 0;
    padding-top: 6px;
  }

  .wl-kicker {
    color: var(--wl-green);
    font-family: "SFMono-Regular", Consolas, "Liberation Mono", Menlo, monospace;
    font-size: 0.9rem;
    font-weight: 700;
    margin: 0 0 12px;
  }

  .wl-headline {
    font-size: clamp(2rem, 4vw, 4.1rem);
    line-height: 1.04;
    margin: 0 0 18px;
    max-width: 860px;
  }

  .wl-lead {
    color: #3f4842;
    font-size: clamp(1.02rem, 1.45vw, 1.2rem);
    line-height: 1.72;
    margin: 0 0 16px;
    max-width: 860px;
  }

  .wl-focus {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin: 20px 0 0;
  }

  .wl-chip {
    background: #e8eee7;
    border: 1px solid #d4ddd2;
    border-radius: 8px;
    color: #34423b;
    display: inline-flex;
    font-size: 0.84rem;
    font-weight: 650;
    line-height: 1.2;
    padding: 7px 10px;
  }

  .wl-chip.is-blue {
    background: #e6eef4;
    border-color: #cddbe5;
    color: #264d68;
  }

  .wl-chip.is-gold {
    background: #f4ecdc;
    border-color: #e4d2ad;
    color: #684a1d;
  }

  .wl-section {
    margin-top: 42px;
  }

  .wl-section-head {
    align-items: end;
    border-bottom: 1px solid var(--wl-border);
    display: flex;
    gap: 14px;
    justify-content: space-between;
    margin-bottom: 18px;
    padding-bottom: 10px;
  }

  .wl-section h2 {
    font-family: "SFMono-Regular", Consolas, "Liberation Mono", Menlo, monospace;
    font-size: 1rem;
    line-height: 1.3;
    margin: 0;
  }

  .wl-section-link {
    font-size: 0.88rem;
    white-space: nowrap;
  }

  .wl-grid {
    display: grid;
    gap: 14px;
  }

  .wl-grid.two {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }

  .wl-grid.three {
    grid-template-columns: repeat(3, minmax(0, 1fr));
  }

  .wl-item {
    background: var(--wl-panel);
    border: 1px solid var(--wl-border);
    border-radius: 8px;
    min-width: 0;
    padding: 16px;
  }

  .wl-item h3,
  .wl-paper h3 {
    font-size: 1.02rem;
    line-height: 1.35;
    margin: 0 0 6px;
  }

  .wl-meta {
    color: var(--wl-muted);
    font-size: 0.88rem;
    line-height: 1.45;
    margin: 0;
  }

  .wl-item p {
    color: #465049;
    font-size: 0.94rem;
    margin: 10px 0 0;
  }

  .wl-overview {
    display: grid;
    gap: 18px;
    grid-template-columns: minmax(0, 1.05fr) minmax(240px, 0.95fr);
  }

  .wl-overview-copy {
    color: #3f4842;
    font-size: 1.02rem;
    line-height: 1.72;
    margin: 0;
  }

  .wl-overview-visual {
    background: #f7f8f3;
    border: 1px solid var(--wl-border);
    border-radius: 8px;
    min-height: 280px;
    overflow: hidden;
    position: relative;
  }

  .wl-overview-visual img {
    display: block;
    height: 100%;
    min-height: 280px;
    object-fit: contain;
    padding: 0;
    width: 100%;
  }

  .wl-papers {
    display: grid;
    gap: 16px;
  }

  .wl-paper {
    background: var(--wl-panel);
    border: 1px solid var(--wl-border);
    border-radius: 8px;
    display: grid;
    gap: 16px;
    grid-template-columns: 240px minmax(0, 1fr);
    overflow: hidden;
  }

  .wl-paper-media {
    background: #eef2ef;
    min-height: 154px;
    position: relative;
  }

  .wl-paper-media img {
    display: block;
    height: 100%;
    object-fit: contain;
    padding: 10px;
    width: 100%;
  }

  .wl-badge {
    background: var(--wl-blue);
    border-radius: 8px;
    color: #ffffff;
    font-size: 0.76rem;
    font-weight: 700;
    left: 10px;
    line-height: 1;
    padding: 6px 8px;
    position: absolute;
    top: 10px;
  }

  .wl-badge.green {
    background: var(--wl-green);
  }

  .wl-badge.gold {
    background: var(--wl-gold);
  }

  .wl-badge.red {
    background: var(--wl-red);
  }

  .wl-paper-body {
    min-width: 0;
    padding: 16px 16px 16px 0;
  }

  .wl-authors {
    color: #465049;
    font-size: 0.9rem;
    line-height: 1.48;
    margin: 0 0 6px;
  }

  .wl-venue {
    color: var(--wl-muted);
    font-size: 0.88rem;
    line-height: 1.45;
    margin: 0 0 10px;
  }

  .wl-desc {
    color: #3f4842;
    font-size: 0.94rem;
    line-height: 1.58;
    margin: 0 0 12px;
  }

  .wl-paper-links {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
  }

  .wl-paper-links a {
    border: 1px solid var(--wl-border);
    border-radius: 8px;
    color: var(--wl-ink);
    font-size: 0.82rem;
    padding: 5px 9px;
  }

  .wl-paper-links a:hover {
    border-color: #bfc8bd;
    color: var(--wl-blue);
    text-decoration: none;
  }

  .wl-news {
    display: grid;
    gap: 10px;
    margin: 0;
    padding: 0;
  }

  .wl-news li {
    background: var(--wl-panel);
    border: 1px solid var(--wl-border);
    border-radius: 8px;
    display: grid;
    gap: 8px;
    grid-template-columns: 88px minmax(0, 1fr);
    list-style: none;
    padding: 12px 14px;
  }

  .wl-news time {
    color: var(--wl-green);
    font-family: "SFMono-Regular", Consolas, "Liberation Mono", Menlo, monospace;
    font-size: 0.82rem;
    font-weight: 700;
  }

  .wl-news span {
    color: #3f4842;
    font-size: 0.94rem;
    line-height: 1.55;
  }

  .wl-details {
    background: var(--wl-panel);
    border: 1px solid var(--wl-border);
    border-radius: 8px;
    margin-top: 12px;
    padding: 0;
  }

  .wl-details summary {
    cursor: pointer;
    font-weight: 700;
    list-style-position: inside;
    padding: 13px 15px;
  }

  .wl-details ol {
    margin: 0;
    padding: 0 18px 16px 34px;
  }

  .wl-details li {
    color: #3f4842;
    font-size: 0.93rem;
    line-height: 1.58;
    margin: 9px 0;
  }

  .wl-service-list {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin: 0;
    padding: 0;
  }

  .wl-service-list li {
    list-style: none;
  }

  .wl-service-list a,
  .wl-service-list span {
    background: #f8faf6;
    border: 1px solid var(--wl-border);
    border-radius: 8px;
    color: var(--wl-ink);
    display: inline-flex;
    font-size: 0.86rem;
    line-height: 1.2;
    padding: 7px 10px;
  }

  .wl-footer {
    border-top: 1px solid var(--wl-border);
    color: var(--wl-muted);
    font-size: 0.84rem;
    margin-top: 44px;
    padding-top: 18px;
  }

  @media (max-width: 900px) {
    .wl-shell,
    .wl-section-head {
      align-items: flex-start;
      flex-direction: column;
    }

    .wl-nav {
      justify-content: flex-start;
    }

    .wl-hero,
    .wl-overview,
    .wl-grid.two,
    .wl-grid.three {
      grid-template-columns: 1fr;
    }

    .wl-identity {
      max-width: 340px;
    }

    .wl-paper {
      grid-template-columns: 1fr;
    }

    .wl-paper-media {
      min-height: 210px;
    }

    .wl-paper-body {
      padding: 0 16px 16px;
    }
  }

  @media (max-width: 540px) {
    #main {
      padding-left: 12px;
      padding-right: 12px;
    }

    .wl-shell,
    .wl-identity,
    .wl-item,
    .wl-news li,
    .wl-details {
      border-radius: 8px;
    }

    .wl-news li {
      grid-template-columns: 1fr;
    }

    .wl-nav a,
    .wl-button {
      white-space: normal;
    }
  }
</style>

<div class="wl-home">
  <nav class="wl-shell" aria-label="Home shortcuts">
    <div class="wl-prompt"><strong>WanglongLu@Nasdaq</strong>:~$ open profile</div>
    <div class="wl-nav">
      <a href="{{ '/' | relative_url }}">Home</a>
      <a href="{{ '/publications/' | relative_url }}">Publications</a>
      <a href="{{ '/cv/' | relative_url }}">CV</a>
      <a href="{{ '/chinese_cv/' | relative_url }}">中文简历</a>
      <a href="https://scholar.google.com/citations?user=TuxCf4UAAAAJ&amp;hl=en&amp;authuser=1">Scholar</a>
    </div>
  </nav>

  <section class="wl-hero" aria-label="Profile">
    <aside class="wl-identity">
      <img class="wl-portrait" src="{{ '/images/profile-wanglong2.png' | relative_url }}" alt="Wanglong Lu">
      <h1 class="wl-name">Wanglong Lu</h1>
      <p class="wl-role">Senior Data Scientist, AI/Analytics, Nasdaq Canada</p>
      <div class="wl-links" aria-label="Profile links">
        <a class="wl-button" href="mailto:wanglong.lu@nasdaq.com"><i class="fas fa-envelope" aria-hidden="true"></i>Email</a>
        <a class="wl-button" href="https://scholar.google.com/citations?user=TuxCf4UAAAAJ&amp;hl=en&amp;authuser=1"><i class="fas fa-graduation-cap" aria-hidden="true"></i>Scholar</a>
        <a class="wl-button" href="https://github.com/Longlongaaago"><i class="fab fa-github" aria-hidden="true"></i>GitHub</a>
        <a class="wl-button" href="https://www.linkedin.com/in/wanglong-lu-8a98b6235/"><i class="fab fa-linkedin" aria-hidden="true"></i>LinkedIn</a>
        <a class="wl-button" href="https://orcid.org/0000-0001-7956-4084"><i class="fab fa-orcid" aria-hidden="true"></i>ORCID</a>
      </div>
      <div class="wl-contact">
        <span>wanglong.lu@nasdaq.com</span>
        <span>lwlxhl@gmail.com</span>
        <span>wanglongl@mun.ca</span>
        <span>Newfoundland, Canada</span>
      </div>
    </aside>

    <div class="wl-intro">
      <p class="wl-kicker">// applied generative vision and multimodal AI</p>
      <h2 class="wl-headline">Generative vision researcher turned applied ML engineer.</h2>
      <p class="wl-lead">I work on production AI systems for financial applications at Nasdaq, while continuing research collaborations in generative vision, image restoration, image editing, and parameter-efficient adaptation.</p>
      <p class="wl-lead">My current direction is toward scalable multimodal and generative AI systems that connect robust model design with deployable machine learning products.</p>
      <div class="wl-focus" aria-label="Research focus">
        <span class="wl-chip">Generative Models</span>
        <span class="wl-chip is-blue">Computer Vision</span>
        <span class="wl-chip">Image Restoration</span>
        <span class="wl-chip is-gold">Image Editing</span>
        <span class="wl-chip is-blue">Parameter-Efficient Fine-Tuning</span>
        <span class="wl-chip">Financial AI Systems</span>
      </div>
    </div>
  </section>

  <section class="wl-section" aria-labelledby="experience">
    <div class="wl-section-head">
      <h2 id="experience">// experience</h2>
    </div>
    <div class="wl-grid three">
      <article class="wl-item">
        <h3>Nasdaq</h3>
        <p class="wl-meta">Senior Data Scientist, AI/Analytics · 2025 - Present</p>
        <p>Building and applying machine learning systems for financial AI products in production settings.</p>
      </article>
      <article class="wl-item">
        <h3>Nasdaq Verafin</h3>
        <p class="wl-meta">AI Research Intern · 2024 - 2025</p>
        <p>Worked on image verification and delivered research progress presentations to cross-functional audiences.</p>
      </article>
      <article class="wl-item">
        <h3>Research Collaboration</h3>
        <p class="wl-meta">Memorial University of Newfoundland · Wenzhou University</p>
        <p>Collaborating with and mentoring Ph.D. and Master's students with Prof. Xianta Jiang and Prof. Hanli Zhao.</p>
      </article>
    </div>
  </section>

  <section class="wl-section" aria-labelledby="education">
    <div class="wl-section-head">
      <h2 id="education">// education</h2>
    </div>
    <div class="wl-grid three">
      <article class="wl-item">
        <h3>Memorial University of Newfoundland</h3>
        <p class="wl-meta">Ph.D. in Computer Science · 2025</p>
      </article>
      <article class="wl-item">
        <h3>Wenzhou University</h3>
        <p class="wl-meta">M.Sc. in Computer Software and Theory · 2021</p>
      </article>
      <article class="wl-item">
        <h3>Communication University of Zhejiang</h3>
        <p class="wl-meta">B.Sc. in Digital Media Technology · 2018</p>
      </article>
    </div>
  </section>

  <section class="wl-section" aria-labelledby="overview">
    <div class="wl-section-head">
      <h2 id="overview">// research overview</h2>
    </div>
    <div class="wl-overview">
      <p class="wl-overview-copy">My research started from image recognition and restoration, then moved toward generative image editing, document restoration, face restoration, and multimodal generative systems. Recent work includes ultra-high-resolution image editing, dual-domain restoration, lightweight super-resolution, and adaptive parameter-efficient fine-tuning. In parallel, my industry work emphasizes robust ML systems that can survive real production constraints.</p>
      <div class="wl-overview-visual">
        <img src="{{ '/images/research-overview.svg' | relative_url }}" alt="Research overview map for generative vision, restoration, efficient adaptation, and applied ML systems">
      </div>
    </div>
  </section>

  <section class="wl-section" aria-labelledby="selected-work">
    <div class="wl-section-head">
      <h2 id="selected-work">// selected publications</h2>
      <a class="wl-section-link" href="{{ '/publications/' | relative_url }}">view all publications →</a>
    </div>

    <div class="wl-papers">
      <article class="wl-paper">
        <div class="wl-paper-media">
          <img src="{{ '/images/publications/ultradiffedit_pipeline.png' | relative_url }}" alt="UltraDiffEdit pipeline">
          <span class="wl-badge">TNNLS</span>
        </div>
        <div class="wl-paper-body">
          <h3><a href="{{ '/publication/tuning_free_latent_diffusion_editing' | relative_url }}">Tuning-Free Latent Diffusion Models for Ultrahigh-Resolution Image Editing</a></h3>
          <p class="wl-authors"><strong>Wanglong Lu</strong>, Lingming Su, Kaijie Shi, Minglun Gong, Xiaogang Jin, Hanli Zhao, Xianta Jiang</p>
          <p class="wl-venue">IEEE Transactions on Neural Networks and Learning Systems, 1-15, 2026</p>
          <p class="wl-desc">UltraDiffEdit extends off-the-shelf latent diffusion models to tuning-free real-image editing up to 8K resolution.</p>
          <div class="wl-paper-links">
            <a href="{{ '/publication/tuning_free_latent_diffusion_editing' | relative_url }}">Details</a>
            <a href="https://arxiv.org/abs/2607.06136">Paper</a>
            <a href="https://github.com/LonglongaaaGo/UltraDiffEdit">Code</a>
          </div>
        </div>
      </article>

      <article class="wl-paper">
        <div class="wl-paper-media">
          <img src="{{ '/images/publications/facemug_teaser.png' | relative_url }}" alt="FACEMUG teaser">
          <span class="wl-badge gold">TVCG</span>
        </div>
        <div class="wl-paper-body">
          <h3><a href="{{ '/publication/facemug' | relative_url }}">FACEMUG: A Multimodal Generative and Fusion Framework for Local Facial Editing</a></h3>
          <p class="wl-authors"><strong>Wanglong Lu</strong>, Jikai Wang, Xiaogang Jin, Xianta Jiang, Hanli Zhao</p>
          <p class="wl-venue">IEEE Transactions on Visualization and Computer Graphics, 2024</p>
          <p class="wl-desc">A multimodal generative framework for globally consistent local facial editing with fine-grained semantic control.</p>
          <div class="wl-paper-links">
            <a href="{{ '/publication/facemug' | relative_url }}">Details</a>
            <a href="https://arxiv.org/abs/2412.19009">Paper</a>
            <a href="https://www.youtube.com/watch?v=O5r40NIXUcM">Video</a>
          </div>
        </div>
      </article>

      <article class="wl-paper">
        <div class="wl-paper-media">
          <img src="{{ '/images/publications/VSP_restoration_teaser.png' | relative_url }}" alt="Visual style prompt learning teaser">
          <span class="wl-badge green">PR</span>
        </div>
        <div class="wl-paper-body">
          <h3><a href="{{ '/publication/vsp_face_restoration' | relative_url }}">Visual Style Prompt Learning Using Diffusion Models for Blind Face Restoration</a></h3>
          <p class="wl-authors"><strong>Wanglong Lu</strong>, Jikai Wang, Tao Wang, Kaihao Zhang, Xianta Jiang, Hanli Zhao</p>
          <p class="wl-venue">Pattern Recognition, 2025</p>
          <p class="wl-desc">A diffusion-guided blind face restoration method that learns visual style prompts in pretrained generative latent space.</p>
          <div class="wl-paper-links">
            <a href="{{ '/publication/vsp_face_restoration' | relative_url }}">Details</a>
            <a href="https://arxiv.org/abs/2412.21042">Paper</a>
            <a href="https://github.com/LonglongaaaGo/VSPBFR">Code</a>
          </div>
        </div>
      </article>

      <article class="wl-paper">
        <div class="wl-paper-media">
          <img src="{{ '/images/publications/exe_celeba_diverse.png' | relative_url }}" alt="EXE-GAN facial inpainting results">
          <span class="wl-badge red">Neurocomputing</span>
        </div>
        <div class="wl-paper-body">
          <h3><a href="{{ '/publication/exe-gan' | relative_url }}">Do Inpainting Yourself: Generative Facial Inpainting Guided by Exemplars</a></h3>
          <p class="wl-authors"><strong>Wanglong Lu</strong>, Hanli Zhao, Xianta Jiang, Xiaogang Jin, Yongliang Yang, Min Wang, Jiankai Lyu, Kaijie Shi</p>
          <p class="wl-venue">Neurocomputing, 617:128996, 2025</p>
          <p class="wl-desc">An exemplar-guided facial inpainting framework that transfers exemplar-like facial attributes while preserving image quality.</p>
          <div class="wl-paper-links">
            <a href="{{ '/publication/exe-gan' | relative_url }}">Details</a>
            <a href="https://arxiv.org/abs/2202.06358">Paper</a>
            <a href="https://github.com/LonglongaaaGo/EXE-GAN">Code</a>
          </div>
        </div>
      </article>

      <article class="wl-paper">
        <div class="wl-paper-media">
          <img src="{{ '/images/publications/textdoctor_teaser.png' | relative_url }}" alt="TextDoctor teaser">
          <span class="wl-badge">arXiv</span>
        </div>
        <div class="wl-paper-body">
          <h3><a href="{{ '/publication/textdoctor' | relative_url }}">TextDoctor: Unified Document Image Inpainting via Patch Pyramid Diffusion Models</a></h3>
          <p class="wl-authors"><strong>Wanglong Lu</strong>, Lingming Su, Jingjing Zheng, Vinicius Veloso de Melo, Farzaneh Shoeleh, John Hawkin, Terrence Tricco, Hanli Zhao, Xianta Jiang</p>
          <p class="wl-venue">arXiv, 2025</p>
          <p class="wl-desc">A unified document image inpainting framework for restoring damaged and high-resolution document regions.</p>
          <div class="wl-paper-links">
            <a href="{{ '/publication/textdoctor' | relative_url }}">Details</a>
            <a href="https://arxiv.org/abs/2503.04021">Paper</a>
          </div>
        </div>
      </article>

      <article class="wl-paper">
        <div class="wl-paper-media">
          <img src="{{ '/images/publications/adamss_framework.png' | relative_url }}" alt="AdaMSS framework">
          <span class="wl-badge gold">NeurIPS</span>
        </div>
        <div class="wl-paper-body">
          <h3><a href="{{ '/publication/adamss_parameter_efficient_finetuning' | relative_url }}">AdaMSS: Adaptive Multi-Subspace Approach for Parameter-Efficient Fine-Tuning</a></h3>
          <p class="wl-authors">Jingjing Zheng, <strong>Wanglong Lu</strong>, Yiming Dong, Chaojie Ji, Yankai Cao, Zhouchen Lin</p>
          <p class="wl-venue">NeurIPS, 2025</p>
          <p class="wl-desc">A multi-subspace parameter-efficient fine-tuning method for expressive incremental updates, integrated into Hugging Face PEFT.</p>
          <div class="wl-paper-links">
            <a href="{{ '/publication/adamss_parameter_efficient_finetuning' | relative_url }}">Details</a>
            <a href="https://neurips.cc/virtual/2025/loc/san-diego/poster/119606">Paper</a>
            <a href="https://github.com/jzheng20/AdaMSS">Code</a>
            <a href="https://github.com/huggingface/peft/tree/main/examples/adamss_finetuning">PEFT</a>
          </div>
        </div>
      </article>
    </div>
  </section>

  <section class="wl-section" aria-labelledby="news">
    <div class="wl-section-head">
      <h2 id="news">// current news</h2>
    </div>
    <ul class="wl-news">
      <li>
        <time>Now</time>
        <span>I am currently working at Nasdaq as a Senior Data Scientist.</span>
      </li>
      <li>
        <time>Jul. 2026</time>
        <span>Our paper "<a href="{{ '/publication/tuning_free_latent_diffusion_editing' | relative_url }}">Tuning-Free Latent Diffusion Models for Ultrahigh-Resolution Image Editing</a>" has been published in IEEE Transactions on Neural Networks and Learning Systems, 1-15. Source code is available on <a href="https://github.com/LonglongaaaGo/UltraDiffEdit">GitHub</a>.</span>
      </li>
      <li>
        <time>Jul. 2026</time>
        <span>Our paper "<a href="{{ '/publication/uhdres_dual_domain_restoration' | relative_url }}">UHDRes: Ultra-High-Definition Image Restoration via Dual-Domain Decoupled Spectral Modulation</a>" has been published in IEEE Transactions on Circuits and Systems for Video Technology. Congratulations to Shihao. Source code is available on <a href="https://github.com/Zhao0100/UHDRes">GitHub</a>.</span>
      </li>
      <li>
        <time>Jun. 2026</time>
        <span>Our paper "<a href="https://scholar.google.com/citations?view_op=view_citation&amp;hl=en&amp;user=TuxCf4UAAAAJ&amp;sortby=pubdate&amp;citation_for_view=TuxCf4UAAAAJ:_kc_bZDykSQC">Simulation-Driven Imitation Learning for Biosignals-Free Shared-Autonomy Prosthetic Grasping</a>" was released as an arXiv preprint, arXiv:2606.07389. Congratulations to Kaijie.</span>
      </li>
      <li>
        <time>May 2026</time>
        <span>Our paper "<a href="{{ '/publication/echosr_lightweight_image_super_resolution' | relative_url }}">EchoSR: Efficient Context Harnessing for Lightweight Image Super-Resolution</a>" has been published in Information Fusion, 104471. Cheers to Binhao. Source code is available on <a href="https://github.com/funnyWang-Echoes/EchoSR">GitHub</a>.</span>
      </li>
      <li>
        <time>Apr. 2026</time>
        <span><a href="{{ '/publication/adamss_parameter_efficient_finetuning' | relative_url }}">AdaMSS</a> has been integrated into the Hugging Face PEFT package. <a href="https://github.com/huggingface/peft/tree/main/examples/adamss_finetuning">GitHub</a></span>
      </li>
      <li>
        <time>Mar. 2026</time>
        <span>I was invited as a guest speaker at the IEEE Newfoundland and Labrador Section's 2025-2026 AGM and gave a talk titled "Generative Models for Semantic Image Editing: Multimodal Approaches" at Memorial University.</span>
      </li>
    </ul>

    <details class="wl-details">
      <summary>More News (2025)</summary>
      <ol>
        <li>On Dec. 4, 2025, our paper "<a href="{{ '/publication/adamss_parameter_efficient_finetuning' | relative_url }}">AdaMSS: Adaptive Multi-Subspace Approach for Parameter-Efficient Fine-Tuning</a>" has been presented at NeurIPS 2025. <a href="https://github.com/jzheng20/AdaMSS">GitHub</a></li>
        <li>On Jun. 12, 2025, our paper "<a href="https://arxiv.org/abs/2506.08795">Towards Biosignals-Free Autonomous Prosthetic Hand Control via Imitation Learning</a>" was released. Congratulations to Kaijie. This project was also interviewed by the CBC. Check the <a href="https://sites.google.com/view/autonomous-prosthetic-hand">main page</a> for more information.</li>
        <li>On April 26, 2025, our paper "<a href="https://link.springer.com/chapter/10.1007/978-981-96-5809-1_13">Degradation-Aware Frequency-Separated Transformer for Blind Super-Resolution</a>" was successfully published at the Computational Visual Media Conference. Congratulations to Binhao Wang.</li>
        <li>On March 6, 2025, our paper "<a href="https://arxiv.org/abs/2503.04021">TextDoctor: Unified Document Image Inpainting via Patch Pyramid Diffusion Models</a>" was released.</li>
        <li>On Feb. 15, 2025, our paper "<a href="https://www.sciencedirect.com/science/article/abs/pii/S0031320325001001">Real-time dual-eye collaborative eyeblink detection with contrastive learning</a>" has been successfully published in Pattern Recognition. Congratulations to Yu Wang.</li>
        <li>On Feb. 05, 2025, I served as a guest lecturer for Bio-Inspired Robotics (ENGI 9986), delivering a 150-minute course on "Deep Generative Models and Applications" to 10 graduate students. I am grateful to Dr. Ting Zou for the invitation.</li>
        <li>On Jan. 31, 2025, I completed my internship at Nasdaq Verafin and delivered a presentation on our recent progress in image verification to an audience of 39 attendees.</li>
      </ol>
    </details>

    <details class="wl-details">
      <summary>More News (2024)</summary>
      <ol>
        <li>On Dec. 29, 2024, our paper Visual Style Prompt Learning Using Diffusion Models for Blind Face Restoration was published at Pattern Recognition. <a href="https://github.com/LonglongaaaGo/VSPBFR">Page</a></li>
        <li>On November 28, 2024, our paper has been published in Neurocomputing after a three-year review process. It was the starting point of my research and was finally accepted on the morning of my thesis defense.</li>
        <li>On November 21, 2024, I successfully defended my Ph.D. thesis. I am deeply grateful to my supervisors, Dr. Xianta Jiang, Dr. Hanli Zhao, and Dr. Yuanzhu Chen, and to my committee members, collaborators, and peers at Memorial University of Newfoundland, Wenzhou University, and Nasdaq.</li>
        <li>On Nov. 14, 2024, I gave an oral presentation at the 33rd <a href="https://necec.ieeenl.ca/">NECEC</a> conference for our recent document image restoration algorithm, with an audience of 30 attendees.</li>
        <li>On Sep. 23, 2024, I gave a talk to share my experience in university and postgraduate study life at Digital Media Technology, Communication University of Zhejiang, with an audience of 120 attendees.</li>
        <li>On August 30, 2024, I gave a talk on our recent work in text document restoration at Nasdaq Verafin, with an audience of 45 attendees.</li>
        <li>On July 11, 2024, our paper titled "Handling The Non-Smooth Challenge in Tensor SVD: A Multi-Objective Tensor Recovery Framework" was accepted at ECCV.</li>
      </ol>
    </details>
  </section>

  <section class="wl-section" aria-labelledby="service">
    <div class="wl-section-head">
      <h2 id="service">// academic service</h2>
    </div>
    <article class="wl-item">
      <h3>Invited Reviewer</h3>
      <p class="wl-meta">2026</p>
      <ul class="wl-service-list" aria-label="Reviewer venues in 2026">
        <li><a href="https://www.sciencedirect.com/journal/pattern-recognition">Pattern Recognition</a></li>
        <li><a href="https://www.sciencedirect.com/journal/neurocomputing">Neurocomputing</a></li>
        <li><a href="https://www.sciencedirect.com/journal/knowledge-based-systems">Knowledge-Based Systems</a></li>
        <li><a href="https://eccv.ecva.net/Conferences/2026">ECCV 2026</a></li>
      </ul>
    </article>

    <details class="wl-details">
      <summary>Invited Reviewer</summary>
      <ol>
        <li>2026: <a href="https://www.sciencedirect.com/journal/neurocomputing">Neurocomputing</a>, <a href="https://www.sciencedirect.com/journal/pattern-recognition">Pattern Recognition</a>, <a href="https://eccv.ecva.net/Conferences/2026">ECCV 2026</a>, <a href="https://www.sciencedirect.com/journal/knowledge-based-systems">KBS</a></li>
        <li>2025: <a href="https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=83">TIP</a>, <a href="https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=6046">TMM</a>, <a href="https://www.sciencedirect.com/journal/pattern-recognition">Pattern Recognition</a>, <a href="https://www.sciencedirect.com/journal/neurocomputing">Neurocomputing</a>, <a href="http://solidmodeling.org/call-for-papers-cad-graphics-2025/">CAD/Graphics 2025</a>, <a href="https://link.springer.com/journal/40436">Advances in Manufacturing</a>, <a href="https://link.springer.com/journal/11760">Signal, Image and Video Processing</a>, <a href="https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=97">IEEE Signal Processing Letters</a>, <a href="https://link.springer.com/journal/530">Multimedia Systems</a>, <a href="https://link.springer.com/journal/13042">Journal of Machine Learning and Cybernetics</a></li>
        <li>2024: <a href="https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=6046">TMM</a>, <a href="https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=76">TCSVT</a>, <a href="https://www.sciencedirect.com/journal/knowledge-based-systems">KBS</a>, <a href="https://link.springer.com/journal/10916">Journal of Medical Systems</a>, <a href="https://link.springer.com/journal/10586">Cluster Computing</a>, <a href="https://www.sciencedirect.com/journal/journal-of-visual-communication-and-image-representation">JVCI</a>, <a href="https://www.sciencedirect.com/journal/displays">Displays</a>, <a href="https://link.springer.com/journal/371">Visual Computer</a>, <a href="https://www.petmei.org/2024/index.html">ETRA 2024 PETMEI</a></li>
      </ol>
    </details>
  </section>

  <footer class="wl-footer">
    Homepage content maintained by Wanglong Lu. Design refreshed with a compact academic portfolio layout.
  </footer>
</div>
