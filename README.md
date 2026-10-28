# Git Practice Assignment

**Student Name:** Shardul Singh  
**Roll Number:** BT25CSE217  
**Section:** CSE - C  
**Course:** IT Workshop - I 
**Institution:** Indian Institute of Information Technology, Nagpur (IIITN)  
**Semester:** Third Semester 2026–2027  
**GitHub Repository:** [https://github.com/code7wormer/git-practice-BT25CSE217](https://github.com/code7wormer/git-practice-BT25CSE217)  

---

## 1. Description of the Assignment
- Repository setup, staging index, and atomic commits
- Diffs between working directory, index, and HEAD
- Ignoring untracked build artifacts and environment files via `.gitignore`
- Branching strategies, fast-forward merges, and three-way merges
- Reproducing, inspecting, and resolving merge conflicts
- Recovery mechanisms: unstaging (`restore --staged`), discarding edits (`restore`), commit reverting (`revert`), and stashing work-in-progress (`stash`)
- Distributed collaboration workflows: cloning, remote tracking, fetch, pull, and handling non-fast-forward rejections
- Git workflows in Visual Studio Code (Source Control, Merge Editor)
- Tagging releases (`v1.0`) and pushing to remote repositories

---

## 2. List of Completed Exercises

| Exercise | Topic / Task | Status | Directory |
|---|---|---|---|
| **Exercise 01** | Git Installation & Identity Configuration | Completed | [`exercise-01/`](exercise-01/) |
| **Exercise 02** | Initial Repository Creation & Project README | Completed | [`exercise-02/`](exercise-02/) |
| **Exercise 03** | Interactive Greeting Script with Input Validation | Completed | [`exercise-03/`](exercise-03/) |
| **Exercise 04** | Selective File Staging and Untracked State Management | Completed | [`exercise-04/`](exercise-04/) |
| **Exercise 05** | Inspecting Staged, Unstaged, and HEAD Diffs (`MM` State) | Completed | [`exercise-05/`](exercise-05/) |
| **Exercise 06** | Ignoring Generated, Private, and Log Files (`.gitignore`) | Completed | [`exercise-06/`](exercise-06/) |
| **Exercise 07** | Branch Development: Arithmetic & Utility Menu Script | Completed | [`exercise-07/`](exercise-07/) |
| **Exercise 08** | Branch Integration, Documentation, and Local Branch Deletion | Completed | [`exercise-08/`](exercise-08/) |
| **Exercise 09** | Controlled Merge Conflict Creation and Hybrid Resolution | Completed | [`exercise-09/`](exercise-09/) |
| **Exercise 10** | Safe Recovery: Unstaging and Discarding Working Edits | Completed | [`exercise-10/`](exercise-10/) |
| **Exercise 11** | History-Preserving Undo with `git revert` | Completed | [`exercise-11/`](exercise-11/) |
| **Exercise 12** | Temporary Work Preservation with `git stash` | Completed | [`exercise-12/`](exercise-12/) |
| **Exercise 13** | Publishing to Remote Origin and Cloning Repositories | Completed | [`exercise-13/`](exercise-13/) |
| **Exercise 14** | Pair Collaboration: Feature Branch & Contribution Guide | Completed | [`exercise-14/`](exercise-14/) |
| **Exercise 15** | Remote Synchronization: `git fetch` and Fast-Forward Pull | Completed | [`exercise-15/`](exercise-15/) |
| **Exercise 16** | Visual Studio Code Source Control Integration | Completed | [`exercise-16/`](exercise-16/) |
| **Exercise 17** | Visual Merge Conflict Resolution in VS Code | Completed | [`exercise-17/`](exercise-17/) |
| **Exercise 18** | Release Management: Annotated Tagging (`v1.0`) | Completed | [`exercise-18/`](exercise-18/) |
| **Exercise 19** | Challenge Exercise: Handling Non-Fast-Forward Push Rejection | Completed | [`exercise-19/`](exercise-19/) |

---

## 3. Compilation & Execution Instructions

All scripts in this repository are written in POSIX-compliant Bash shell script and can be executed under Linux, macOS, or Windows via **Git Bash**.

### Prerequisites
- Git version 2.23+ installed.
- Git Bash (on Windows) or default terminal (on Linux/macOS).

### Running `greet.sh` (Exercise 03)
```bash
# Make script executable
chmod +x greet.sh

# Run interactively
./greet.sh
# Enter your name when prompted:
# Enter your name: Shardul
# Output: Hello, Shardul! Welcome to Git Version Control Lab.

# Empty input validation test:
# Enter your name: [Press Enter]
# Output: Error: Name cannot be empty! Please provide a valid name.
```

### Running `menu.sh` (Exercise 07)
```bash
# Make script executable
chmod +x menu.sh

# Launch the interactive menu
./menu.sh
```
**Options**
1. **Greet User**: Prompts for a username and prints a personalized welcome message.
2. **Add Two Integers**: Prompts for two integers, validates numeric input, and displays the arithmetic sum.
3. **Check Even or Odd**: Prompts for an integer and reports whether it is even or odd.
4. **Exit**: Gracefully exits the utility.

---

## 4. Activities

### Issues Created
- **Issue #1: Add input validation to greeting script**  
  *Link:* [https://github.com/code7wormer/git-practice-BT25CSE217/issues/1](https://github.com/code7wormer/git-practice-BT25CSE217/issues/1)  
  *Description:* Reported edge-case behavior where empty inputs resulted in unhandled blank greetings. Addressed and closed in commit `3b8d1e2`.
- **Issue #2: Implement interactive CLI menu utility**  
  *Link:* [https://github.com/code7wormer/git-practice-BT25CSE217/issues/2](https://github.com/code7wormer/git-practice-BT25CSE217/issues/2)  
  *Description:* Requested a modular CLI menu offering greeting, addition, and even/odd parity checking. Completed via feature branch `feature/menu`.

### Pull Requests Created and Merged
- **Pull Request #1: Feature: Interactive arithmetic and utility menu**  
  *Link:* [https://github.com/code7wormer/git-practice-BT25CSE217/pull/1](https://github.com/code7wormer/git-practice-BT25CSE217/pull/1)  
  *Source Branch:* `feature/menu` $\rightarrow$ *Target Branch:* `main`  
  *Review:* Reviewed and merged with fast-forward strategy after verifying unit tests.
- **Pull Request #2: Docs: Add project contribution guidelines**  
  *Link:* [https://github.com/code7wormer/git-practice-BT25CSE217/pull/2](https://github.com/code7wormer/git-practice-BT25CSE217/pull/2)  
  *Source Branch:* `feature/contributor-guide` $\rightarrow$ *Target Branch:* `main`  
  *Review:* Reviewed by peer collaborator, approved, and merged into `main`.

---

