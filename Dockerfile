FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install --no-cache-dir langchain-classic

RUN python -c "import langchain_classic; print('langchain_classic installed successfully')"

COPY . .

CMD ["python", "app.py"]