[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

export VISUAL=vim
export EDITOR="$VISUAL"

if [ -f /usr/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh
fi

