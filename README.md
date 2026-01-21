# PhysioLLM: A Digital Twin Framework for Metabolic Physiology

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Python](https://img.shields.io/badge/python-3.9-green)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.18331267.svg)](https://doi.org/10.5281/zenodo.18331267)

This repository contains the official implementation of the paper: **"PhysioLLM: A Digital Twin Framework for Metabolic Physiology and Drug Discovery"**.

PhysioLLM is a physically constrained neuro-symbolic framework that simulates metabolic physiology at single-cell resolution. It integrates Large Language Models (LLMs) with Ordinary Differential Equations (ODEs) and an Adaptive Semantic Caching mechanism to predict disease progression and optimize clinical trials.

## 📂 Repository Structure

- `src/`: Source code for the PhysioLLM engine (RAG, ODE solver, ASC mechanism).
- `scripts/`: Utility scripts for data setup and environment configuration.
- `data/`: Directory for input datasets (see Setup below).
- `results/`: Directory for storing generated simulation figures.

## 🚀 Quick Start

### 1. Installation
Clone the repository and install the required dependencies:

bash
git clone [https://github.com/YourUsername/PhysioLLM.git](https://github.com/YourUsername/PhysioLLM.git)
cd PhysioLLM
pip install -r requirements.txt

### 2. Data Setup (Crucial Step) Due to size constraints, the single-cell transcriptomic atlas and the virtual compound library are hosted on Zenodo.

 Option A: Automatic Download (Recommended) Run the provided script to download and place files automatically:

bash bash scripts/download_data.sh 

 Option B: Manual Download Download the datasets from Zenodo DOI: 10.5281/zenodo.18331267 and place the files (physiollm_complete_atlas.h5ad and virtual_compound_library.csv) into the data/processed/ directory.

### 3. Reproducing Figures The scripts to reproduce Figures 1-7 from the manuscript are located in src/figure_scripts/.

 Example: Generate Figure 5 (Disease Progression) bash python src/figure_scripts/step51_figure5_disease.py 

 Example: Generate Figure 7 (Clinical Trial Optimization) bash python src/figure_scripts/step55_figure7_final_freeze.py 
