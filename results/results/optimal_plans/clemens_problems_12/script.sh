#!/bin/bash

# Base directory
BASE_DIR="clemens_problem_files"

# Name (and path if needed) of your Python script
SCRIPT="solve-pddl.py"

# Iterate over the outer directories (1 to 5)
for FILE in $BASE_DIR/*.pddl; do
    echo "Processing $FILE..."
    python $SCRIPT $FILE
    echo "------------------------"
done


