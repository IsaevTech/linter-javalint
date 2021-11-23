FROM openjdk:8
ARG VERSION=9.1
WORKDIR /app
RUN wget -q https://repo1.maven.org/maven2/com/puppycrawl/tools/checkstyle/${VERSION}/checkstyle-${VERSION}.jar -o checkstyle.jar
COPY lint /usr/local/bin/lint
WORKDIR /app
CMD ["lint"]