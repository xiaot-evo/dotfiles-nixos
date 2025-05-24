# dotfiles-nixos

我的个人 NixOS 配置仓库，仅供自己使用，欢迎其他人参考。

## 简介

本仓库包含了我在自己笔记本上运行的 NixOS 系统配置，使用了 Nix Flake 作为配置管理方式，并集成了 [home-manager](https://github.com/nix-community/home-manager) 进行用户级配置。

**桌面环境与组件：**
- [Hyprland](https://github.com/hyprwm/Hyprland)：现代、灵活的 Wayland 合成器
- [ags](https://github.com/Aylur/ags)：用于自定义面板/状态栏
- [swww](https://github.com/LukeSmithxyz/swww)：动态壁纸管理

**硬件：**
- 本配置专为我的个人笔记本硬件定制，暂未做通用适配，部分驱动与脚本可能仅在我的设备上正常运行。

## 主要特性

- 全面基于 Flake 管理，支持 reproducible 部署
- home-manager 管理 dotfiles 与用户环境
- Hyprland 桌面环境及相关美化、自动化脚本
- 个人常用开发、效率软件自动化管理

## 目录结构预览

（请根据实际仓库结构补充/修改）

```
.
├── flake.nix
├── flake.lock
├── home/
├── hosts/
├── modules/
├── README.md
└── ...
```

## 使用说明

> ⚠️ 本仓库配置仅供作者本人参考使用，未针对他人或多硬件环境做适配。如需借鉴，请根据自身需求修改。

1. 克隆本仓库：
    ```sh
    git clone https://github.com/xiaot-evo/dotfiles-nixos.git
    ```
2. 按需编辑 `flake.nix`、`hosts/`、`home/` 等目录下配置文件，适配你的硬件和需求。
3. 使用 NixOS flake 方式进行系统部署或测试。

## 致谢

- NixOS 社区
- home-manager 项目
- Hyprland/ags/swww 及其它开源项目

---

> 仅供学习与参考，欢迎 star 或 issue 交流。
