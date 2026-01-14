#!/bin/bash
echo "Setting up the test environment..."
cd proyeto_pytest
echo "Running tests with pytest..."
source venv/bin/activate

echo"installing dependencies..."

pip install -r requirements.txt

echo "Starting tests..."
pytest tests/ --junitxml=reports/test-results.xml --html=reports/test_results.html --self-contained-html

echo "Tests completed. Reports generated in the reports"