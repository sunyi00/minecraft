FROM sunyi00/centos-java:1.0.0

RUN mkdir -p /minecraft
RUN cd /minecraft
RUN wget https://s3.amazonaws.com/Minecraft.Download/versions/1.8.8/minecraft_server.1.8.8.jar
COPY entrypoint /minecraft/
WORKDIR /minecraft
EXPOSE 25565
ENTRYPOINT /minecraft/entrypoint
