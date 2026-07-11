---
title: "Your Technical Note Title"
date: 2026-07-11
categories:
  - technical-notes
tags:
  - generative-ai
  - diffusion
  - math
excerpt: "One concise sentence describing the note."
math: true
toc: false
---

## Motivation

Write the problem, observation, or paper question in two or three sentences.

## Main Idea

Inline math works when `math: true` is set:
\(x_t = \sqrt{\bar{\alpha}_t}x_0 + \sqrt{1-\bar{\alpha}_t}\epsilon\).

Display math:

$$
\epsilon_\theta(x_t, t) \approx \epsilon
$$

## Notes

- Key point one.
- Key point two.
- What to verify next.

## Minimal Code

```python
def alpha_bar(t):
    return ...
```

## References

- Paper or documentation link.
