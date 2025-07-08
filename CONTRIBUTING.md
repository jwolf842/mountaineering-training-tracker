# Contributing to Mountaineering Training Tracker

First off, thank you for considering contributing to the Mountaineering Training Tracker! It's people like you that make this tool better for everyone in the mountaineering community.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Getting Started](#getting-started)
- [Development Process](#development-process)
- [Style Guidelines](#style-guidelines)
- [Commit Messages](#commit-messages)
- [Pull Request Process](#pull-request-process)

## Code of Conduct

This project and everyone participating in it is governed by our Code of Conduct. By participating, you are expected to uphold this code:

- Be respectful and inclusive
- Welcome newcomers and help them get started
- Focus on what is best for the community
- Show empathy towards other community members

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When you create a bug report, include:

- A clear and descriptive title
- Steps to reproduce the issue
- Expected behavior vs actual behavior
- Screenshots if applicable
- Your environment details (browser, OS)

**Use the bug report template when creating an issue.**

### Suggesting Enhancements

Enhancement suggestions are welcome! Please:

- Use a clear and descriptive title
- Provide a detailed description of the proposed enhancement
- Explain why this enhancement would be useful
- Include mockups or examples if applicable

**Use the feature request template when creating an issue.**

### Contributing Code

#### First Time Contributors

Look for issues labeled with:
- `good first issue` - Simple fixes to get you started
- `help wanted` - Issues we need help with
- `documentation` - Help improve our docs

#### Regular Contributors

- Take on more complex issues
- Help review pull requests
- Mentor new contributors
- Improve test coverage

## Getting Started

1. **Fork the repository**
   ```bash
   # Click the 'Fork' button on GitHub
   ```

2. **Clone your fork**
   ```bash
   git clone https://github.com/jwolf842/mountaineering-training-tracker.git
   cd mountaineering-training-tracker
   ```

3. **Set up the development environment**
   ```bash
   # Install clasp globally
   npm install -g @google/clasp
   
   # Login to Google
   clasp login
   ```

4. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Development Process

### 1. Make Your Changes

- Write clean, readable code
- Follow the existing code style
- Add comments for complex logic
- Update documentation as needed

### 2. Test Your Changes

- Test all functionality affected by your changes
- Ensure the app works on both desktop and mobile
- Verify data saves correctly to Google Sheets
- Check for console errors

### 3. Commit Your Changes

Follow our commit message conventions (see below).

### 4. Push to Your Fork

```bash
git push origin feature/your-feature-name
```

### 5. Create a Pull Request

- Use the pull request template
- Link related issues
- Provide a clear description of changes
- Include screenshots for UI changes

## Style Guidelines

### JavaScript (Google Apps Script)

```javascript
// Use descriptive function names
function calculateSessionProgress(sessionNumber, totalSessions) {
  // Add JSDoc comments for functions
  /**
   * Calculates the percentage progress through the program
   * @param {number} sessionNumber - Current session number
   * @param {number} totalSessions - Total number of sessions
   * @returns {number} Progress percentage
   */
  return (sessionNumber / totalSessions) * 100;
}

// Use const/let instead of var
const MAX_SESSIONS = 60;
let currentSession = 1;

// Use meaningful variable names
const workoutData = collectSessionData();  // Good
const wd = collectSessionData();           // Bad
```

### HTML/CSS

```html
<!-- Use semantic HTML -->
<article class="exercise-card">
  <header class="exercise-header">
    <h3 class="exercise-name">Squats</h3>
  </header>
  <section class="exercise-content">
    <!-- Content -->
  </section>
</article>

<!-- Keep styles organized -->
<style>
  /* Component styles grouped together */
  .exercise-card { }
  .exercise-header { }
  .exercise-content { }
  
  /* Use consistent spacing */
  .component {
    margin: 15px;
    padding: 20px;
  }
</style>
```

### Best Practices

- **DRY (Don't Repeat Yourself)**: Extract common functionality
- **KISS (Keep It Simple)**: Avoid over-engineering
- **Responsive Design**: Test on multiple screen sizes
- **Accessibility**: Use proper ARIA labels and semantic HTML
- **Performance**: Minimize API calls to Google Sheets

## Commit Messages

We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

```
type(scope): subject

body

footer
```

### Types

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, missing semicolons, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

### Examples

```bash
# Feature
git commit -m "feat(exercises): add ability to duplicate sets"

# Bug fix
git commit -m "fix(ui): resolve mobile menu not closing on selection"

# Documentation
git commit -m "docs(readme): add deployment troubleshooting section"

# With body
git commit -m "refactor(data): optimize sheet operations

Batch multiple operations into single API call to improve performance.
This reduces load time by approximately 40%."
```

## Pull Request Process

1. **Before submitting**
   - Update your branch with the latest main branch
   - Resolve any conflicts
   - Run through the testing checklist
   - Update documentation if needed

2. **PR Description**
   - Use the PR template
   - Clearly describe what changes you made and why
   - Include before/after screenshots for UI changes
   - Reference any related issues

3. **Review Process**
   - Address reviewer feedback promptly
   - Make requested changes in new commits (don't force push)
   - Be open to suggestions and discussion

4. **After Approval**
   - We'll merge your PR
   - Delete your feature branch
   - Celebrate your contribution! 🎉

## Recognition

Contributors are recognized in our:
- README.md contributors section
- Release notes
- Annual contributor spotlight (for regular contributors)

## Questions?

Feel free to:
- Open a discussion on GitHub
- Reach out to maintainers
- Ask in issues (label with `question`)

Thank you for contributing to make mountaineering training accessible to everyone!

---

**Happy Contributing! 🏔️**