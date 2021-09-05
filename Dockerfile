FROM zakaryan2004/userbot_docker:latest

ENV PATH="/usr/src/app/bin:$PATH"
WORKDIR /usr/src/app

RUN git clone https://github.com/Surajsharma07/TG-paperplane.git -b master ./

#
# Copies session and config(if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* ./client_secrets.json* ./secret.json* ./

#
# Finalization
#
RUN pip3 install -r requirements.txt
CMD ["bash","init/start.sh"]
