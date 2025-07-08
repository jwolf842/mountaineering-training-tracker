#!/bin/bash

# Mountaineering Training Tracker - Quick Setup Script
# This script helps you quickly set up the repository structure

echo "🏔️  Mountaineering Training Tracker - Setup Script"
echo "================================================"

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

# Get user input
read -p "Enter your GitHub username: " github_username
read -p "Enter your name (for LICENSE file): " user_name

# Create directory structure
echo "📁 Creating directory structure..."
mkdir -p .github/ISSUE_TEMPLATE
mkdir -p .github/workflows
mkdir -p src
mkdir -p docs/images

# Initialize git if not already initialized
if [ ! -d .git ]; then
    echo "🔧 Initializing git repository..."
    git init
fi

# Update placeholders in files
echo "📝 Updating configuration files..."

# Function to replace placeholders
replace_placeholders() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        find . -type f -name "*.md" -o -name "*.yml" -o -name "*.json" | while read file; do
            sed -i '' "s/yourusername/$github_username/g" "$file" 2>/dev/null
            sed -i '' "s/Your Name/$user_name/g" "$file" 2>/dev/null
            sed -i '' "s/\[Your Name or Organization\]/$user_name/g" "$file" 2>/dev/null
        done
    else
        # Linux
        find . -type f -name "*.md" -o -name "*.yml" -o -name "*.json" | while read file; do
            sed -i "s/yourusername/$github_username/g" "$file" 2>/dev/null
            sed -i "s/Your Name/$user_name/g" "$file" 2>/dev/null
            sed -i "s/\[Your Name or Organization\]/$user_name/g" "$file" 2>/dev/null
        done
    fi
}

# Run replacement
replace_placeholders

# Create .clasp.json from example if it doesn't exist
if [ -f ".clasp.json.example" ] && [ ! -f ".clasp.json" ]; then
    echo "📋 Creating .clasp.json from example..."
    cp .clasp.json.example .clasp.json
fi

# Check if npm is installed
if command -v npm &> /dev/null; then
    echo "📦 Installing npm dependencies..."
    npm install
else
    echo "⚠️  npm not found. Skipping dependency installation."
    echo "   Install Node.js to use development tools."
fi

# Set up git remote
echo "🔗 Setting up GitHub remote..."
git remote add origin "https://github.com/$github_username/mountaineering-training-tracker.git" 2>/dev/null

# Create initial commit
echo "💾 Creating initial commit..."
git add .
git commit -m "Initial commit: Mountaineering Training Tracker v1.0.0" 2>/dev/null

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Create the repository on GitHub:"
echo "   https://github.com/new"
echo ""
echo "2. Push your code:"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. Follow the setup instructions in SETUP.md"
echo ""
echo "Happy training! 🏔️"