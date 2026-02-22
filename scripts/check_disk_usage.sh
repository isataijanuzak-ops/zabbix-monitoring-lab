#!/bin/bash
THRESHOLD=80
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "Disk usage is CRITICAL: ${USAGE}%"
  exit 1
else
  echo "Disk usage is OK: ${USAGE}%"
  exit 0
fi
