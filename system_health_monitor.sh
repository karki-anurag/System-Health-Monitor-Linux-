#!/bin/bash
#System Health Monitor
#Try to use all these:- Variables, Contdition, Loops, Function. 

#Configuration
DISK_THRESHOLD=80
CPU_THRESHOLD=90
LOG_FILE="/var/log/health_monitor.log"

#Colors for Output
RED='\033[0;31m'
GREEEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

#Functions
log() {
        local LEVEL="$1"
        local MSG="$2"
        local TIMESTAMP=$(date '+%Y-%m-%d %H-%M-%S')
        echo "[$TIMESTAMP] [$LEVEL] $MSG" | sudo tee -a $LOG_FILE
}

print_status() {
        local STATUS="$1"
        local MESSAGE="$2"
        if [ "$STATUS" = "OK" ]; then
                echo -e "${GREEN} OK${NC}: $MESSAGE"
        elif [ "$STATUS" = "WARN" ]; then
                echo -e "$YELLOW WARN${NC}: $MESSAGE"
        else
                echo -e "$RED FAILS${NC}: $MESSAGE"
        fi
}

check_disk() {
"system_health_monitor.sh" 113L, 2775B                                                                                                                                      14,5          Top
