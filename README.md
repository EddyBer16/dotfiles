# My dotfiles
Here are my personalized dotfiles

## VIM

### Requirements
- Install [vim-plug](https://github.com/junegunn/vim-plug)
  ```
  $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```
- Clang:
  - Install libclang-dev
  ```
  $ sudo apt-get install libclang-dev
  ```
  - Install clang
  ```
  $ sudo apt-get install clang
  ```  
- CoC:
  - Install [coc-emmet](https://github.com/neoclide/coc-emmet) in vim
  ```
  :CocInstall coc-emmet
  ```
  - Install [coc-clangd](https://github.com/clangd/coc-clangd) in vim
  ```
  :CocInstall coc-clangd
  ```
