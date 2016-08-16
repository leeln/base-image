node {
  stage 'package'
 
  docker.withRegistry('https://registry.hub.docker.com','docker-registry-login') {
  	checkout scm
  	docker.build('leeln/base:alpine', '-f base/alpine/Dockerfile .').push()
  }
}