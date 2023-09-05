#!/bin/bash

# Base directory
BASE_DIR="test_problem_files"

# Name (and path if needed) of your Python script
SCRIPT="solve-pddl.py"

# Iterate over the outer directories (1 to 5)
for OUTER in {1..20}; do
    # Iterate over the PDDL files in the inner directories
    
    for FILE in $BASE_DIR/$OUTER/*.pddl; do
        echo "Processing $FILE..."
        python $SCRIPT $FILE
        echo "------------------------"
    done
done

