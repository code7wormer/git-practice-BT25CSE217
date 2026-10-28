# Exercise 15: Fetch and Update a Clone

## Objective
Demonstrate safe remote synchronization:
1. `git fetch origin`: Retrieves remote references and objects without modifying local working files.
2. `git log --oneline main..origin/main`: Inspects pending remote commits before merging.
3. `git pull --ff-only origin main`: Merges only when fast-forward is possible, preventing unwanted merge commits.
