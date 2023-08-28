#!/bin/bash

# Update and upgrade the system
sudo apt update -y
sudo apt upgrade -y
sudo apt install python3-pip -y
sudo apt install python2 -y
sudo apt install python-pip -y
sudo apt-get install libpcap-dev -y
sudo apt install unzip -y
sudo apt install xterm -y
sudo apt install proxychains -y
sudo apt install npm -y
sudo curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt -y install nodejs
sudo apt-get install -y libcurl4-openssl-dev
sudo apt install cpanminus -y
sudo apt install ruby -y
sudo apt-get install clang libevent-dev libssl-dev cmake -y
sudo apt install python3-pip -y
pip3 install pycurl bs4 pygeoip gobject cairocffi selenium requests
sudo gem install bundler
sudo apt install desktop-file-utils -y

# Create a directory for installing tools
sudo mkdir -p /home/arjun46/tools
sudo chown -R $USER:$USER /home/arjun46/tools
cd /home/arjun46/tools

# Download and install Go 1.20.6
sudo wget https://go.dev/dl/go1.20.6.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.20.6.linux-amd64.tar.gz

# Set Go environment variables
echo 'export PATH=$PATH:/usr/local/go/bin' | sudo tee -a ~/.bashrc
echo 'export GOPATH=$HOME/go' | sudo tee -a ~/.bashrc
echo 'export PATH=$PATH:$GOPATH/bin' | sudo tee -a ~/.bashrc
echo 'export PATH=$PATH:/usr/bugbounty/Sublist3r' >> ~/.bashrc
echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.bashrc
source ~/.bashrc

# Verify Go installation
go version

# Install Sublist3r
cd ~/tools/
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
pip3 install -r requirements.txt
sudo echo "alias sublist3r='python3 ~/tools/Sublist3r/sublist3r.py'" | tee -a ~/.bashrc
source ~/.bashrc
sublist3r -h

# Install Amass
go install -v github.com/owasp-amass/amass/v4/...@master
amass -version

# Install MassDNS
cd ~/tools/
git clone https://github.com/blechschmidt/massdns.git
cd massdns
sudo make
sudo make install
massdns -h

# Install Findomain
cd ~/tools/
sudo curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip
sudo unzip findomain-linux-i386.zip
sudo mv findomain /usr/bin/findomain
sudo chmod +x /usr/bin/findomain
findomain -h

# Install shuffledns
go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
shuffledns -h

# Install subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
subfinder -h

# Install hakrevdns
go install github.com/hakluke/hakrevdns@latest
hakrevdns -h

# Install assetfinder
go install github.com/tomnomnom/assetfinder@latest
assetfinder -h

# Install cero
go install github.com/glebarez/cero@latest
cero -h

# Install Masscan
git clone https://github.com/robertdavidgraham/masscan.git
cd masscan
sudo make
sudo make install
masscan -h

# Install Naabu
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
naabu -h

# Install Nmap
sudo apt-get --assume-yes install nmap
nmap --version

# Install Sandmap
cd /home/arjun46/tools
git clone --recursive https://github.com/trimstray/sandmap.git
cd sandmap
sudo ./setup.sh install
sudo echo "alias sandmap='cd ~/tools/sandmap/bin/ && sudo ./sandmap'" | sudo tee -a ~/.bashrc
source ~/.bashrc

# Install Eyewitness
cd /home/arjun46/tools
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cd EyeWitness/Python/setup
sudo ./setup.sh
sudo echo "alias eyewitness='python3 ~/tools/EyeWitness/Python/EyeWitness.py'" | sudo tee -a ~/.bashrc
source ~/.bashrc
eyewitness -h

# Install Gowitness
go install github.com/sensepost/gowitness@latest
gowitness -h

# Install Wappalyzer
sudo npm i -g wappalyzer
wappalyzer -v

# Install WhatWeb
sudo apt-get --assume-yes install whatweb
whatweb --version

# Install HTTPX
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
httpx -version

# Install Httprobe
go install github.com/tomnomnom/httprobe@latest
httprobe -version

# Install Gobuster
go install github.com/OJ/gobuster/v3@latest
gobuster -h

# Install Feroxbuster
sudo snap install feroxbuster

# Install Dirsearch
cd /home/arjun46/tools
git clone https://github.com/maurosoria/dirsearch.git --depth 1
cd dirsearch
sudo python3 setup.py install
sudo chmod +x dirsearch.py
sudo echo "alias dirsearch='python3 ~/tools/dirsearch/dirsearch.py'" | sudo tee -a ~/.bashrc
source ~/.bashrc
dirsearch -h

# Install Gospider
GO111MODULE=on go install github.com/jaeles-project/gospider@latest
gospider -h

# Install Hakrawler
go install github.com/hakluke/hakrawler@latest
hakrawler -h

# Install LinkFinder
cd /home/arjun46/tools
git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder
pip3 install -r requirements.txt
echo "alias linkfinder='python3 ~/tools/LinkFinder/linkfinder.py'" | sudo tee -a ~/.bashrc
source ~/.bashrc
linkfinder -h

# Install JSScanner
cd /home/arjun46/tools
git clone https://github.com/0x240x23elu/JSScanner.git
cd JSScanner
pip3 install -r  requirements.txt
sudo chmod +x JSScanner.py
sudo echo "alias jsscanner='python3 ~/tools/JSScanner/JSScanner.py'" | sudo tee -a ~/.bashrc
source ~/.bashrc

# Install Waybackurls
go install github.com/tomnomnom/waybackurls@latest
waybackurls -h

# Install Gau
go install github.com/lc/gau/v2/cmd/gau@latest
gau -h

# Install GetJS
go install github.com/003random/getJS@latest
getJS -h

# Install GF
cd ~/tools
go install github.com/tomnomnom/gf@latest
mkdir ~/.gf
git clone https://github.com/1ndianl33t/Gf-Patterns.git
cd Gf-Patterns
cp *.json ~/.gf
cd ~/

# Install Parameth
cd /home/arjun46/tools
git clone https://github.com/maK-/parameth.git
cd parameth
sudo python3 -m venv venv
source venv/bin/activate
sudo pip2 install -r requirements.txt
deactivate
sudo echo 'function parameth() { source ~/tools/parameth/venv/bin/activate && python2 ~/tools/parameth/parameth.py "$@"; deactivate; }' | sudo tee -a ~/.bashrc
source ~/.bashrc
parameth -h

# Install ParamPamPam
cd /home/arjun46/tools
git clone https://github.com/Bo0oM/ParamPamPam.git
cd ParamPamPam
pip3 install --no-cache-dir -r requirements.txt
echo -e '\nalias parampampam="python3 ~/tools/ParamPamPam/parampp.py"' | tee -a ~/.bashrc
source ~/.bashrc
parampampam -h

# Install ParamSpider
cd /home/arjun46/tools
git clone https://github.com/devanshbatham/ParamSpider.git
cd ParamSpider
sudo python3 setup.py install
paramspider -h

# Install Arjun
pip3 install arjun
arjun -h

# Install X8
sudo apt-get --assume-yes install cargo
sudo cargo install x8
echo -e '\nexport PATH="$PATH:/home/arjun46/.cargo/bin"' | tee -a ~/.bashrc
source ~/.bashrc
x8 -h

# Install WFuzz
sudo pip install wfuzz
wfuzz -h

# Install FFUF
go install github.com/ffuf/ffuf/v2@latest
ffuf -h

# All recon tools have been installed successfully!
echo "Recon tools installation completed!"

# Install commix
cd /home/arjun46/tools
git clone https://github.com/commixproject/commix.git
cd commix
sudo python3 setup.py install
echo -e '\nalias commix="python3 ~/tools/commix/commix.py"' | tee -a ~/.bashrc
source ~/.bashrc

# Install Corsy
cd /home/arjun46/tools
git clone https://github.com/s0md3v/Corsy.git
cd Corsy
sudo python3 -m pip install -r requirements.txt
echo -e '\nalias corsy="python3 ~/tools/Corsy/corsy.py"' | tee -a ~/.bashrc
source ~/.bashrc

# Install CORStest
cd /home/arjun46/tools
git clone https://github.com/RUB-NDS/CORStest.git
cd CORStest
echo -e '\nalias corstest="python3 ~/tools/CORStest/corstest.py"' | tee -a ~/.bashrc
source ~/.bashrc

# Install CorsMe
go install github.com/shivangx01b/CorsMe@latest

# Install CRLFSuite
cd usr/bugbounty
pip3 install crlfsuite

# Install Injectus
cd /home/arjun46/tools
git clone https://github.com/dubs3c/Injectus.git
cd Injectus
pip3 install -r requirements.txt
sudo chmod +x Injectus.py
echo -e '\nalias injectus="python3 ~/tools/Injectus/Injectus.py"' | tee -a ~/.bashrc
source ~/.bashrc

# Install XSRFProbe
pip3 install xsrfprobe

# Install dotdotpwn
cd /home/arjun46/tools
git clone https://github.com/wireghoul/dotdotpwn.git
cd dotdotpwn
sudo cpanm install Net::FTP Time::HiRes Socket IO::Socket Getopt::Std
echo -e '\nalias dotdotpwn="cd ~/tools/dotdotpwn && ./dotdotpwn.pl"' | tee -a ~/.bashrc
source ~/.bashrc

# Install liffier
cd /home/arjun46/tools
git clone https://github.com/momenbasel/liffier.git
cd liffier
echo -e '\nalias liffier="python3 ~/tools/liffier/liffier.py"' | tee -a ~/.bashrc
source ~/.bashrc

# Install graphqlmap
cd /home/arjun46/tools
git clone https://github.com/swisskyrepo/GraphQLmap.git
cd GraphQLmap
sudo python3 setup.py install
echo -e '\nalias graphqlmap="cd ~/tools/GraphQLmap/bin && ./graphqlmap"' | tee -a ~/.bashrc
source ~/.bashrc

# Install headi
go install github.com/mlcsec/headi@latest

# Install ysoserial
cd /home/arjun46/tools
wget https://github.com/frohoff/ysoserial/releases/latest/download/ysoserial-all.jar
cd ysoserial
echo -e '\nalias ysoserial="cd /home/arjun46/tools && java -jar ./ysoserial-all.jar"' | tee -a ~/.bashrc
source ~/.bashrc

# Install Oralyzer
cd /home/arjun46/tools
git clone https://github.com/r0075h3ll/Oralyzer.git
cd Oralyzer
pip3 install -r requirements.txt
echo -e '\nalias oralyzer="python3 ~/tools/Oralyzer/oralyzer.py"' | tee -a ~/.bashrc
source ~/.bashrc

# Install OpenRedirex
cd /home/arjun46/tools
git clone https://github.com/devanshbatham/OpenRedireX.git
cd OpenRedireX
echo -e '\nalias openredirex="python3 ~/tools/OpenRedireX/openredirex.py"' | tee -a ~/.bashrc
source ~/.bashrc

# Install smuggler
cd /home/arjun46/tools
git clone https://github.com/defparam/smuggler.git
cd smuggler
echo -e '\nalias smuggler="python3 ~/tools/smuggler/smuggler.py"' | tee -a ~/.bashrc
source ~/.bashrc

# Install http-request-smuggling
cd /home/arjun46/tools
git clone https://github.com/anshumanpattnaik/http-request-smuggling.git
cd http-request-smuggling
pip3 install -r requirements.txt
echo -e '\nalias http-request-smuggling="python3 ~/tools/http-request-smuggling/smuggle.py"' | tee -a ~/.bashrc
source ~/.bashrc

# Install SSRFmap
cd /home/arjun46/tools
git clone https://github.com/swisskyrepo/SSRFmap.git
cd SSRFmap
pip3 install --upgrade pyOpenSSL
pip3 install -r requirements.txt
sudo chmod +x ssrfmap.py
echo -e '\nalias ssrfmap="sudo python3 ~/tools/SSRFmap/ssrfmap.py"' | tee -a ~/.bashrc
source ~/.bashrc

# Install Gopherus
cd ~/tools/
git clone https://github.com/tarunkant/Gopherus.git
cd Gopherus
sudo bash install.sh
echo -e '\nalias gopherus="python2 ~/tools/Gopherus/gopherus.py"' | tee -a ~/.bashrc
source ~/.bashrc

# Install nosqlmap
cd /home/arjun46/tools
git clone https://github.com/codingo/NoSQLMap.git
cd NoSQLMap
sudo python3 setup.py install
pip2 install couchdb pbkdf2 pymongo ipcalc six
echo -e '\nalias nosqlmap="python2 ~/tools/NoSQLMap/nosqlmap.py"' | tee -a ~/.bashrc
source ~/.bashrc

# Install xsstrike
cd /home/arjun46/tools
git clone https://github.com/s0md3v/XSStrike.git
cd XSStrike
pip3 install -r requirements.txt
sudo chmod +x xsstrike.py
echo -e '\nalias xsstrike="python3 ~/tools/XSStrike/xsstrike.py"' | tee -a ~/.bashrc
source ~/.bashrc


# Install xsser
cd /home/arjun46/tools
git clone https://github.com/epsylon/xsser.git
cd xsser
sudo python3 setup.py install
xsser -h

# Install gxss
go install github.com/KathanP19/Gxss@latest

# Install kxss
go install github.com/Emoe/kxss@latest

# Install dalfox
go install github.com/hahwul/dalfox/v2@latest

# Install XXEinjector
cd /home/arjun46/tools
git clone https://github.com/enjoiz/XXEinjector.git
cd XXEinjector
sudo chmod +x XXEinjector.rb
echo -e '\nalias xxeinjector="cd ~/tools/XXEinjector && ./XXEinjector.rb"' | tee -a ~/.bashrc
source ~/.bashrc

# Install meg
go install github.com/tomnomnom/meg@latest

# Install the-hydra
sudo apt install hydra


# Install BruteX
cd /home/arjun46/tools
git clone https://github.com/1N3/BruteX.git
cd BruteX
sudo ./install.sh
sudo chown -R $USER:$USER ~/tools/BruteX
sudo chmod -R 755 ~/tools/BruteX

# Install trufflehog
cd /home/arjun46/tools
git clone https://github.com/trufflesecurity/trufflehog.git
cd trufflehog
go install

# Install s3scanner
pip3 install s3scanner

# Install wpscan
sudo apt-get install ruby-dev
sudo gem install wpscan

# Install subjack
go install github.com/haccer/subjack@latest

# Install subover
go install github.com/Ice3man543/subover@latest

# Install nikto
sudo apt-get --assume-yes install nikto

# Install jaeles
go install github.com/jaeles-project/jaeles@latest

# Install cariddi
go install -v github.com/edoardottt/cariddi/cmd/cariddi@latest

# Install anew
go install github.com/tomnomnom/anew@latest

# Install Nuclei
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

# Install Beef
sudo apt install -y beef

# Install SQLMap
sudo apt install -y sqlmap

# Install Metasploit Framework
cd /home/arjun46/tools
sudo curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
cd ..

# Install Raccoon
pip3 install raccoon-scanner

# Install CF-Check
go install github.com/dwisiswant0/cf-check@latest

# Install Chaos-Client
go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest

# Install DNSgen
pip3 install dnsgen

# Install Filter-Resolved
go install github.com/tomnomnom/hacks/filter-resolved@latest

# Install Freq
go install github.com/takshal/freq@latest

# Install Goop
go install github.com/deletescape/goop@latest

# Install getJS
go install github.com/003random/getJS@latest

# Install haklistgen
go install github.com/hakluke/haklistgen@latest

# Install XXExploiter
sudo npm install -g xxexploiter
sudo npm audit fix --force

# All exploitation tools have been installed successfully!
echo "Exploitation tools installation completed!"

# All tools have been installed successfully!
echo "Bug bounty tools installation completed!"
