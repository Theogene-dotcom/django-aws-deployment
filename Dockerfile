FROM python:3.12.4
WORKDIR /app
COPY ./my_app ./
RUN pip install --upgrade pip --no-cache-dir
RUN pip install -r /app/requirements.txt --no-cache-dir
EXPOSE 8000
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
#CMD ["gunicorn", "--bind", "0.0.0.0:8000", "main_app.wsgi:application"]
