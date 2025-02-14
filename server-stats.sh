#!/bin/bash

echo "==================== SERVER PERFORMANCE STATS ===================="
echo ""

# OS Version
echo "📌 OS Version:"
cat /etc/os-release | grep -E '^PRETTY_NAME' | cut -d= -f2 | tr -d '"'
echo ""

# Uptime
echo "📌 Uptime:"
uptime -p
echo ""

# Load Average
echo "📌 Load Average (1m, 5m, 15m):"
cat /proc/loadavg | awk '{print $1, $2, $3}'
echo ""

# Logged-in Users
echo "📌 Logged-in Users:"
who | wc -l
echo ""

# CPU Usage
echo "📌 CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "User: " $2 "%, System: " $4 "%, Idle: " $8 "%"}'
echo ""

# Memory Usage
echo "📌 Memory Usage:"
free -m | awk 'NR==2{printf "Total: %sMB, Used: %sMB, Free: %sMB (%.2f%% Used)\n", $2, $3, $4, $3*100/$2 }'
echo ""

# Disk Usage
echo "📌 Disk Usage:"
df -h --total | grep 'total' | awk '{printf "Total: %s, Used: %s, Free: %s (%.2f%% Used)\n", $2, $3, $4, $3*100/$2}'
echo ""

# Top 5 Processes by CPU Usage
echo "📌 Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6
echo ""

# Top 5 Processes by Memory Usage
echo "📌 Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%mem --sort=-%mem | head -6
echo ""

# Failed Login Attempts
echo "📌 Failed SSH Login Attempts:"
grep "Failed password" /var/log/auth.log | wc -l
echo ""

echo "==================== END OF REPORT ===================="
