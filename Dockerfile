FROM python:3.9


RUN python3 -m venv .venv
RUN source .venv/bin/activate


RUN pip install -r ./requirements.txt

EXPOSE 5000

COPY . .

CMD ["flask", "run"]