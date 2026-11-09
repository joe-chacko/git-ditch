# Add plugin directory to PATH so `git ditch` is discoverable as a git subcommand
0="${ZERO:-${${0:A}:-$(dirname "${funcfiletrace[1]%:*}")}}"
0="${0:A}"
path+=("${0:h}")

# Tab completion for `git ditch` and `git-ditch`
_git_ditch() {
    _arguments \
        '(-f --force)'{-f,--force}'[Force delete branch even if unmerged]' \
        '(-h --help)'{-h,--help}'[Display help message]'
}

_git-ditch() {
    _git_ditch "$@"
}
