FROM python:slim
RUN apt-get update && apt-get install -y \
    wget unzip \
    chinese*
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install -y ./google-chrome-stable_current_amd64.deb
RUN google-chrome --version
RUN wget https://chromedriver.storage.googleapis.com/93.0.4577.63/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN mv chromedriver /usr/local/bin
RUN pip install -U selenium
