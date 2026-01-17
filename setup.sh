#!/usr/bin/sh

cp .zshrc .p10k.zsh ~
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd ~/.oh-my-zsh/custom/plugins/
git clone --depth=1 https://github.com/Aloxaf/fzf-tab.git
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git
git clone --depth=1 https://github.com/zsh-users/zsh-completions.git
git clone --depth=1 https://github.com/joshskidmore/zsh-fzf-history-search.git
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ../themes
source ~/.zshrc
