#!/bin/bash
# ─────────────────────────────────────────────────────────────
# deploy.sh — Church Finance: commit & push in one command
#
# Usage:
#   ./deploy.sh "feat: describe what changed"
#   ./deploy.sh           (uses auto-generated message)
# ─────────────────────────────────────────────────────────────

set -e

cd "$(dirname "$0")"

MSG="${1:-chore: update Church_finance.html}"

echo "📦  Staging Church_finance.html..."
git add Church_finance.html

if git diff --cached --quiet; then
  echo "✅  No changes to commit."
  exit 0
fi

echo "💬  Committing: $MSG"
git commit -m "$MSG"

echo "🚀  Pushing to GitHub..."
git push

echo ""
echo "✅  Done! GitHub Action will auto-sync index.html."
echo "🌐  https://trashthejay.github.io/chanyang/"
echo "    (Wait ~1 min then Cmd+Shift+R to refresh)"
