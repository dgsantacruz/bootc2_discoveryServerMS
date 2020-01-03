#This is the base.
FROM java:8

#This is the port.
EXPOSE 8001:8001

#The ADD instruction copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the image at the path <dest>
ADD /target/DiscoveryServiceDocker.jar DiscoveryServiceDocker.jar

#Executable
ENTRYPOINT ["java", "-jar", "DiscoveryServiceDocker.jar"]