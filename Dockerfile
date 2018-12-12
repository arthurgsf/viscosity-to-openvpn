FROM python:2.7.15-jessie
MAINTAINER Vlad Duda "vlad.duda@outlook.com"

RUN apt-get update -y
RUN pip install --upgrade pip

WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT ["python", "viscosity-to-openvpn.py"]
