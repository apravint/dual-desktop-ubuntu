#!/usr/bin/env bash
# ==============================================================================
# Dual-Desktop Setup for Ubuntu (Windows 11 Plasma 6 + Omarchy Hyprland)
# https://github.com/apravint/dual-desktop-ubuntu
# ==============================================================================
set -e

REPO_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BLUE}==================================================================${NC}"
echo -e "${GREEN}  Dual-Desktop Orchestrator: Windows 11 Plasma + Omarchy Hyprland${NC}"
echo -e "${BLUE}==================================================================${NC}"

if ! sudo -v &>/dev/null; then
    echo "Error: sudo credentials required."
    exit 1
fi

echo -e "\n${YELLOW}[1/3] Setting up Omarchy Hyprland Tiling Environment...${NC}"
TMP_DIR=$(mktemp -d)
git clone https://github.com/apravint/omarchy-ubuntu.git "$TMP_DIR/omarchy"
(cd "$TMP_DIR/omarchy" && ./install.sh)

echo -e "\n${YELLOW}[2/3] Setting up Windows 11 KDE Plasma Environment...${NC}"
git clone https://github.com/apravint/win11-kde-plasma.git "$TMP_DIR/win11"
(cd "$TMP_DIR/win11" && ./install.sh)

rm -rf "$TMP_DIR"

echo -e "\n${YELLOW}[3/3] Verifying session entries in /usr/share/wayland-sessions/...${NC}"
ls -la /usr/share/wayland-sessions/*.desktop

echo -e "\n${BLUE}==================================================================${NC}"
echo -e "${GREEN}🎉 Dual-Desktop Environment Installed Successfully!${NC}"
echo -e "${BLUE}==================================================================${NC}"
echo -e "You can now choose between:"
echo -e "  1. 🪟 ${GREEN}Plasma (Wayland)${NC} — Pixel-perfect Windows 11 desktop"
echo -e "  2. 🌌 ${GREEN}Omarchy${NC}          — High-productivity Hyprland tiling desktop"
echo -e "\nSimply select your session from the login screen (SDDM/GDM)."
