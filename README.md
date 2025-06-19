### Setup
Create symlinks

    ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
    ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

Authenticate with Github:

    echo "machine github.com login <USERNAME> password <GITHUB_PAT>" >> ~/.netrc

### Packages
Download the binaries and symlink into `~/.local/bin`:
- [neovim](https://github.com/neovim/neovim/releases)
- [ripgrep](https://github.com/BurntSushi/ripgrep/releases)
- [nnn](https://github.com/jarun/nnn/releases)
- [fzf](https://github.com/junegunn/fzf/releases)
- [fd](https://github.com/sharkdp/fd/releases)
