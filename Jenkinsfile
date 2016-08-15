node {
  stage 'package'
  docker.build('leeln/order-center', '-f base/alpine/Dockerfile .').push()
}