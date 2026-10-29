FROM scottyhardy/docker-wine:latest
WORKDIR /opt/app
COPY app/CityCat.exe .
COPY startup.sh /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup.sh
WORKDIR /data
ENTRYPOINT ["startup.sh"]
