#!/bin/bash

set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
hook_path="$repo_root/.git/hooks/commit-msg"

ln -sf "../../scripts/auto-versioning.sh" "$hook_path"
chmod +x "$repo_root/scripts/auto-versioning.sh"

echo "Installed commit-msg hook at $hook_path"
