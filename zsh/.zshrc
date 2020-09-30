if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte-2.91.sh
fi

export EDITOR='vim'


### Added by Zplugin's installer
source ~/.zinit/bin/zinit.zsh
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zplugin's installer chunk

#
## Bundles from the default repo (robbyrussell's oh-my-zsh).
zplugin snippet OMZ::lib/git.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh

setopt promptsubst

zplugin snippet OMZ::lib/bzr.zsh
zplugin snippet OMZ::lib/clipboard.zsh
zplugin snippet OMZ::lib/compfix.zsh
zplugin snippet OMZ::lib/completion.zsh
zplugin snippet OMZ::lib/correction.zsh
zplugin snippet OMZ::lib/diagnostics.zsh
zplugin snippet OMZ::lib/directories.zsh
zplugin snippet OMZ::lib/functions.zsh
zplugin snippet OMZ::lib/grep.zsh
zplugin snippet OMZ::lib/history.zsh
zplugin snippet OMZ::lib/key-bindings.zsh
zplugin snippet OMZ::lib/misc.zsh
zplugin snippet OMZ::lib/nvm.zsh
zplugin snippet OMZ::lib/prompt_info_functions.zsh
zplugin snippet OMZ::lib/spectrum.zsh
zplugin snippet OMZ::lib/termsupport.zsh
zplugin snippet OMZ::lib/theme-and-appearance.zsh


zplugin snippet OMZ::plugins/autojump/autojump.plugin.zsh
zplugin snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh

zplugin load psprint/zsh-navigation-tools
## Load the theme.
zplugin snippet OMZ::themes/ys.zsh-theme
#
## Syntax highlighting bundle.
zplugin ice wait"0" blockf lucid
zplugin load zsh-users/zsh-completions

zplugin ice wait"0" atinit"zpcompinit; zpcdreplay" lucid
#zplugin light zdharma/fast-syntax-highlighting

zplugin ice wait"0" atload"_zsh_autosuggest_start" lucid
zplugin light zsh-users/zsh-autosuggestions

zplugin ice from"gh-r" as"program"; zplugin load junegunn/fzf-bin

zplugin load zdharma/history-search-multi-word
#
#
#zplugin load agkozak/agkozak-zsh-prompt
#

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

[ -f $HOME/.zshrc_export ] && source $HOME/.zshrc_export

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
