#!/bin/bash

set -e

echo "📝 Running write-good on all .md files"

found=false

ffind . -type f -name "*.md" -print0 | while IFS= read -r -d '' file; do
  echo "🔍 Checking $file"
  write-good "$file" || found=true
done


if [ "$found" = true ]; then
  echo "❌ Some issues were found by write-good"
  exit 1
else
  echo "✅ All files passed write-good check"
fi

