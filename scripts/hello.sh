
#!/bin/bash

set -e

echo "=================================="
echo " GitHub Actions Shell Script Demo"
echo "=================================="

# Step 1: Print date and time
echo ""
echo "Step 1: Current date and time"
date

# Step 2: Display system information
echo ""
echo "Step 2: System information"
echo "Operating system:"
uname -s
echo "Machine architecture:"
uname -m

# Step 3: Display environment variables
echo ""
echo "Step 3: Environment information"
echo "User: $(whoami)"
echo "Working directory: $(pwd)"
echo "Home directory: $HOME"

# Step 4: Create a directory
echo ""
echo "Step 4: Create output directory"
mkdir -p output
echo "Output directory created."

# Step 5: Create a report file
echo ""
echo "Step 5: Write a report"
{
    echo "GitHub Actions Execution Report"
    echo "Date: $(date)"
    echo "Runner OS: $(uname -s)"
    echo "User: $(whoami)"
} > output/report.txt

cat output/report.txt

# Step 6: Run a loop
echo ""
echo "Step 6: Loop example"
for number in 1 2 3 4 5
do
    echo "Processing item: $number"
done

# Step 7: Check whether a file exists
echo ""
echo "Step 7: File validation"
if [ -f output/report.txt ]; then
    echo "SUCCESS: Report file exists."
else
    echo "ERROR: Report file not found."
    exit 1
fi

# Step 8: Count report lines
echo ""
echo "Step 8: Count report lines"
wc -l output/report.txt

# Step 9: Display disk usage
echo ""
echo "Step 9: Disk usage"
df -h .

# Step 10: Finish
echo ""
echo "=================================="
echo "All steps completed successfully!"
echo "=================================="
