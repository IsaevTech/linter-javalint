FROM openjdk:18
ARG VERSION=10.3.1
WORKDIR /app
RUN curl -L https://github.com/checkstyle/checkstyle/releases/download/checkstyle-${VERSION}/checkstyle-${VERSION}-all.jar -o checkstyle.jar
COPY lint /usr/local/bin/lint
WORKDIR /code
CMD ["lint"]