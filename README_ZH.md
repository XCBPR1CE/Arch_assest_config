
# 我的 Arch Linux 配置文件备份 🐧

[English](README_EN.md) | [简体中文](README_ZH.md)

### 📖 简介
本仓库用于存放我个人的 Arch Linux 环境配置文件。主要用于跨设备同步，以及重装系统后的快速环境恢复。

**注意：** 这些配置是针对我个人的工作流定制的。在应用到你的系统之前，请务必检查并按需修改。

### 🔗 相关链接
- **Alacritty (终端模拟器)**：[官方网站](https://alacritty.org) | [GitHub 仓库](https://github.com/alacritty/alacritty)
- **ble.sh (Bash 行编辑器)**：[GitHub 仓库](https://github.com/akinomyoga/ble.sh)

### 📂 目录结构
```bash
initial/
├── Starship_style/
│   └── starship.toml       # Starship 终端提示符样式配置
├── alacritty_style/
│   └── alacritty.toml      # Alacritty 终端模拟器配置
├── arch_pacman_mirrors/
│   └── mirrorlist          # 自定义的 Pacman 镜像源列表
├── docker_mirrors/
│   └── daemon.json         # Docker 守护进程配置及镜像加速
├── shell_config/
│   ├── bashrc_config       # Bash 环境配置
│   │   └── .bashrc 
│   └── blesh_config        # Ble.sh 配置
│       └── .blerc              
├── .gitignore              # Git 忽略规则，防止敏感信息被误传
├── README.md               # 导航主页
├── README_en.md            # 英文说明文档
└── README_zh.md            # 中文说明文档
```

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
```