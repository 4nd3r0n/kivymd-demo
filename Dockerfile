FROM python:3.11

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt
RUN apt update && apt install -y openjdk-17-jdk zip
RUN buildozer init
RUN cat buildozer.conf > buildozer.spec
RUN buildozer android debug
