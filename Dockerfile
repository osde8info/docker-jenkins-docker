#
#
#

FROM jenkins/jenkins:lts

COPY /usr/bin/docker /usr/local/bin/
COPY /usr/bin/docker-compose /usr/local/bin/

USER jenkins