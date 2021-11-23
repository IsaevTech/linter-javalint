FROM openjdk:8
ARG VERSION=9.1
WORKDIR /app
RUN wget -q https://github.com/checkstyle/checkstyle/releases/download/checkstyle-${VERSION}/checkstyle-${VERSION}-all.jar -O checkstyle.jar
COPY lint /usr/local/bin/lint
WORKDIR /app
CMD ["lint"]