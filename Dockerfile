FROM python:3

WORKDIR /django-todo

RUN pip3 install django==3.2

COPY . .

RUN python3 manage.py migrate

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8003"]
