# My Arch Linux Dotfiles 🐧

[English](README_en.md) | [简体中文](README_zh.md)

### 📖 Introduction
This repository contains my personal configuration files for an Arch Linux environment. It is designed for cross-device synchronization and quick system recovery after a fresh installation. 

**Note:** These configurations are tailored to my personal workflow. Please review and modify them according to your own system before applying.

### 📂 Directory Structure
- `Starship_style/`: Configuration for the [Starship](https://starship.rs/) cross-shell prompt (`starship.toml`).
- `alacritty_style/`: Configuration for the [Alacritty](https://github.com/alacritty/alacritty) terminal emulator (`alacritty.toml`).
- `arch_pacman_mirrors/`: Custom Pacman mirrorlist for faster package downloads (`mirrorlist`).
- `docker_mirrors/`: Docker daemon configuration for registry mirrors and settings (`daemon.json`).
- `shell_config/`: Shell environment configurations, including `~/.bashrc` and `~/.blerc`.
- `.gitignore`: Git ignore rules to prevent sensitive data (like API keys or passwords) from being uploaded.

### 🚀 How to Use (Restore Configurations)
To apply these configurations on a new machine, clone this repository and copy the files to their respective directories:

```bash
# Clone the repository
git clone https://github.com/XCBPR1CE/asset_configurations.git
cd asset_configurations

# 1. Starship
cp Starship_style/starship.toml ~/.config/starship.toml

# 2. Alacritty
cp alacritty_style/alacritty.toml ~/.config/alacritty/alacritty.toml

# 3. Shell configs
cp shell_config/.bashrc ~/.bashrc
cp shell_config/.blerc ~/.blerc
source ~/.bashrc

# 4. System/Docker Mirrors (Require sudo)
# sudo cp arch_pacman_mirrors/mirrorlist /etc/pacman.d/mirrorlist
# sudo cp docker_mirrors/daemon.json /etc/docker/daemon.json