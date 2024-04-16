FROM python:3-alpine

RUN pip3 install Django==5.0.4

COPY . .

RUN python3 manage.py migrate

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8004"]
