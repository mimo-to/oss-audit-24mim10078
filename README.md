# oss-audit-24mim10078

**Open Source Software — Capstone Project**
Course: Open Source Software (OSS NGMC)
Slot: F11 

---

## Student Details

| Field | Details |
|---|---|
| Name | Rounak Hati |
| Registration Number | 24MIM10078 |
| Software Chosen | Linux Kernel |
| OS Used | Fedora Linux 43 (KDE Plasma Desktop Edition) |
| Kernel Version | 6.19.9-200.fc43.x86_64 |

---

## Repository Structure
```
oss-audit-24mim10078/
├── script1.sh        # System Identity Report
├── script2.sh        # FOSS Package Inspector
├── script3.sh        # Disk and Permission Auditor
├── script4.sh        # Log File Analyzer
├── script5.sh        # Open Source Manifesto Generator
└── README.md
```

---

## Scripts Overview

### script1.sh — System Identity Report
Displays a formatted system audit screen showing the running kernel
version, current user, system uptime, date, distribution name, and
the open source license covering the OS.

**Concepts used:** variables, command substitution `$()`, echo,
output formatting, hostnamectl, uname

---

### script2.sh — FOSS Package Inspector
Checks whether the Linux kernel package is installed using RPM,
retrieves its version, license, and summary, and prints a
philosophy note about the package using a case statement.

**Concepts used:** if-then-else, case statement, rpm -q, rpm -qi,
grep -E, pipe chaining, output redirection

---

### script3.sh — Disk and Permission Auditor
Loops through a list of important system directories and reports
the permissions, owner, group, and disk usage for each. Also checks
and reports the permissions on the /boot directory specifically.

**Concepts used:** arrays, for loop, ls -ld, du -sh, awk, cut,
conditional directory check

---

### script4.sh — Log File Analyzer
Reads a log file line by line, counts occurrences of a keyword,
and prints the last 5 matching lines. Accepts the log file path
and keyword as command-line arguments.

**Concepts used:** command-line arguments $1 $2, default values,
while-read loop, if-then, counter variables, grep -i, tail

---

### script5.sh — Open Source Manifesto Generator
Asks the user three interactive questions and generates a
personalised open source philosophy statement saved to a .txt file
named after the current user.

**Concepts used:** read -p, string interpolation, file writing
with > and >>, date formatting, whoami, cat

---

## Dependencies

All scripts run on any standard Linux system with bash installed.
No additional packages are required beyond what ships with Fedora.

| Tool | Purpose | Available on Fedora |
|---|---|---|
| bash | Script interpreter | Yes, default |
| rpm | Package query (script2) | Yes, default |
| systemd / hostnamectl | Distro info (script1) | Yes, default |
| coreutils | echo, date, whoami, cut, tail | Yes, default |
| util-linux | uptime | Yes, default |
| gawk | awk for field extraction | Yes, default |
| grep | Keyword search | Yes, default |
| du / ls | Disk and permission info | Yes, default |

---

## How to Run

### Step 1 — Clone the repository
```bash
git clone https://github.com/mimo-to/oss-audit-24mim10078.git
cd oss-audit-24mim10078
```

### Step 2 — Make all scripts executable
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

### Step 3 — Run each script

**Script 1 — System Identity Report**
```bash
./script1.sh
```
Expected output: formatted audit screen with kernel version,
user, uptime, date, distro, and license.

---

**Script 2 — FOSS Package Inspector**
```bash
./script2.sh
```
Expected output: kernel installation status, version, license
summary, and philosophy note.

---

**Script 3 — Disk and Permission Auditor**
```bash
./script3.sh
```
Expected output: permissions and sizes for /etc, /var/log,
/home, /usr/bin, /tmp, and /boot.

---

**Script 4 — Log File Analyzer**
```bash
sudo ./script4.sh /var/log/messages warning
```
Note: sudo is required because /var/log/messages is only
readable by root on Fedora.

You can replace /var/log/messages with any readable log file
and "warning" with any keyword you want to search for.

Expected output: keyword match count and last 5 matching lines.

---

**Script 5 — Open Source Manifesto Generator**
```bash
./script5.sh
```
The script will ask you three questions interactively.
Answer them and it will generate a personalised manifesto
saved as manifesto_[yourusername].txt in the current directory.

Expected output: manifesto printed to terminal and saved to file.

---

## Notes

- All scripts were written and tested on Fedora Linux 43
  (KDE Plasma Desktop Edition), kernel 6.19.9-200.fc43.x86_64.
- Script 4 requires sudo on Fedora when reading system logs
  in /var/log/messages. On other distributions or with different
  log files, sudo may not be needed.
- Script 5 creates a manifesto_[username].txt file in whichever
  directory you run it from.
- All scripts include inline comments explaining each section.

---

## License

This project is submitted as academic coursework.
The Linux Kernel, which is the subject of this audit,
is licensed under the GNU General Public License v2.
Full license text: https://www.kernel.org/pub/linux/kernel/COPYING

---

*Rounak Hati | 24MIM10078*
