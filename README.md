
---

```markdown
# 🛡️ File and Directory Permissions Auditor

A simple Bash script to audit file and directory permissions in Linux systems. This tool recursively scans a specified directory and flags potentially insecure permission settings, such as **world-writable files**, files with **no owner or group**, and provides a summary of the results.

---

## 📂 What It Does

- Recursively scans a target directory.
- Detects:
  - 🔓 **World-writable** files and directories
  - ❌ Files and directories with **no owner**
  - ❌ Files and directories with **no group**
- Prints a summary report of all findings.

---

## 🚀 Getting Started

### 🔧 Prerequisites

- Linux (tested on Ubuntu)
- Bash shell
- Basic knowledge of terminal commands

### 📥 Clone the Repository

```bash
git clone https://github.com/yourusername/permissions-auditor.git
cd permissions-auditor
```

### 🛠️ Make the Script Executable

```bash
chmod +x permissions_auditor.sh
```

---

## ▶️ Usage

```bash
./permissions_auditor.sh /path/to/directory
```

- If no directory is specified, it defaults to the current directory.

#### Example

```bash
./permissions_auditor.sh ~/Documents
```

---

## 🧪 Sample Output

```bash
🔍 Scanning directory: /home/user/Documents
===========================
⚠️  WORLD-WRITABLE: /home/user/Documents/test.sh (-rwxrwxrwx)
⚠️  NO OWNER: /home/user/Documents/lost_file.txt
⚠️  NO GROUP: /home/user/Documents/ghost_file.log
===========================
✅ Total items checked: 142
⚠️  World-writable files: 3
🚫 Files with no owner: 1
🚫 Files with no group: 1
Audit complete.
```

---

## 🔒 Why It Matters

Improper file permissions can pose a serious security risk. This script helps Linux users quickly identify and address risky permission setups before they become a vulnerability.

---

## 🛠️ Future Improvements

- [ ] Export results to a log file
- [ ] Color-coded output
- [ ] Option to auto-fix insecure permissions
- [ ] Whitelist safe directories or files

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

## 🤝 Contributing



```

---

Let me know if you'd like me to generate the `LICENSE` file (MIT, GPL, etc.), or help with uploading and setting up the GitHub repo!
