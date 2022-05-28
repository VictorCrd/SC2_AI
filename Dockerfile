ARG IMAGE_VARIANT=slim-buster
ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION}-${IMAGE_VARIANT}

RUN  apt-get update \
  && apt-get install -y wget make

RUN rm -rf /var/lib/apt/lists/*

COPY requirements.txt requirements.txt

RUN python -m pip install --upgrade pip
RUN python -m pip install -r requirements.txt

CMD ["python"]