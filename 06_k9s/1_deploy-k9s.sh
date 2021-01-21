#!/bin/bash
K9S_VERSION=v0.24.2
mkdir temp
cd temp/
curl -sLO https://github.com/derailed/k9s/releases/download/$K9S_VERSION/k9s_Linux_x86_64.tar.gz
tar xzf k9s_Linux_x86_64.tar.gz
sudo mv k9s /usr/local/bin/
k9s version
cd ..
rm -rf temp
