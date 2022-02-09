FROM mcr.microsoft.com/dotnet/sdk:3.1
RUN dotnet tool install -g mlnet
# Install python - temporarily still required to be in your image
RUN apt-get update && \
  apt-get install -y --no-install-recommends python3 python3-distutils && \
  ln -sf /usr/bin/python3 /usr/bin/python
ENV PATH="$PATH:/root/.dotnet/tools"