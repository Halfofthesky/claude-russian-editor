#!/bin/bash
# install.sh — Install claude-russian-editor skills for Claude Code
# Usage: curl -sL https://raw.githubusercontent.com/Halfofthesky/claude-russian-editor/main/install.sh | bash

set -e

REPO="https://github.com/Halfofthesky/claude-russian-editor.git"
SKILL_DIR="$HOME/.claude/skills"
PLUGIN_NAME="claude-russian-editor"

echo "╔══════════════════════════════════════════════╗"
echo "║  claude-russian-editor — установка / install  ║"
echo "╚══════════════════════════════════════════════╝"
echo ""

# Check for git
if ! command -v git &> /dev/null; then
    echo "❌ git не найден. Установите git и попробуйте снова."
    echo "   git not found. Please install git and try again."
    exit 1
fi

# Create temp dir and clone
TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT

echo "📥 Скачиваю / Downloading..."
git clone --depth 1 --quiet "$REPO" "$TMPDIR/repo"

# Determine install location
if [ -d "$HOME/.claude" ]; then
    # Claude Code detected — install as plugin
    INSTALL_DIR="$HOME/.claude/plugins/$PLUGIN_NAME"
    mkdir -p "$INSTALL_DIR"

    echo "📂 Claude Code обнаружен / Claude Code detected"
    echo "   Устанавливаю в / Installing to: $INSTALL_DIR"

    # Copy everything except .git
    rsync -a --exclude='.git' --exclude='install.sh' "$TMPDIR/repo/" "$INSTALL_DIR/"

    echo ""
    echo "✅ Готово! / Done!"
    echo ""
    echo "   Доступные навыки / Available skills:"
    echo "   • russian-editorial-review  — комплексная проверка / full review"
    echo "   • russian-names-capitalization"
    echo "   • russian-abbreviations"
    echo "   • russian-numbers-dates"
    echo "   • russian-lists-punctuation"
    echo "   • russian-citations-bibliography"
    echo "   • russian-typography-formatting"
    echo ""
    echo "   Команда / Command:  /review [файл]"
    echo ""
else
    echo "⚠️  Claude Code не обнаружен / Claude Code not detected"
    echo "   Копирую навыки в / Copying skills to: $HOME/claude-russian-editor/"

    INSTALL_DIR="$HOME/claude-russian-editor"
    mkdir -p "$INSTALL_DIR"
    rsync -a --exclude='.git' --exclude='install.sh' "$TMPDIR/repo/" "$INSTALL_DIR/"

    echo ""
    echo "✅ Скачано в / Downloaded to: $INSTALL_DIR"
    echo "   Скопируйте папку skills/ в нужное место вручную."
    echo "   Copy the skills/ folder to your preferred location manually."
fi
