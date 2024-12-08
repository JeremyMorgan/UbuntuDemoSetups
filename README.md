# Ubuntu Demo Setups

This repository contains setup scripts for Ubuntu machines, designed to automate the installation and configuration of various tools and services.

## Current Scripts

### 1. setupminikube.sh

This script automates the setup of Minikube on an Ubuntu machine. It performs the following tasks:

- Updates package lists
- Installs VirtualBox
- Installs Minikube
- Installs kubectl
- Starts a Minikube cluster
- Verifies the setup

## Requirements

- Ubuntu operating system
- Sudo privileges

### Running scripts directly from GitHub

You can run the scripts directly from GitHub without cloning the repository. This is useful for quick setups or when you want to ensure you're always running the latest version of the script.

To run a script directly from GitHub, use the following command:

```
bash <(curl -s https://raw.githubusercontent.com/jeremymorgan/UbuntuDemoSetups/main/setupminikube.sh)
```

This command does the following:
1. `curl -s` downloads the script from the GitHub raw content URL.
2. The script is then piped (`|`) to `bash`, which executes it.

Note: Always verify the content of scripts before running them directly from the internet.

## Contributing

Contributions to this project are welcome! Please feel free to submit a Pull Request.

## Disclaimer

Please review the scripts before running them on your system. While efforts have been made to ensure their reliability, the authors are not responsible for any potential issues that may arise from their use.
