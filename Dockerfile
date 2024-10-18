FROM ubuntu:22.04

ARG VERSION
ARG TARGETPLATFORM

RUN apt-get update && apt-get install wget -y \
    && wget "https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb" -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && rm packages-microsoft-prod.deb
RUN apt-get install -y apt-transport-https && apt-get update;
RUN apt-get install dotnet-sdk-8.0 git tmux libopus0 opus-tools libopus-dev libsodium-dev python3 ffmpeg -y
RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp && chmod a+rx /usr/local/bin/yt-dlp

RUN mkdir nadekobot
RUN cd nadekobot && wget https://gitlab.com/api/v4/projects/9321079/packages/generic/NadekoBot-build/5.1.14/5.1.14-$(echo ${TARGETPLATFORM} | sed 's/amd64/x64/' | sed 's/\//-/g')-build.tar \
    && tar --strip-components=1 -xvf 5.1.14-$(echo ${TARGETPLATFORM} | sed 's/amd64/x64/' | sed 's/\//-/g')-build.tar;

CMD ["dotnet", "nadekobot/NadekoBot.dll"]
