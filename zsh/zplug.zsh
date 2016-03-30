zplug 'b4b4r07/zplug'

zplug 'NigoroJr/scripts', \
    from:bitbucket, \
    as:command, \
    use:'bin/*'

zplug 'NigoroJr/scripts', \
    from:bitbucket, \
    as:command, \
    use:'${(L)$( uname -s )}/*'

zplug 'NigoroJr/do-after', \
    as:command, \
    use:do-after
# Completion
zplug 'NigoroJr/do-after', \
    as:plugin

zplug 'b4b4r07/enhancd', \
    use:'enhancd.sh'

zplug 'junegunn/fzf', \
    as:command, \
    hook-build:'./install --bin >/dev/null', \
    use:'bin/fzf', \
    rename_to:'fzf', \
    if:'(( $+commands[go] ))'

zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    use:"*${(L)$(uname -s)}*amd64*", \
    rename_to:fzf, \
    if:'! (( $+commands[go] )) && ! [[ ${(L)$( uname -s )} =~ cygwin ]]'

zplug 'NigoroJr/d53982a4d0cf0848985b', \
    from:gist, \
    as:command, \
    use:goocl, \
    hook-build:'chmod 755 goocl'

zplug 'NigoroJr/644ae8775023be82544d', \
    from:gist, \
    as:command, \
    rename_to:sort-du, \
    use:sort_du.rb, \
    hook-build:'chmod 755 sort_du.rb'

zplug 'plugins/golang', \
    from:oh-my-zsh, \
    ignore:oh-my-zsh.sh, \
    nice:10

zplug 'plugins/pip', \
    from:oh-my-zsh, \
    ignore:'{oh-my-zsh.sh,plugins/pip/pip.plugin.zsh}', \
    nice:10

zplug 'zsh-users/zsh-syntax-highlighting', \
    nice:15

zplug 'rimraf/k', \
    use:k.sh

zplug 'knu/z', \
    use:'z.sh', \
    nice:10

zplug 'zsh-users/zaw'
zplug 'NigoroJr/zaw-z', nice:11, on:'zsh-users/zaw'
