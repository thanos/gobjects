FROM thanos/docker-gobjects:latest

ARG GIT_COMMIT
ARG VERSION
LABEL REPO="https://github.com/thanos/gobjects"
LABEL GIT_COMMIT=$GIT_COMMIT
LABEL VERSION=$VERSION

# Because of https://github.com/docker/docker/issues/14914
ENV PATH=$PATH:/opt/gobjects/bin

WORKDIR /opt/gobjects/bin

COPY bin/gobjects /opt/gobjects/bin/
RUN chmod +x /opt/gobjects/bin/gobjects

CMD /opt/gobjects/bin/gobjects