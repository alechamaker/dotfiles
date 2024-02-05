# Put your custom themes in this folder.
# See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization#overriding-and-adding-themes
ZSH_GIT_PROMPT_FORCE_BLANK=1
ZSH_GIT_PROMPT_SHOW_STASH=1
ZSH_GIT_PROMPT_SHOW_UPSTREAM="symbol"

ZSH_THEME_GIT_PROMPT_PREFIX="%B %b"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR="| "
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_UPSTREAM_SYMBOL=" %{$fg_bold[yellow]%}⟳ "
ZSH_THEME_GIT_PROMPT_UPSTREAM_PREFIX="%{$fg[yellow]%} ⤳ "
ZSH_THEME_GIT_PROMPT_UPSTREAM_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DETACHED="%{$fg_no_bold[cyan]%}:"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_no_bold[cyan]%}↓"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_no_bold[cyan]%}↑"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}●"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg[red]%}✚"
ZSH_THEME_GIT_PROMPT_UNTRACKED="…"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[blue]%}⚑"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"

function exit_code(){
  [[ $? == 0 ]] && echo "$fg[yellow]Ɛ> " || echo "$fg[red]Ɛ> "
}

NL=$'\n'
WIDTH=$(($COLUMNS/16))
PRMPT=$(exit_code)
C1="#ca0cff"
C2="#4D2DB7"
C3="#9D44C0"
C4="#e27cff"
G="#392467"


# top_right='├$(print -r -- "${(pl:$WIDTH::─:)}")'
date_str='📅 $(date +%a\ %b\ %d\ "⌚ "%R:%S) %F{$G}├─'
t1_git='╭$(print -r -- "${(pl:$WIDTH::─:)}")┤'
t2_git='│ %{%F{$C3}%}👀%n%{$reset_color%}@%F{$C2}%m%F{$G}'
t3_git='╰┤%{$reset_color%}$(gitprompt)%F{$G}'
t4_git=' ╰┤ %F{$C3}%(3~|%-1~/…/%2~|%3~) %F{$G}'

t1_reg='╭$(print -r -- "${(pl:$WIDTH::─:)}")┤'
t2_reg='│ %{%F{$C3}%}👀%n%{$reset_color%}@%F{$C2}%m%F{$G}'
t3_reg='╰┤ %F{$C3}%(3~|%-1~/…/%2~|%3~) %F{$G}'


GIT_PROMPT="%{%F{#392467}%}${t1_git}%F{#FFD1E3} ${date_str} %F{#392467}
${t2_git}
${t3_git}
${t4_git} $(exit_code)%{$reset_color%}"

REG_PROMPT="%{%F{#392467}%}${t1_reg}%F{#FFD1E3} ${date_str} %F{#392467}
${t2_reg}
${t3_reg} $(exit_code)%{$reset_color%}"

function precmd() {
  [[ -n $(gitprompt) ]] && PROMPT=$GIT_PROMPT || PROMPT=$REG_PROMPT
}
