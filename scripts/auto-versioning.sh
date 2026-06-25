#!/bin/bash

# Link this file to .git/hooks/commit-msg.
# If only package.json is staged, rewrite the commit message to the
# release format consumed by .github/workflows/auto-tag.yml.

set -euo pipefail

COMMIT_MSG_FILE="${1:-.git/COMMIT_EDITMSG}"
STAGED_FILES="$(git diff --cached --name-only)"

if [[ "$STAGED_FILES" == "package.json" ]]; then
    VERSION="$(node -p "require('./package.json').version")"

    {
        echo "[milestone] Release v$VERSION"
        echo ""
        echo "Root cause: NA"
        echo "Solution: NA"
        echo "Risks: NA"
        echo "Dependency: NA"
        echo "Links: NA"
    } > "$COMMIT_MSG_FILE"

    echo "Commit message rewritten to [milestone] Release v$VERSION"
fi
