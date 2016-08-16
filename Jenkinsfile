node {
  stage 'package'
 
  docker.withRegistry('https://index.docker.io/v1/', 'ZXhjYWxpYnVyOmx6eTQzNjE4MTQ=') {
  	checkout scm
  	docker.build('leeln/base:alpine', '-f base/alpine/Dockerfile .').push()
  }
}