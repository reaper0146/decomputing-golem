# Dockerfile used to build the VM image which will be downloaded by providers.
# The file must specify a workdir and at least one volume.
FROM python:3.8.7-slim

VOLUME /golem/input /golem/output

RUN pip install --upgrade pip
RUN pip install --upgrade pip wheel
RUN pip install matplotlib
RUN pip install numpy
RUN pip install pandas
RUN pip install sklearn
RUN pip install pywavelets


COPY worker.py /golem/entrypoint/
COPY SCG_data.csv /golem/input
WORKDIR /golem/entrypoint

