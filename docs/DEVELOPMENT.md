# Development Guide

This guide provides detailed instructions for developers who want to contribute to or customize the Mountaineering Training Tracker.

## Table of Contents

- [Development Environment Setup](#development-environment-setup)
- [Project Architecture](#project-architecture)
- [Code Structure](#code-structure)
- [Testing](#testing)
- [Deployment](#deployment)
- [Customization](#customization)
- [Best Practices](#best-practices)

## Development Environment Setup

### Prerequisites

- Google Account with access to Google Apps Script
- Git for version control
- Text editor (VS Code recommended with Google Apps Script extension)
- Basic knowledge of JavaScript, HTML, and CSS

### Local Development Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/jwolf842/mountaineering-training-tracker.git
   cd mountaineering-training-tracker
   ```

2. **Install clasp (Google Apps Script CLI)**
   ```bash
   npm install -g @google/clasp
   ```

3. **Login to clasp**
   ```bash
   clasp login
   ```

4. **Create a new Apps Script project**
   ```bash
   clasp create --type webapp --title "Mountaineering Training Dev"
   ```

5. **Push code to Apps Script**
   ```bash
   clasp push
   ```

## Project Architecture

### Overview

The application follows a Model-View-Controller (MVC) pattern:

- **Model**: Google Sheets acts as the database
- **View**: HTML/CSS/JavaScript frontend
- **Controller**: Google Apps Script backend

### Data Flow

```
User Interface (HTML/JS)
    ↓ (user actions)
Apps Script Functions (Code.gs)
    ↓ (data operations)
Google Sheets (Database)
    ↓ (stored data)
Apps Script Functions
    ↓ (retrieved data)
User Interface (updates)
```

## Code Structure

### Backend (Code.gs)

```javascript
// Main entry points
doGet()                    // Serves the web app
include()                  // Includes HTML files

// Sheet management
initializeSheet()          // Creates the spreadsheet
getSheetId()              // Retrieves sheet ID
getCurrentSession()        // Determines active session
getSessionData()          // Fetches session details

// Data operations
saveWorkoutData()         // Saves completed workouts
getFullProgramData()      // Returns all 60 sessions
generateRemainingSessions() // Generates sessions 11-60

// Utilities
createSets()              // Helper for creating set data
testApp()                 // Testing function
```

### Frontend (Index.html)

```javascript
// Initialization
initializeApp()           // Starts the application
onCurrentSessionLoaded()  // Handles session loading
onSessionDataLoaded()     // Processes session data

// Rendering
renderSession()           // Displays session info
renderWarmup()           // Shows warm-up exercises
renderExercises()        // Shows main exercises
renderSets()             // Creates input fields

// Form handling
setupFormValidation()    // Validates inputs
validateForm()           // Checks required fields
submitSession()          // Saves workout data
collectSessionData()     // Gathers form data

// UI interactions
toggleCard()             // Expands/collapses cards
toggleAllWarmupCards()   // Bulk toggle warm-ups
toggleAllExerciseCards() // Bulk toggle exercises

// Utilities
showLoading()            // Loading states
showError()              // Error messages
showSuccess()            // Success messages
```

## Testing

### Manual Testing Checklist

- [ ] App loads without errors
- [ ] Sheet initializes correctly
- [ ] Session data displays properly
- [ ] Form validation works
- [ ] Data saves to sheet
- [ ] Progress updates correctly
- [ ] Mobile responsive design
- [ ] Error handling works

### Test Function

Use the `testApp()` function in Code.gs:

```javascript
function testApp() {
  const currentSession = getCurrentSession();
  const sessionData = getSessionData(currentSession);
  console.log('Current Session:', currentSession);
  console.log('Session Data:', sessionData);
  return { currentSession, sessionData };
}
```

## Deployment

### Development Deployment

1. **Push changes**
   ```bash
   clasp push
   ```

2. **Open in Apps Script editor**
   ```bash
   clasp open
   ```

3. **Deploy as test deployment**
   - Deploy → Test deployments → New test deployment

### Production Deployment

1. **Update version**
   - Update version in CHANGELOG.md
   - Commit changes

2. **Create new deployment**
   ```bash
   clasp deploy --description "v1.x.x - Description"
   ```

3. **Update deployment settings**
   - Set appropriate access permissions
   - Update deployment URL in documentation

## Customization

### Modifying the Training Program

Edit the session data in `getFullProgramData()`:

```javascript
sessions.push({
  sessionNumber: 1,
  title: "Session 1",
  warmup: [
    { name: "Custom Warmup", duration: "10 minutes" }
  ],
  exercises: [
    { name: "Custom Exercise", sets: createSets(3, 15) }
  ]
});
```

### Styling Changes

Modify the CSS in Index.html:

```css
/* Custom theme colors */
body {
  background: linear-gradient(135deg, #your-color 0%, #your-color 100%);
}

/* Custom button styles */
.submit-button {
  background: your-gradient;
}
```

### Adding New Features

1. **Add backend function in Code.gs**
2. **Create UI elements in Index.html**
3. **Connect frontend to backend using google.script.run**

Example:
```javascript
// Backend (Code.gs)
function getWorkoutHistory(sessionNumber) {
  // Implementation
}

// Frontend (Index.html)
google.script.run
  .withSuccessHandler(displayHistory)
  .withFailureHandler(onError)
  .getWorkoutHistory(sessionNumber);
```

## Best Practices

### Code Style

- Use descriptive variable names
- Add JSDoc comments for functions
- Keep functions focused (single responsibility)
- Use consistent indentation (2 spaces)

### Performance

- Minimize calls to Google Sheets
- Batch operations when possible
- Cache frequently accessed data
- Use efficient selectors in JavaScript

### Security

- Never expose sensitive data in code
- Validate all user inputs
- Use proper access controls in deployment
- Sanitize data before displaying

### Error Handling

- Always include error handlers for google.script.run
- Provide meaningful error messages
- Log errors for debugging
- Gracefully handle edge cases

## Debugging

### Apps Script Logging

```javascript
console.log('Debug message');
console.error('Error message');
```

View logs: View → Logs

### Browser Console

Use browser developer tools for frontend debugging:
- F12 or right-click → Inspect
- Check Console tab for errors
- Use Network tab for API calls

### Common Issues

1. **Sheet not found**
   - Check PropertiesService for SHEET_ID
   - Verify sheet permissions

2. **Deployment issues**
   - Clear browser cache
   - Check deployment URL
   - Verify access permissions

3. **Data not saving**
   - Check form validation
   - Verify sheet structure
   - Review error logs

## Resources

- [Google Apps Script Documentation](https://developers.google.com/apps-script)
- [Clasp Documentation](https://github.com/google/clasp)
- [Material Design Guidelines](https://material.io/design)
- [Web Accessibility Guidelines](https://www.w3.org/WAI/WCAG21/quickref/)

---

For questions or support, please open an issue on GitHub.