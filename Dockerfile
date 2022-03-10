#THIS DOCKERFILE BUILDS AN IMAGE
#AN IMAGE IS A BLUEPRINT FOR A CONTAINER
#WHAT'S A CONTAINER? A CONTAINER IS SIMILAR TO A VIRTUAL MACHINE,
#   BUT IT REUSES THE COMPUTER'S OPERATING SYSTEM FUNCTIONALITY
#   RATHER THAN RECREATEING AN ENTIRE OPERATING SYSTEM
#   WHY? WE WANT TO a) STANDARDIZE THE CREATION OF ENVIRONMENTS FOR OUR PROGRAMS
#       IN A WAY THAT IS LIGHTWEIGHT AND MORE MODIFIABLE
#       COMPARE THIS TO HAVING TO MANUALLY RECONFIGURE YOUR VIRTUAL MACHINE
#       WHEN YOU WANT TO MODIFY THE ENVIRONMENT

#This DOCKERFILE will build an IMAGE
#An IMAGE is itself just a blueprint for a CONTAINER
#A CONTAINER is a lightweight virtualized environment
#That reuses its computer's OS kernel

#The image that we start our dockerfile FROM
#Because this image is not on our local repository, it will be pulled
#from the docker repository automatically
FROM openjdk:17-jdk-alpine
COPY target/TedTake2-0.0.1-SNAPSHOT.jar digi.jar
CMD ["java", "-jar", "/digi.jar"]
EXPOSE 9000
#On a pipeline:
#you could build an image on the pipeline using
#the *exact same commands* as windows
#(it is universal, after all)
#and run the container from docker as such
#you could also use this to kill previous containers,
#as well as modify ports, env variables, etc