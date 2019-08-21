FROM python:3.5

# Update and install dependencies
RUN apt-get update
RUN pip install Flask

ADD . /code

WORKDIR /code

# Set environment variables
ENV FLASK_APP=main.py

RUN pip install virtualenv
RUN virtualenv -p python3.5 virtual
RUN /bin/bash -c "source /virtual/bin/activate"

VOLUME /deploy

RUN pip install -r requirements.txt

CMD ["flask", "run",  "--host=0.0.0.0"]