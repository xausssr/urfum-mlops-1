FROM urfum_mlops_3_1/base-image

RUN pip3 install dvc[ssh]

RUN apt install git

RUN useradd -m ml && echo "ml:ml" | chpasswd && adduser ml sudo

RUN mkdir /home/ml/projects

COPY . /home/ml/projects/

RUN pip3 install -r /home/ml/projects/requerments.txt

EXPOSE 8888