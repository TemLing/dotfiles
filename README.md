# dotfiles

My personal Linux desktop configuration based on **SwayWM**.

A minimal and keyboard-driven Wayland setup for daily use.



## Components

| Component | Software |
|-----------|----------|
| Window Manager | Sway |
| Status Bar | Waybar |
| Application Launcher | Rofi |
| Terminal | Alacritty |
| Shell | Fish |
| Lock Screen | Swaylock |
| Logout Menu | Wlogout |
| System Info | Fastfetch |



## Repository Structure

```text
.
├── alacritty/
├── fastfetch/
├── fish/
├── rofi/
├── sway/
├── swaylock/
├── wallpapers/
├── waybar/
├── wlogout/
└── LICENSE
```



## Installation

Clone the repository:

```bash
git clone https://github.com/TemLing/dotfiles.git
```

Copy the configuration files:

```bash
cp -r alacritty ~/.config/
cp -r fastfetch ~/.config/
cp -r fish ~/.config/
cp -r rofi ~/.config/
cp -r sway ~/.config/
cp -r swaylock ~/.config/
cp -r waybar ~/.config/
cp -r wlogout ~/.config/
```



## Dependencies

This setup uses:

- Sway
- Waybar
- Rofi
- Alacritty
- Fish
- Swaylock
- Wlogout
- Fastfetch

Package names may differ depending on your Linux distribution.



## Wallpapers

The wallpapers used in this setup are available in the `wallpapers/` directory.



## License

This project is licensed under the MIT License.

See the [LICENSE](LICENSE) file for details.
