#!/bin/bash
set -e

echo "🚀 Bioinformatics container started"
echo "Working directory: /work"
echo "EggNOG DB directory: /data/eggnog"
echo "Running Pangenomic Automated Workflow..."
echo ""

cd /work/Pangenomics-Pipeline/codes
bash workflow1.sh "$@"

echo ""
echo "📊 Running Visualization Script..."
python3 /work/Pangenomics-Pipeline/codes/visualizations.py

echo ""
echo "✅ Workflow and visualizations complete!"
exec bash  # keep container open for exploration
