#
#
#

FROM jenkins/jenkins:lts

COPY --from=docker:20.10 /usr/local/bin/docker /usr/local/bin/
COPY --from=docker:20.10 /usr/bin/docker-compose /usr/local/bin/

USER jenkins
