FROM python:2.7.18
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /usr/src/app

COPY notejam ./notejam
COPY requirements.txt .
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

RUN pip install -r requirements.txt

ENTRYPOINT [ "./entrypoint.sh"]