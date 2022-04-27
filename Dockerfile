FROM bash:latest

LABEL "com.github.actions.name"="Wait For Other Pipelines"
LABEL "com.github.actions.description"="Wait For Other Pipelines"
LABEL "com.github.actions.icon"="clock"
LABEL "com.github.actions.color"="purple"

LABEL version="0.1.0"
LABEL repository="https://github.com/jniltinho/github-actions-wait"
LABEL homepage="https://jarv.is/"
LABEL maintainer="Nilton Oliveira <jniltinho@gmail.com>"

RUN apk add --update curl && rm -rf /var/cache/apk/*

#ADD entrypoint.sh /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]

ADD wait.sh /wait.sh
ENTRYPOINT ["/wait.sh"]
