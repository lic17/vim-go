# vim-go
vim for golang

#first
copy .vimrc to ~/.vimrc

#install plugin

   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   :PluginInstall
   cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools
   go mod edit -replace=golang.org/x/sync@v0.0.0-20190423024810-112230192c58=github.com/golang/sync@v0.0.0-20190423024810-112230192c58
   go mod edit -replace=golang.org/x/net@v0.0.0-20190311183353-d8887717615a=github.com/golang/net@v0.0.0-20190311183353-d8887717615a
   go mod edit -replace=golang.org/x/crypto@v0.0.0-20190308221718-c2843e01d9a2=github.com/golang/crypto@v0.0.0-20190308221718-c2843e01d9a2
   go mod edit -replace=golang.org/x/sys@v0.0.0-20190215142949-d0b11bdaac8a=github.com/golang/sys@v0.0.0-20190215142949-d0b11bdaac8a
   cd ~/.vim/bundle/YouCompleteMe & install.py --all

#install go tools
   :GoInstallBinaries
