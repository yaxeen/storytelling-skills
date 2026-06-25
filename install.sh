#!/usr/bin/env bash
# Installs every skill in skills/ into your personal Claude Code skills directory.
set -euo pipefail

DEST="$HOME/.claude/skills"
SRC="$(cd "$(dirname "$0")" && pwd)/skills"

mkdir -p "$DEST"

for dir in "$SRC"/*/; do
  name="$(basename "$dir")"
  rm -rf "${DEST:?}/$name"
  cp -R "$dir" "$DEST/$name"
  echo "Installed $name"
done

echo ""
echo "Done. Restart Claude Code to load the skills."
