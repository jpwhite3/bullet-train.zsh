# ------------------------------------------------------------------------------
# CONFIGURATION
# The default configuration, that can be overwrite in your .zshrc file
# ------------------------------------------------------------------------------

VIRTUAL_ENV_DISABLE_PROMPT=true

# Define order and content of prompt
if [ ! -n "${LVLUP_PROMPT_ORDER+1}" ]; then
  LVLUP_PROMPT_ORDER=(
    time
    context
    dir
    ruby
    java
    virtualenv
    nvm
    aws
    go
    rust
    git
    status
    cmd_exec_time
  )
fi

# PROMPT
if [ ! -n "${LVLUP_PROMPT_CHAR+1}" ]; then
  LVLUP_PROMPT_CHAR="\$ >"
fi
if [ ! -n "${LVLUP_PROMPT_ROOT+1}" ]; then
  LVLUP_PROMPT_ROOT=true
fi
if [ ! -n "${LVLUP_PROMPT_SEPARATE_LINE+1}" ]; then
  LVLUP_PROMPT_SEPARATE_LINE=true
fi
if [ ! -n "${LVLUP_PROMPT_ADD_NEWLINE+1}" ]; then
  LVLUP_PROMPT_ADD_NEWLINE=true
fi

# STATUS
if [ ! -n "${LVLUP_STATUS_EXIT_SHOW+1}" ]; then
  LVLUP_STATUS_EXIT_SHOW=false
fi
if [ ! -n "${LVLUP_STATUS_BG+1}" ]; then
  LVLUP_STATUS_BG=green
fi
if [ ! -n "${LVLUP_STATUS_ERROR_BG+1}" ]; then
  LVLUP_STATUS_ERROR_BG=red
fi
if [ ! -n "${LVLUP_STATUS_FG+1}" ]; then
  LVLUP_STATUS_FG=white
fi

# TIME
if [ ! -n "${LVLUP_TIME_BG+1}" ]; then
  LVLUP_TIME_BG=white
fi
if [ ! -n "${LVLUP_TIME_FG+1}" ]; then
  LVLUP_TIME_FG=black
fi

# VIRTUALENV
if [ ! -n "${LVLUP_VIRTUALENV_BG+1}" ]; then
  LVLUP_VIRTUALENV_BG=yellow
fi
if [ ! -n "${LVLUP_VIRTUALENV_FG+1}" ]; then
  LVLUP_VIRTUALENV_FG=white
fi
if [ ! -n "${LVLUP_VIRTUALENV_PREFIX+1}" ]; then
  LVLUP_VIRTUALENV_PREFIX="PY "
fi

# NVM
if [ ! -n "${LVLUP_NVM_BG+1}" ]; then
  LVLUP_NVM_BG=green
fi
if [ ! -n "${LVLUP_NVM_FG+1}" ]; then
  LVLUP_NVM_FG=white
fi
if [ ! -n "${LVLUP_NVM_PREFIX+1}" ]; then
  LVLUP_NVM_PREFIX="NODE "
fi

# AWS
if [ ! -n "${LVLUP_AWS_BG+1}" ]; then
  LVLUP_AWS_BG=yellow
fi
if [ ! -n "${LVLUP_AWS_FG+1}" ]; then
  LVLUP_AWS_FG=black
fi
if [ ! -n "${LVLUP_AWS_PREFIX+1}" ]; then
  LVLUP_AWS_PREFIX="AWS "
fi

# RUBY
if [ ! -n "${LVLUP_RUBY_BG+1}" ]; then
  LVLUP_RUBY_BG=red
fi
if [ ! -n "${LVLUP_RUBY_FG+1}" ]; then
  LVLUP_RUBY_FG=white
fi
if [ ! -n "${LVLUP_RUBY_PREFIX+1}" ]; then
  LVLUP_RUBY_PREFIX="RB"
fi

# Go
if [ ! -n "${LVLUP_GO_BG+1}" ]; then
  LVLUP_GO_BG=cyan
fi
if [ ! -n "${LVLUP_GO_FG+1}" ]; then
  LVLUP_GO_FG=white
fi
if [ ! -n "${LVLUP_GO_PREFIX+1}" ]; then
  LVLUP_GO_PREFIX="GO "
fi

# Java
if [ ! -n "${LVLUP_JAVA_BG+1}" ]; then
  LVLUP_JAVA_BG=red
fi
if [ ! -n "${LVLUP_JAVA_FG+1}" ]; then
  LVLUP_JAVA_FG=white
fi
if [ ! -n "${LVLUP_JAVA_PREFIX+1}" ]; then
  LVLUP_JAVA_PREFIX="JDK"
fi

# Rust
if [ ! -n "${LVLUP_RUST_BG+1}" ]; then
  LVLUP_RUST_BG=red
fi
if [ ! -n "${LVLUP_RUST_FG+1}" ]; then
  LVLUP_RUST_FG=white
fi
if [ ! -n "${LVLUP_RUST_PREFIX+1}" ]; then
  LVLUP_RUST_PREFIX="RUST "
fi

# Dotnet
if [ ! -n "${LVLUP_DOTNET_BG+1}" ]; then
  LVLUP_DOTNET_BG=blue
fi
if [ ! -n "${LVLUP_DOTNET_FG+1}" ]; then
  LVLUP_DOTNET_FG=red
fi
if [ ! -n "${LVLUP_DOTNET_PREFIX+1}" ]; then
  LVLUP_DOTNET_PREFIX=".NET "
fi

# DIR
if [ ! -n "${LVLUP_DIR_BG+1}" ]; then
  LVLUP_DIR_BG=blue
fi
if [ ! -n "${LVLUP_DIR_FG+1}" ]; then
  LVLUP_DIR_FG=white
fi
if [ ! -n "${LVLUP_DIR_CONTEXT_SHOW+1}" ]; then
  LVLUP_DIR_CONTEXT_SHOW=false
fi
if [ ! -n "${LVLUP_DIR_EXTENDED+1}" ]; then
  LVLUP_DIR_EXTENDED=1
fi

# GIT
if [ ! -n "${LVLUP_GIT_COLORIZE_DIRTY+1}" ]; then
  LVLUP_GIT_COLORIZE_DIRTY=false
fi
if [ ! -n "${LVLUP_GIT_COLORIZE_DIRTY_FG_COLOR+1}" ]; then
  LVLUP_GIT_COLORIZE_DIRTY_FG_COLOR=black
fi
if [ ! -n "${LVLUP_GIT_COLORIZE_DIRTY_BG_COLOR+1}" ]; then
  LVLUP_GIT_COLORIZE_DIRTY_BG_COLOR=yellow
fi
if [ ! -n "${LVLUP_GIT_BG+1}" ]; then
  LVLUP_GIT_BG=white
fi
if [ ! -n "${LVLUP_GIT_FG+1}" ]; then
  LVLUP_GIT_FG=black
fi
if [ ! -n "${LVLUP_GIT_EXTENDED+1}" ]; then
  LVLUP_GIT_EXTENDED=true
fi
if [ ! -n "${LVLUP_GIT_PROMPT_CMD+1}" ]; then
  LVLUP_GIT_PROMPT_CMD="\$(git_prompt_info)"
fi

# CONTEXT
if [ ! -n "${LVLUP_CONTEXT_BG+1}" ]; then
  LVLUP_CONTEXT_BG=magenta
fi
if [ ! -n "${LVLUP_CONTEXT_FG+1}" ]; then
  LVLUP_CONTEXT_FG=white
fi
if [ ! -n "${LVLUP_CONTEXT_HOSTNAME+1}" ]; then
  LVLUP_CONTEXT_HOSTNAME=%m
fi

# GIT PROMPT
if [ ! -n "${LVLUP_GIT_PREFIX+1}" ]; then
  ZSH_THEME_GIT_PROMPT_PREFIX="\ue0a0 "
else
  ZSH_THEME_GIT_PROMPT_PREFIX=$LVLUP_GIT_PREFIX
fi
if [ ! -n "${LVLUP_GIT_SUFFIX+1}" ]; then
  ZSH_THEME_GIT_PROMPT_SUFFIX=""
else
  ZSH_THEME_GIT_PROMPT_SUFFIX=$LVLUP_GIT_SUFFIX
fi
if [ ! -n "${LVLUP_GIT_DIRTY+1}" ]; then
  ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}╪%F{black}"
else
  ZSH_THEME_GIT_PROMPT_DIRTY=$LVLUP_GIT_DIRTY
fi
if [ ! -n "${LVLUP_GIT_CLEAN+1}" ]; then
  ZSH_THEME_GIT_PROMPT_CLEAN=" %F{green}═%F{black}"
else
  ZSH_THEME_GIT_PROMPT_CLEAN=$LVLUP_GIT_CLEAN
fi
if [ ! -n "${LVLUP_GIT_ADDED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_ADDED=" %F{green}┼%F{black}"
else
  ZSH_THEME_GIT_PROMPT_ADDED=$LVLUP_GIT_ADDED
fi
if [ ! -n "${LVLUP_GIT_MODIFIED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_MODIFIED=" %F{blue}≈%F{black}"
else
  ZSH_THEME_GIT_PROMPT_MODIFIED=$LVLUP_GIT_MODIFIED
fi
if [ ! -n "${LVLUP_GIT_DELETED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_DELETED=" %F{red}─%F{black}"
else
  ZSH_THEME_GIT_PROMPT_DELETED=$LVLUP_GIT_DELETED
fi
if [ ! -n "${LVLUP_GIT_UNTRACKED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_UNTRACKED=" %F{yellow}Θ%F{black}"
else
  ZSH_THEME_GIT_PROMPT_UNTRACKED=$LVLUP_GIT_UNTRACKED
fi
if [ ! -n "${LVLUP_GIT_RENAMED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_RENAMED=" ->"
else
  ZSH_THEME_GIT_PROMPT_RENAMED=$LVLUP_GIT_RENAMED
fi
if [ ! -n "${LVLUP_GIT_UNMERGED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_UNMERGED=" ■"
else
  ZSH_THEME_GIT_PROMPT_UNMERGED=$LVLUP_GIT_UNMERGED
fi
if [ ! -n "${LVLUP_GIT_AHEAD+1}" ]; then
  ZSH_THEME_GIT_PROMPT_AHEAD=" »"
else
  ZSH_THEME_GIT_PROMPT_AHEAD=$LVLUP_GIT_AHEAD
fi
if [ ! -n "${LVLUP_GIT_BEHIND+1}" ]; then
  ZSH_THEME_GIT_PROMPT_BEHIND=" «"
else
  ZSH_THEME_GIT_PROMPT_BEHIND=$LVLUP_GIT_BEHIND
fi
if [ ! -n "${LVLUP_GIT_DIVERGED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_DIVERGED=" ±"
else
  ZSH_THEME_GIT_PROMPT_DIVERGED=$LVLUP_GIT_PROMPT_DIVERGED
fi

# COMMAND EXECUTION TIME
if [ ! -n "${LVLUP_EXEC_TIME_ELAPSED+1}" ]; then
  LVLUP_EXEC_TIME_ELAPSED=5
fi
if [ ! -n "${LVLUP_EXEC_TIME_BG+1}" ]; then
  LVLUP_EXEC_TIME_BG=yellow
fi
if [ ! -n "${LVLUP_EXEC_TIME_FG+1}" ]; then
  LVLUP_EXEC_TIME_FG=black
fi


# ------------------------------------------------------------------------------
# SEGMENT DRAWING
# A few functions to make it easy and re-usable to draw segmented prompts
# ------------------------------------------------------------------------------

CURRENT_BG='NONE'
SEGMENT_SEPARATOR='░'

# Begin a segment
# Takes three arguments, background, foreground and text. All of them can be omitted,
# rendering default background/foreground and no text.
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n " %{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

# End the prompt, closing any open segments
prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

# ------------------------------------------------------------------------------
# PROMPT COMPONENTS
# Each component will draw itself, and hide itself if no information needs
# to be shown
# ------------------------------------------------------------------------------

# Context: user@hostname (who am I and where am I)
context() {
  local user="$(whoami)"
  [[ "$user" != "$LVLUP_CONTEXT_DEFAULT_USER" || -n "$LVLUP_IS_SSH_CLIENT" ]] && echo -n "${user}@$LVLUP_CONTEXT_HOSTNAME"
}

prompt_context() {
  local _context="$(context)"
  [[ -n "$_context" ]] && prompt_segment $LVLUP_CONTEXT_BG $LVLUP_CONTEXT_FG "$_context"
}

# Based on http://stackoverflow.com/a/32164707/3859566
function displaytime {
  local T=$1
  local D=$((T/60/60/24))
  local H=$((T/60/60%24))
  local M=$((T/60%60))
  local S=$((T%60))
  [[ $D > 0 ]] && printf '%dd' $D
  [[ $H > 0 ]] && printf '%dh' $H
  [[ $M > 0 ]] && printf '%dm' $M
  printf '%ds' $S
}

# Prompt previous command execution time
preexec() {
  cmd_timestamp=`date +%s`
}

precmd() {
  local stop=`date +%s`
  local start=${cmd_timestamp:-$stop}
  let LVLUP_last_exec_duration=$stop-$start
  cmd_timestamp=''
}

prompt_cmd_exec_time() {
  [ $LVLUP_last_exec_duration -gt $LVLUP_EXEC_TIME_ELAPSED ] && prompt_segment $LVLUP_EXEC_TIME_BG $LVLUP_EXEC_TIME_FG "$(displaytime $LVLUP_last_exec_duration)"
}

# Git
prompt_git() {
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" == "1" ]]; then
    return
  fi

  local ref dirty mode repo_path git_prompt
  repo_path=$(git rev-parse --git-dir 2>/dev/null)

  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    if [[ $LVLUP_GIT_COLORIZE_DIRTY == true && -n $(git status --porcelain --ignore-submodules) ]]; then
      LVLUP_GIT_BG=$LVLUP_GIT_COLORIZE_DIRTY_BG_COLOR
      LVLUP_GIT_FG=$LVLUP_GIT_COLORIZE_DIRTY_FG_COLOR
    fi
    prompt_segment $LVLUP_GIT_BG $LVLUP_GIT_FG

    eval git_prompt=${LVLUP_GIT_PROMPT_CMD}
    if [[ $LVLUP_GIT_EXTENDED == true ]]; then
      echo -n ${git_prompt}$(git_prompt_status)
    else
      echo -n ${git_prompt}
    fi
  fi
}

# Dir: current working directory
prompt_dir() {
  local dir=''
  local _context="$(context)"
  [[ $LVLUP_DIR_CONTEXT_SHOW == true && -n "$_context" ]] && dir="${dir}${_context}:"

  if [[ $LVLUP_DIR_EXTENDED == 0 ]]; then
    #short directories
    dir="${dir}%1~"
  elif [[ $LVLUP_DIR_EXTENDED == 2 ]]; then
    #long directories
    dir="${dir}%0~"
  else
    #medium directories (default case)
    dir="${dir}%4(c:...:)%3c"
  fi

  prompt_segment $LVLUP_DIR_BG $LVLUP_DIR_FG $dir
}

# RUBY
# RVM: only shows RUBY info if on a gemset that is not the default one
# RBENV: shows current ruby version active in the shell; also with non-global gemsets if any is active
# CHRUBY: shows current ruby version active in the shell
prompt_ruby() {
  if command -v rvm-prompt > /dev/null 2>&1; then
    prompt_segment $LVLUP_RUBY_BG $LVLUP_RUBY_FG $LVLUP_RUBY_PREFIX" $(rvm-prompt i v g)"
  elif command -v chruby > /dev/null 2>&1; then
    prompt_segment $LVLUP_RUBY_BG $LVLUP_RUBY_FG $LVLUP_RUBY_PREFIX"  $(chruby | sed -n -e 's/ \* //p')"
  elif command -v rbenv > /dev/null 2>&1; then
    current_gemset() {
      echo "$(rbenv gemset active 2&>/dev/null | sed -e 's/ global$//')"
    }

    if [[ -n $(current_gemset) ]]; then
      prompt_segment $LVLUP_RUBY_BG $LVLUP_RUBY_FG $LVLUP_RUBY_PREFIX" $(rbenv version | sed -e 's/ (set.*$//')"@"$(current_gemset)"
    else
      prompt_segment $LVLUP_RUBY_BG $LVLUP_RUBY_FG $LVLUP_RUBY_PREFIX" $(rbenv version | sed -e 's/ (set.*$//')"
    fi
  fi
}

# Go
prompt_go() {
  setopt extended_glob
  go_files=( *.go(#qN) )
  if [[ ($#go_files -gt 0 || -f Gopkg.toml || -d Godeps || -f glide.yaml) ]]; then
    if command -v go > /dev/null 2>&1; then
      prompt_segment $LVLUP_GO_BG $LVLUP_GO_FG $LVLUP_GO_PREFIX" $(go version | grep --colour=never -oE '[[:digit:]].[[:digit:]]+')"
    fi
  fi
}

# Java
prompt_java() {
  setopt extended_glob
  java_files=( *.java(#qN) )
  if [[ ($#java_files -gt 0 || -f build.gradle || -f pom.xml) ]]; then
    if command -v java > /dev/null 2>&1; then
      prompt_segment $LVLUP_JAVA_BG $LVLUP_JAVA_FG $LVLUP_JAVA_PREFIX" $(java -version 2>&1 | head -n 1 | awk -F '"' '{print $2}')"
    fi
  fi
}

# Rust
prompt_rust() {
  if [[ (-f Cargo.toml) ]]; then
    if command -v rustc > /dev/null 2>&1; then
      prompt_segment $LVLUP_RUST_BG $LVLUP_RUST_FG $LVLUP_RUST_PREFIX" $(rustc -V version | cut -d' ' -f2)"
    fi
  fi
}

# DOTNET
prompt_dotnet() {
  csharp_files=( *.cs(#qN) )
  dotnet_project_files=( *.csproj(#qN) )
  dotnet_solution_files=( *.sln(#qN) )
  if [[ ($#csharp_files -gt 0 || $#dotnet_project_files -gt 0 || $#dotnet_solution_files -gt 0) ]]; then
    if command -v dotnet > /dev/null 2>&1; then
      prompt_segment $LVLUP_RUST_BG $LVLUP_RUST_FG $LVLUP_RUST_PREFIX" $(dotnet --version | cut -d' ' -f2)"
    fi
  fi
}

# Python Virtualenv: current working virtualenv or default python
prompt_virtualenv() {
  python_files=( *.py(#qN) )
  pipenv_files=( Pipfile.lock(#qN) )
  poetry_files=( poetry.lock(#qN) )
  local virtualenv_path="$VIRTUAL_ENV"
  if [[ -n $virtualenv_path && -n $VIRTUAL_ENV_DISABLE_PROMPT ]]; then
    prompt_segment $LVLUP_VIRTUALENV_BG $LVLUP_VIRTUALENV_FG $LVLUP_VIRTUALENV_PREFIX" $(basename $virtualenv_path)"
  elif which pyenv &> /dev/null; then
    if [[ "$(pyenv version | sed -e 's/ (set.*$//' | tr '\n' ' ' | sed 's/.$//')" != "system" ]]; then
      prompt_segment $LVLUP_VIRTUALENV_BG $LVLUP_VIRTUALENV_FG $LVLUP_VIRTUALENV_PREFIX" $(pyenv version | sed -e 's/ (set.*$//' | tr '\n' ' ' | sed 's/.$//')"
    fi
  elif [[ ($#python_files -gt 0) ]]; then
    if command -v python > /dev/null 2>&1; then
      prompt_segment $LVLUP_VIRTUALENV_BG $LVLUP_VIRTUALENV_FG $LVLUP_VIRTUALENV_PREFIX" $(python --version | cut -d' ' -f2)"
    fi
  elif [[ ($#pipenv_files -gt 0) ]]; then
    if command -v pipenv > /dev/null 2>&1; then
      prompt_segment $LVLUP_VIRTUALENV_BG $LVLUP_VIRTUALENV_FG $LVLUP_VIRTUALENV_PREFIX" $(pipenv run python --version | cut -d' ' -f2)"
    fi
  elif [[ ($#poetry_files -gt 0) ]]; then
    if command -v poetry > /dev/null 2>&1; then
      prompt_segment $LVLUP_VIRTUALENV_BG $LVLUP_VIRTUALENV_FG $LVLUP_VIRTUALENV_PREFIX" $(poetry run python --version | cut -d' ' -f2)"
    fi
  fi
}

# NVM: Node version manager
prompt_nvm() {
  local nvm_prompt
  if type nvm >/dev/null 2>&1; then
    nvm_prompt=$(nvm current 2>/dev/null)
    [[ "${nvm_prompt}x" == "x" || "${nvm_prompt}" == "system" ]] && return
  elif type node >/dev/null 2>&1; then
    nvm_prompt="$(node --version)"
  else
    return
  fi
  nvm_prompt=${nvm_prompt}
  prompt_segment $LVLUP_NVM_BG $LVLUP_NVM_FG $LVLUP_NVM_PREFIX$nvm_prompt
}

#AWS Profile
prompt_aws() {
  local spaces="  "

  if [[ -n "$AWS_PROFILE" ]]; then
    prompt_segment $LVLUP_AWS_BG $LVLUP_AWS_FG $LVLUP_AWS_PREFIX$spaces$AWS_PROFILE
  fi
}

prompt_time() {
  if [[ $LVLUP_TIME_12HR == true ]]; then
    prompt_segment $LVLUP_TIME_BG $LVLUP_TIME_FG %D{%r}
  else
    prompt_segment $LVLUP_TIME_BG $LVLUP_TIME_FG %D{%T}
  fi
}

# Status:
# - was there an error
# - am I root
# - are there background jobs?
prompt_status() {
  local symbols
  symbols=()
  [[ $RETVAL -ne 0 && $LVLUP_STATUS_EXIT_SHOW != true ]] && symbols+="✘"
  [[ $RETVAL -ne 0 && $LVLUP_STATUS_EXIT_SHOW == true ]] && symbols+="✘ $RETVAL"
  [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%}⚡%f"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="⚙"

  if [[ -n "$symbols" && $RETVAL -ne 0 ]]; then
    prompt_segment $LVLUP_STATUS_ERROR_BG $LVLUP_STATUS_FG "$symbols"
  elif [[ -n "$symbols" ]]; then
    prompt_segment $LVLUP_STATUS_BG $LVLUP_STATUS_FG "$symbols"
  fi

}

# Prompt Character
prompt_chars() {
  local bt_prompt_chars="${LVLUP_PROMPT_CHAR}"

  if [[ $LVLUP_PROMPT_ROOT == true ]]; then
    bt_prompt_chars="%(!.%F{red}# .%F{green}${bt_prompt_chars}%f)"
  fi

  if [[ $LVLUP_PROMPT_SEPARATE_LINE == false ]]; then
    bt_prompt_chars="${bt_prompt_chars}"
  fi

  echo -n "$bt_prompt_chars"

  if [[ -n $LVLUP_PROMPT_CHAR ]]; then
    echo -n " "
  fi
}

# Prompt Line Separator
prompt_line_sep() {
  if [[ $LVLUP_PROMPT_SEPARATE_LINE == true ]]; then
    # newline wont print without a non newline character, so add a zero-width space
    echo -e '\n%{\u200B%}'
  fi
}

# ------------------------------------------------------------------------------
# MAIN
# Entry point
# ------------------------------------------------------------------------------

build_prompt() {
  RETVAL=$?
  for segment in $LVLUP_PROMPT_ORDER
  do
    prompt_$segment
  done
  prompt_end
}

NEWLINE='
'
PROMPT=''
[[ $LVLUP_PROMPT_ADD_NEWLINE == true ]] && PROMPT="$PROMPT$NEWLINE"
PROMPT="$PROMPT"'%{%f%b%k%}$(build_prompt)'
[[ $LVLUP_PROMPT_SEPARATE_LINE == true ]] && PROMPT="$PROMPT$NEWLINE"
PROMPT="$PROMPT"'%{${fg_bold[default]}%}'
[[ $LVLUP_PROMPT_SEPARATE_LINE == false ]] && PROMPT="$PROMPT "
PROMPT="$PROMPT"'$(prompt_chars)%{$reset_color%}'
