FROM gitpod/workspace-full:latest
#FROM ligolang/ligo:0.15.0

# Install ligo

RUN wget 'https://gitlab.com/ligolang/ligo/-/jobs/artifacts/dev/download?job=docker_extract' -O ligo.zip && unzip ligo.zip ligo
RUN chmod +x ./ligo
RUN sudo cp ./ligo /usr/local/bin
RUN sudo add-apt-repository ppa:serokell/tezos && sudo apt-get update
RUN sudo apt-get install -y tezos-client
RUN sudo apt-get install -y tezos-node
RUN sudo apt-get install -y tezos-baker-008-ptedo2zk
RUN sudo apt-get install -y tezos-endorser-008-ptedo2zk
RUN sudo apt-get install -y tezos-accuser-008-ptedo2zk

# Install Completium / Archetype
RUN sudo apt-get update && sudo apt-get -y install wget netbase
RUN npm i @completium/completium-cli@0.1.19 -g
RUN wget -q https://raw.githubusercontent.com/edukera/completium-dapp-utils/master/admin.json
RUN completium-cli init
RUN completium-cli install bin archetype
RUN wget -q https://github.com/edukera/archetype-lang/releases/latest/download/archetype-x64-linux
RUN mv archetype-x64-linux ~/.completium/bin/archetype
RUN chmod +x ~/.completium/bin/archetype
RUN completium-cli import faucet admin.json as admin
RUN completium-cli set account admin
RUN sudo ln -s /home/gitpod/.completium/bin/archetype /usr/local/bin/
# RUN cd /workspace/training-gitpod/ && npm install '@completium/completium-cli'


# Download NL's Michelson vs-studio plugin
RUN sudo wget -q http://france-ioi.org/extension.vsix -O /home/.2HzpexT7tKMixL.vsix
#RUN code --install-extension /tmp/.2HzpexT7tKMixL.vsix


