#!/bin/bash
set -e

echo "Running write-good on all .md files"

found=false

# Lưu danh sách file .md vào mảng
readarray -d '' files < <(find . -type f -name "*.md" -print0)

for file in "${files[@]}"; do
  echo "Checking $file"
  if ! write-good "$file"; then
    found=true
  fi
done

if [ "$found" = true ]; then
  echo "Some issues were found by write-good"
  exit 0
else
  echo "All files passed write-good check"
fi
