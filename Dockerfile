FROM bcgovimages/von-image:node-1.9-0

ENV LOG_LEVEL ${LOG_LEVEL:-info}
ENV RUST_LOG ${RUST_LOG:-warning}

ADD server/requirements.txt server/
RUN pip install --no-cache-dir -r server/requirements.txt

ADD --chown=indy:indy indy_config.py /etc/indy/
ADD --chown=indy:indy . $HOME
