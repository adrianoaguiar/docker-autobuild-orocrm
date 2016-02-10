FROM scherepanov/orobase
USER www-data

# Build Args
ARG SSH_PRIVATE_KEY
ARG GITHUB_TOKEN
ARG MEMORY_LIMIT_CLI=2048
ARG MEMORY_LIMIT_FPM=2048
ARG UPLOAD_LIMIT=256
ARG GIT_URI=https://github.com/orocrm/crm-application.git
ARG GIT_REF=tags/1.8.2

RUN install-application.sh

USER root
CMD ["run.sh"]
