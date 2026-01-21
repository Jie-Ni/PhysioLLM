#!/bin/bash

# PhysioLLM Data Downloader
# Usage: bash scripts/download_data.sh

echo "======================================================="
echo "   PhysioLLM: Downloading Datasets..."
echo "======================================================="

# 1. Define Directories
DATA_DIR="./data/processed"
mkdir -p $DATA_DIR

# 2. Define URLs (Updated with Real Zenodo DOI)
# Zenodo Record: 18331267
ATLAS_URL="https://zenodo.org/record/18331267/files/physiollm_complete_atlas.h5ad?download=1"
VIRTUAL_LIB_URL="https://zenodo.org/record/18331267/files/virtual_compound_library.csv?download=1"

# 3. Check for wget or curl
if command -v wget >/dev/null 2>&1; then
    DOWNLOADER="wget -O"
elif command -v curl >/dev/null 2>&1; then
    DOWNLOADER="curl -L -o"
else
    echo "Error: Neither wget nor curl found. Please install one."
    exit 1
fi

# 4. Download Files
echo "--> Downloading Single-Cell Atlas (High-Res)..."
echo "    Source: Zenodo Record 18331267"
$DOWNLOADER "$DATA_DIR/physiollm_complete_atlas.h5ad" "$ATLAS_URL"

echo "--> Downloading Virtual Compound Library..."
$DOWNLOADER "$DATA_DIR/virtual_compound_library.csv" "$VIRTUAL_LIB_URL"

echo "======================================================="
echo "   Download Complete!"
echo "   Data saved to: $DATA_DIR"
echo "======================================================="
