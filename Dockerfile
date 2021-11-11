FROM ubuntu:18.04

# Install gunicorn3
RUN apt-get update && apt-get install -y \
  python3 \
  python3-pip \
  gunicorn3 \
  curl jq vim \
  && rm -rf /var/lib/apt/lists/*

COPY ./app/* /app/

# Install Flask
RUN pip3 install --no-cache-dir -r app/requirements.txt

WORKDIR /app
CMD ["./gunicorn.sh"]
