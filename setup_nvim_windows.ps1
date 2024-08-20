git clone --filter=blob:none --no-checkout https://github.com/asfung/configuration.git $env:USERPROFILE\configuration; cd $env:USERPROFILE\configuration

git sparse-checkout set --cone
git checkout main
git sparse-checkout set nvim

# testing mode
# Copy-Item -Path $env:USERPROFILE\configuration\nvim -Destination $env:LOCALAPPDATA\nvim_dua -Recurse -Force
Copy-Item -Path $env:USERPROFILE\configuration\nvim -Destination $env:LOCALAPPDATA\nvim -Recurse -Force
Remove-Item -Path $env:USERPROFILE\configuration -Recurse -Force
