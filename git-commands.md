# Comprehensive Git Command Reference & Conflict Resolution Record

**Student Name:** Shardul Singh  
**Roll Number:** BT25CSE217  
**Section:** CSE - C  
**Course:** IT Workshop - I (CSP 201), IIIT Nagpur  

This document serves as an exhaustive reference of all Git commands utilized throughout the 19 laboratory exercises, explaining their operational mechanics, standard flags, and purpose. It also details the exact merge conflict encountered and the step-by-step resolution process.

---

## 1. Categorized Git Command Reference

### A. Configuration & Setup
- `git --version`
  - **Purpose:** Outputs the currently installed Git binary version.
  - **Usage in Lab:** Verified Git 2.55.0 is active.
- `git config [--global | --local] <key> <value>`
  - **Purpose:** Sets configuration options at the system, user (`--global`), or repository (`--local`) level.
  - **Usage in Lab:** Configured `user.name "Shardul Singh"` and `user.email "shardulsingh.01@gmail.com"`.
- `git config --get <key>`
  - **Purpose:** Queries and displays the effective value of a configuration key.
- `git init [-b <initial-branch>]`
  - **Purpose:** Initializes a new Git repository in the target directory, creating the internal `.git/` metadata directory.
  - **Flag `-b main`:** Ensures the root branch is named `main` rather than legacy defaults (`master`).

### B. Staging & Committing (The Two-Phase Architecture)
- `git status [-s | --short]`
  - **Purpose:** Displays the state of the working tree and index (untracked files, modified files, staged changes).
  - **Short notation:** `??` = untracked, `A ` = added to index, ` M` = unstaged modification, `M ` = staged modification, `MM` = modified in both index and working tree.
- `git add <file-pattern>`
  - **Purpose:** Copies changes from the working tree to the staging index, preparing them for the next commit snapshot.
- `git commit -m "<message>"`
  - **Purpose:** Records a permanent snapshot of the staged index into repository history with an explanatory message.
- `git diff`
  - **Purpose:** Shows differences between unstaged modifications in the working tree and the staging index.
- `git diff --staged` (or `git diff --cached`)
  - **Purpose:** Shows differences between staged changes in the index and the last commit (`HEAD`).
- `git diff HEAD`
  - **Purpose:** Shows all changes in the working tree and index combined relative to `HEAD`.

### C. Ignoring Files
- `cat .gitignore`
  - **Purpose:** Specifies glob patterns of files and directories that Git should ignore and exclude from untracked file listings.
- `git check-ignore -v <file>`
  - **Purpose:** Debugs `.gitignore` rules by showing which pattern in which file is causing a file to be ignored.
- `git rm --cached <file>`
  - **Purpose:** Untracks a file from the repository index while keeping the physical file intact on disk.

### D. Branching, Merging & Graph Inspection
- `git branch`
  - **Purpose:** Lists existing local branches; highlights the active checked-out branch with an asterisk.
- `git switch -c <branch-name>` (or legacy `git checkout -b <branch-name>`)
  - **Purpose:** Creates a new branch pointing to the current commit and immediately switches to it.
- `git switch <branch-name>`
  - **Purpose:** Switches the working tree to an existing branch.
- `git merge <branch-name>`
  - **Purpose:** Integrates changes from the target branch into the currently checked-out branch.
  - **Flag `--ff-only`:** Fast-forwards the pointer if no divergence exists; aborts if a merge commit would be required.
- `git branch -d <branch-name>`
  - **Purpose:** Safely deletes a local branch only if its changes have already been merged into the upstream branch.
- `git log --oneline --graph --all`
  - **Purpose:** Displays an ASCII graph of commit history across all branches with one-line summaries and commit hashes.

### E. Recovery & Undo Operations
- `git restore --staged <file>`
  - **Purpose:** Unstages a file from the index back to the working tree without discarding any working edits.
- `git restore <file>`
  - **Purpose:** Discards unstaged modifications in a tracked file, overwriting the working file with the index version.
- `git revert [--no-edit] <commit-hash>`
  - **Purpose:** Generates a new commit that records the exact inverse of a target commit. Safe for public shared branches.
- `git stash push -m "<label>"`
  - **Purpose:** Saves dirty working-tree and index modifications onto a temporary LIFO stash stack, leaving a clean working directory.
- `git stash list`
  - **Purpose:** Lists all currently stashed change-sets.
- `git stash pop`
  - **Purpose:** Reapplies the most recent stashed change-set to the working tree and removes it from the stash stack.

### F. Remote Collaboration
- `git remote add <name> <url>`
  - **Purpose:** Registers a remote repository alias (conventionally `origin`) and associates it with a URL.
- `git remote -v`
  - **Purpose:** Displays all configured remote nicknames along with their fetch and push URLs.
- `git push -u <remote> <branch>`
  - **Purpose:** Transmits local branch commits to the remote repository and configures upstream tracking (`-u`).
- `git clone <url> [<directory>]`
  - **Purpose:** Clones an existing remote repository, copies all history and branches, checks out the default branch, and configures `origin`.
- `git fetch <remote>`
  - **Purpose:** Downloads commits, files, and refs from the remote without merging them into working files.
- `git log <branch>..<remote>/<branch>`
  - **Purpose:** Inspects incoming commits present on the remote branch that are not yet integrated into the local branch.
- `git pull [--ff-only] <remote> <branch>`
  - **Purpose:** Executes a `git fetch` followed immediately by a `git merge`.

### G. Tagging & Releases
- `git tag -a <tag-name> -m "<annotation>"`
  - **Purpose:** Creates an annotated tag object containing tagger metadata, date, message, and cryptographic pointer to a commit.
- `git show <tag-name>`
  - **Purpose:** Displays metadata, annotation message, and commit details of an annotated tag.
- `git push <remote> <tag-name>`
  - **Purpose:** Explicitly publishes a local tag to the remote repository (tags are not pushed automatically by default).

---

## 2. Merge Conflict Documentation & Resolution Report

### 2.1 Context and Reproduction (Exercise 09)
In Exercise 09, a controlled merge conflict was reproduced in `mode.txt`:
1. Base state on `main`:
   ```text
   Lab mode: pending
   ```
2. Branch `feature/mode` created from this base state.
   The line was modified to:
   ```text
   Lab mode: online
   ```
   Committed as: `Set lab delivery mode to online`.
3. Simultaneously on `main`, the line was modified to:
   ```text
   Lab mode: classroom
   ```
   Committed as: `Set lab delivery mode to classroom`.
4. When `main` attempted to merge `feature/mode` (`git merge feature/mode`), Git could not automatically determine whether `online` or `classroom` was the intended outcome because both branches modified the exact same line from the common ancestor.

### 2.2 Conflict Markers Encountered
Git suspended the merge and wrote standard conflict markers into `mode.txt`:
```text
<<<<<<< HEAD
Lab mode: classroom
=======
Lab mode: online
>>>>>>> feature/mode
```
- `<<<<<<< HEAD`: Marks the start of changes on the current checked-out branch (`main`).
- `=======`: Divides the two conflicting revisions.
- `>>>>>>> feature/mode`: Marks the end of changes from the incoming branch (`feature/mode`).
- `git status` reported: `both modified: mode.txt` (`UU mode.txt`).

### 2.3 Step-by-Step Resolution Process
1. **Analysis & Decision:**
   In collaboration scenarios, the team evaluates the competing requirements. In our lab scenario, the agreed final solution was a hybrid delivery model combining both classroom and online instruction.
2. **Editing:**
   The entire conflict marker block was deleted and replaced with the resolved line:
   ```text
   Lab mode: hybrid
   ```
3. **Staging the Resolution:**
   ```bash
   git add mode.txt
   ```
   Staging signals to Git that the content conflict in `mode.txt` has been manually resolved.
4. **Recording the Merge Commit:**
   ```bash
   git commit -m "Resolve merge conflict in mode.txt with hybrid delivery mode"
   ```
5. **Post-Merge Verification:**
   - Ran `git status`: confirmed clean working tree (`nothing to commit, working tree clean`).
   - Inspected `git log --oneline --graph`: confirmed a dual-parent merge commit integrating both histories.
   - Deleted feature branch: `git branch -d feature/mode`.
