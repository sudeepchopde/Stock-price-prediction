#!/usr/bin/env bash
# Download NIFTY50 dataset from Kaggle and unzip into data/ directory
set -e

DATASET=rohanrao/nifty50-stock-market-data
OUTDIR=data

mkdir -p "$OUTDIR"

if ! command -v kaggle >/dev/null 2>&1; then
  echo "kaggle CLI not found. Install it with: pip install kaggle" >&2
  exit 1
fi

# Download and unzip
kaggle datasets download -d "$DATASET" -p "$OUTDIR" --unzip

echo "Download complete. Files are in $OUTDIR/"