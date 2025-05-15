# config.nu
#
# Installed by:
# version = "0.102.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

# Set Editor
$env.config.buffer_editor = "nvim"
$env.editor = "nvim"


# Imports
# =================================================

# Zoxide Config
source ~/.config/nushell/zoxide.nu

# Cattppucine Theme
source ~/.config/nushell/catppucine_mocha.nu

# Utilities
source ~/.config/nushell/utils.nu

# Aliases
source ~/.config/nushell/aliases.nu

# Starship
source ~/.config/nushell/starship.nu

# Custom Banner
# =================================================
def custom_banner [] {
    print $"(ansi red)█(ansi yellow)█(ansi green)█(ansi blue)█(ansi purple)█(ansi cyan)█(ansi reset)"
    print "Welcome to NuShell!"
}

# Call the function when NuShell starts
custom_banner

