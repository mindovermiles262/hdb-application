FROM harperdb/harperdb:latest
USER root
RUN apt update && apt install -y curl
COPY . /home/harperdb/app
RUN chown -R harperdb:harperdb /home/harperdb/app

USER harperdb
ENV LOCALSTUDIO_ENABLED=true
HEALTHCHECK CMD /home/harperdb/app/healthcheck.sh
CMD ["harperdb", "run", "/home/harperdb/app"]