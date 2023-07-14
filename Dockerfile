FROM python:3.10

ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt .

RUN apt-get update && apt-get install -y git

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "python3","manage.py", "runserver" ]