# Setup the .dotfiles bare repo 
#
#git init --bare $HOME/.dotfiles alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' config config --local status.showUntrackedFiles no echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
#
#then, after ZSH is installed (after stage 1)
#
#echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" | sudo tee -a $HOME/.zshrc
#
#config ls-tree --full-tree -r HEAD
