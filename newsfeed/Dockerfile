FROM python:3.12-alpine


RUN mkdir -p /app
WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY api api
COPY *.py .

ENTRYPOINT ["python"]
CMD ["-m", "flask", "run", "--port", "8081", "--host", "0.0.0.0"]
