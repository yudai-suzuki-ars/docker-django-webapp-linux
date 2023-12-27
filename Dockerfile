
FROM tiangolo/uwsgi-nginx-flask:python3.6

RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt --no-cache-dir
ADD . /code/

# Start and enable SSH
RUN apt-get update \
  && apt-get install -y --no-install-recommends dialog \
  && apt-get install -y --no-install-recommends openssh-server \
  && echo "root:Docker!" | chpasswd \
  && chmod u+x ./entrypoint.sh
COPY sshd_config /etc/ssh/

COPY startup.sh /app/

RUN chmod u+x /app/startup.sh
EXPOSE 8000 2222
#CMD ["python", "/code/manage.py", "runserver", "0.0.0.0:8000"]
# ENTRYPOINT ["startup.sh"]
