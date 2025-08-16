#!/usr/bin/env bash

CONFIGS=("nvim" "nvim-lazy")
SAVE_FILE="$HOME/.nvim_selected"

# Menu
echo "Select Neovim configuration:"
select choice in "${CONFIGS[@]}"; do
    if [[ -n "$choice" ]]; then
        if [[ "$1" == "--change" ]]; then
            echo "export NVIM_APPNAME=$choice" > "$SAVE_FILE"
            export NVIM_APPNAME="$choice"
            echo -e "\e[36mPermanently \e[0mswitched to \e[32m'$choice'\e[0m."
            echo -e "you can do \e[33m'source ~/.zshrc' \e[0mfor changes'"
            exit 0
        else
            NVIM_APPNAME="$choice" nvim
            exit 0
        fi
    else
        echo "Invalid selection."
    fi
done

