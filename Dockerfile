FROM python:3.8

WORKDIR /opt/webapp/

COPY requirements.txt /tmp/
ADD app.py WORKDIR
RUN pip3 install -r /tmp/requirements.txt

COPY . .
EXPOSE 5000

CMD ["python", "./app.py"]