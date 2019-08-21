FROM python:3.5

ADD . /code

WORKDIR /code

# Set environment variables
ENV FLASK_APP main.py

ENV FLASK_RUN_HOST 0.0.0.0

VOLUME /deploy

RUN pip install -r requirements.txt

CMD ["flask", "run"]