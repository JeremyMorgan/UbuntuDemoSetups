#!/bin/bash

# Update package lists
sudo apt update
# Install VirtualBox
sudo apt install virtualbox

# Install necessary dependencies
sudo apt install -y curl wget apt-transport-https

# Download the latest version of minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

# Install minikube
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Start minikube with specified resources
minikube start --cpus=2 --memory=4096mb --disk-size=20gb

# Download the latest stable version of kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

# Make kubectl executable
chmod +x kubectl

# Move kubectl to a directory in the system PATH
sudo mv kubectl /usr/local/bin/

# Display kubectl version information
kubectl version -o yaml

# Clear the terminal screen
clear

# Check minikube status
minikube status

# Verify kubectl can communicate with the cluster
kubectl get nodes

# Display cluster information
kubectl cluster-info


