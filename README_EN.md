# My Arch Linux Dotfiles 🐧

[English](README_EN.md) | [简体中文](README_ZH.md)

### 📖 Introduction
This repository contains my personal configuration files for an Arch Linux environment. It is designed for cross-device synchronization and quick system recovery after a fresh installation. 

**Note:** These configurations are tailored to my personal workflow. Please review and modify them according to your own system before applying.

### 🔗 Related Links
- **Alacritty (Terminal Emulator)**: [Official Website](https://alacritty.org) | [GitHub Repository](https://github.com/alacritty/alacritty)
- **ble.sh (Bash Line Editor)**: [GitHub Repository](https://github.com/akinomyoga/ble.sh)

### 📂 Directory Structure
```bash
initial/
├── Starship_style/
│   └── starship.toml       # Starship cross-shell prompt configuration
├── alacritty_style/
│   └── alacritty.toml      # Alacritty terminal emulator configuration
├── arch_pacman_mirrors/
│   └── mirrorlist          # Custom Pacman mirrorlist for faster downloads
├── docker_mirrors/
│   └── daemon.json         # Docker daemon configuration for registry mirrors
├── shell_config/
│   ├── bashrc_config       # Bash shell configuration
│   │   └── .bashrc 
│   └── blesh_config        # Ble.sh configuration
│       └── .blerc              
├── .gitignore              # Git ignore rules to prevent sensitive data leaks
├── README.md               # Navigation page
├── README_en.md            # English documentation
└── README_zh.md            # Chinese documentation
```

### 🚀 How to Use (Restore Configurations)
To apply these configurations on a new machine, clone this repository and copy the files to their respective directories:

```bash
# Clone the repository
git clone https://github.com/XCBPR1CE/Arch_assest_config.git
cd Arch_assest_config

# 1. Starship
cp Starship_style/starship.toml ~/.config/starship.toml

# 2. Alacritty
cp alacritty_style/alacritty.toml ~/.config/alacritty/alacritty.toml

# 3. Shell configs
cp shell_config/bashrc_config/.bashrc ~/.bashrc
cp shell_config/belsh_config/.blerc ~/.blerc
source ~/.bashrc

# 4. System/Docker Mirrors (Require sudo)
# sudo cp arch_pacman_mirrors/mirrorlist /etc/pacman.d/mirrorlist
# sudo cp docker_mirrors/daemon.json /etc/docker/daemon.json
```