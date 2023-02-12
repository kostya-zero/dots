function fish_prompt
    set -q fish_prompt_pwd_dir_length
    or set -lx fish_prompt_pwd_dir_length 0
    set gitbgcolor (set_color -b normal)
    set gitfgcolor (set_color white)
    set spacer " "

    set -g __fish_git_prompt_showuntrackedfiles true
    set -g __fish_git_prompt_showupstream informative
    set -g __fish_git_prompt_char_stateseparator " | "
    set -g __fish_git_prompt_describe_style branch
    set gitprompt (fish_git_prompt)

    set separator ""
    if test -z $gitprompt
        set gitprompt ""
    else
        set gitbgcolor (set_color -b yellow)
        set gitfgcolor (set_color white)
        set spacer ""
    end

    printf "%s%s %s@%s %s%s%s%s%s %s %s%s%s%s%s%s" \
        (set_color -b black) (set_color white) $USER $hostname (set_color -b white) (set_color black) $separator \
        (set_color -b white) (set_color black) (prompt_pwd)  $gitbgcolor $gitfgcolor $separator $spacer
    if test -n $gitprompt
        printf "%s%s%s %s%s%s%s%s " (set_color -b yellow) (set_color black) $gitprompt (set_color -b normal) (set_color yellow) $separator \
            (set_color -b normal) (set_color normal)
    end
end
