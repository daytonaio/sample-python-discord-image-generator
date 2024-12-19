FROM python:3.13.1-bookworm


WORKDIR /app

COPY requirements.txt ./
RUN apt-get update && apt-get install -y sudo
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py", "--env", "prod"]