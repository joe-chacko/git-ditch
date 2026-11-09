# git-ditch

An [Oh-My-Zsh](https://ohmyz.sh/) plugin for deleting your current Git branch and returning to the branch you came from (`git switch -`).

## Features

- **Safe by Default:** Automatically tries safe deletion (`git branch -d`).
- **Safety Rollback:** If the branch is not fully merged, it halts, leaves the branch intact, switches you back to it, and instructs you to use `-f` to force delete.
- **Force Delete Support:** Pass `-f` or `--force` (`git ditch -f`) to force delete (`git branch -D`).
- **Tab Completion:** Includes Zsh autocompletions for flags (`-f`, `--force`, `-h`, `--help`).

## Installation

### Oh-My-Zsh

1. Clone this repository into your custom plugins directory:

   ```bash
   git clone https://github.com/joe-chacko/git-ditch.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/git-ditch
   ```

2. Add `git-ditch` to the `plugins` list in your `~/.zshrc`:

   ```zsh
   plugins=(
     git
     git-ditch
     # other plugins...
   )
   ```

3. Reload your shell:

   ```bash
   source ~/.zshrc
   ```

### Standalone (without Oh-My-Zsh)

Copy `git-ditch` anywhere in your `$PATH` (e.g. `~/.local/bin`):

```bash
curl -fsSL https://raw.githubusercontent.com/joe-chacko/git-ditch/main/git-ditch -o ~/.local/bin/git-ditch
chmod +x ~/.local/bin/git-ditch
```

## Usage

```bash
# Safe delete current branch & go back to previous branch
git ditch

# Force delete unmerged branch & go back to previous branch
git ditch -f
```

## License

MIT
