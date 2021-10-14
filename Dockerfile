FROM ubuntu:18.04

# Install gunicorn3
RUN apt-get update && apt-get install -y \
  python3 \
  python3-pip \
  gunicorn3 \
  curl jq vim \
  && rm -rf /var/lib/apt/lists/*

# Install Flask
RUN pip3 install --upgrade pip
RUN pip3 install flask

COPY ./app/* /app/

EXPOSE 80/tcp

WORKDIR /app
CMD ["./gunicorn.sh"]
