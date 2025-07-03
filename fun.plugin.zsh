#!/usr/bin/env zsh

# Fun ASCII art function
function _do_echo_fun() {
    echo "                                    "
    echo " ███████ ██    ██ ███    ██         "
    echo " ██      ██    ██ ████   ██         "
    echo " █████   ██    ██ ██ ██  ██         "
    echo " ██      ██    ██ ██  ██ ██         "
    echo " ██       ██████  ██   ████         "
    echo "                                    "
    zle reset-prompt
}

# 普通的 shell 函数（比如 _do_echo_fun）是不能直接通过 bindkey 绑定到快捷键上的。
# bindkey 只能绑定 ZLE widget。
# 因此，zle -N _do_echo_fun 就像一座桥梁，它告诉 ZLE："嘿，这里有一个叫做
# _do_echo_fun 的函数，现在请把它当作一个你可以调用的新动作（widget）。"
# 一旦注册成功，你就可以通过 bindkey 命令，让用户按下一个快捷键（如 Ctrl+O）时，
# 直接执行这个复杂的、自定义的动作。
zle -N _do_echo_fun
bindkey '^o' _do_echo_fun
