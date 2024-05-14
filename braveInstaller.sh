#!/bin/bash

echo "Which version of Brave browser would you like to install?"
echo "1. Release Channel"
echo "2. Beta"
echo "3. Nightly"
echo "4. Install all versions"

read -p "Enter your choice: " choice

case $choice in
    1) 
        sudo apt install curl
        sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
        echo 'deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch="amd64"] https://brave-browser-apt-release.s3.brave.com/ stable main' | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
        sudo apt update
        sudo apt install brave-browser
        ;;
    2) 
        sudo apt install curl
        sudo curl -fsSLo /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg
        echo 'deb [signed-by=/usr/share/keyrings/brave-browser-beta-archive-keyring.gpg arch="amd64"] https://brave-browser-apt-beta.s3.brave.com/ stable main' | sudo tee /etc/apt/sources.list.d/brave-browser-beta.list
        sudo apt update
        sudo apt install brave-browser-beta
        ;;
    3) 
        sudo apt install curl
        sudo curl -fsSLo /usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg https://brave-browser-apt-nightly.s3.brave.com/brave-browser-nightly-archive-keyring.gpg
        echo 'deb [signed-by=/usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg arch="amd64"] https://brave-browser-apt-nightly.s3.brave.com/ stable main' | sudo tee /etc/apt/sources.list.d/brave-browser-nightly.list
        sudo apt update
        sudo apt install brave-browser-nightly
        ;;
    4) 
        sudo apt install curl
        sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
        echo 'deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch="amd64"] https://brave-browser-apt-release.s3.brave.com/ stable main' | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
        sudo curl -fsSLo /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg
        echo 'deb [signed-by=/usr/share/keyrings/brave-browser-beta-archive-keyring.gpg arch="amd64"] https://brave-browser-apt-beta.s3.brave.com/ stable main' | sudo tee /etc/apt/sources.list.d/brave-browser-beta.list
        sudo curl -fsSLo /usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg https://brave-browser-apt-nightly.s3.brave.com/brave-browser-nightly-archive-keyring.gpg
        echo 'deb [signed-by=/usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg arch="amd64"] https://brave-browser-apt-nightly.s3.brave.com/ stable main' | sudo tee /etc/apt/sources.list.d/brave-browser-nightly.list
        sudo apt update
        sudo apt install brave-browser brave-browser-beta brave-browser-nightly
        ;;
    *) echo "Invalid choice";;
esac
