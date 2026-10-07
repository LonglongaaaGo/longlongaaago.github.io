#!/usr/bin/env python3
"""Render the curated Chinese resume with embedded, selectable Chinese text."""

import argparse
import json
import os
from pathlib import Path
from xml.sax.saxutils import escape

from reportlab.lib import colors
from reportlab.lib.enums import TA_LEFT, TA_RIGHT
from reportlab.lib.pagesizes import A4
from reportlab.lib.styles import ParagraphStyle
from reportlab.lib import textsplit
from reportlab.platypus import paragraph
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.platypus import (
    BaseDocTemplate, Frame, HRFlowable, PageBreak, PageTemplate,
    Paragraph, Spacer, Table, TableStyle,
)


INK = colors.HexColor('#202A30')
MUTED = colors.HexColor('#555E65')
RULE = colors.HexColor('#B8C1C6')
MARGIN = 34
PAGE_WIDTH, PAGE_HEIGHT = A4
WIDTH = PAGE_WIDTH - 2 * MARGIN

# ReportLab's Japanese-oriented CJK defaults omit these Chinese punctuation marks.
textsplit.ALL_CANNOT_START += '，；：！？）】》'
paragraph.ALL_CANNOT_START = textsplit.ALL_CANNOT_START


def register_fonts():
    candidates = [
        ('/System/Library/Fonts/STHeiti Light.ttc', '/System/Library/Fonts/STHeiti Medium.ttc'),
        ('/usr/share/fonts/truetype/wqy/wqy-microhei.ttc', '/usr/share/fonts/truetype/wqy/wqy-microhei.ttc'),
    ]
    regular = os.environ.get('CV_CJK_FONT')
    bold = os.environ.get('CV_CJK_BOLD_FONT')
    if not regular:
        regular, bold = next(
            ((normal, heavy) for normal, heavy in candidates if Path(normal).is_file() and Path(heavy).is_file()),
            (None, None),
        )
    if not regular:
        raise RuntimeError('Set CV_CJK_FONT and CV_CJK_BOLD_FONT to embeddable Chinese TrueType fonts.')
    pdfmetrics.registerFont(TTFont('CVChinese', regular))
    pdfmetrics.registerFont(TTFont('CVChineseBold', bold or regular))
    pdfmetrics.registerFontFamily('CVChinese', normal='CVChinese', bold='CVChineseBold')


def style(name, **kwargs):
    settings = dict(fontName='CVChinese', fontSize=10.5, leading=14.5,
                    textColor=INK, alignment=TA_LEFT, wordWrap='CJK')
    settings.update(kwargs)
    return ParagraphStyle(name, **settings)


def entry(title, detail):
    result = Table(
        [[Paragraph('<b>' + title + '</b>', style('entry')), Paragraph(detail, style('date', fontSize=9.5, leading=13.5, alignment=TA_RIGHT))]],
        colWidths=[WIDTH * 0.65, WIDTH * 0.35],
        hAlign='LEFT', spaceBefore=3, spaceAfter=2,
    )
    result.setStyle(TableStyle([
        ('LEFTPADDING', (0, 0), (-1, -1), 0),
        ('RIGHTPADDING', (0, 0), (-1, -1), 0),
        ('TOPPADDING', (0, 0), (-1, -1), 0),
        ('BOTTOMPADDING', (0, 0), (-1, -1), 0),
        ('VALIGN', (0, 0), (-1, -1), 'TOP'),
    ]))
    return result


def blocks(items):
    result = []
    for block in items:
        kind = block['kind']
        if kind == 'section':
            result += [
                Paragraph('<b>' + block['text'] + '</b>', style('section', fontSize=12.5, leading=17, spaceBefore=7, spaceAfter=2, keepWithNext=True)),
                HRFlowable(width='100%', thickness=0.5, color=RULE, spaceAfter=4),
            ]
        elif kind == 'entry':
            heading = entry(block['title'], block['detail'])
            heading.keepWithNext = True
            result.append(heading)
        elif kind == 'paragraph':
            result.append(Paragraph(block['text'], style('paragraph', spaceAfter=3)))
        elif kind == 'bullets':
            for text in block['items']:
                result.append(Paragraph(text, style('bullet', leftIndent=10, firstLineIndent=0, bulletIndent=0, spaceAfter=3), bulletText='•'))
        else:
            raise ValueError('Unknown block kind: ' + kind)
    return result


def header(data, first):
    if not first:
        return [entry(data['name'] + ' | ' + data['english_name'], '代表项目与技术成果'), Spacer(1, 2)]
    contacts = escape(data['location']) + ' | <a href="mailto:' + data['email'] + '">' + data['email'] + '</a>'
    links = ' | '.join('<a href="' + url + '">' + label + '</a>' for label, url in data['links'])
    return [
        Paragraph('<b>' + data['name'] + '</b> <font size="13">' + data['english_name'] + '</font>', style('name', fontSize=24, leading=29, spaceAfter=3)),
        Paragraph(data['title'], style('subtitle', fontSize=12, leading=16, spaceAfter=2)),
        Paragraph(data['target'], style('target', leading=15, spaceAfter=2)),
        Paragraph(contacts + ' | ' + links, style('contacts', fontSize=9.5, leading=13, spaceAfter=3)),
    ]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('output', type=Path)
    args = parser.parse_args()
    source = Path(__file__).with_name('Wanglong_Lu_Chinese_Resume.json')
    data = json.loads(source.read_text(encoding='utf-8'))
    register_fonts()
    available = set(pdfmetrics.getFont('CVChinese').face.charToGlyph)
    missing = {character for character in json.dumps(data, ensure_ascii=False) if ord(character) not in available and not character.isspace()}
    if missing:
        raise RuntimeError('Font lacks required glyphs: ' + ''.join(sorted(missing)))

    def footer(canvas, document):
        canvas.saveState()
        canvas.setFont('CVChinese', 8.5)
        canvas.setFillColor(MUTED)
        canvas.drawString(MARGIN, 19, data['name'] + ' | ' + data['english_name'])
        canvas.drawRightString(PAGE_WIDTH - MARGIN, 19, str(document.page) + ' / 2')
        canvas.restoreState()

    document = BaseDocTemplate(
        str(args.output), pagesize=A4, leftMargin=MARGIN, rightMargin=MARGIN,
        topMargin=MARGIN, bottomMargin=MARGIN, pageCompression=1,
        title=data['name'] + ' - 中文求职简历', author=data['english_name'],
    )
    document.addPageTemplates(PageTemplate(
        id='resume', frames=[Frame(MARGIN, MARGIN, WIDTH, PAGE_HEIGHT - 2 * MARGIN, leftPadding=0, rightPadding=0, topPadding=0, bottomPadding=0)], onPage=footer,
    ))
    story = []
    for index, page in enumerate(data['pages']):
        flowables = header(data, index == 0) + blocks(page)
        height = sum(item.wrap(WIDTH, PAGE_HEIGHT)[1] + item.getSpaceBefore() + item.getSpaceAfter() for item in flowables)
        print('Page {}: {:.1f} / {:.1f} pt'.format(index + 1, height, PAGE_HEIGHT - 2 * MARGIN))
        if height > PAGE_HEIGHT - 2 * MARGIN:
            raise RuntimeError('Page {} overflows; edit the content instead of shrinking the text.'.format(index + 1))
        if index:
            story.append(PageBreak())
        story.extend(flowables)
    document.build(story)


if __name__ == '__main__':
    main()
