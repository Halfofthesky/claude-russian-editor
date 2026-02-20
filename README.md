# claude-russian-editor

Набор навыков (skills) для Claude, реализующих правила русского редакционно-издательского оформления по справочнику А. Э. Мильчина и Л. К. Чельцовой «Справочник издателя и автора».

A set of Claude skills implementing Russian editorial and publishing standards based on A. E. Milchin & L. K. Cheltsova's *Publisher's and Author's Handbook*.

---

## Навыки / Skills

| # | Навык / Skill | Назначение / Purpose |
|---|---------------|---------------------|
| 1 | `russian-names-capitalization` | Имена собственные, прописная/строчная, кавычки в названиях — Proper nouns, capitalization, quotation marks in names |
| 2 | `russian-abbreviations` | Графические сокращения, аббревиатуры, условные обозначения — Abbreviations, acronyms, conventional symbols |
| 3 | `russian-numbers-dates` | Числа (прописью/цифрами), даты, время, знаки (%, №, §) — Numbers (words/digits), dates, time, signs |
| 4 | `russian-lists-punctuation` | Перечни: нумерация, маркеры, пунктуация, регистр — Lists: numbering, markers, punctuation, capitalization |
| 5 | `russian-citations-bibliography` | Цитаты, сноски, библиографические описания по ГОСТ — Citations, footnotes, GOST bibliographic descriptions |
| 6 | `russian-typography-formatting` | Выделения, заголовки, тире/дефис, неразрывные пробелы — Emphasis, headings, dashes, non-breaking spaces |
| 7 | `russian-editorial-review` | **Мета-навык**: комплексная проверка оформления, паспорт оформления, вертикальный контроль — **Meta-skill**: comprehensive editorial review, formatting passport, vertical control |

## Как использовать / How to use

### Комплексная проверка (рекомендуется)

Вызовите навык `russian-editorial-review` — он организует полный цикл проверки, обращаясь к остальным шести навыкам по мере необходимости.

Trigger the `russian-editorial-review` skill — it orchestrates a full review cycle, pulling rules from the other six skills as needed.

Примеры запросов / Example prompts:
- «Проверь оформление этого текста по Мильчину»
- «Приведи текст к издательским нормам»
- «Отредактируй оформление»

### Точечная проверка

Вызовите нужный навык напрямую, если вопрос касается одной области:

- «Как сократить "страница"?» → `russian-abbreviations`
- «Нужна ли прописная в "министерство обороны"?» → `russian-names-capitalization`
- «Как оформить перечень?» → `russian-lists-punctuation`

## Структура / Structure

```
russian-editing-skills/
├── russian-names-capitalization/
│   ├── SKILL.md
│   └── references/
│       └── names-rules.md          # 1100 строк правил
├── russian-abbreviations/
│   ├── SKILL.md
│   └── references/
│       └── abbreviation-rules.md   # 455 строк
├── russian-numbers-dates/
│   ├── SKILL.md
│   └── references/
│       └── numbers-dates-rules.md  # 286 строк
├── russian-lists-punctuation/
│   ├── SKILL.md
│   └── references/
│       └── lists-rules.md          # 267 строк
├── russian-citations-bibliography/
│   ├── SKILL.md
│   └── references/
│       ├── citation-rules.md       # 276 строк
│       └── bibliography-rules.md   # 364 строк
├── russian-typography-formatting/
│   ├── SKILL.md
│   └── references/
│       └── typography-rules.md     # 168 строк
└── russian-editorial-review/
    ├── SKILL.md
    └── references/
        └── review-methodology.md   # 115 строк
```

Каждый навык содержит:
- `SKILL.md` — основные правила и инструкции (загружается в контекст при вызове)
- `references/` — подробные справочники (загружаются по запросу для сложных случаев)

## Источник / Source

Мильчин А. Э., Чельцова Л. К. *Справочник издателя и автора: Редакционно-издательское оформление издания.* — 4-е изд. — М., 2014.

Правила дистиллированы из полного текста справочника в формат, пригодный для использования Claude в качестве инструкций.

## Лицензия / License

Правила и нормы русского языка не являются объектом авторского права. Данный набор навыков представляет собой самостоятельную переработку и систематизацию общеизвестных редакционных норм в формат инструкций для языковой модели.
