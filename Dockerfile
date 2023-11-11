# docker build -t mysparql_fastapi .


FROM python:3.8
# FROM bitnami/python:3.11.6-debian-11-r10
WORKDIR /app
COPY . .
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --no-cache-dir -r requirements.txt 
EXPOSE 8001
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8001"]
