#
#
#

FROM jenkins/jenkins:lts

COPY --from=docker:20.10 /usr/local/bin/docker /usr/local/bin/

USER jenkins
