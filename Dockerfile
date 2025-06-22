FROM python:3.11

WORKDIR /data

# Install dependencies
RUN pip install django==3.2 psycopg2-binary

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
