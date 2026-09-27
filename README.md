# Norrsken

An Omarchy theme in aurora green on a deep green-black, with violet-edged windows, a translucent glass shell, and a glowing planet horizon.

![Norrsken desktop preview](preview.png)

Neovim, a music visualizer, [Flea](https://github.com/ejuro/flea), and [Omawrite](https://github.com/ejuro/omawrite) using Norrsken with the full glass effect.

## Background

One **3840 × 2160** background: a thin aurora-green planet edge against a star field with crisp pinpoint stars.

[![Norrsken horizon](backgrounds/1-horisont.png)](backgrounds/1-horisont.png)

## Install

```bash
omarchy theme install https://github.com/ejuro/omarchy-norrsken-theme.git
```

Tested on Omarchy **4.0.4**.

### Full glass effect (optional)

Omarchy skips Lua from installed themes for safety, so the command above leaves out the frosted-glass windows, blur, rounded corners, and glow in [`hyprland.lua`](hyprland.lua). To add them, read that file, then run:

```bash
git clone https://github.com/ejuro/omarchy-norrsken-theme.git ~/.local/share/omarchy-norrsken-theme
rm -rf ~/.config/omarchy/themes/norrsken
ln -s ~/.local/share/omarchy-norrsken-theme ~/.config/omarchy/themes/norrsken
omarchy theme set norrsken
```

Terminals, the About window, [Omawrite](https://github.com/ejuro/omawrite), and [Flea](https://github.com/ejuro/flea) turn to glass; everything else stays opaque.

## Palette

| Role | Color |
| --- | --- |
| Main surfaces | `#050c0b` |
| Raised surfaces | `#0c1a17` |
| Text | `#cdf2e3` |
| Accent | `#5dffb0` |
| Border gradient | `#5dffb0` → `#9d8cff` |
| Selection | `#12352b` |
| Muted text | `#6f9a8c` |

## Customization and compatibility

`colors.toml` supplies the shared palette and the border gradient. Omarchy generates terminal and supported application configurations from it. `shell.toml` styles the shell surfaces as translucent glass, `gtk.css` styles GTK applications on setups that link GTK to the current theme, and `hyprland.lua` adds the optional glass effect. Update those files too when changing palette colors, then reapply the theme.

Norrsken contains no application patches or install hooks.

## License

[MIT](LICENSE). Copyright (c) 2026 Erik Johansson.

Attribution for adapted upstream portions is recorded separately in [third-party notices](THIRD_PARTY_NOTICES.md).
