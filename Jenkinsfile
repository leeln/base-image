node {
  stage 'package'
 
  docker.withRegistry('docker-registry-login') {
  	checkout scm
  	docker.build('leeln/base:alpine', '-f base/alpine/Dockerfile .').push()
  }
}