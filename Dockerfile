FROM python:3.5
COPY setup_0.12 /root/
RUN sh /root/setup_0.12
RUN apt-get update
RUN apt-get install -y nodejs npm
RUN apt-get clean -y
RUN ln -s /usr/bin/nodejs /usr/bin/node
