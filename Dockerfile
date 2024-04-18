FROM python:3.12-alpine

WORKDIR /app

RUN pip install fastapi uvicorn

COPY . .

EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
