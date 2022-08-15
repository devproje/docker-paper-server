FROM amazoncorretto:17-alpine-jdk

ARG VELOCITY_SECRET
ARG MINECRAFT_VERSION=1.18.2
ARG PAPER_BUILDS=387

ENV VELOCITY_SECRET=${VELOCITY_SECRET}

WORKDIR /server

ADD ./data/* /server/

RUN wget https://api.papermc.io/v2/projects/paper/versions/${MINECRAFT_VERSION}/builds/${PAPER_BUILDS}/downloads/paper-${MINECRAFT_VERSION}-${PAPER_BUILDS}.jar
RUN mv paper-${MINECRAFT_VERSION}-${PAPER_BUILDS}.jar paper.jar
RUN chmod +x /server/run.sh

ENTRYPOINT [ "/server/run.sh" ]
