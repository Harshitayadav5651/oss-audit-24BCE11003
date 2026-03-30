# oss-audit-24BCE11003
# Open Source Audit Project -- Apache HTTP Server

## Chosen Software
- **Software:** Apache HTTP Server
- **Category:** Web Server
- **License:** Apache License 2.0

---

## Project Description
This project is a comprehensive audit of the open-source software Apache HTTP Server. It explores the origin story of "A Patchy Server," analyzes the permissive nature of its license, and documents its technical footprint on a Linux system.

---

## Scripts Included

### Script 1 - System Identity Report
Displays system information such as:
- [cite_start]Linux distribution and Kernel version [cite: 95]
- [cite_start]Current logged-in user and home directory [cite: 96]
- [cite_start]System uptime [cite: 97]
- [cite_start]Current date and time [cite: 97]
- [cite_start]OS License message (GPL) [cite: 98]

### Script 2 - FOSS Package Inspector
- [cite_start]Checks if Apache (apache2) is installed [cite: 126]
- [cite_start]Displays version, license, and summary [cite: 128]
- [cite_start]Uses a case statement to print a philosophy note based on the package name [cite: 126]

### Script 3 - Disk and Permission Auditor
- [cite_start]Loops through important system directories (/etc, /var/log, etc.) [cite: 146, 152]
- [cite_start]Reports disk space usage, owners, and permissions [cite: 146, 147]
- [cite_start]Specifically audits the Apache configuration directory [cite: 162]

### Script 4 - Log File Analyzer
- [cite_start]Reads Apache log files line by line [cite: 164]
- [cite_start]Counts occurrences of keywords like ERROR or WARNING [cite: 164]
- [cite_start]Provides a summary of the findings [cite: 164]

### Script 5 - Open Source Manifesto Generator
- [cite_start]Interactively asks the user three philosophy questions [cite: 186]
- [cite_start]Composes a personalized open-source statement [cite: 186]
- [cite_start]Saves the output to a .txt file using the current date [cite: 186, 188]

---

## How to Run the Scripts
1. Open Linux terminal (WSL/Ubuntu).
2. Navigate to your project directory:
```bash
cd oss-audit-24BCE11003/scripts
----
chmod +x system_identity.sh package_inspector.sh disk_auditor.sh log_analyzer.sh manifesto_gen.sh
.sh`
3. Run: `./<script_name>.sh`
./system_identity.sh
./package_inspector.sh
./disk_auditor.sh
./log_analyzer.sh /var/log/apache2/error.log
./manifesto_gen.sh

## Requirements
-Linux Environment (Ubuntu 24.04/WSL2 recommended)
-Apache HTTP Server installed (sudo apt install apache2)
-Basic command-line and shell scripting knowledge

## Learning Outcomes
-Hands-on experience with Linux service management and directory structures
-Automation through advanced shell scripting (loops, conditionals, and awk

## Repository Structure
 ```bash
oss-audit-24BCE11003/
├── scripts/
│   ├── system_identity.sh
│   ├── package_inspector.sh
│   ├── disk_auditor.sh
│   ├── log_analyzer.sh
│   └── manifesto_gen.sh
├── docs/
│   └── OSS_Audit_Report_24BCE11003.pdf
└── README.md

## Conclusion
This project provides both theoretical and practical knowledge of open-source software using the Apache HTTP Server as a case study. It demonstrates how community-driven development has built the foundations of the modern web through transparency and collective improvement.

## Author Name
- Name : Harshita Anil Yadav
-Registration Number : 24BCE11003
