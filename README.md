# Server-Performance-Stats

Overview

server-stats.sh is a Bash script that collects and displays key performance metrics from a Linux server. It provides details on CPU usage, memory usage, disk space, top processes, system uptime, and more.

Features

✅ Total CPU usage

✅ Total memory usage (Free vs Used including percentage)

✅ Total disk usage (Free vs Used including percentage)

✅ Top 5 processes by CPU usage

✅ Top 5 processes by memory usage

✅ OS version, uptime, load average, logged-in users

✅ Failed SSH login attempts (Stretch goal)

Project URL: https://github.com/teciedesk/Server-Performance-Stats

GitHub Repository: https://github.com/teciedesk/Server-Performance-Stats.git

Prerequisites

Linux system (Ubuntu, Debian, CentOS, etc.)

Bash shell

Basic system utilities (top, free, df, uptime, ps, grep)

Installation and Usage

Step 1: Download the Script

Create a new file and open it for editing:

nano server-stats.sh

Copy and paste the script into the file, then save and exit (CTRL + X, then Y, then Enter).

Step 2: Make the Script Executable

Run the following command to grant execution permissions:

chmod +x server-stats.sh

Step 3: Run the Script

To execute the script, run:

./server-stats.sh

Step 4: Save Output to a File

You can save the output to a text file for future reference: