" since we will be staning up a new container, we need to install the plugins,
" this will run installation at startup

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source ~/.config/nvim/nvimrc/init.vimrc
source ~/.config/nvim/nvimrc/general.vimrc
source ~/.config/nvim/nvimrc/keys.vimrc
source ~/.config/nvim/nvimrc/coc.vimrc
