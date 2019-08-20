FROM python:3.4-alpine
ADD . /code
WORKDIR /code
VOLUME /deploy
RUN pip install -r requirements.txt
CMD ["flask", "run"]