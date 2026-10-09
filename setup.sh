
#!/bin/bash
set -e

echo "Installing Ansible, Git and cron..."

sudo apt-get update -y
sudo apt-get install -y software-properties-common git cron

sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt-get install -y ansible

echo "Starting cron..."
sudo service cron start

ansible --version

echo "Setup complete."