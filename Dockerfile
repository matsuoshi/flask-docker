FROM python:3.11.4

WORKDIR /app

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY ./app /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["flask", "run"]
