#!/bin/bash

AUDIT_DIR=${1:-/home}  # Default to /home if not specified
REPORT_FILE="audit_report_$(date +%F_%T).txt"

echo "Starting audit on $AUDIT_DIR" | tee $REPORT_FILE
echo "----------------------------------------" | tee -a $REPORT_FILE

# 1. World-writable files
echo -e "\n[1] World-writable files:" | tee -a $REPORT_FILE
find "$AUDIT_DIR" -type f -perm -0002 -exec ls -l {} \; 2>/dev/null | tee -a $REPORT_FILE

# 2. Files with no owner or group
echo -e "\n[2] Files with no owner or group:" | tee -a $REPORT_FILE
find "$AUDIT_DIR" \( -nouser -o -nogroup \) -exec ls -l {} \; 2>/dev/null | tee -a $REPORT_FILE

# 3. SUID/SGID files
echo -e "\n[3] SUID/SGID files:" | tee -a $REPORT_FILE
find "$AUDIT_DIR" -type f \( -perm -4000 -o -perm -2000 \) -exec ls -l {} \; 2>/dev/null | tee -a $REPORT_FILE

# 4. Directories without execute permissions
echo -e "\n[4] Directories without execute permissions (not accessible):" | tee -a $REPORT_FILE
find "$AUDIT_DIR" -type d ! -perm -111 -exec ls -ld {} \; 2>/dev/null | tee -a $REPORT_FILE

echo -e "\nAudit complete. Report saved to $REPORT_FILE"
