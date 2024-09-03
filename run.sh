#!/bin/bash

# Step 1: Remove existing virtual environment if it exists
if [ -d "venv" ]; then
    rm -rf venv
fi

# Step 2: Create a new virtual environment
python3 -m venv venv

# Step 3: Activate the virtual environment
source venv/bin/activate

# Step 4: Install dependencies
pip install -r requirements.txt

# Step 5: Run the Flask application
export FLASK_APP=app.py
export FLASK_ENV=development
flask run --host=0.0.0.0 --port=5000