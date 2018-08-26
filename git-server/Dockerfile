FROM ubuntu:16.04

RUN apt-get update \
  && apt-get install -y openssh-server \
  && apt-get install -y git

RUN mkdir /var/run/sshd

# make 'admin' user
RUN useradd -s /bin/bash admin \
  && echo 'admin:empiredidnothingwrong' | chpasswd

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# create git repo
RUN mkdir /admin \
  && cd /admin \
  && git config --global user.email "admin@gitsever.com" \
  && git config --global user.name "admin" \
  && git init --bare \
  && chown -R admin:admin /admin 

COPY /post-receive /admin/hooks/post-receive

# Expose ports to host
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]



#https://docs.docker.com/engine/examples/running_ssh_service/#build-an-eg_sshd-image