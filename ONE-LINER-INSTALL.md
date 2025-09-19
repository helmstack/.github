# 🚀 HelmStack One-Liner Quraşdırma

## 📦 NPM Paket (Ən Asan)

```bash
npm install -g @helmstack/cli && echo "✅ HelmStack hazır! Test: heck --version"
```

## 🔧 Tam Quraşdırma

```bash
curl -fsSL https://raw.githubusercontent.com/helmstack/.github/main/install.sh | bash
```

## 🎯 Yeni Proyekt Yarat

```bash
npx create-helmstack-app@latest my-project && cd my-project && npm start
```

## 🐳 Docker

```bash
docker run --rm helmstack/cli:latest heck --version
```

## ⚡ Super Tez (Local Test)

```bash
# Local development üçün
git clone https://github.com/helmstack/helmstack-cli.git && cd helmstack-cli && npm install && npm link && heck --version
```

---

## 🧪 Test Komandaları

```bash
# Sağlamlıq yoxla
heck health

# Konfiqurasiya
heck config list

# AI test (API key tələb edir)
heck plan "Create a simple React app"

# Status
heck status
```

## 🔑 Environment Setup (Opsional)

```bash
# .env faylı yarat
cat > .env << 'EOF'
HELMSTACK_AI_ENABLED=true
OPENAI_API_KEY=your_openai_key_here
GITHUB_TOKEN=your_github_token_here
EOF
```

## 📋 Tez Başlama

1. **Quraşdır**: `npm install -g @helmstack/cli`
2. **Test et**: `heck --version`
3. **Proyekt yarat**: `npx create-helmstack-app my-app`
4. **İşə sal**: `cd my-app && npm start`

🎉 **3 dəqiqədə hazır!**