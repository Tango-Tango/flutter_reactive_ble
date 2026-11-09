#!/usr/bin/env bash
# Applies the CI workflow change that the mashbill GitHub App cannot push
# (it lacks the `workflows` permission), removes this helper directory,
# commits and pushes. Run from anywhere inside the repo, on the
# chore/agp-9.5-toolchain branch.
set -euo pipefail

branch="chore/agp-9.5-toolchain"
root="$(git rev-parse --show-toplevel)"
cd "$root"

current="$(git rev-parse --abbrev-ref HEAD)"
if [[ "$current" != "$branch" ]]; then
  echo "error: on branch '$current', expected '$branch'" >&2
  exit 1
fi
if [[ -n "$(git status --porcelain)" ]]; then
  echo "error: working tree is not clean" >&2
  exit 1
fi

git pull --ff-only origin "$branch"

git apply --index ci-workflow-update/flutter-3.47.9.patch
git rm -q -r ci-workflow-update
git commit -q -m "ci: build with Flutter 3.47.9

Flutter 3.44's Gradle plugin applies kotlin-android to plugin projects,
which AGP 9 rejects when android.builtInKotlin=true. 3.47.9 does not."

git --no-pager log -1 --stat
git push origin "$branch"
