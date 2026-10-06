#!/usr/bin/env bash

set -e

echo "Setting up Python virtual environment..."

python3 -m venv .venv

source .venv/bin/activate

python -m pip install --upgrade pip

pip install \
    numpy \
    pandas \
    matplotlib \
    seaborn \
    scikit-learn \
    scipy \
    statsmodels \
    jupyter \
    notebook

echo ""
echo "Environment setup complete."
echo ""
echo "Activate it with:"
echo "source .venv/bin/activate"
