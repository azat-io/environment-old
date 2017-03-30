[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

export VISUAL=vim
export EDITOR="$VISUAL"

if [ -e /usr/share/terminfo/x/xterm-256color  ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

if [ -f /usr/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh
fi
