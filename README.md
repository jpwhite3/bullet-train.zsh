<img src="http://rawgit.com/caiogondim/level-up-oh-my-zsh-theme/master/img/icon.svg" width="100%" />

# Level Up for oh-my-zsh <a href="http://webchat.freenode.net/?channels=LVLUP-sh" target="_blank"><img src="https://img.shields.io/badge/IRC-LVLUP–sh-1e72ff.svg?style=flat" height="20"></a>

Level Up is a [oh-my-zsh shell](https://github.com/robbyrussell/oh-my-zsh)
theme based on the
[Powerline Vim plugin](https://github.com/Lokaltog/vim-powerline). It aims for
simplicity, showing information only when it's relevant.

It currently shows:

- Current Python virtualenv; when using Pyenv and no active virtualenv shows the current Python version the shell uses
- Current Ruby version using chruby; version and gemset when on RVM or Rbenv
- Current Node.js version, through NVM (if present) or Node.js
- Git status
- Timestamp
- Current directory
- Background jobs
- Exit code of last command

If you want add some new feature, of fix some bug, open an issue and lets hack
together.

## Preview

![Preview](http://raw.github.com/caiogondim/level-up-oh-my-zsh-theme/master/img/preview.gif)

## Requirements

In order to use the theme, you will first need:

- A ZSH framework like [antigen](https://github.com/zsh-users/antigen), [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) or [zgen](https://github.com/tarjoilija/zgen)
- Make sure terminal is using 256-colors mode with `export TERM="xterm-256color"`

## Installing

### For oh-my-zsh users

1. Download the theme [here](http://raw.github.com/caiogondim/level-up-oh-my-zsh-theme/master/level-up.zsh-theme)

2. Put the file **level-up.zsh-theme** in **$ZSH_CUSTOM/themes/**

3. Configure the theme in your **~/.zshrc** file:

```bash
ZSH_THEME="level-up"
```

### For antigen users

Add the following snippet to your **.zshrc** somewhere after the line
`antigen use oh-my-zsh`.

```bash
antigen theme https://github.com/caiogondim/level-up-oh-my-zsh-theme level-up
```

### For Zgen users

If you're using [zgen](https://github.com/tarjoilija/zgen), add the following line to your **~/.zshrc** where you're adding your other zsh plugins **after** the line `zgen oh-my-zsh`.

```bash
zgen load caiogondim/level-up-oh-my-zsh-theme level-up
```

### For Zplug users

If you're using [zplug](https://github.com/zplug/zplug), add the following line
to your **~/.zshrc** where you're adding your other zsh plugins.

```bash
setopt prompt_subst # Make sure prompt is able to be generated properly.
zplug "caiogondim/level-up.zsh", use:level-up.zsh-theme, defer:3 # defer until other plugins like oh-my-zsh is loaded
```

## Options

Level Up is configurable. You can change colors and which segments you want
or don't want to see. All options must be overridden in your **.zshrc** file.

### Order

`LVLUP_PROMPT_ORDER` defines order of prompt segments. Use zsh array
syntax to specify your own order, e.g:

```bash
LVLUP_PROMPT_ORDER=(
  git
  context
  dir
  time
)
```

NOTE: You do not need to specify _end_ segment - it will be added automatically. With this you can also specify custom segments.

### Prompt

| Variable                     | Default | Meaning                                          |
| ---------------------------- | ------- | ------------------------------------------------ |
| `LVLUP_PROMPT_CHAR`          | `\$`    | Character to be show before any command          |
| `LVLUP_PROMPT_ROOT`          | `true`  | Highlight if running as root                     |
| `LVLUP_PROMPT_SEPARATE_LINE` | `true`  | Make the prompt span across two lines            |
| `LVLUP_PROMPT_ADD_NEWLINE`   | `true`  | Adds a newline character before each prompt line |

### Status

| Variable                 | Default | Meaning                                                            |
| ------------------------ | ------- | ------------------------------------------------------------------ |
| `LVLUP_STATUS_EXIT_SHOW` | `false` | Show/hide exit code of last command                                |
| `LVLUP_STATUS_BG`        | `green` | Background color                                                   |
| `LVLUP_STATUS_ERROR_BG`  | `red`   | Background color of segment when last command exited with an error |
| `LVLUP_STATUS_FG`        | `black` | Foreground color                                                   |

### Time

| Variable          | Default | Meaning                                 |
| ----------------- | ------- | --------------------------------------- |
| `LVLUP_TIME_12HR` | `false` | Format time using 12-hour clock (am/pm) |
| `LVLUP_TIME_BG`   | `white` | Background color                        |
| `LVLUP_TIME_FG`   | `black` | Foreground color                        |

### Context

| Variable                     | Default   | Meaning                                                                                          |
| ---------------------------- | --------- | ------------------------------------------------------------------------------------------------ |
| `LVLUP_CONTEXT_BG`           | `black`   | Background color                                                                                 |
| `LVLUP_CONTEXT_FG`           | `default` | Foreground color                                                                                 |
| `LVLUP_CONTEXT_DEFAULT_USER` | none      | Default user. If you are running with other user other than default, the segment will be showed. |
| `LVLUP_CONTEXT_HOSTNAME`     | `%m`      | Hostname. Set %M to display the full qualified domain name.                                      |
| `LVLUP_IS_SSH_CLIENT`        | none      | If `true`, the segment will be showed.                                                           |

### Python virtualenv (+Pyenv)

| Variable                  | Default  | Meaning               |
| ------------------------- | -------- | --------------------- |
| `LVLUP_VIRTUALENV_BG`     | `yellow` | Background color      |
| `LVLUP_VIRTUALENV_FG`     | `white`  | Foreground color      |
| `LVLUP_VIRTUALENV_PREFIX` | `🐍`     | Prefix of the segment |

### node.js nvm

| Variable           | Default | Meaning               |
| ------------------ | ------- | --------------------- |
| `LVLUP_NVM_BG`     | `green` | Background color      |
| `LVLUP_NVM_FG`     | `white` | Foreground color      |
| `LVLUP_NVM_PREFIX` | `"⬡ "`  | Prefix of the segment |

### Ruby RVM/Rbenv

| Variable            | Default   | Meaning               |
| ------------------- | --------- | --------------------- |
| `LVLUP_RUBY_BG`     | `magenta` | Background color      |
| `LVLUP_RUBY_FG`     | `white`   | Foreground color      |
| `LVLUP_RUBY_PREFIX` | `"♦"`     | Prefix of the segment |

### Go

| Variable          | Default | Meaning               |
| ----------------- | ------- | --------------------- |
| `LVLUP_GO_BG`     | `green` | Background color      |
| `LVLUP_GO_FG`     | `white` | Foreground color      |
| `LVLUP_GO_PREFIX` | `go`    | Prefix of the segment |

### AWS Profile

Displays which AWS (Amazon Web Services) credentials profile is currently set.
This environment var is used by aws-cli and other tools to use the right access keys and other parameters.

| Variable           | Default  | Meaning               |
| ------------------ | -------- | --------------------- |
| `LVLUP_AWS_BG`     | `yellow` | Background color      |
| `LVLUP_AWS_FG`     | `black`  | Foreground color      |
| `LVLUP_AWS_PREFIX` | `☁️`     | Prefix of the segment |

### Dir

| Variable                 | Default | Meaning                                                                                   |
| ------------------------ | ------- | ----------------------------------------------------------------------------------------- |
| `LVLUP_DIR_BG`           | `blue`  | Background color                                                                          |
| `LVLUP_DIR_FG`           | `white` | Foreground color                                                                          |
| `LVLUP_DIR_CONTEXT_SHOW` | `false` | Show user and machine in an SCP formatted style                                           |
| `LVLUP_DIR_EXTENDED`     | `1`     | Extended path (0=short path, 1=medium path, 2=complete path, everything else=medium path) |

### Git

| Variable                            | Default                  | Meaning                                                               |
| ----------------------------------- | ------------------------ | --------------------------------------------------------------------- |
| `LVLUP_GIT_COLORIZE_DIRTY`          | `false`                  | Set `LVLUP_GIT_BG` to `LVLUP_GIT_COLORIZE_DIRTY_COLOR` in dirty state |
| `LVLUP_GIT_COLORIZE_DIRTY_BG_COLOR` | `yellow`                 | `LVLUP_GIT_BG` in dirty state                                         |
| `LVLUP_GIT_COLORIZE_DIRTY_FG_COLOR` | `black`                  | `LVLUP_GIT_FG` in dirty state                                         |
| `LVLUP_GIT_BG`                      | `white`                  | Background color                                                      |
| `LVLUP_GIT_FG`                      | `black`                  | Foreground color                                                      |
| `LVLUP_GIT_PROMPT_CMD`              | `git_prompt_info`        | Function to display details about your git segment.                   |
| `LVLUP_GIT_EXTENDED`                | `true`                   |
| `LVLUP_GIT_PREFIX`                  | `""`                    | Prefix                                                                |
| `LVLUP_GIT_SUFFIX`                  | `""`                     | Suffix                                                                |
| `LVLUP_GIT_DIRTY`                   | `"✘"`                    | Icon for dirty state                                                  |
| `LVLUP_GIT_CLEAN`                   | `"✔"`                    | Icon for clean state                                                  |
| `LVLUP_GIT_ADDED`                   | `"%F{green}✚%F{black}"`  | Icon for added files on stage                                         |
| `LVLUP_GIT_MODIFIED`                | `"%F{blue}✹%F{black}"`   | Icon for modified files                                               |
| `LVLUP_GIT_DELETED`                 | `"%F{red}✖%F{black}"`    | Icon for delete files on stage                                        |
| `LVLUP_GIT_UNTRACKED`               | `"%F{yellow}✭%F{black}"` | Icon for untracked files                                              |
| `LVLUP_GIT_RENAMED`                 | `"➜"`                    | Icon for renamed                                                      |
| `LVLUP_GIT_UNMERGED`                | `"═"`                    | Icon for unmerged state                                               |
| `LVLUP_GIT_AHEAD`                   | `" ⬆"`                   | Icon for ahead state from remote                                      |
| `LVLUP_GIT_BEHIND`                  | `" ⬇"`                   | Icon for behind state from remote                                     |
| `LVLUP_GIT_DIVERGED`                | `" ⬍"`                   | Icon for diverged state from remote                                   |

The git prompt can be disabled for a specific repository by setting a git config flag: `git config oh-my-zsh.hide-status 1`. This is useful to avoid performance issues for particularly huge repositories.

### Command execution time

| Variable                  | Default  | Meaning                                                                                                                         |
| ------------------------- | -------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `LVLUP_EXEC_TIME_ELAPSED` | 5        | Minimum elapsed time of command execution. If the execution time of a command is smaller than this, the segment will be hidden. |
| `LVLUP_EXEC_TIME_BG`      | `yellow` | Background color                                                                                                                |
| `LVLUP_EXEC_TIME_FG`      | `black`  | Foreground color                                                                                                                |

## Wiki

- [FAQ](https://github.com/caiogondim/level-up-oh-my-zsh-theme/wiki/FAQ)
- [Screenshots](https://github.com/caiogondim/level-up-oh-my-zsh-theme/wiki/Screenshots)
- [Tips](https://github.com/caiogondim/level-up-oh-my-zsh-theme/wiki/Tips)

## Contributors

That project was originally a fork from
[Powerline](https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme), but
most of the code was later erased and its now more closely related to

## Credits

This theme is highly inspired by the following themes:

- [Powerline](https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme)
- [Agnoster](https://gist.github.com/agnoster/3712874)
