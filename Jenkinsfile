node {
  stage 'package'

  git 'https://github.com/leeln/base.git'
  
  docker.build('leeln/base:alpine', '-f base/alpine/Dockerfile .').push()
}