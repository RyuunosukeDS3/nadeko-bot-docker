FROM ubuntu:22.04

ARG TARGETPLATFORM
ENV TARGETPLATFORM=${TARGETPLATFORM}
RUN TARGETPLATFORM=$(echo ${TARGETPLATFORM} | sed 's/amd64/x64/' | sed 's/\//-/g')

COPY . .

RUN chmod u+x ./install-prereq.sh && ./install-prereq.sh
RUN chmod u+x ./install-nadeko.sh && ./install-nadeko.sh
RUN chmod u+x ./run-nadeko.sh

# RUN mv creds.yml nadekobot/output/creds.yml

CMD ["/bin/bash", "-c", "./run-nadeko.sh"]
