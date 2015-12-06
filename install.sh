#!/bin/bash
# Install few bash files
Sudo="kdesu"

for f in bash*
    do f_name=$(basename ${f})
    install -m 644 ${f_name} $HOME/.${f_name}
    echo "${f_name}" 'Installed!'
done

[ -f locale.conf ] && ${Sudo} install -m 644 locale.conf /etc/locale.conf && echo 'locale.conf Installed!'
