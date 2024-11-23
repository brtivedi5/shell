#!/bin/bash
set -x

############################################
# DSI CONSULTING INC. Project setup script #
############################################
# This script creates standard analysis and output directories
# for a new project. It also creates a README file with the
# project name and a brief description of the project.
# Then it unzips the raw data provided by the client.

mkdir analysis output
touch README.md
touch analysis/main.py

# download client data
wget -O rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
unzip rawdata.zip

###########################################
# Complete assignment here

# 1. Create a directory named data
mkdir data
# 2. Move the ./rawdata directory to ./data/raw
mv ./rawdata ./data/raw
# 3. List the contents of the ./data/raw directory
# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed
touch ./data/inventory.txt
ls ./data/processed > ./data/inventory.txt

###########################################

echo "Project setup is complete!"
