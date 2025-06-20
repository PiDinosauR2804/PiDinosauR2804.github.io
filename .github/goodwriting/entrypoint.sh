#!/bin/sh

set -e

echo "📝 Running write-good on all .md files"

found=false

for file in $(find . -type f -name "*.md"); do
  echo "🔍 Checking $file"
  write-good "$file" || found=true
done

if [ "$found" = true ]; then
  echo "❌ Some issues were found by write-good"
  exit 1
else
  echo "✅ All files passed write-good check"
fi

