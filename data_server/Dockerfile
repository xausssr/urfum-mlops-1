FROM urfum_mlops_3_1/base-image

RUN pip3 install dvc[ssh]

RUN apt install -y openssh-server

RUN useradd -m data && echo "data:data" | chpasswd && adduser data sudo

RUN mkdir /var/run/sshd
RUN service ssh restart

RUN mkdir /opt/datasets

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D", "-o", "ListenAddress=0.0.0.0"]
