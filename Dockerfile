# Dockerfile
FROM python:3.9-slim

WORKDIR /app
COPY abdullahdjama.py .

CMD ["python", "abdullahdjama.py"]