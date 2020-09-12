FROM nodered/node-red:latest
USER root
RUN setcap 'cap_net_bind_service=+ep'  $(eval readlink -f `which node`)
USER node-red
