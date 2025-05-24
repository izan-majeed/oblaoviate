#!/bin/bash

echo "✨ Welcome to Oblaoviate — The Bloatware Remover ✨"

if [ -z "$1" ]; then
  echo "Usage: ./oblaoviate.sh <device_brand>"
  echo "Example: ./oblaoviate.sh xiaomi"
  exit 1
fi

PACKAGE_FILE="devices/$1.txt"

if [ ! -f "$PACKAGE_FILE" ]; then
  echo "Uh-oh! No spell scroll found for '$1'. Expected at: $PACKAGE_FILE"
  exit 2
fi

mapfile -t packages < "$PACKAGE_FILE"
echo "Casting Obliviate on bloatware for '$1'..."

for package in "${packages[@]}"; do
  trimmed_package=$(echo "$package" | xargs)
  if [[ -n "$trimmed_package" ]]; then
    echo "💥 Vanishing $trimmed_package ..."
    adb shell pm uninstall -k --user 0 "$trimmed_package"
  fi
done

echo "✅ Oblaoviate complete — all selected bloatware has been purged from '$1'."
