FROM ubuntu:18.04
 LABEL owner="mavrick202@gmail.com"
 RUN apt update; \
     apt install -y nginx unzip nano wget curl net-tools; \
     mkdir /myapp
 #RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
 RUN useradd -m testuser
 COPY /script.sh /myapp
 WORKDIR /myapp
 ADD https://releases.hashicorp.com/terraform/0.14.5/terraform_0.14.5_linux_amd64.zip /myapp
 #ADD https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_linux_amd64.zip /myapp
 #RUN unzip /myapp/terraform_0.12.29_linux_amd64.zip && mv /myapp/terraform /usr/local/bin
 RUN unzip //myapp/terraform_0.14.5_linux_amd64.zip  && mv /myapp/terraform /usr/local/bin
 VOLUME /testvol1 /testvol2
# VOLUME /testvol2
#USER testuser
 #ENTRYPOINT [ "bash", "script.sh" ]
 #USER mongodb
 #CMD ["nginx", "-g", "daemon off;"]
 #CMD 10
 ENTRYPOINT [ "bash","script.sh" ]
