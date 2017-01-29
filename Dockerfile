FROM microsoft/dotnet:1.0-runtime
RUN bash -c "ulimit -s unlimited"
RUN bash -c "apt-get update"
RUN bash -c "apt-get install -y libgdiplus"
WORKDIR /socisaWorkers
COPY . .
COPY /runtimes /runtimes
CMD dotnet socisaWorkers.dll