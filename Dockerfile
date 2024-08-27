FROM python:3.11-slim
WORKDIR '/file_server'
COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python3", "app.py"]