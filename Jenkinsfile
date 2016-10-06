node {
  stage 'package'
 	
  docker.withServer('tcp://106.186.112.244:2375') {
  	docker.withRegistry('https://docker.repo.leeln.com','leeln-admin') {
	  	checkout scm
	  	docker.build('leeln/alpine:3.4', 'alpine/3.4').push()

	  	docker.build('leeln/java:jdk-7', 'java/7/jdk').push()
	  	docker.build('leeln/java:jre-7', 'java/7/jre').push()

	  	docker.build('leeln/java:jdk-8', 'java/8/jdk').push()
	  	docker.build('leeln/java:jre-8', 'java/8/jre').push()
  	}
  }
  
}