---
title: "From Pixels to Systems: Notes on a Research Trajectory in Generative Vision"
date: 2026-07-11
permalink: /posts/2026/07/from-pixels-to-systems/
categories:
  - technical-notes
tags:
  - generative-ai
  - computer-vision
  - image-restoration
  - multimodal-learning
  - applied-ml
excerpt: "A first research note on what 28 publications taught me about priors, scale, controllability, efficiency, and deployable generative vision systems."
teaser: research-overview.svg
math: true
toc: true
related_methods:
  - label: Ultra-High-Res Editing
    url: /publication/tuning_free_latent_diffusion_editing
  - label: UHD Restoration
    url: /publication/uhdres_dual_domain_restoration
  - label: Lightweight SR
    url: /publication/echosr_lightweight_image_super_resolution
  - label: Generative Inpainting
    url: /publication/grig_few_shot_inpainting
  - label: PEFT / AdaMSS
    url: /publication/adamss_parameter_efficient_finetuning
  - label: Assistive Vision
    url: /publication/simulation_driven_imitation_learning_prosthetic_grasping
  - label: Financial Diffusion
    url: /publication/stddpm_financial_synthetic_data
resources:
  - label: Publications
    url: /publications/
  - label: Google Scholar
    url: https://scholar.google.com/citations?user=TuxCf4UAAAAJ&hl=en
  - label: GitHub
    url: https://github.com/LonglongaaaGo
---

![Research overview]({{ '/images/research-overview.svg' | relative_url }})

This is my first technical blog post, so I want to start with a map rather than a single result. Looking across my publication record, I see a coherent program spanning recognition, medical imaging, restoration, generative image inpainting, semantic editing, and scalable multimodal intelligence.

The projects are different on the surface: retinal vessel segmentation, vehicle logo recognition, probability-based pruning, face completion, image inpainting, reflection removal, blind face restoration, ultra-high-resolution editing, lightweight super-resolution, parameter-efficient fine-tuning, prosthetic grasping, and synthetic financial data generation. But the technical pattern underneath is surprisingly consistent:

> most useful vision systems are not built by scaling a model alone; they are built by matching the right prior, the right control signal, and the right computational structure to the failure mode of the task.

That observation is the thread connecting much of my work.

## 1. Vision Problems Are Usually Structured Inverse Problems

Many computer vision tasks can be written as a structured inverse problem:

$$
y = \mathcal{H}(x) + \epsilon,
$$

where $x$ is the clean or desired signal, $y$ is the observation, $\mathcal{H}$ is a degradation, transformation, or sensing process, and $\epsilon$ is noise, uncertainty, or missing information.

This view is useful because it unifies tasks that appear unrelated:

- In image restoration, $\mathcal{H}$ may be blur, haze, low resolution, compression, or reflection.
- In inpainting, $\mathcal{H}$ is a masking operator.
- In semantic editing, $\mathcal{H}$ includes the constraints imposed by the original image and the edit instruction.
- In blink detection or prosthetic grasping, $\mathcal{H}$ is the partial observation process through cameras, simulation, or human-object interaction.
- In financial synthetic data generation, $\mathcal{H}$ includes privacy, distributional shift, temporal dependence, and heavy-tailed uncertainty.

The research question is therefore not just "can the model generate a plausible output?" It is:

$$
\hat{x} = \arg\max_x p(x \mid y, c, \Pi),
$$

where $c$ is a control signal and $\Pi$ is a set of priors. The control signal may be an exemplar, a text prompt, a visual style prompt, a degradation representation, a frequency-domain constraint, a subspace update, or a simulation-derived policy. The prior may come from data, geometry, frequency statistics, pretraining, temporal continuity, or deployment constraints.

This framing shaped my thinking from early recognition and restoration work to recent generative systems.

## 2. Priors Matter More When Data Is Limited or Resolution Is High

Early work on [category-consistent vehicle logo recognition]({{ '/publication/category-consistent' | relative_url }}), [retinal vessel segmentation]({{ '/publication/vessel_segmentation' | relative_url }}), and [probability-based channel pruning]({{ '/publication/probability-based-network-pruning' | relative_url }}) taught me a simple lesson: when data is limited or compute is constrained, generic representation learning is rarely enough.

You need to inject structure.

In recognition, category consistency acts as a semantic regularizer. In vessel segmentation, a large receptive field helps capture thin and elongated anatomical structures. In pruning, probabilistic modeling gives a more principled way to remove channels without treating all filters as equally replaceable. These are not "large model" ideas. They are structure-first ideas.

The same principle becomes even more important in generative vision. For [GRIG]({{ '/publication/grig_few_shot_inpainting' | relative_url }}), the key problem is not merely filling a hole; it is preserving identity, context, and residual structure with limited data. For [FACEMUG]({{ '/publication/facemug' | relative_url }}), local facial editing requires multimodal control that changes the requested region while keeping the rest of the face stable. For [TextDoctor]({{ '/publication/textdoctor' | relative_url }}), document image inpainting requires preserving readability and layout, not just visual realism.

My current view is that a prior is useful only if it reduces the ambiguity that actually matters. A face prior should preserve identity. A document prior should preserve structure and text consistency. A restoration prior should preserve detail without hallucinating. A financial sequence prior should preserve dependence and heavy-tailed behavior.

## 3. Diffusion Models Are Powerful, But Control Is the Real Research Problem

Diffusion models changed the default assumption in visual generation. Instead of directly predicting $x$, they learn a denoising or score function over a sequence of corrupted variables:

$$
x_t = \sqrt{\bar{\alpha}_t}x_0 + \sqrt{1-\bar{\alpha}_t}\epsilon,
$$

and a model estimates either the noise $\epsilon$, the clean signal $x_0$, or a score-like direction:

$$
s_\theta(x_t, t, c) \approx \nabla_{x_t}\log p_t(x_t \mid c).
$$

This gives diffusion models a strong generative prior. But in real editing and restoration tasks, a strong prior can become a liability if it ignores the input image. The hardest question is not sampling. The hardest question is controlled sampling.

This is why [Tuning-Free Latent Diffusion Models for Ultrahigh-Resolution Image Editing]({{ '/publication/tuning_free_latent_diffusion_editing' | relative_url }}) is important to my research direction. The goal is not just to edit with a diffusion model; it is to edit real images at ultra-high resolution without retraining, while preserving unedited regions and maintaining semantic consistency. At 8K resolution, the system must respect both global semantics and local texture. Small inconsistencies become visible. Memory and tiling artifacts become research problems.

The lesson is:

> high-resolution generation is not only a scale problem; it is a consistency problem.

When the canvas becomes large, every local decision must remain compatible with a global structure. A model that works on a small crop may fail when the crop must align with the entire image.

## 4. Restoration Needs Both Signal Priors and System Efficiency

Restoration has been a recurring theme in my work, from hazy weather and reflection removal to blind face restoration, super-resolution, and ultra-high-definition image restoration.

The line of work including [Restoring Vision in Hazy Weather]({{ '/publication/restoring_in_hazy' | relative_url }}), [PromptRR]({{ '/publication/prmptrr_reflection_removal' | relative_url }}), [Visual Style Prompt Learning]({{ '/publication/vsp_face_restoration' | relative_url }}), [Degradation-Aware Frequency-Separated Transformer]({{ '/publication/degradation_aware_super_resolution' | relative_url }}), [UHDRes]({{ '/publication/uhdres_dual_domain_restoration' | relative_url }}), and [EchoSR]({{ '/publication/echosr_lightweight_image_super_resolution' | relative_url }}) points to the same tradeoff:

$$
\mathcal{L}
= \mathcal{L}_{\text{fidelity}}
+ \lambda_p \mathcal{L}_{\text{prior}}
+ \lambda_c \mathcal{L}_{\text{consistency}}
+ \lambda_e \mathcal{C}_{\text{compute}}.
$$

The last term matters. A restoration model that is accurate but too heavy for high-resolution images is incomplete as a system. A lightweight model that is efficient but destroys texture is also incomplete. The research target is the Pareto frontier between quality, robustness, and cost.

This is where frequency-domain and context-harnessing ideas become valuable. Frequency separation helps distinguish structural components from details. Local, multi-scale, and global context can reduce hallucination while keeping computation manageable. In my view, the next generation of restoration models will be judged less by a single benchmark number and more by how gracefully they handle resolution, degradation diversity, latency, and memory.

## 5. Parameter-Efficient Adaptation Is a Systems Idea, Not Just a Training Trick

Large pretrained models are becoming the infrastructure of AI research. That changes the role of learning. Instead of training every model from scratch, we often need to adapt a strong base model under constraints:

$$
W' = W_0 + \Delta W.
$$

The key question is how expressive $\Delta W$ needs to be. A low-rank update is efficient, but may be too restrictive. A full update is expressive, but often too expensive. In [AdaMSS]({{ '/publication/adamss_parameter_efficient_finetuning' | relative_url }}), the update is modeled through multiple subspaces:

$$
\Delta W \approx \sum_{k=1}^{K} A_k B_k C_k.
$$

The broader idea is that adaptation should match the intrinsic structure of pretrained weights. If the representation already contains multiple useful directions, an efficient update should not force all tasks into one narrow subspace. This is related to a larger theme in my work: good systems find the right factorization.

The same principle appears in restoration, where we factorize frequency and spatial signals; in editing, where we separate edited and preserved regions; in recognition, where category structure regularizes feature learning; and in synthetic sequence generation, where numerical and categorical distributions may need different transformations before entering a generative process.

## 6. Multimodal and Assistive Vision Require Closed-Loop Thinking

My work on [wearable-camera blink detection]({{ '/publication/spatial_temporal_aware_blinking' | relative_url }}), [dual-eye collaborative eyeblink detection]({{ '/publication/dual_eye_blink' | relative_url }}), [biosignals-free prosthetic hand control]({{ '/publication/biosignals_free_hand_control' | relative_url }}), and [simulation-driven imitation learning for prosthetic grasping]({{ '/publication/simulation_driven_imitation_learning_prosthetic_grasping' | relative_url }}) pushed my thinking beyond image quality.

In these problems, the output affects a human-facing system. Prediction is part of a loop. A model must be robust not only in a test set, but also in timing, uncertainty, and interaction. This creates a different evaluation mindset:

- Does the model fail gracefully?
- Does it preserve the right behavior under partial observation?
- Can simulation close the data gap without creating unrealistic policies?
- Is the output useful for a downstream decision, not just visually or numerically plausible?

This connects naturally to applied ML engineering. In production systems, the model is not the product by itself. The product is the model plus data flow, monitoring, latency, reliability, interfaces, and failure handling.

## 7. From Generative Vision to Applied ML Systems

The move from generative vision research to applied ML engineering made one lesson very concrete: model quality and system quality are not separable.

For example, [StDDPM]({{ '/publication/stddpm_financial_synthetic_data' | relative_url }}) studies synthetic sequential financial data generation with a Student t-distribution based diffusion process. This is not simply a "generate more data" problem. Financial sequences can be heavy-tailed, mixed-type, and privacy-sensitive. A useful synthetic generator must preserve temporal dependence and distributional behavior while reducing exposure of sensitive records.

That leads to a more general research question:

$$
\text{Useful AI} =
\text{generative quality}
\cap
\text{control}
\cap
\text{efficiency}
\cap
\text{trust}.
$$

This is the direction I care about most now. The next wave of multimodal and generative AI will not be defined only by bigger models. It will be defined by whether we can build systems that are controllable enough for users, efficient enough for real workloads, and reliable enough for high-stakes environments.

## What I Would Tell My Earlier Self

If I could compress the past few years of research into a few notes, I would write them as follows.

First, do not treat architecture as the main contribution by default. The real contribution is often the mismatch you identify between a task and existing assumptions.

Second, do not add priors because they sound elegant. Add priors because they remove a specific ambiguity.

Third, efficiency is not an afterthought. It changes what problems are solvable, especially in high-resolution vision and applied systems.

Fourth, evaluation should stress the intended deployment regime. If the method is designed for 8K editing, test high resolution. If it is designed for prosthetic autonomy, think about interaction. If it is designed for financial synthetic data, inspect distributional behavior, not only sample realism.

Finally, the most interesting research often sits at the boundary between modeling and systems. A method becomes meaningful when it survives constraints.

## Closing

This blog will be a place for paper notes, implementation details, research reflections, and engineering lessons. I expect many posts will be narrower and more technical than this one. But starting with the big picture is useful: my work develops scalable multimodal and generative AI systems that combine priors, controllability, efficiency, and deployment awareness.

That is the throughline I see from pixels to systems.
