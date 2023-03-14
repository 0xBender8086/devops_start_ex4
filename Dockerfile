FROM ubuntu:18.04

WORKDIR /opt/webapp/

COPY requirements.txt /tmp/requirements.txt

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
RUN pip install -qr /tmp/requirements.txt

COPY . WORKDIR
EXPOSE 5000

CMD ["python", "WORKDIR/app.py"]