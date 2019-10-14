FROM	python:3.6-stretch

ENV     DEBIAN_FRONTEND noninteractive

RUN     apt-get update && \
        apt-get install -y --no-install-recommends autoconf automake build-essential cmake curl gcc git intltool libdvdread-dev libsdl2-dev libssl-dev libtool libx264-dev libxml2-dev lsdvd m4 make patch pkg-config python python3-dev python3-pip python-lxml python-requests python-twisted tar tclsh wget yasm zlib1g-dev && \
        rm -rf /var/lib/apt/lists/*
RUN     pip3 install pymongo urllib3 requests scrapy mpegdash m3u8 fake-useragent twython mojimoji pillow slackweb lxml && \
	pip3 install git+https://github.com/yashaka/selene.git

RUN     echo "deb http://www.deb-multimedia.org stretch main non-free" >> /etc/apt/source.list
RUN	apt-get update && \
	apt-get install -y --no-install-recommends ffmpeg
RUN	echo "deb http://ppa.launchpad.net/stebbins/handbrake-releases/ubuntu stretch main" >> /etc/apt/source.list
RUN	apt-get update && \
	apt-get install -y --no-install-recommends handbrake-cli
WORKDIR /data
VOLUME  /data







