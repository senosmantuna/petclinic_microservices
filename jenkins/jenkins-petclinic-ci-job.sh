echo 'Running Unit Tests on Petclinic Application'
docker run --rm -v $HOME/.m2:/root/.m2 -v `pwd`:/app -w /app maven:3.8-openjdk-11 mvn clean test
```
* Create a webhook for Jenkins CI Job; 

  + Go to the project repository page and click on `Settings`.

  + Click on the `Webhooks` on the left hand menu, and then click on `Add webhook`.

  + Copy the Jenkins URL, paste it into `Payload URL` field, add `/github-webhook/` at the end of URL, and click on `Add webhook`.
  
  ``` text
  http://[jenkins-server-hostname]:8080/github-webhook/