# My Dotfiles

Welcome to my dotfiles repository! This repository contains the configuration files and scripts I use to set up and maintain my NixOS system with various tools such as Hyprland, AGS bar, Rofi, Waybar, and Cava. The configurations are modular and organized to allow easy switching between different themes, which are set up in separate branches.

## Table of Contents

- [My Dotfiles](#my-dotfiles)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [Structure](#structure)
  - [Installation](#installation)
  - [Usage](#usage)
    - [Switching Themes](#switching-themes)
  - [Customization](#customization)
  - [Contributing](#contributing)
  - [License](#license)

## Overview

This repository is structured to provide a modular and easy-to-manage configuration for my NixOS setup. I use:
- [Hyprland](https://github.com/vaxerski/Hyprland) as my window manager
- [AGS bar](https://github.com/some/ags-bar-repo) as my status bar
- [Rofi](https://github.com/davatorium/rofi) as my application launcher
- [Waybar](https://github.com/Alexays/Waybar) as my status bar
- [Cava](https://github.com/karlstav/cava) as my audio visualizer

## Structure

The repository contains the following folders for configurations:

- `hypr`: Hyprland configurations
- `nixos`: NixOS configurations
- `rofi`: Rofi configurations
- `waybar`: Waybar configurations
- `cava`: Cava configurations

<!--
Each theme is set up in its own branch, and you can switch between them easily.

## Installation

1. **Clone the Repository:**
    ```sh
    git clone https://github.com/yourusername/dotfiles.git
    cd dotfiles
    ```

2. **Symlink the Configurations:**
    ```sh
    ln -s $(pwd)/hypr ~/.config/hypr
    ln -s $(pwd)/nixos ~/.config/nixos
    ln -s $(pwd)/rofi ~/.config/rofi
    ln -s $(pwd)/waybar ~/.config/waybar
    ln -s $(pwd)/cava ~/.config/cava
    ```

3. **Install Dependencies:**
    Ensure you have Nix and the necessary packages installed. You can refer to my `shell.nix` file for a list of dependencies.

    ```sh
    nix-shell
    ```

## Usage

### Switching Themes

To switch between different themes, use the following commands:

```sh
git checkout <theme-branch>
```

For example:

```sh
git checkout theme-dark
```

<details>
<summary>Available Themes</summary>

- `theme-dark`
- `theme-light`
- `theme-nord`
- `theme-gruvbox`

</details>

After checking out the desired theme, reload your configurations:

```sh
hyprctl reload
waybar reload
rofi -restart
pkill cava && cava &
```

## Customization

Feel free to customize the configurations to fit your needs. Here are a few tips:

- **Hyprland Configuration:**
    Modify `hypr/hyprland.conf` to change window manager settings.
- **Waybar Modules:**
    Add or remove modules in `waybar/config` to display different information.
- **Rofi:**
    Customize the look and feel of Rofi by editing `rofi/config.rasi`.
- **Cava:**
    Change visualizer settings in `cava/config`.
-->
## Contributing

I'm still really new to NixOS so if you have suggestions or improvements, feel free to open an issue or submit a pull request. Contributions are welcome!

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
