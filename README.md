

=====How It Works======

CLI Inputs: Accepts three log markers as input parameters.
Log Directory: Searches the /var/log directory (adjust as needed).
Search Method: Uses grep -rl to find log files containing each marker.
Output: Writes results to a timestamped file and prints to the console.


Usage
1. Save the script as search_log_markers.sh.
2. Make it executable:
#bash command
$chmod +x search_log_markers.sh
3. Run with three markers:
#bash command
$./search_log_markers.sh "ERROR" "WARNING" "DEBUG"


===================================================
Search started at: Mon Nov 20 12:45:30 UTC 2024

Searching for marker: 'ERROR'
/var/log/syslog
/var/log/auth.log

Searching for marker: 'WARNING'
/var/log/nginx/access.log

Searching for marker: 'DEBUG'
/var/log/debug.log

Search completed at: Mon Nov 20 12:45:45 UTC 2024
=================================================
