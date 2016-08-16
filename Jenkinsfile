node {
  stage 'package'

  checkout scm
  
  docker.build('leeln/base:alpine', '-f base/alpine/Dockerfile .').push()
}