#!/bin/bash
set -euo pipefail

if ! mint list | grep -q 'R.swift'; then
  echo "error: R.swift not installed; run 'mint bootstrap' to install"
  exit 1
fi

mint run R.swift rswift generate "$SRCROOT/ResistanceCalculator/Generated/R.generated.swift"
