FROM python:alpine3.10

WORKDIR /app
COPY . /app
COPY /requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

#ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:8080","hello:app"]
#ENTRYPOINT ["python","hello.py"]
CMD python3 ./hello.py 
