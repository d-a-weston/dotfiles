# Symlink dotfiles
dotfiles="zshrc aliases gitaliases p10k.zsh tmux.conf"
dotfiles_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in $dotfiles; do
  ln -sfv $dotfiles_dir/$file ~/.$file
done
