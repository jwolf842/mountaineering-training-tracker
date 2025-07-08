# Setup Instructions

This guide will walk you through setting up the Mountaineering Training Tracker for your own use.

## Prerequisites

- Google Account
- Node.js (v14 or higher) - only needed for development
- Git (optional, for cloning the repository)

## Quick Setup (Non-Developers)

If you just want to use the app without development tools:

1. **Go to Google Apps Script**
   - Visit [script.google.com](https://script.google.com)
   - Sign in with your Google account

2. **Create a New Project**
   - Click "New project"
   - Name it "Mountaineering Training Tracker"

3. **Add the Code**
   - Copy all content from `src/Code.gs` 
   - Paste into the default Code.gs file
   - Click File → New → HTML file
   - Name it "Index" (without .html)
   - Copy all content from `src/Index.html`
   - Paste into Index.html

4. **Deploy the App**
   - Click Deploy → New deployment
   - Type: Web app
   - Description: "Initial deployment"
   - Execute as: Me
   - Who has access: Only myself
   - Click Deploy
   - Authorize the app when prompted
   - Copy the Web app URL

5. **Start Using**
   - Open the Web app URL
   - The app will automatically create a Google Sheet
   - Start your training!

## Developer Setup

For developers who want to contribute or customize:

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/mountaineering-training-tracker.git
cd mountaineering-training-tracker
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Configure Clasp

```bash
# Install clasp globally if not already installed
npm install -g @google/clasp

# Login to Google
clasp login
```

### 4. Create Apps Script Project

```bash
# Create a new Apps Script project
clasp create --type webapp --title "Mountaineering Training Dev"

# This creates a .clasp.json file with your script ID
```

### 5. Configure the Project

```bash
# Copy the example configuration
cp .clasp.json.example .clasp.json

# Edit .clasp.json with your script ID from step 4
```

### 6. Push Code to Apps Script

```bash
npm run push
```

### 7. Deploy

```bash
# Open in Apps Script editor
npm run open

# Then deploy via the UI, or use:
npm run deploy
```

## Configuration Options

### Google Sheets Setup

The app automatically creates a Google Sheet on first run. If you want to use an existing sheet:

1. Get your Sheet ID from the URL
2. In Code.gs, modify the `initializeSheet()` function
3. Add your Sheet ID to Script Properties

### Customizing the Training Program

Edit `getFullProgramData()` in Code.gs to modify:
- Number of sessions
- Exercise types
- Sets and reps
- Progression schedule

### Styling

Modify the CSS in Index.html:
- Color scheme: Update the gradient colors
- Layout: Adjust responsive breakpoints
- Components: Customize card styles

## Troubleshooting

### "Authorization Required" Error
- Click Review Permissions
- Sign in with your Google account
- Click Advanced → Go to [Your App Name]
- Click Allow

### Sheet Not Created
- Check Script Properties for SHEET_ID
- Ensure you have Google Drive permissions
- Try running `initializeSheet()` manually

### Deployment URL Not Working
- Verify deployment settings
- Check "Who has access" settings
- Clear browser cache
- Try incognito/private mode

### Code Not Updating
- Run `clasp push` to sync changes
- Check .clasp.json configuration
- Verify you're in the correct directory

## Project Structure

```
mountaineering-training-tracker/
├── src/
│   ├── Code.gs          # Backend logic
│   └── Index.html       # Frontend UI
├── docs/
│   └── ...             # Documentation
├── .clasp.json.example  # Clasp config template
├── .gitignore          # Git ignore rules
├── package.json        # NPM configuration
└── README.md           # Main documentation
```

## Next Steps

- Read [DEVELOPMENT.md](DEVELOPMENT.md) for development guidelines
- Check [CONTRIBUTING.md](CONTRIBUTING.md) to contribute
- Join discussions on GitHub
- Report issues or request features

## Need Help?

- 📖 Check the [documentation](docs/)
- 💬 Open a [discussion](https://github.com/yourusername/mountaineering-training-tracker/discussions)
- 🐛 Report [issues](https://github.com/yourusername/mountaineering-training-tracker/issues)

Happy Training! 🏔️