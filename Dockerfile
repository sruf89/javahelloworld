FROM java:7

COPY src /home/root/javahelloworld/helloworld/src
WORKDIR /home/root/javahelloworld/helloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

