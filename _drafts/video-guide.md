# Adding Videos

## Research demos

Add a `video` link to the existing paper in `_publications`. The `/videos/` page reads these entries automatically and obtains the paper title, publication page, venue, paper link, and code link from the same record.

```yaml
video: 'https://www.youtube.com/watch?v=YOUR_VIDEO_ID'
```

Optional fields:

```yaml
video_title: 'Short display title'
video_duration: '6:33'
video_thumbnail: 'videos/your-video.jpg'
video_summary: 'What this demo shows.'
video_application: 'Relevant application or workflow.'
bilibili_video: 'https://www.bilibili.com/video/YOUR_BV_ID/'
```

Put local thumbnails under `images/videos/`. Without a custom thumbnail, the paper's teaser is used; if it has no teaser, a YouTube thumbnail is used for supported YouTube URLs. A Bilibili-only entry should include a thumbnail.

The initial demos follow publication priority (`selection_score`), matching the portfolio's emphasis on lead-author work and publication venues. Video durations refer to the videos; years and venues come from the papers.

## Talks and applied highlights

Add entries to `highlights` in `_data/video_library.yml`. Replace `highlights: []` with a list:

```yaml
highlights:
  - id: my-talk
    title: 'Talk title'
    date: 2026-09-30
    video_type: 'Talk'
    video: 'https://www.youtube.com/watch?v=YOUR_VIDEO_ID'
    video_summary: 'What the talk covers.'
    video_thumbnail: 'videos/my-talk.jpg'
    publication: '/publication/tuning_free_latent_diffusion_editing'
```

`publication` is optional and must match a paper's `permalink`. The matching publication's links are added automatically. `video_type` can be `Talk` or `Applied Highlight`.

## Publishing

Commit and push the metadata and thumbnails with the rest of the site. New channel uploads are not imported automatically: add each selected video's link once so the page stays focused on relevant work. No page HTML or player code needs changing for new entries.

YouTube and Bilibili video links open the page player when supported. The platform links remain available, and unsupported links work as ordinary links.

## WeChat Channels

The WeChat Channels button displays the original profile QR image rather than an embedded video feed. Keep the QR image intact; do not crop or regenerate its code. Update the image and these fields in `_data/video_library.yml` when needed:

```yaml
channels:
  wechat:
    name: 'LonglongaaaGo'
    qr_code: 'videos/wechat-channels.jpg'
```

The modal also offers the original image for download. It does not require a public sharing URL and does not automatically import WeChat videos. Remove `wechat` from `channels` to hide the button and modal.
