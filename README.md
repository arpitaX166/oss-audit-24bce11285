# oss-audit-24bce11285
VIT-yarthi open source project repo.
# My Open Source Audit Project - Python3
**Name:** Arpita  
**Roll No:** 24BCE11285  
**Software:** Python3 (on Ubuntu WSL2)

---

## What this project is about
This is my capstone project for the OSS course. I used Windows Subsystem for Linux (WSL2) to set up a real Ubuntu environment on my laptop. I also used WSLg so I could run some Linux GUI apps like gedit right next to my Windows windows. The main goal was to audit how Python lives on Linux using 5 scripts I wrote in Bash.

## The 5 Scripts I wrote
I have 5 different scripts in this repo, here is what each of them does:

1. **identity_report.sh**: This one is like a welcome screen. It shows my name, the kernel version (using `uname -r`), and how long the system has been running. It also mentions the GNU GPL license.
2. **software_inspector.sh**: This script checks if Python3 is actually there. It uses `dpkg` to see the version and has a case statement that explains what Python is for.
3. **disk_auditor.sh**: This script loops through folders like `/etc` and `/home`. It tells you the size using `du -sh` and who owns the folder using `ls -ld` and `awk`.
4. **log_analyzer.sh**: I used a while-read loop here to scan the `bootstrap.log` file. It looks for the word "error" and counts them, then shows the last few matches.
5. **manifesto_gen.sh**: This is an interactive script. It asks three questions about your favorite tools and freedom, then saves a "manifesto" text file to the folder.

## Stuff you need to run this
* You need Ubuntu (I used 24.04 LTS from Microsoft Store).
* Python3 must be installed.
* The standard Linux tools like `grep`, `awk`, and `chmod`.

## How to run it on your Linux
To run these, follow these steps exactly:

1. Open your Ubuntu terminal and go to the folder:
   `cd /home/amishravi2519`
2. You have to give the scripts permission first or they wont run:
   `chmod +x *.sh`
3. Run them one by one like this:
   * `./identity_report.sh`
   * `./software_inspector.sh`
   * `./disk_auditor.sh`
   * `./log_analyzer.sh /var/log/bootstrap.log`
   * `./manifesto_gen.sh`

## My Outputs
The script 5 creates a file called `manifesto_amishravi2519.txt`. You can see it by typing `cat manifesto_amishravi2519.txt`.

---
*Created for VIT-yarthi OSS Audit*
