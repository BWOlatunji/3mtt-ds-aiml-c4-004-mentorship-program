#!/usr/bin/env bash

set -e

echo "Running repository validation..."

REQUIRED_DIRS=(
    "00_admin"
    "01_curriculum"
    "02_assignments"
    "03_submissions"
    "04_projects"
    "05_training_materials"
    "06_datasets"
    "07_code_library"
    "08_resources"
    "09_feedback"
    "10_assessments"
    "11_templates"
    "12_meeting-notes"
)

for DIR in "${REQUIRED_DIRS[@]}"; do
    if [ ! -d "$DIR" ]; then
        echo "ERROR: Missing directory: $DIR"
        exit 1
    fi
done

echo "All required directories exist."

echo ""
echo "Checking for files larger than 50MB..."

find . \
    -type f \
    -not -path './.git/*' \
    -size +50M \
    -print

echo ""
echo "Repository validation complete."
