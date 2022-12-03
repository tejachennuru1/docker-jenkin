FROM maven:3.8.6-ibm-semeru-11-focal
RUN git clone https://github.com/spring-projects/spring-petclinic.git
RUN cd spring-petclinic && mvn clean package && mkdir /demo
LABEL project=spring
LABEL author="teja"
EXPOSE 8080
RUN cp spring-petclinic/target/spring-petclinic-2.7.3.jar /demo
WORKDIR /demo
CMD ["java", "-jar", "spring-petclinic-2.7.3.jar"]
