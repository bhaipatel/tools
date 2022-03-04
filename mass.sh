#!/bin/bash
mkdir -p mass recon
cd mass
wget -i ~/list.txt
unzip '*.zip'
cat *.txt | ~/go/bin/./httpx -t 5000 -o ~/recon/live.txt
cd ~
~/go/bin/./nuclei -list recon/live.txt -t ~/nuclei-templates/imp -o recon/nuclei.txt 
rm -rf mass ~/list.txt

