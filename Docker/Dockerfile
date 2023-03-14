FROM ubuntu:18.04

ADD * /opt/webapp/
EXPOSE 5000

RUN apt update \
&& RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip \
&& mv /opt/webapp/Docker/requirements.txt /tmp/ \
&& pip install -qr /tmp/requirements.txt \
&& apt remove -y python-pip \
&& rm -rf /var/lib/apt/lists/* \

CMD ["python3", "-m", "flask", "run" "/opt/webapp/app.py"]