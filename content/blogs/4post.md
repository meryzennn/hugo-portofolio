# Customizing Your Terminal with Fastfetch and Starship

## Introduction
A well-configured terminal can enhance your productivity and provide you with essential information at a glance. In this article, we'll explore how to set up Fastfetch with a custom `config.jsonc` and Starship with a tailored `starship.toml` configuration.

## What are Fastfetch and Starship?
- **Fastfetch** is a tool for displaying system information in a visually appealing format within your terminal.
- **Starship** is a fast and customizable shell prompt that enhances your terminal's aesthetics and functionality.

---

## Steps to Configure Fastfetch and Starship

### 1. Install Fastfetch
To get started, you need to install Fastfetch. You can do this using `git` and `cargo` (if you have Rust installed):

```bash
git clone https://github.com/LorenzoSeni/fastfetch.git
cd fastfetch
cargo install --path .
```

### 2. Configure Fastfetch
Fastfetch uses a `config.jsonc` file for customization. Create this file in the Fastfetch configuration directory, typically at `~/.config/fastfetch/`.

#### Example `config.jsonc`
Here’s an example configuration based on your provided settings:

```jsonc
{
    "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
    "logo": {
        "type": "builtin",
        "color": {
            "1": "white",
            "2": "cyan"
        }
    },
    "display": {
        "separator": " → ",
        "color": "cyan"
    },
    "modules": [
        {
            "type": "custom",
            "format": "┌─────────── \u001b[1mHardware Information\u001b[0m ───────────┐"
        },
        {
            "type": "host",
            "key": "  󰌢"
        },
        {
            "type": "cpu",
            "key": "  "
        },
        {
            "type": "gpu",
            "detectionMethod": "pci",
            "key": "  "
        },
        {
            "type": "display",
            "key": "  󱄄"
        },
        {
            "type": "memory",
            "key": "  "
        },
        {
            "type": "custom",
            "format": "├─────────── \u001b[1mSoftware Information\u001b[0m ───────────┤"
        },
        {
            "type": "os",
            "key": "  "
        },
        {
            "type": "kernel",
            "key": "  ",
            "format": "{1} {2}"
        },
        {
            "type": "wm",
            "key": "  "
        },
        {
            "type": "shell",
            "key": "  "
        },
        {
            "type": "custom",
            "format": "|──────────────\u001b[1mUptime / Age\u001b[0m──────────────────|"
        },
        {
            "type": "command",
            "key": "  OS Age ",
            "keyColor": "magenta",
            "text": "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo $days_difference days"
        },
        {
            "type": "uptime",
            "key": "  Uptime ",
            "keyColor": "magenta"
        },
        {
            "type": "custom",
            "format": "└────────────────────────────────────────────┘"
        },
        {
            "type": "colors",
            "paddingLeft": 2,
            "symbol": "circle"
        }
    ]
}
```

#### Explanation of the Fastfetch Configuration
- **Logo and Display**: Customizes the logo colors and display separator.
- **Modules**: Configures various sections such as hardware and software information with icons for easy identification.

### 3. Install Starship
Next, you need to install Starship. This can be done easily with the following command:

```bash
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
```

### 4. Configure Starship
Starship uses a `starship.toml` file for customization. Create this file in the `~/.config/starship/` directory.

#### Example `starship.toml`
Here’s an example configuration based on your provided settings:

```toml
[bun]
format = "via [$symbol]($style)"

[buf]
format = "via [$symbol]($style)"

[cmake]
format = "via [$symbol]($style)"

[cobol]
format = "via [$symbol]($style)"

[crystal]
format = "via [$symbol]($style)"

[daml]
format = "via [$symbol]($style)"

[dart]
format = "via [$symbol]($style)"

[deno]
format = "via [$symbol]($style)"

[dotnet]
format = "[$symbol(🎯 $tfm )]($style)"

[elixir]
format = 'via [$symbol]($style)'

[elm]
format = 'via [$symbol]($style)'

[erlang]
format = 'via [$symbol]($style)'

[fennel]
format = 'via [$symbol]($style)'

[gleam]
format = 'via [$symbol]($style)'

[golang]
format = 'via [$symbol]($style)'

[gradle]
format = 'via [$symbol]($style)'

[haxe]
format = 'via [$symbol]($style)'

[helm]
format = 'via [$symbol]($style)'

[java]
format = 'via [$symbol]($style)'

[julia]
format = 'via [$symbol]($style)'

[kotlin]
format = 'via [$symbol]($style)'

[lua]
format = 'via [$symbol]($style)'

[meson]
format = 'via [$symbol]($style)'

[nim]
format = 'via [$symbol]($style)'

[nodejs]
format = 'via [$symbol]($style)'

[ocaml]
format = 'via [$symbol(\($switch_indicator$switch_name\) )]($style)'

[opa]
format = 'via [$symbol]($style)'

[perl]
format = 'via [$symbol]($style)'

[php]
format = 'via [$symbol]($style)'

[pulumi]
format = 'via [$symbol$stack]($style)'

[purescript]
format = 'via [$symbol]($style)'

[python]
format = 'via [$symbol]($style)'

[quarto]
format = 'via [$symbol]($style)'

[raku]
format = 'via [$symbol]($style)'

[red]
format = 'via [$symbol]($style)'

[rlang]
format = 'via [$symbol]($style)'

[ruby]
format = 'via [$symbol]($style)'

[rust]
format = 'via [$symbol]($style)'

[solidity]
format = 'via [$symbol]($style)'

[typst]
format = 'via [$symbol]($style)'

[swift]
format = 'via [$symbol]($style)'

[vagrant]
format = 'via [$symbol]($style)'

[vlang]
format = 'via [$symbol]($style)'

[zig]
format = 'via [$symbol]($style)'
```

#### Explanation of the Starship Configuration
- **Language Formats**: Each programming language's display is configured to show the symbol and style, enhancing readability and context in your terminal prompt.

---

## Conclusion
By following this guide, you can customize your terminal environment with Fastfetch and Starship for a more informative and visually appealing experience. Happy customizing, and feel free to explore different configurations to find what works best for you!

```

Feel free to modify any part of this Markdown to suit your style or add additional content as needed! If you have further requests, just let me know!