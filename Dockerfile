FROM jfloff/alpine-python:latest-slim

MAINTAINER Toni Van de Voorde "toni@adlogix.eu"

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.14.59
ENV ECS_DEPLOY_VERSION 3.4.0

RUN /entrypoint.sh \
  -a jq \
  -a curl \
  -p awscli==${AWS_CLI_VERSION} \
&& echo

RUN curl -s https://raw.githubusercontent.com/silinternational/ecs-deploy/${ECS_DEPLOY_VERSION}/ecs-deploy | tee /usr/local/bin/ecs-deploy > /dev/null && \
    chmod +x /usr/local/bin/ecs-deploy

CMD ["ecs-deploy", "-h"]
