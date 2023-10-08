FROM python:3.10-slim-buster


WORKDIR /usr/src/app


# ensure Python output is sent directly to the terminal without buffering
ENV PYTHONUNBUFFERED 1
ENV DOCKER_BUILDKIT=1
ENV PYTHONDONTWRITEBYTECODE 1

RUN pip install --upgrade pip
COPY ./requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt


COPY . /usr/src/app/

EXPOSE 8000
EXPOSE 6379
