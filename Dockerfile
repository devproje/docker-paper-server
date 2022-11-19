FROM amazoncorretto:17-alpine-jdk

ARG VELOCITY_SECRET
ARG MINECRAFT_VERSION=1.19.2
ARG PAPER_BUILDS=271

ENV VELOCITY_SECRET=${VELOCITY_SECRET}

WORKDIR /opt/server

COPY ./data .

RUN wget https://api.papermc.io/v2/projects/paper/versions/${MINECRAFT_VERSION}/builds/${PAPER_BUILDS}/downloads/paper-${MINECRAFT_VERSION}-${PAPER_BUILDS}.jar -O paper.jar
RUN chmod +x /opt/server/run.sh

ENTRYPOINT [ "/opt/server/run.sh" ]
