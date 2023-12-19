FROM ubuntu:22.04

RUN apt-get update && apt dist-upgrade -y \
  && apt-get install curl -y

# Repo install instructions found here https://repo.powerdns.com/
RUN echo "deb [signed-by=/etc/apt/keyrings/auth-48-pub.asc arch=amd64] http://repo.powerdns.com/ubuntu jammy-auth-48 main" \
> /etc/apt/sources.list.d/pdns.list \
  && echo "Package: auth*\nPin: origin repo.powerdns.com\nPin-Priority: 600" > /etc/apt/preferences.d/auth-48 \
  && install -d /etc/apt/keyrings; curl https://repo.powerdns.com/FD380FBB-pub.asc | tee /etc/apt/keyrings/auth-48-pub.asc


RUN apt-get install pdns-server pdns-backend-mysql -y

CMD [ "pdns_server" ]