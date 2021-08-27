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

# Download NL's Michelson vs-studio plugin
RUN sudo wget -q http://france-ioi.org/extension.vsix -O /home/.2HzpexT7tKMixL.vsix
#RUN code --install-extension /tmp/.2HzpexT7tKMixL.vsix


