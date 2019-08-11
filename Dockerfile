FROM microsoft/dotnet:2.1-sdk
COPY . /app
WORKDIR /app
RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]
EXPOSE 80/tcp
RUN chmod +x ./entrypoint.sh
CMD /bin/bash ./entrypoint.sh

#EXPOSE 5100/tcp
#ENV ASPNETCORE_URLS http://*:5100
#ENTRYPOINT ["dotnet", "app.dll"]