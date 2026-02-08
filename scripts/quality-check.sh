#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

echo "[quality] running open-source baseline checks"

required_files=(
  "README.md"
  "README.zh-CN.md"
  "LICENSE"
  "CONTRIBUTING.md"
  "CODE_OF_CONDUCT.md"
  "SECURITY.md"
  ".github/pull_request_template.md"
  ".github/ISSUE_TEMPLATE/bug_report.md"
  ".github/ISSUE_TEMPLATE/feature_request.md"
  ".github/ISSUE_TEMPLATE/config.yml"
  "CLIProxyAPI/static/management.html"
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "[quality] missing required file: $file"
    exit 1
  fi
done

echo "[quality] required files: OK"

grep -q "README.zh-CN.md" README.md

grep -q "README.md" README.zh-CN.md

echo "[quality] bilingual README cross-links: OK"

grep -q 'meta name="description"' CLIProxyAPI/static/management.html

grep -q 'meta name="keywords"' CLIProxyAPI/static/management.html

grep -q 'property="og:title"' CLIProxyAPI/static/management.html

grep -q 'property="og:description"' CLIProxyAPI/static/management.html

grep -q 'property="og:type"' CLIProxyAPI/static/management.html

grep -q 'name="twitter:card"' CLIProxyAPI/static/management.html

echo "[quality] SEO meta tags: OK"

echo "[quality] all checks passed"
