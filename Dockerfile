FROM python:3.6-alpine

MAINTAINER jcoady9 jcoady927@gmail.com

ENV RDLTR_SETTINGS
ENV RDLTR_DB_URL
ENV RDLTR_SECRET_KEY
ENV RDLTR_LOG
ENV RDLTR_HOST
ENV RDLTR_PORT
ENV RDLTR_WORKERS
ENV RDLTR_ALLOW_REGISTRATION

# download rdltr python module & create rdltr directory
RUN pip install rdltr && mkdir /rdltr

# copy entrypoint.sh to image
COPY entrypoint.sh .

VOLUME ['/rdltr']

EXPOSE 5000

ENTRYPOINT ['entrypoint.sh']