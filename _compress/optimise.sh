#!/bin/bash

# Directories containing icons
DIRECTORIES=("icons/1_Primary" "icons/2_Variations" "icons/3_Generic")

echo "Starting SVG cleanup..."

for dir in "${DIRECTORIES[@]}"; do
  if [ -d "$dir" ]; then
    echo ""
    echo "--- Processing directory: $dir ---"
    # Use find with -print0 and while read -d '' for safe filename handling
    find "$dir" -type f -name "*.svg" -print0 | while IFS= read -r -d $'\0' file; do
      # Calculate hash before processing to detect changes
      hash_before=$(git hash-object "$file")

      # Run svgo on a single file, overwriting it, and capture the summary output.
      # Redirect stderr to stdout to also capture potential error messages.
      output=$(svgo --multipass --pretty --indent 3 "$file" -o "$file" 2>&1)
      svgo_exit_code=$?

      if [ $svgo_exit_code -ne 0 ]; then
        echo "  ERROR processing $file:"
        echo "    $output"
        continue # Move to the next file
      fi

      hash_after=$(git hash-object "$file")

      if [ "$hash_before" != "$hash_after" ]; then
        stats=$(echo "$output" | sed 's/.*: //')
        echo "  CLEANED: $file ($stats)"
      else
        echo "  SKIPPED: $file (already optimised)"
      fi
    done
  fi
done

echo ""
echo "SVG cleanup finished."