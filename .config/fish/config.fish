#!/usr/bin/env fish

# Fish Configuration
# Main config.fish file that loads all conf.d files

# Set DOTFILES variable if not already set
if not set -q DOTFILES
    set -gx DOTFILES "$HOME/.dotfiles"
end

# Source all fish configuration files from conf.d in order
# for file in (sort (glob $FISH_CONFIG/conf.d/*.fish))
#     if test -f "$file"
#         source "$file"
#     end
# end

# Initialize Starship prompt if available
if command -v starship >/dev/null 2>&1
    starship init fish | source
end

if status is-interactive
    # Interactive shell commands can go here
end
