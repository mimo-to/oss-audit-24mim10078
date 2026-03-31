<div align="center">

<h1>OSS Audit — 24MIM10078</h1>

<p>
    <strong>Open Source Software Capstone Project</strong><br />
    <em>Five bash scripts exploring the Linux Kernel as a FOSS subject.</em>
</p>

<p align="center">
    <img src="https://img.shields.io/badge/Shell-Bash-4EAA25?logo=gnubash&logoColor=white" alt="Bash">
    <img src="https://img.shields.io/badge/OS-Fedora%2043-51A2DA?logo=fedora&logoColor=white" alt="Fedora">
    <img src="https://img.shields.io/badge/Kernel-6.19.9--200.fc43.x86__64-000000?logo=linux&logoColor=white" alt="Kernel">
</p>

</div>

---

## Student Details

| Field | Details |
| :--- | :--- |
| **Name** | Rounak Hati |
| **Registration No.** | 24MIM10078 |
| **Course** | Open Source Software (OSS NGMC) — Slot F11 |
| **Software Audited** | Linux Kernel |
| **OS Used** | Fedora Linux 43 (KDE Plasma Desktop Edition) |
| **Kernel Version** | `6.19.9-200.fc43.x86_64` |

---

## What This Is

Five bash scripts written as part of the OSS capstone. Each script demonstrates a specific set of shell scripting concepts while practically inspecting or interacting with the Linux Kernel — the chosen open source software for this audit.

The scripts cover things like system reporting, RPM package inspection, filesystem permission auditing, log file parsing, and an interactive manifesto generator.

---

## Repository Structure

```text
oss-audit-24mim10078/
├── script1.sh          # System Identity Report
├── script2.sh          # FOSS Package Inspector
├── script3.sh          # Disk and Permission Auditor
├── script4.sh          # Log File Analyzer
├── script5.sh          # Open Source Manifesto Generator
├── Screenshots/        # Output screenshots from each script
│   ├── script1_output.png
│   ├── script2_output.png
│   ├── script3_output.png
│   ├── script4_output.png
│   ├── script5_output.png
│   ├── boot_kernel.png
│   ├── kernel_rpm.png
│   ├── kernel_running.png
│   └── libreoffice_suite_on_fedora_machine.png
├── OSS_Project_Report_24MIM10078.docx
├── CaseStudy_24MIM10078_RounakHati.docx
└── README.md
```

---

## Scripts Overview

### `script1.sh` — System Identity Report

Prints a formatted audit banner showing the running kernel version, current user, system uptime, date, distro name, and the license under which the kernel ships. Mostly a warm-up script, but it gets the key details on screen cleanly.

**Concepts used:** variables, command substitution `$()`, `echo`, output formatting, `hostnamectl`, `uname`

---

### `script2.sh` — FOSS Package Inspector

Queries the `kernel` RPM package to check if it's installed, then pulls the version, license, and summary using `rpm -qi`. After that, a `case` statement prints a brief philosophy note about the package. The other cases (`git`, `firefox`, `vlc`) are in there too if you want to swap the package variable and re-run.

**Concepts used:** `if-then-else`, `case` statement, `rpm -q`, `rpm -qi`, `grep -E`, pipe chaining

---

### `script3.sh` — Disk and Permission Auditor

Loops through five important directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) and reports permissions, owner, group, and disk usage for each. It also separately checks `/boot` since that's where the kernel lives.

**Concepts used:** arrays, `for` loop, `ls -ld`, `du -sh`, `awk`, `cut`, conditional directory check

---

### `script4.sh` — Log File Analyzer

Takes a log file path and a keyword as arguments, reads the file line by line, counts how many lines match the keyword, then prints the last 5 matching lines. The keyword defaults to `error` if you don't pass one.

**Concepts used:** positional arguments `$1` `$2`, default values, `while-read` loop, counter variables, `grep -i`, `tail`

---

### `script5.sh` — Open Source Manifesto Generator

Asks three short questions interactively, then writes a personalised open source philosophy statement to a `.txt` file named after the current user (`manifesto_<username>.txt`). Also prints it to the terminal when done.

**Concepts used:** `read -p`, string interpolation, file writing with `>` and `>>`, `date` formatting, `whoami`, `cat`

---

## How to Run

### 1. Clone the repository
```bash
git clone https://github.com/mimo-to/oss-audit-24mim10078.git
cd oss-audit-24mim10078
```

### 2. Make scripts executable
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

### 3. Run each script

**Script 1 — System Identity Report**
```bash
./script1.sh
```
Prints a formatted audit banner with kernel version, user, uptime, date, distro, and license.

---

**Script 2 — FOSS Package Inspector**
```bash
./script2.sh
```
Checks kernel RPM installation, retrieves package metadata, and prints a philosophy note.

---

**Script 3 — Disk and Permission Auditor**
```bash
./script3.sh
```
Reports permissions and sizes for `/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`, and `/boot`.

---

**Script 4 — Log File Analyzer**
```bash
sudo ./script4.sh /var/log/messages warning
```
> `sudo` is needed on Fedora because `/var/log/messages` is root-readable only. You can point it at any log file you have access to, and swap `warning` for any keyword you want to search for.

---

**Script 5 — Open Source Manifesto Generator**
```bash
./script5.sh
```
Asks three questions interactively, then saves your manifesto as `manifesto_<yourusername>.txt` in the current directory and prints it to screen.

---

## Dependencies

No external packages needed. Everything here ships with a standard Fedora install.

| Tool | Used In | Notes |
| :--- | :--- | :--- |
| `bash` | All scripts | Default shell on Fedora |
| `rpm` | script2 | For package queries |
| `hostnamectl` | script1 | Part of systemd |
| `uname`, `uptime`, `whoami`, `date` | script1, script5 | coreutils / util-linux |
| `awk`, `cut`, `grep`, `tail` | script3, script4 | Standard GNU utilities |
| `du`, `ls` | script3 | Disk and permissions info |

---

## Notes

- All scripts were written and tested on **Fedora Linux 43 (KDE Plasma Desktop Edition)**, kernel `6.19.9-200.fc43.x86_64`.
- Script 4 requires `sudo` on Fedora when reading `/var/log/messages`. If you use a different log file that's readable without root, no `sudo` needed.
- Script 5 writes `manifesto_[username].txt` to whatever directory you run it from.
- All scripts have inline comments throughout — no separate documentation file needed.
- The audit subject is the **Linux Kernel**, picked because it's probably the most foundational piece of open source software that actually runs on the machine the scripts are tested on.

---

## License

Submitted as academic coursework for the Open Source Software course (OSS NGMC), Slot F11.

The **Linux Kernel** — the subject of this audit — is licensed under the **GNU General Public License v2**.
Full license text: [https://www.kernel.org/pub/linux/kernel/COPYING](https://www.kernel.org/pub/linux/kernel/COPYING)

---

*Rounak Hati | 24MIM10078*
