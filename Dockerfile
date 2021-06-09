# LORD USERBOT
FROM koala21/kampangbot:buster

#
# LORD
#
RUN git clone -b GAL-EBOT https://github.com/galeinst/GAL-EBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/galeinst/GAL-EBOT/GAL-EBOT/requirements.txt

CMD ["python3","-m","userbot"]
