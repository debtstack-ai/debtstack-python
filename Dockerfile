FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml .
COPY debtstack/ debtstack/

RUN pip install --no-cache-dir ".[mcp]"

ENV DEBTSTACK_API_KEY=""

ENTRYPOINT ["python", "-m", "debtstack.mcp_server"]
