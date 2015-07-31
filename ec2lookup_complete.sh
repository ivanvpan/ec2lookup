_awslookup()
{
    local cur tags

    tags=`/etc/ansible/hosts | jq -r "._meta.hostvars | map(.ec2_tag_Name)[] | strings" | sort |xargs`

    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    opts="--help --verbose --version"

    COMPREPLY=( $(compgen -W "${tags}" -- ${cur}) )
    return 0
}

complete -F _awslookup awslookup
