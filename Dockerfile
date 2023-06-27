FROM python:3.9.7-buster

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Tokyo

RUN python3 -m pip install --upgrade pip && \
    pip install --no-cache-dir \
        black \
        jupyterlab \
        jupyterlab_code_formatter \
        jupyterlab-git \
        lckr-jupyterlab-variableinspector \
        jupyterlab_widgets \
        ipywidgets \
        import-ipynb

WORKDIR /workspace
ADD requirements.txt /workspace
RUN pip install -r requirements.txt