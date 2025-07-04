#!/usr/bin/env zsh

# Fun ASCII art function
function _do_echo_fun() {
    local binary_path="$HOME/.config/fun-plugin-zsh/fun-bin"
    
    # Check if the binary exists
    if [[ ! -f "$binary_path" ]]; then
        echo "fun binary not found at $binary_path. Please run ./build.sh to build it." > /tmp/.fun_error
        return 1
    fi

    # Get user input
    local input=$(echo "${BUFFER:0:$CURSOR}" | tr '\n' ';')

    # Run the binary
    "$binary_path" "$input"
    
    # Replace the input with the completion time
    local completion_time=$(cat /tmp/fun_completion.txt)
    BUFFER="${completion_time}"
    CURSOR=$#BUFFER
    zle reset-prompt
}

# 普通的 shell 函数（比如 _do_echo_fun）是不能直接通过 bindkey 绑定到快捷键上的。
# bindkey 只能绑定 ZLE widget。
# 因此，zle -N _do_echo_fun 就像一座桥梁，它告诉 ZLE："嘿，这里有一个叫做
# _do_echo_fun 的函数，现在请把它当作一个你可以调用的新动作（widget）。"
# 一旦注册成功，你就可以通过 bindkey 命令，让用户按下一个快捷键（如 Ctrl+O）时，
# 直接执行这个复杂的、自定义的动作。
zle -N _do_echo_fun
bindkey '^i' _do_echo_fun
