#!/bin/bash

# 🚀 HelmStack Quick Install Script
# NPM paket quraşdırması (ən asan metod)

set -e

echo "🚀 HelmStack Quick Install"
echo ""

# Node.js yoxla
if ! command -v npm &> /dev/null; then
    echo "❌ npm tapılmadı! Node.js quraşdırın."
    echo "Ubuntu/Debian: sudo apt install nodejs npm"
    echo "macOS: brew install node"
    exit 1
fi

echo "📦 @helmstack/cli quraşdırılır..."
npm install -g @helmstack/cli

echo "📚 Core libraries quraşdırılır..."
npm install -g @helmstack/core @helmstack/addons

echo ""
echo "✅ HelmStack quraşdırıldı!"

# Test
if command -v heck &> /dev/null; then
    echo "🧪 Test: $(heck --version 2>/dev/null || echo 'version test failed')"
fi

echo ""
echo "🚀 İstifadəyə hazır:"
echo "   heck --help"
echo "   heck health"
echo "   npx create-helmstack-app my-project"

echo ""
echo "📚 Əlavə məlumat:"
echo "   GitHub: https://github.com/helmstack"
echo "   Tam quraşdırma: curl -fsSL https://raw.githubusercontent.com/helmstack/.github/main/install-helmstack.sh | bash"