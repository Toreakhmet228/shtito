FROM python:latest

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .

CMD ["gunicorn", "project.wsgi:application", "--bind", "0.0.0.0:8000"]