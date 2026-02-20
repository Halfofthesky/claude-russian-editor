# Claude Russian Editor

Набор навыков (skills) для Claude, реализующих правила русского редакционно-издательского оформления по справочнику А. Э. Мильчина и Л. К. Чельцовой «Справочник издателя и автора».

A set of Claude skills implementing Russian editorial and publishing standards based on A. E. Milchin & L. K. Cheltsova's *Publisher's and Author's Handbook*.

---

## Установка / Installation

### Все навыки сразу / Full bundle

Скачайте `claude-russian-editor.plugin` из [Releases](https://github.com/Halfofthesky/claude-russian-editor/releases) и откройте файл — плагин установится автоматически.

Download `claude-russian-editor.plugin` from [Releases](https://github.com/Halfofthesky/claude-russian-editor/releases) and open the file — the plugin installs automatically.

### Отдельные навыки / Individual skills

Нужен только один навык? Скачайте его `.plugin` из [Releases](https://github.com/Halfofthesky/claude-russian-editor/releases) и откройте — установится автоматически.

Need just one skill? Download its `.plugin` from [Releases](https://github.com/Halfofthesky/claude-russian-editor/releases) and open it — installs automatically.

| Файл / File | Навык / Skill |
|---|---|
| `russian-names-capitalization.plugin` | Имена, прописные, кавычки — Names, capitalization |
| `russian-abbreviations.plugin` | Сокращения — Abbreviations |
| `russian-numbers-dates.plugin` | Числа, даты, знаки — Numbers, dates |
| `russian-lists-punctuation.plugin` | Перечни — Lists & punctuation |
| `russian-citations-bibliography.plugin` | Цитаты, библиография — Citations |
| `russian-typography-formatting.plugin` | Типографика — Typography |
| `russian-editorial-review.plugin` | Мета-навык: полная проверка — Full review |

### Claude Code

```bash
curl -sL https://raw.githubusercontent.com/Halfofthesky/claude-russian-editor/main/install.sh | bash
```

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

## Источник / Source

Мильчин А. Э., Чельцова Л. К. *Справочник издателя и автора: Редакционно-издательское оформление издания.* — 4-е изд. — М., 2014.

Правила дистиллированы из полного текста справочника в формат, пригодный для использования Claude в качестве инструкций.

## Лицензия / License

CC BY-NC 4.0 — [Creative Commons Attribution-NonCommercial 4.0](https://creativecommons.org/licenses/by-nc/4.0/)

Свободное использование с указанием авторства в некоммерческих целях. Free to use with attribution for non-commercial purposes.
