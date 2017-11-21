FROM java:7

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/helloworld/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

