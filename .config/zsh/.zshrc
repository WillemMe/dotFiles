#General
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/defaults.zsh" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/defaults.zsh"
# Functions
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/functions.zsh" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/functions.zsh"
#Completion
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/completion.zsh" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/completion.zsh"
# vi mode
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/vimmode.zsh" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/vimmode.zsh"
# fzf bindings
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/fzf-bindings.zsh" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/fzf-bindings.zsh"

# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/configs/zshnameddirrc"

## Source zsh plugins ##
source ~/.config/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
source ~/.config/zsh/plugins/ohmyzsh/lib/termsupport.zsh
source ~/.config/zsh/plugins/zsh-autopair/autopair.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
