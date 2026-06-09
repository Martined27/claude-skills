#!/bin/bash
# Claude Skills Installer
# Usage: bash install.sh [category]
#   category: public | examples | engineering | all (default: all)

SKILLS_DIR="$(cd "$(dirname "$0")/skills" && pwd)"
TARGET_USER="/mnt/skills/user"

install_group() {
  local src="$1"
  local label="$2"
  if [ -d "$src" ]; then
    mkdir -p "$TARGET_USER"
    cp -rn "$src"/. "$TARGET_USER/"
    echo "Installed $label skills"
  fi
}

CATEGORY="${1:-all}"

case "$CATEGORY" in
  public)
    for skill in docx file-reading frontend-design pdf pdf-reading pptx product-self-knowledge xlsx; do
      [ -d "$SKILLS_DIR/$skill" ] && cp -rn "$SKILLS_DIR/$skill" "$TARGET_USER/" && echo "  + $skill"
    done
    ;;
  engineering)
    mkdir -p "$TARGET_USER"
    for skill in "$SKILLS_DIR/engineering"/*/; do
      name=$(basename "$skill")
      cp -rn "$skill" "$TARGET_USER/engineering:$name"
      echo "  + engineering:$name"
    done
    ;;
  all|*)
    echo "Installing all skills to $TARGET_USER ..."
    mkdir -p "$TARGET_USER"
    # Public
    for skill in docx file-reading frontend-design pdf pdf-reading pptx product-self-knowledge xlsx; do
      [ -d "$SKILLS_DIR/$skill" ] && cp -rn "$SKILLS_DIR/$skill" "$TARGET_USER/" && echo "  + $skill"
    done
    # Examples / custom
    for skill in algorithmic-art brand-guidelines canvas-design doc-coauthoring event-planning \
                 file-expenses file-form financial-calculator hire-help internal-comms learn \
                 mcp-builder meal-delivery return-refund skill-creator slack-gif-creator \
                 theme-factory web-artifacts-builder; do
      [ -d "$SKILLS_DIR/$skill" ] && cp -rn "$SKILLS_DIR/$skill" "$TARGET_USER/" && echo "  + $skill"
    done
    # Engineering plugins
    for skill in "$SKILLS_DIR/engineering"/*/; do
      name=$(basename "$skill")
      cp -rn "$skill" "$TARGET_USER/engineering:$name"
      echo "  + engineering:$name"
    done
    ;;
esac

echo ""
echo "Done. Installed skills:"
ls "$TARGET_USER"
