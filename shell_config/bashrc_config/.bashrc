
# basic environment and path
export PATH="$HOME/.local/bin:$PATH"
shopt -s cdspell

# 中文环境
export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8

# 输入法环境变量
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMOIFIERS=@im=fcitx

# 别名
alias ls='ls --color=auto'
alias ll='ls -alF'
alias grep='grep --color=auto'

# ble.sh
[[ $- == *i* ]] && source ~/.local/share/blesh/ble.sh --noattach

# 初始化starship
eval "$(starship init bash)"

# ble.sh接管
[[ ${BLE_VERSION-} ]] && ble-attach
