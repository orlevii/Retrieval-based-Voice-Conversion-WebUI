# syntax=docker/dockerfile:1

FROM nvidia/cuda:11.6.2-cudnn8-runtime-ubuntu20.04

EXPOSE 7865
EXPOSE 8888

WORKDIR /app

# Install dependenceis to add PPAs
RUN apt-get update && \
    apt-get install -y -qq ffmpeg aria2 && apt clean && \
    apt-get install -y software-properties-common && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Add the deadsnakes PPA to get Python 3.9
RUN add-apt-repository ppa:deadsnakes/ppa

# Install Python 3.9 and pip
RUN apt-get update && \
    apt-get install -y build-essential python-dev python3-dev python3.9-distutils python3.9-dev python3.9 curl && \
    apt-get clean && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1 && \
    curl https://bootstrap.pypa.io/get-pip.py | python3.9

# Set Python 3.9 as the default
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1

COPY requirements.txt .
RUN python3 -m pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3", "infer-web.py"]
