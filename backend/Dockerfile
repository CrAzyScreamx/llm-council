FROM python:3.12-slim


WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN curl -LsSf https://astral.sh/uv/install.sh | \
    env UV_INSTALL_DIR=/usr/local/bin sh

# Sync virtual environment
RUN uv sync

# Port Exposure
EXPOSE 8001

ENV OPENROUTER_API_KEY=""

CMD ["uv", "run", "python", "-m", "main"]