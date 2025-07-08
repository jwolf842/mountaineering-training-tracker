# Mountaineering Training Tracker

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Google Apps Script](https://img.shields.io/badge/Google%20Apps%20Script-4285F4?logo=google&logoColor=white)](https://developers.google.com/apps-script)
[![Sponsor](https://img.shields.io/badge/Sponsor-❤️-pink)](https://github.com/sponsors/yourusername)

A comprehensive 60-session mountaineering training program built with Google Apps Script. Track your workouts, monitor progress, and prepare for your next mountain adventure!

![Training Progress Demo](images/demo.gif)

## Features

- 📊 **60-Session Progressive Training Program** - Structured workouts designed for mountaineering preparation
- 📱 **Responsive Web Interface** - Works on desktop and mobile devices
- 📈 **Progress Tracking** - Visual progress bar and session completion tracking
- 💪 **Exercise Management** - Track sets, reps, weights, and notes for each exercise
- 🔄 **Automatic Data Storage** - All data saved to Google Sheets
- 🎯 **Smart Session Management** - Automatically advances to the next incomplete session
- 📝 **Session Notes** - Add notes for individual exercises or entire sessions

## Quick Start

### Prerequisites

- Google Account
- Basic familiarity with Google Apps Script

### Installation

1. **Create a new Google Apps Script project**
   - Go to [script.google.com](https://script.google.com)
   - Click "New Project"
   - Name your project (e.g., "Mountaineering Training Tracker")

2. **Copy the code files**
   - Create a new file named `Code.gs` and paste the contents from `src/Code.gs`
   - Create an HTML file named `Index.html` and paste the contents from `src/Index.html`

3. **Deploy as Web App**
   - Click "Deploy" → "New Deployment"
   - Choose type: "Web app"
   - Set execute as: "Me"
   - Set who has access: "Only myself" (or adjust as needed)
   - Click "Deploy"

4. **Initialize the spreadsheet**
   - Open the web app URL from the deployment
   - The app will automatically create a Google Sheet to store your data

## Usage

1. **Access your training app** via the deployment URL
2. **Complete each session** by:
   - Performing warm-up exercises (if specified)
   - Recording reps and weights for each exercise
   - Adding optional notes
   - Clicking "Complete Session"
3. **Track your progress** - The app automatically advances to the next session
4. **View your data** in the connected Google Sheet

## Project Structure

```
mountaineering-training-tracker/
├── src/
│   ├── Code.gs          # Main Apps Script backend
│   └── Index.html       # Frontend HTML/CSS/JS
├── docs/
│   ├── DEVELOPMENT.md   # Development guide
│   └── API.md          # API documentation
├── images/
│   └── demo.gif        # Demo images
├── .github/
│   ├── FUNDING.yml     # Sponsorship configuration
│   └── workflows/      # GitHub Actions
├── LICENSE             # MIT License
├── README.md           # This file
├── CHANGELOG.md        # Version history
└── CONTRIBUTING.md     # Contribution guidelines
```

## Configuration

The app uses Google Apps Script Properties Service to store configuration. No manual configuration is required for basic usage.

### Advanced Configuration

To customize the training program, modify the `getFullProgramData()` function in `Code.gs`.

## Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

### Development Setup

See [DEVELOPMENT.md](docs/DEVELOPMENT.md) for detailed development instructions.

## Support

- 📖 [Documentation](docs/)
- 🐛 [Issue Tracker](https://github.com/yourusername/mountaineering-training-tracker/issues)
- 💬 [Discussions](https://github.com/yourusername/mountaineering-training-tracker/discussions)

## Sponsorship

If you find this project helpful, please consider [sponsoring](https://github.com/sponsors/yourusername) its development!

### Sponsors

<!-- sponsors -->
<!-- sponsors -->

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Inspired by professional mountaineering training programs
- Built with Google Apps Script and modern web technologies
- Special thanks to all contributors and sponsors

---

Made with ❤️ for the mountaineering community