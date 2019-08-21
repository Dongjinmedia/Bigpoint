FROM python:3.5

ADD . /code

WORKDIR /code


# Set environment variables
ENV FLASK_APP=main.py

VOLUME /deploy

RUN pip install -r requirements.txt

CMD ["python", "main.py"]