FROM python:3.9

WORKDIR /usr/src/server

COPY . .

RUN apt-get update
RUN apt-get install -y libavdevice-dev libavfilter-dev libopus-dev libvpx-dev pkg-config
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8080
