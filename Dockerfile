FROM python:3.9-alpine

WORKDIR /opt

COPY . ./opt/

RUN pip install -r ./opt/requirements.txt

EXPOSE 5000

ENTRYPOINT FLASK_APP=./opt/app.py flask run --host=0.0.0.0