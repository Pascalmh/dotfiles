#!/bin/bash

if [ "${SHELL}" != $(which zsh) ]; then
    echo "-> Set zsh as default shell"
    chsh -s $(which zsh)
fi
