FROM mcr.microsoft.com/dotnet/sdk:8.0

ARG VERSION
ARG TARGETPLATFORM

ENV VERSION=${VERSION}
ENV TARGETPLATFORM=${TARGETPLATFORM}

COPY . .

RUN chmod u+x ./install-prereq.sh && ./install-prereq.sh
RUN chmod u+x ./install-nadeko.sh && ./install-nadeko.sh
RUN chmod u+x ./run-nadeko.sh

# RUN mv creds.yml nadekobot/output/creds.yml

CMD ["/bin/bash", "-c", "./run-nadeko.sh"]
