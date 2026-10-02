# Dual-Desktop for Ubuntu ☯️

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Platform: Ubuntu](https://img.shields.io/badge/Platform-Ubuntu%20Linux-orange.svg)](https://ubuntu.com)
[![KDE: Plasma 6](https://img.shields.io/badge/Floating-KDE%20Plasma%206-teal.svg)](https://kde.org)
[![Tiling: Hyprland](https://img.shields.io/badge/Tiling-Hyprland%200.53-blue.svg)](https://hyprland.org)

> **The ultimate dual-session workspace for Ubuntu.**  
> Seamlessly switch between a **pixel-perfect Windows 11 floating desktop** and an **ultra-clean Omarchy Hyprland tiling desktop** on the same machine with zero configuration collisions.

---

## 💡 The Concept

Why compromise between a familiar, comfortable floating desktop and a blisteringly fast tiling window manager?

* **Use Windows 11 Mode (KDE Plasma 6)** when you want casual browsing, office productivity, traditional taskbar workflows, and familiar window controls.
* **Use Omarchy Mode (Hyprland)** when you want developer flow state, automatic window tiling, multi-workspace multitasking, and 22 curated themes.

```
                      Display Manager (SDDM / GDM)
                                   │
               ┌───────────────────┴───────────────────┐
               ▼                                       ▼
       Session: Plasma (Wayland)               Session: Omarchy
       ─────────────────────────               ────────────────
       • Windows 11 Dark Bloom UI              • Hyprland 0.53 Tiling Suite
       • Centered Taskbar & Segoe UI           • Glass Acrylic Waybar
       • Classic Floating Windows              • 22 Dynamic Themes
```

---

## 🚀 Quick Install

Run in terminal:

```bash
git clone https://github.com/apravint/dual-desktop-ubuntu.git
cd dual-desktop-ubuntu
./install.sh
```

---

## 🔄 How to Switch Between Desktops

1. Click **Log Out** from your current session (or press `Super + Escape` &rarr; *Logout* in Omarchy).
2. At the login screen, click the **Session** dropdown in the corner.
3. Select either **Plasma (Wayland)** or **Omarchy**.
4. Enter your password and log in!

---

## 📚 Documentation

- [Architecture & Isolation Guide](docs/architecture.md)
- [Workflow & Shortcut Comparison](docs/shortcuts.md)

---

## 📦 Component Repositories

This orchestrator is powered by:
- [apravint/omarchy-ubuntu](https://github.com/apravint/omarchy-ubuntu) &mdash; Omarchy Hyprland environment for Ubuntu
- [apravint/win11-kde-plasma](https://github.com/apravint/win11-kde-plasma) &mdash; Windows 11 KDE Plasma 6 transformation suite

---

## 📄 License

Licensed under the [MIT License](LICENSE).
