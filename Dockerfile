FROM python:3.8-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
CMD ["python", "main.py"]
