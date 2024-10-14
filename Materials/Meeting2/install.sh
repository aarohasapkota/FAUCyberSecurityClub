#!/bin/bash

# Check for OS and install the required tools
install_tools() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "Installing on macOS..."
        brew install btop iftop htop neofetch ranger masscan hping3 nmap whatweb
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "Installing on Linux..."
        sudo apt update
        sudo apt install -y btop iftop htop neofetch ranger masscan hping3 nmap whatweb
    else
        echo "Unsupported OS. Please install the tools manually."
        exit 1
    fi
}

install_tools

# Provide usage instructions
echo "To run masscan: masscan -p23 x.x.x.x/x"
echo "To run nmap malware scan: nmap --script malware"
echo "To run nmap vuln scan: nmap --script vuln"
echo "To access Telehack.com: Open your browser and go to https://telehack.com"
