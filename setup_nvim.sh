#!/bin/bash

git clone --filter=blob:none --no-checkout git@github.com:asfung/configuration.git ~/configuration && cd ~/configuration
git sparse-checkout set --cone
git checkout main
git sparse-checkout set nvim

cp -r ~/configuration/nvim ~/.config/
# cp -r ~/configuration/nvim ~/sini # testing
sudo rm -r ~/configuration 


