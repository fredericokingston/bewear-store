#!/bin/bash

# Fix and Format Script for Bewear Store
# This script fixes import sorting and formats all files

echo "🔧 Starting fix and format process..."

# Check if pnpm is available
if ! command -v pnpm &> /dev/null; then
    echo "❌ pnpm is not installed. Please install it first."
    exit 1
fi

# Install dependencies if node_modules doesn't exist
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    pnpm install
fi

echo "🧹 Fixing import sorting with ESLint..."
pnpm lint --fix

echo "✨ Formatting code with Prettier..."
pnpm format

echo "✅ Fix and format process completed!"
echo ""
echo "📊 Summary:"
echo "  - ESLint has fixed import sorting issues"
echo "  - Prettier has formatted all files"
echo "  - All files should now be properly formatted and linted"

