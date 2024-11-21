#main - search module
#Usage
#1. Save the script as search_log_markers.sh
#2. Make it executable:
# chmod +x search_log_markers.sh
#3. Run with three markers:
#./search_log_markers.sh "ERROR" "WARNING" "DEBUG"

#How It Works - ref README
.

#!/bin/bash

# Check if exactly 3 log markers are provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <log_marker1> <log_marker2> <log_marker3>"
  exit 1
fi

# Input parameters
LOG_MARKER1=$1
LOG_MARKER2=$2
LOG_MARKER3=$3
LOG_DIR="/var/log" # Adjust the log directory as needed
OUTPUT_FILE="log_search_results_$(date +%Y%m%d_%H%M%S).txt"

# Search for each marker and capture occurrences
echo "Search started at: $(date)" | tee -a $OUTPUT_FILE
for MARKER in "$LOG_MARKER1" "$LOG_MARKER2" "$LOG_MARKER3"; do
  echo -e "\nSearching for marker: '$MARKER'" | tee -a $OUTPUT_FILE
  grep -rl "$MARKER" $LOG_DIR | tee -a $OUTPUT_FILE
done

echo -e "\nSearch completed at: $(date)" | tee -a $OUTPUT_FILE
