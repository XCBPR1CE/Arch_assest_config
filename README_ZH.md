
# 我的 Arch Linux 配置文件备份 🐧

[English](README_EN.md) | [简体中文](README_ZH.md)

### 📖 简介
本仓库用于存放我个人的 Arch Linux 环境配置文件。主要用于跨设备同步，以及重装系统后的快速环境恢复。

**注意：** 这些配置是针对我个人的工作流定制的。在应用到你的系统之前，请务必检查并按需修改。

### 📂 目录结构
- `Starship_style/`: [Starship](https://starship.rs/) 终端提示符的样式配置 (`starship.toml`)。
- `alacritty_style/`: [Alacritty](https://github.com/alacritty/alacritty) 终端模拟器的配置 (`alacritty.toml`)。
- `arch_pacman_mirrors/`: 自定义的 Pacman 镜像源列表，用于加速包下载 (`mirrorlist`)。
- `docker_mirrors/`: Docker 守护进程配置，包含镜像加速等设置 (`daemon.json`)。
- `shell_config/`: Shell 环境配置，包含 `~/.bashrc` 和 `~/.blerc`。
- `.gitignore`: Git 忽略规则，防止密码或 Token 等敏感信息被误传。

### 🚀 如何恢复配置
如果在新电脑上需要恢复环境，请克隆此仓库并将文件复制到对应的目录：

```bash
# 克隆仓库
git clone https://github.com/XCBPR1CE/Arch_assest_config.git
cd Arch_assest_config

# 1. 恢复 Starship
cp Starship_style/starship.toml ~/.config/starship.toml

# 2. 恢复 Alacritty
cp alacritty_style/alacritty.toml ~/.config/alacritty/alacritty.toml

# 3. 恢复 Shell 配置
cp shell_config/bashrc_config/.bashrc ~/.bashrc
cp shell_config/blesh_config/.blerc ~/.blerc
source ~/.bashrc

# 4. 恢复系统与 Docker 镜像源 (需要 sudo 权限)
# sudo cp arch_pacman_mirrors/mirrorlist /etc/pacman.d/mirrorlist
# sudo cp docker_mirrors/daemon.json /etc/docker/daemon.json