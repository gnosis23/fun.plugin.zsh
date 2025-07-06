# fun.plugin.zsh

a demo zsh plugin

## Installation

Clone the repository into your omz plugins directory:

```bash
git clone git@github.com:gnosis23/fun.plugin.zsh.git $ZSH_CUSTOM/plugins/fun
```

Add `fun` to your `~/.zshrc` file:

```bash
plugins=(git bundler fun)
```

Install

```bash
bash ./install.sh
```

Reload

```bash
source ~/.zshrc
```

## Configuration

### FUN_MESSAGE

change greeting message

```bash
export FUN_GREETING_MESSAGE="hello"
```

### Pre-Hooks

run before every command

```bash
# add to .zshrc
source $ZSH_CUSTOM/plugins/fun/fun.hooks.zsh
```

## Usage

- Typing `ctrl+]` in zsh. 😆
