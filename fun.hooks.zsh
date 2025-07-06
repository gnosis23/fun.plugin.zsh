function _echo_pre() {
    echo "pre>"
}

# 注册 precmd 函数
typeset -a precmd_functions
precmd_functions+=(_echo_pre)
