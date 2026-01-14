#!/bin/bash
echo "Running tests with pytest..."
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi
source venv/bin/activate

echo"installing dependencies..."

pip install --upgrade pip
pip install -r requirements.txt

echo "Starting tests..."
pytest tests/ --junitxml=reports/test-results.xml --html=reports/test_results.html --self-contained-html

echo "Tests completed. Reports generated in the reports"