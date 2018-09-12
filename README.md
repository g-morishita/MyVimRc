# Installation

    git clone git@github.com:kona-nkuN/MyVimRc.git

# Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
# Requirement

lua is needed to make neocomplete.vim work

# Trouble shooting

## plugins doesn't work 
You don't need it anymore because I have stopped using bundle. Instead I will use dein.vim to manage packages. 
If directories in bundle/ are empty, run these commands in .vim

    git submodule init
    git submodule update

