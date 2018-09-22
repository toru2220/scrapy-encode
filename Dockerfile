FROM	python:3.6-stretch

ENV     DEBIAN_FRONTEND noninteractive

RUN     apt-get update && \
        apt-get install -y --no-install-recommends wget curl python3-dev python3-pip python-twisted libxml2-dev python-lxml python-requests libav-tools x264 x265 lsdvd libdvdread-dev ffmpeg handbrake-cli && \
        rm -rf /var/lib/apt/lists/*
RUN     pip3 install pymongo urllib3 requests scrapy mpegdash m3u8 fake-useragent twython mojimoji pillow slackweb lxml && \
	pip3 install git+https://github.com/yashaka/selene.git

WORKDIR /data
VOLUME  /data







