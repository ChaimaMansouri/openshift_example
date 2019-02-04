# you can create your own builder image in docker file but for python
# openshift has already one: registry.access.redhat.com/rhscl/python-35-rhel7
#
#FROM registry.access.redhat.com/rhscl/python-35-rhel7
#ENV PYTHONUNBUFFERED 1
#RUN mkdir /code
#WORKDIR /code
#COPY requirements.txt /code/
#RUN pip install -r requirements.txt
#COPY . /code/
#EXPOSE 8000:8000

