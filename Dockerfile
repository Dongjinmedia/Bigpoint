FROM python:3.5

# Update and install dependencies
RUN apt-get update
RUN pip install Flask

ADD . /code

WORKDIR /code

# Set environment variables
ENV FLASK_APP=main.py

VOLUME /deploy

RUN pip install -r requirements.txt

CMD ["python", "main.py",  "--host=0.0.0.0"]