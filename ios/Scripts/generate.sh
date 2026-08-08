#!/bin/bash
# Xcode プロジェクトを生成する。
# ビルド番号は git のコミット数から自動採番する。
set -euo pipefail

cd "$(dirname "$0")/.."

if git rev-parse --git-dir >/dev/null 2>&1; then
  BUILD_NUMBER=$(git rev-list --count HEAD)
  # 浅いクローンではコミット数が実際より少なくなる
  if [ "$(git rev-parse --is-shallow-repository)" = "true" ]; then
    echo "warning: 浅いクローンのためビルド番号が実際より小さくなります" >&2
  fi
else
  BUILD_NUMBER=1
  echo "warning: git リポジトリではないためビルド番号を 1 にします" >&2
fi

export BUILD_NUMBER
echo "BUILD_NUMBER=${BUILD_NUMBER}"

mint run xcodegen generate
