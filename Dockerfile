FROM python:3.4-alpine
MAINTAINER Dongjin Park <dongjinmedia@gmail.com>
ADD . /code
WORKDIR /code
VOLUME /deploy
RUN pip install -r requirements.txt
CMD ["flask", "run"]
