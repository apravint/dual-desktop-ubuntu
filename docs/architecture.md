# Dual-Session Architecture: Plasma 6 + Hyprland

This document outlines how Dual-Desktop maintains complete isolation between a traditional floating desktop and a modern Wayland tiling compositor on Ubuntu.

---

## 🏗️ Architectural Separation

```
                  Display Manager (SDDM / GDM)
                               │
               ┌───────────────┴───────────────┐
               ▼                               ▼
       Session: Plasma (Wayland)        Session: Omarchy (Hyprland)
       ─────────────────────────        ───────────────────────────
       • Compositor: KWin Wayland       • Compositor: Hyprland (0.53+)
       • Shell: plasmashell             • Bar: Waybar (acrylic)
       • Paradigm: Floating Windows     • Paradigm: Dwindle Tiling
       • Theme: Windows 11 Dark         • Theme: Omarchy (22 Palettes)
       • Launcher: Kickoff Menu         • Launcher: Wofi
```

### 1. Zero Config Collision
- KDE Plasma settings live strictly in `~/.config/kdeglobals`, `plasmarc`, `kwinrc`, and `~/.local/share/plasma/`.
- Hyprland and Waybar live strictly in `~/.config/hypr/` and `~/.config/waybar/`.
- Neither environment mutates the other's configuration trees.

### 2. Wayland Session Descriptors
Wayland sessions are declared in `/usr/share/wayland-sessions/`:
- `plasma.desktop` &rarr; invokes `startplasma-wayland`
- `omarchy.desktop` &rarr; invokes `Hyprland`

### 3. Audio & Display State Persistence
PipeWire handles audio streams identically across both sessions; wireplumber profile rules persist node volume states regardless of active desktop session.
