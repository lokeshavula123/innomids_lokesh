FROM python:3.8-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN /bin/sh -c pip install -r requirements.txt
CMD ["python", "main.py"]
