#!/bin/bash

sudo docker build -t kivyapp .
sudo docker run -it kivyapp
sudo docker cp <id>:/app/bin/myapp-0.1-arm64-v8a_armeabi-v7a-debug.apk /bin/app.apk
