{ pkgs, ... }:
{
  wayland.windowManager.hyprland.settings.env = [
    "BROWSER, zen" # ! -@browser
    "TERMINAL, ghostty" # ! -@terminal
    "EDITOR, zeditor" # ! -@editor
    "FILEMANAGER, thunar" # ! -@filemanager
    "XDG_UTILS_TERMINAL, ghostty" # ! -@terminal
    "XDG_UTILS_BROWSER, zen" # ! -@browser
    "XDG_UTILS_FILEMANAGER, thunar" # ! -@filemanager

    "GTK_IM_MODULE,fcitx"
    "QT_IM_MODULE,fcitx"
    "XMODIFIERS,@im=fcitx"
    "SDL_IM_MODULE,fcitx"
    "GLFW_IM_MODULE,ibus"
    "GI_TYPELIB_PATH,${pkgs.libadwaita}/lib/girepository-1.0"
  ];
}
