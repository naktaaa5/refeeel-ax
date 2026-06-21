#!/bin/bash
# 대시보드 변경 후 재배포: dashboard.html → index.html 복사 후 푸시
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
cp "/Users/nakta/Documents/통합워크스페이스/dashboard.html" "$DIR/index.html"
cd "$DIR"
git add index.html
git commit -m "update dashboard $(date +%Y-%m-%d)" || { echo "변경 없음"; exit 0; }
git push
echo "✅ 배포 완료 — 1~2분 후 반영"
