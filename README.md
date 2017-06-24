Installation
===============

Symlinking or placing this repo at .config on MacOS should be enough to configure most tools.
Those that require more effort will be mentioned in the exceptions section and I planning to keep that list as small as possible.

Exceptions
-------------
Currently in order to use have zsh look in $HOME/config at startup, the following must be placed in $HOME/.zshenv.

```
# Don't load default zshrc
setopt no_global_rcs

# Environment variables
export XDG_CONFIG_HOME="$HOME/.config"
# Move zsh config to $XDG_CONFIG_HOME
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
```
