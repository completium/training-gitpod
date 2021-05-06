FROM gitpod/workspace-full:latest
#FROM ligolang/ligo:0.15.0
RUN wget https://ligolang.org/bin/linux/ligo
RUN chmod +x ./ligo
RUN sudo cp ./ligo /usr/local/bin
RUN sudo add-apt-repository ppa:serokell/tezos && sudo apt-get update
RUN sudo apt-get install -y tezos-client
RUN sudo apt-get install -y tezos-node
RUN sudo apt-get install -y tezos-baker-008-ptedo2zk
RUN sudo apt-get install -y tezos-endorser-008-ptedo2zk
RUN sudo apt-get install -y tezos-accuser-008-ptedo2zk

# Install ligo
