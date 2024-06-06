#!/bin/bash

# Basics
git config --global user.email "justlemoncl@gmail.com"
git config --global user.name "Hannele Ruiz"
git config --global init.defaultBranch master

# Git Credential Manager
paru -S git-credential-manager git-credential-manager-extras
git config --global credential.credentialStore secretservice
git-credential-manager configure

# GPG Signing
git config --global commit.gpgsign true
git config --global user.signingkey DE4DA487DEEBB5AA
echo "pinentry-program /usr/bin/pinentry-qt" >> ~/.gnupg/gpg-agent.conf
gpg-connect-agent reloadagent /bye
