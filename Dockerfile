FROM python:3
WORKDIR /django-app
COPY . .
RUN apt-get update && pip3 install django && python3 manage.py migrate
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
