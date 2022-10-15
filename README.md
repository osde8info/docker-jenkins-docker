# docker-jenkins-docker

see

https://itnext.io/docker-inside-docker-for-jenkins-d906b7b5f527

after running 

`docker-compose up -d`

accessing jenkins for the first time with `wget localhost:8080` will fail with "HTTP request sent, awaiting response... 401 Forbidden" or ""HTTP request sent, awaiting response... 403 Forbidden"

you need to use `wget` with `--auth-no-challenge` 

run
`docker logs myjenkins`
or
```
docker -it myjenkins bash
cat /var/lib/jenkins/secrets/initialAdminPassword`
```
to get the SECRET 

then

`wget --auth-no-challenge --user=admin --password=SECRET localhost:8080`

see 

https://www.jenkins.io/doc/book/system-administration/authenticating-scripted-clients/#:~:text=Note%20that%20Jenkins%20does%20not%20do%20any%20authorization,first%20request%20%28aka%20%22preemptive%20authentication%22%29.%20Shell%20with%20curl
