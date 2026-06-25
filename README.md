# 4d7e68 v01

A clean light color theme for Visual Studio Code.

## Theme

This extension contributes the `4d7e68-v01` light theme.

## Installation

1. Open the Extensions view in Visual Studio Code.
2. Search for `4d7e68 v01`.
3. Install the extension and select the theme from `Preferences: Color Theme`.

## Release Notes

See [CHANGELOG.md](CHANGELOG.md).

## Release Automation

Install the local release commit hook:

```bash
scripts/install-auto-versioning-hook.sh
```

When only `package.json` is staged, the hook rewrites the commit message to
`[milestone] Release vX.Y.Z`. After that commit reaches `master`, GitHub
Actions creates the matching version tag. Pushing that tag triggers the VS Code
Marketplace publish workflow.

The workflows expect these GitHub Actions secrets:

- `GH_RELEASE_PAT`: GitHub token with `Contents: Read and write` for this repo.
- `VSCE_PAT`: Azure DevOps Marketplace token with `Marketplace: Manage`.
