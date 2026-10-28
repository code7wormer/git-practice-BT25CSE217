# Exercise 06: Ignore Generated Files

## Objective
Configure `.gitignore` to prevent generated artifacts, logs, temporary files, build directories, and sensitive environment files from being tracked. Test the rules using `git check-ignore -v`.

## Ignore Patterns Configured
- `*.log`: All application and runtime log files.
- `*.tmp`: Temporary swap and cache files.
- `build/`: Build artifact output directories.
- `.env`: Environment secrets and local configuration files.
