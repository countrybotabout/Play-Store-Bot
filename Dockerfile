FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN cd /
RUN git clone https://github.com/countrybotabout/Play-Store-Bot
RUN cd Play-Store-Bot
WORKDIR /Play-Store-Bott
RUN pip3 install -U -r requirements.txt
CMD python3 upload_files.py
