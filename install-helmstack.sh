#!/bin/bash

# 🚀 HelmStack Master Quraşdırma Scripti
# Bütün quraşdırma variantlarını təqdim edir

set -e

# Rənglər və emojilər
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'

# Logo
show_logo() {
    echo -e "${BLUE}"
    echo "██╗  ██╗███████╗██╗     ███╗   ███╗███████╗████████╗ █████╗  ██████╗██╗  ██╗"
    echo "██║  ██║██╔════╝██║     ████╗ ████║██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝"
    echo "███████║█████╗  ██║     ██╔████╔██║███████╗   ██║   ███████║██║     █████╔╝ "
    echo "██╔══██║██╔══╝  ██║     ██║╚██╔╝██║╚════██║   ██║   ██╔══██║██║     ██╔═██╗ "
    echo "██║  ██║███████╗███████╗██║ ╚═╝ ██║███████║   ██║   ██║  ██║╚██████╗██║  ██╗"
    echo "╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝"
    echo -e "${NC}"
    echo ""
    echo -e "${GREEN}🚀 HelmStack Quraşdırma Assistant${NC}"
    echo -e "${CYAN}Ən yaxşı quraşdırma metodunu seçin${NC}"
    echo ""
}

# Quraşdırma metodlarını göstər
show_install_options() {
    echo -e "${YELLOW}📦 Quraşdırma Metodları:${NC}"
    echo ""
    echo -e "${GREEN}1. NPM Paket Quraşdırması (Tövsiyə)${NC}"
    echo "   ✅ Ən asan və tez"
    echo "   ✅ Avtomatik yenilənmə"
    echo "   ✅ Global istifadə"
    echo "   📦 npm install -g @helmstack/cli"
    echo ""

    echo -e "${BLUE}2. Source Code Quraşdırması${NC}"
    echo "   ✅ Ən son features"
    echo "   ✅ Development üçün uyğun"
    echo "   ⚠️  Manual build tələb edir"
    echo "   🔧 GitHub repo-larından"
    echo ""

    echo -e "${PURPLE}3. Create App Tool${NC}"
    echo "   ✅ Yeni proyekt yaradır"
    echo "   ✅ Template-lər daxil"
    echo "   ✅ Auto-setup"
    echo "   🎯 npx create-helmstack-app"
    echo ""

    echo -e "${CYAN}4. Docker Container${NC}"
    echo "   ✅ İzolated environment"
    echo "   ✅ Dependencies yoxdur"
    echo "   ✅ Cross-platform"
    echo "   🐳 docker run helmstack/cli"
    echo ""
}

# Metodları seç
select_method() {
    echo -e "${YELLOW}Quraşdırma metodunu seçin (1-4):${NC}"
    read -p "► " choice

    case $choice in
        1)
            install_npm_package
            ;;
        2)
            install_from_source
            ;;
        3)
            install_create_app
            ;;
        4)
            install_docker
            ;;
        *)
            echo -e "${RED}❌ Yanlış seçim. 1-4 arası rəqəm daxil edin.${NC}"
            select_method
            ;;
    esac
}

# NPM paket quraşdırması
install_npm_package() {
    echo -e "${GREEN}📦 NPM Paket Quraşdırması başlayır...${NC}"
    echo ""

    # Node.js yoxla
    if ! command -v npm &> /dev/null; then
        echo -e "${RED}❌ npm tapılmadı! Node.js quraşdırın.${NC}"
        echo "Ubuntu/Debian: sudo apt install nodejs npm"
        echo "macOS: brew install node"
        exit 1
    fi

    echo -e "${BLUE}📥 @helmstack/cli quraşdırılır...${NC}"
    npm install -g @helmstack/cli

    echo -e "${BLUE}📚 Core library quraşdırılır...${NC}"
    npm install -g @helmstack/core

    echo -e "${BLUE}🔌 Addons quraşdırılır...${NC}"
    npm install -g @helmstack/addons

    echo ""
    echo -e "${GREEN}✅ NPM paket quraşdırması tamamlandı!${NC}"

    # Test
    if command -v heck &> /dev/null; then
        echo -e "${CYAN}🧪 Test edilir: $(heck --version)${NC}"
    fi

    show_usage_npm
}

# Source code quraşdırması
install_from_source() {
    echo -e "${BLUE}🔧 Source Code Quraşdırması başlayır...${NC}"
    echo ""

    # Prerequisites yoxla
    check_prerequisites

    # Quraşdırma qovluğu
    INSTALL_DIR="$HOME/helmstack"
    echo -e "${BLUE}📁 Quraşdırma qovluğu: $INSTALL_DIR${NC}"

    if [ -d "$INSTALL_DIR" ]; then
        echo -e "${YELLOW}⚠️  HelmStack qovluğu mövcuddur. Yenilənsinmi? (y/n)${NC}"
        read -p "► " update_choice
        if [[ $update_choice =~ ^[Yy]$ ]]; then
            rm -rf "$INSTALL_DIR"
        else
            echo -e "${CYAN}Mövcud qovluq saxlanıldı.${NC}"
            return
        fi
    fi

    mkdir -p "$INSTALL_DIR" && cd "$INSTALL_DIR"

    # Repo-ları yüklə
    echo -e "${BLUE}📥 GitHub repo-ları yüklənir...${NC}"

    REPOS=(
        "helmstack-schemas"
        "helmstack-core"
        "helmstack-cli"
        "helmstack-addons"
        "helmstack-ml"
        "helmstack-brand"
    )

    for repo in "${REPOS[@]}"; do
        echo "   📦 $repo..."
        git clone "https://github.com/helmstack/$repo.git" 2>/dev/null || echo "   ⚠️  $repo yüklənmədi"
    done

    # Build və link
    echo -e "${BLUE}🔨 Build və link edilir...${NC}"

    # Sıralı quraşdırma
    for repo in "${REPOS[@]}"; do
        if [ -d "$repo" ]; then
            echo "   ⚙️  $repo qurulur..."
            cd "$repo"
            npm install --silent
            npm run build --silent 2>/dev/null || echo "   ⚠️  Build uğursuz"
            npm link --silent 2>/dev/null || echo "   ⚠️  Link uğursuz"
            cd ..
        fi
    done

    # CLI global link
    if [ -d "helmstack-cli" ]; then
        cd helmstack-cli && npm link --silent && cd ..
    fi

    echo ""
    echo -e "${GREEN}✅ Source code quraşdırması tamamlandı!${NC}"
    show_usage_source
}

# Create app tool
install_create_app() {
    echo -e "${PURPLE}🎯 Create App Tool quraşdırması...${NC}"
    echo ""

    if ! command -v npm &> /dev/null; then
        echo -e "${RED}❌ npm tapılmadı!${NC}"
        exit 1
    fi

    echo -e "${BLUE}📦 create-helmstack-app quraşdırılır...${NC}"
    npm install -g create-helmstack-app

    echo ""
    echo -e "${GREEN}✅ Create App Tool quraşdırıldı!${NC}"

    echo -e "${YELLOW}🚀 Yeni proyekt yaratmaq üçün:${NC}"
    echo "   npx create-helmstack-app my-project"
    echo "   cd my-project"
    echo "   npm start"

    show_usage_create_app
}

# Docker quraşdırması
install_docker() {
    echo -e "${CYAN}🐳 Docker Container quraşdırması...${NC}"
    echo ""

    if ! command -v docker &> /dev/null; then
        echo -e "${RED}❌ Docker tapılmadı!${NC}"
        echo "Docker quraşdırın: https://docs.docker.com/get-docker/"
        exit 1
    fi

    echo -e "${BLUE}📥 HelmStack Docker image yüklənir...${NC}"
    docker pull helmstack/cli:latest

    echo -e "${BLUE}🔧 CLI alias yaradılır...${NC}"

    # Alias yaradır
    cat >> ~/.bashrc << 'EOF'

# HelmStack Docker alias
alias heck='docker run --rm -v $(pwd):/workspace -w /workspace helmstack/cli:latest heck'
EOF

    echo "source ~/.bashrc" > /tmp/reload_bashrc.sh

    echo ""
    echo -e "${GREEN}✅ Docker quraşdırması tamamlandı!${NC}"
    echo -e "${YELLOW}🔄 Terminal yenidən açın və ya \`source ~/.bashrc\` işlədin${NC}"

    show_usage_docker
}

# Prerequisites yoxlanışı
check_prerequisites() {
    echo -e "${BLUE}🔍 Prerequisites yoxlanılır...${NC}"

    # Git
    if ! command -v git &> /dev/null; then
        echo -e "${RED}❌ Git tapılmadı!${NC}"
        echo "Ubuntu/Debian: sudo apt install git"
        echo "macOS: brew install git"
        exit 1
    fi

    # Node.js
    if ! command -v node &> /dev/null; then
        echo -e "${RED}❌ Node.js tapılmadı!${NC}"
        echo "Ubuntu/Debian: sudo apt install nodejs npm"
        echo "macOS: brew install node"
        exit 1
    fi

    # npm
    if ! command -v npm &> /dev/null; then
        echo -e "${RED}❌ npm tapılmadı!${NC}"
        exit 1
    fi

    echo -e "${GREEN}✅ Prerequisites hazır${NC}"
}

# NPM istifadə təlimatları
show_usage_npm() {
    echo ""
    echo -e "${YELLOW}🧪 Test komandaları:${NC}"
    echo "   heck --version"
    echo "   heck health --detailed"
    echo "   heck config list"
    echo ""
    echo -e "${YELLOW}🚀 Yeni proyekt yaradın:${NC}"
    echo "   npx create-helmstack-app my-project"
    echo "   cd my-project"
    echo "   npm start"
    echo ""
    echo -e "${YELLOW}🔄 Yeniləmə:${NC}"
    echo "   npm update -g @helmstack/cli"
}

# Source istifadə təlimatları
show_usage_source() {
    echo ""
    echo -e "${YELLOW}📍 Quraşdırma yeri: $HOME/helmstack${NC}"
    echo ""
    echo -e "${YELLOW}🧪 Test komandaları:${NC}"
    echo "   heck --version"
    echo "   heck health --detailed"
    echo ""
    echo -e "${YELLOW}🔄 Yeniləmə:${NC}"
    echo "   cd $HOME/helmstack"
    echo "   git pull origin main  # hər repo üçün"
    echo "   npm run build        # hər repo üçün"
}

# Create app istifadə təlimatları
show_usage_create_app() {
    echo ""
    echo -e "${YELLOW}🎯 Template-lər:${NC}"
    echo "   react      - React application"
    echo "   nextjs     - Next.js application"
    echo "   nodejs-api - Express API"
    echo "   typescript - TypeScript project"
    echo "   cli-tool   - CLI tool"
    echo ""
    echo -e "${YELLOW}🚀 Nümunə:${NC}"
    echo "   npx create-helmstack-app my-react-app --template react"
    echo "   npx create-helmstack-app my-api --template nodejs-api"
}

# Docker istifadə təlimatları
show_usage_docker() {
    echo ""
    echo -e "${YELLOW}🐳 Docker istifadəsi:${NC}"
    echo "   heck --version              # alias vasitəsilə"
    echo "   heck health --detailed"
    echo ""
    echo -e "${YELLOW}🔧 Manual Docker:${NC}"
    echo "   docker run --rm helmstack/cli:latest heck --help"
    echo "   docker run --rm -v \$(pwd):/workspace helmstack/cli:latest heck status"
}

# Environment setup
setup_environment() {
    echo -e "${BLUE}🔧 Environment konfiqurasiyası (opsional)${NC}"
    echo ""
    echo "HelmStack AI features üçün API key-lər tələb edir:"
    echo ""
    echo -e "${YELLOW}1. OpenAI API Key:${NC}"
    echo "   export OPENAI_API_KEY='your-key-here'"
    echo ""
    echo -e "${YELLOW}2. GitHub Token:${NC}"
    echo "   export GITHUB_TOKEN='your-token-here'"
    echo ""
    echo -e "${YELLOW}3. Environment file (.env):${NC}"
    echo "   HELMSTACK_AI_ENABLED=true"
    echo "   OPENAI_API_KEY=your-key"
    echo "   GITHUB_TOKEN=your-token"
    echo ""
    echo "API key-lərsiz də basic funksionallıq işləyir."
}

# Final success message
show_final_message() {
    echo ""
    echo -e "${GREEN}🎉 HelmStack uğurla quraşdırıldı!${NC}"
    echo ""
    echo -e "${BLUE}📚 Əlavə məlumat:${NC}"
    echo "   GitHub: https://github.com/helmstack"
    echo "   Docs: https://helmstack.dev"
    echo "   CLI Help: heck --help"
    echo ""
    echo -e "${YELLOW}💡 Tövsiyələr:${NC}"
    echo "   1. Environment file quraşdırın (.env)"
    echo "   2. API key-lərinizi əlavə edin"
    echo "   3. İlk proyektinizi yaradın"
    echo "   4. HelmStack AI features-ləri test edin"
    echo ""
    echo -e "${GREEN}✨ HelmStack-lə kodlamağın keyfini çıxarın!${NC}"
}

# Main function
main() {
    show_logo
    show_install_options
    select_method
    setup_environment
    show_final_message
}

# Script işə salınır
main "$@"