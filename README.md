# claude-russian-editor

Набор навыков (skills) для Claude, реализующих правила русского редакционно-издательского оформления по справочнику А. Э. Мильчина и Л. К. Чельцовой «Справочник издателя и автора».

A set of Claude skills implementing Russian editorial and publishing standards based on A. E. Milchin & L. K. Cheltsova's *Publisher's and Author's Handbook*.

---

## Установка / Installation

### Cowork (рекомендуется / recommended)

Скачайте файл `claude-russian-editor.plugin` из [Releases](https://github.com/Halfofthesky/claude-russian-editor/releases) и откройте его — плагин установится автоматически.

Download `claude-russian-editor.plugin` from [Releases](https://github.com/Halfofthesky/claude-russian-editor/releases) and open it — the plugin installs automatically.

### Claude Code (одна команда / one-liner)

```bash
curl -sL https://raw.githubusercontent.com/Halfofthesky/claude-russian-editor/main/install.sh | bash
```

### Вручную / Manual

```bash
git clone https://github.com/Halfofthesky/claude-russian-editor.git
cp -r claude-russian-editor ~/.claude/plugins/claude-russian-editor
```

### Отдельные навыки / Individual skills

Не нужен весь набор? Скачайте только нужный навык из [Releases](https://github.com/Halfofthesky/claude-russian-editor/releases):

Don't need the full set? Download just the skill you need from [Releases](https://github.com/Halfofthesky/claude-russian-editor/releases):

| Файл / File | Навык / Skill |
|---|---|
| `russian-names-capitalization.zip` | Имена, прописные, кавычки — Names, capitalization |
| `russian-abbreviations.zip` | Сокращения — Abbreviations |
| `russian-numbers-dates.zip` | Числа, даты, знаки — Numbers, dates |
| `russian-lists-punctuation.zip` | Перечни — Lists & punctuation |
| `russian-citations-bibliography.zip` | Цитаты, библиография — Citations |
| `russian-typography-formatting.zip` | Типографика — Typography |
| `russian-editorial-review.zip` | Мета-навык: полная проверка — Full review |

Распакуйте zip в папку навыков: `~/.claude/skills/имя-навыка/`

Unzip into your skills folder: `~/.claude/skills/skill-name/`

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
| 7 | `russian-editorial-review` | **Мета-навык**: комплексная проверка оформления — **Meta-skill**: comprehensive editorial review |

## Как использовать / How to use

### Команда `/review` — быстрый старт

```
/review mytext.md
```

Запускает полную проверку оформления файла. Runs a full formatting review of the file.

### Комплексная проверка в чате

Примеры запросов / Example prompts:

- «Проверь оформление этого текста по Мильчину»
- «Приведи текст к издательским нормам»
- "Review this Russian text for editorial standards"

### Точечная проверка

Вызовите нужный навык напрямую, если вопрос касается одной области:

- «Как сократить "страница"?» → `russian-abbreviations`
- «Нужна ли прописная в "министерство обороны"?» → `russian-names-capitalization`
- «Как оформить перечень?» → `russian-lists-punctuation`

## Структура / Structure

```
claude-russian-editor/
├── .claude-plugin/
│   └── plugin.json                  # Plugin manifest
├── commands/
│   └── review.md                    # /review slash command
├── skills/
│   ├── russian-names-capitalization/
│   │   ├── SKILL.md
│   │   └── references/
│   │       └── names-rules.md
│   ├── russian-abbreviations/
│   │   ├── SKILL.md
│   │   └── references/
│   │       └── abbreviation-rules.md
│   ├── russian-numbers-dates/
│   │   ├── SKILL.md
│   │   └── references/
│   │       └── numbers-dates-rules.md
│   ├── russian-lists-punctuation/
│   │   ├── SKILL.md
│   │   └── references/
│   │       └── lists-rules.md
│   ├── russian-citations-bibliography/
│   │   ├── SKILL.md
│   │   └── references/
│   │       ├── citation-rules.md
│   │       └── bibliography-rules.md
│   ├── russian-typography-formatting/
│   │   ├── SKILL.md
│   │   └── references/
│   │       └── typography-rules.md
│   └── russian-editorial-review/
│       ├── SKILL.md
│       └── references/
│           └── review-methodology.md
├── install.sh
└── README.md
```

## Источник / Source

Мильчин А. Э., Чельцова Л. К. *Справочник издателя и автора: Редакционно-издательское оформление издания.* — 4-е изд. — М., 2014.

Правила дистиллированы из полного текста справочника в формат, пригодный для использования Claude в качестве инструкций.

## Лицензия / License

MIT. See [LICENSE](LICENSE).

Правила и нормы русского языка не являются объектом авторского права. Данный набор навыков представляет собой самостоятельную переработку и систематизацию общеизвестных редакционных норм в формат инструкций для языковой модели.
