FROM python:3
RUN pip install fonttools[woff]
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get -y install nodejs npm && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN npm install -g font-ranger