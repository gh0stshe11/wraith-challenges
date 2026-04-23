FROM python:3.12-slim

WORKDIR /challenge

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY pyromos.py ./
COPY .env.example ./

# ANTHROPIC_API_KEY must be supplied at runtime via -e or --env-file.
ENTRYPOINT ["python", "pyromos.py"]
