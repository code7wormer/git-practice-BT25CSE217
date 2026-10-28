# Project Contribution Guidelines

Welcome to the **Git Version Control Lab** project! Please follow these standards when contributing:

1. **Branching Strategy:**
   - Always create a feature branch off `main` before starting work:
     ```bash
     git switch -c feature/<feature-name>
     ```
2. **Commit Conventions:**
   - Write clear, present-tense, imperative commit messages:
     - `Add input validation to greet.sh`
     - `Fix boundary condition in menu parity check`
3. **Pull Request Protocol:**
   - Push your feature branch to remote origin.
   - Open a Pull Request detailing the changes and testing performed.
   - Ensure at least one peer review before merging.
4. **Clean Code:**
   - Test all shell scripts using `bash <script_name>` before submission.
