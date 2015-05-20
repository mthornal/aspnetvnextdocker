FROM microsoft/aspnet:coreclr-1.0.0-beta5-11624

ADD . /app/
WORKDIR /app
RUN ["dnu", "restore"]

EXPOSE 5004
ENTRYPOINT ["dnx", ".", "kestrel"]