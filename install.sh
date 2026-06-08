#!/bin/bash
# Claude Skills Installer
# Usage: bash install.sh [category]
#   category: public | engineering | productivity | creative | personal | all (default: all)

SKILLS_DIR="$(cd "$(dirname "$0")/skills" && pwd)"
TARGET_USER="/mnt/skills/user"

install_genre() {
  local genre="$1"
  if [ -d "$SKILLS_DIR/$genre" ]; then
    mkdir -p "$TARGET_USER"
    for skill in "$SKILLS_DIR/$genre"/*/; do
      name=$(basename "$skill")
      cp -r "$skill" "$TARGET_USER/$name"
      echo "  + $genre/$name"
    done
  fi
}

CATEGORY="${1:-all}"

case "$CATEGORY" in
  public|engineering|productivity|creative|personal)
    echo "Installing $CATEGORY skills to $TARGET_USER ..."
    install_genre "$CATEGORY"
    ;;
  all|*)
    echo "Installing all skills to $TARGET_USER ..."
    mkdir -p "$TARGET_USER"
    for genre in public engineering productivity creative personal; do
      install_genre "$genre"
    done
    ;;
esac

echo ""
echo "Done. Installed skills:"
ls "$TARGET_USER"
