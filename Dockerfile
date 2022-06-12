FROM python:2.7.18

COPY ./notejam ./home
COPY requirements.txt ./home

RUN pip install -r ./home/requirements.txt

RUN ./home/manage.py makemigrations && \
    ./home/manage.py migrate

ENTRYPOINT [ "./home/manage.py", "runserver", "0.0.0.0:8000" ]