FROM python:3.8
COPY /requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python", "hello.py"]
