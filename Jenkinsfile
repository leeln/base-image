node {
  stage 'package'
 
  docker.withRegistry('https://registry.hub.docker.com','docker-registry-login') {
  	checkout scm
  	docker.build('leeln/base:alpine', 'base/alpine').push()

  	docker.build('leeln/java:jdk-7', 'base/java/7/jdk').push()
  	docker.build('leeln/java:jre-7', 'base/java/7/jre').push()

  	docker.build('leeln/java:jdk-8', 'base/java/8/jdk').push()
  	docker.build('leeln/java:jre-8', 'base/java/8/jre').push()
  }
}