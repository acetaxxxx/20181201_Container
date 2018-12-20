FROM ubuntu

RUN apt-get upgrade -y 
RUN apt-get update -y  
RUN apt-get install -y -f curl
RUN apt-get install -y -f unzip
RUN apt-get install -y -f python3
RUN apt-get install -y -f python3-pip
RUN curl -SL https://chromedriver.storage.googleapis.com/2.32/chromedriver_linux64.zip > chromedriver.zip
RUN unzip chromedriver.zip -d bin/
RUN curl -SL https://github.com/adieuadieu/serverless-chrome/releases/download/v1.0.0-29/stable-headless-chromium-amazonlinux-2017-03.zip > headless-chromium.zip
RUN unzip headless-chromium.zip -d bin/
RUN rm headless-chromium.zip chromedriver.zip
RUN pip3 install -r requirements.txt

