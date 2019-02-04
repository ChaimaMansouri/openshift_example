# you can create your own builder image in docker file but for python
# openshift has already one: registry.access.redhat.com/rhscl/python-35-rhel7
<<<<<<< HEAD
#FROM python:3.6
#ENV PYTHONUNBUFFERED 1
#RUN mkdir /code
#WORKDIR /code
#COPY requirements.txt /code/
#RUN pip install -r requirements.txt
#COPY . /code/
#EXPOSE 8000:8000
#RUN python manage.py runserver
=======
FROM registry.access.redhat.com/rhscl/python-35-rhel7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
EXPOSE 8000:8000
>>>>>>> ae3300b91fa72ee65babdf801cb20ad8c0225d51
