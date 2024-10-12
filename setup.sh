#!/bin/bash

# Cập nhật và nâng cấp hệ thống
sudo apt update && sudo apt upgrade -y

# Cài đặt các gói cần thiết
sudo apt install curl iptables build-essential git wget lz4 jq make gcc nano automake autoconf tmux htop nvme-cli pkg-config libssl-dev libleveldb-dev tar clang bsdmainutils ncdu unzip libleveldb-dev -y

# Cài đặt Rust
sudo curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"

# Cập nhật Rust
rustup update

# Kiểm tra phiên bản Rust
rustc --version

# Cài đặt screen
sudo apt install screen -y

# Tạo và chạy screen session có tên "nexus"
screen -S nexus

# Cài đặt Nexus CLI
sudo curl https://cli.nexus.xyz/install.sh | sh
