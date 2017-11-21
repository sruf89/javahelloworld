FROM java:7

COPY src /home/root/helloworld/src
WORKDIR /home/root/helloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

