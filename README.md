# 🚀 Git Activity Tracker

> ## 📚 Learning Project
>
> This project was built as part of my learning journey to strengthen my understanding of **Git**, **Bash scripting**, and **Linux command-line tools**.  
> While developing this project, I learned how to use Git commands, write Bash scripts, work with loops, arrays, associative arrays, conditional statements, and process Git repository data to create a practical command-line dashboard.

---

## 📖 Project Overview

**Git Activity Tracker** is a Bash-based command-line application that analyzes a Git repository and displays useful repository information, commit statistics, repository health, commit quality, complete commit history, and a GitHub-style contribution graph.

The goal of this project is to help developers quickly understand the current state and activity of a Git repository directly from the terminal.

---

## ✨ Features

- 📁 Displays Repository Name
- 🌿 Shows Current Branch
- 🔗 Displays Remote Repository URL
- 📊 Shows Total Commits
- 🌱 Counts Total Branches
- 👥 Displays Total Contributors
- 👤 Shows Author Name
- 📅 Displays Last Commit Date
- 🕒 Displays Last Commit Time
- 📄 Counts Tracked Files
- 📦 Displays Repository Size
- 📂 Displays `.git` Folder Size
- ✅ Checks Repository Status (Working Tree Clean / Uncommitted Changes)
- ⭐ Checks Commit Message Quality
- 📜 Displays Complete Commit History (Date + Commit Message)
- 📈 Generates a GitHub-style Weekly Contribution Graph

---

## 🛠️ Technologies Used

- Bash Shell Scripting
- Git
- Git Bash
- Linux Commands
- Visual Studio Code

---

## 📂 Project Structure

```text
git-activity-tracker/
│
├── tracker.sh
├── README.md
└── .git/
```

---

## ⚙️ Prerequisites

Before running the project, make sure you have:

- Git installed
- Git Bash (Windows) or Bash Terminal (Linux/macOS)
- A Git repository

---

## 🚀 Installation

Clone the repository:

```bash
git clone https://github.com/ShresthaSamanta977/git-Activity-Tracker.git
```

Move into the project directory:

```bash
cd git-Activity-Tracker
```

Give execution permission:

```bash
chmod +x tracker.sh
```

Run the script:

```bash
./tracker.sh
```

---

## 📸 Sample Output

```text
====================================================
              GIT ACTIVITY TRACKER
====================================================

Repository Name : git-activity-tracker
Current Branch  : master
Remote URL      : https://github.com/ShresthaSamanta977/git-Activity-Tracker.git

----------------------------------------------------

Total Commits   : 11
Total Branches  : 1
Contributors    : 1

Commit Details
--------------
Author Name      : Shrestha Samanta
Last Commit Date : 2026-07-14
Last Commit Time : 12:47:13 AM

Repository Health
-----------------
Tracked Files    : 3
Repository Size  : 146K
.git Size        : 134K

Repository Status
-----------------
 Working Tree Clean

Repository Quality
------------------
✔ All commit messages are meaningful

Commit History
--------------
2026-07-14 | This is eleventh commit V11
2026-07-14 | This is tenth commit V10
2026-07-13 | This is ninth commit V9
...

Contribution Graph
------------------

      W26 W27 W28 W29

Mon   🟥 🟥 🟥 🟩
Tue   🟥 🟥 🟥 🟩
Wed   🟥 🟥 🟥 🟥
Thu   🟥 🟥 🟥 🟥
Fri   🟥 🟥 🟥 🟥
Sat   🟥 🟥 🟥 🟥
Sun   🟥 🟥 ⬜ 🟥

Legend:
🟥 No commits
⬜ One commit
🟩 Multiple commits
```

---

## 🧠 How It Works

The project collects repository information using several Git commands.

| Command | Purpose |
|---------|---------|
| `git rev-parse` | Repository name |
| `git branch` | Current branch |
| `git remote` | Remote repository URL |
| `git log` | Commit history |
| `git shortlog` | Contributors |
| `git status` | Repository status |
| `git diff` | Detect uncommitted changes |
| `git ls-files` | Count tracked files |
| `git tag` | Count repository tags |

The contribution graph is generated using Bash associative arrays, loops, date processing, and Git commit history.

---

## 📊 Contribution Graph Legend

| Symbol | Meaning |
|--------|---------|
| 🟥 | No commits |
| ⬜ | One commit |
| 🟩 | Multiple commits |

---

## 🎯 Learning Outcomes

By building this project, I learned:

- Git repository analysis
- Bash scripting fundamentals
- Variables and arrays
- Associative arrays
- Loops (`for` and `while`)
- Conditional statements (`if-else`)
- Date and time processing
- Parsing Git command output
- Building interactive command-line applications

---

## 🚀 Future Enhancements

- 🔥 Commit streak counter
- 📅 Monthly contribution graph
- 📊 Repository score
- 👤 Most active contributor
- 📈 Commit trend analysis
- 🌐 Multi-repository support
- 📤 Export reports to HTML or PDF
- 🎨 Enhanced terminal UI with colors

---

## 👨‍💻 Author

**Shrestha Samanta**

GitHub: **https://github.com/ShresthaSamanta977**

---

## 📄 License

This project is licensed under the MIT License.