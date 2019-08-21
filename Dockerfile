FROM python:3.4-alpine
ADD . /code
WORKDIR /code
VOLUME /deploy
RUN apt install -y python-pip
RUN pip install -r requirements.txt
CMD ["flask", "run"]