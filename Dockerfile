FROM python:3.11

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt
RUN pip install kivymd
RUN pip install cython
RUN pip install buildozer

RUN apt update && apt install -y openjdk-17-jdk zip neovim
