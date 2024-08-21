FROM python:3.12

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
ENV TZ="America/New York"

COPY requirements.txt .
RUN pip install -r requirements.txt

RUN mkdir -p /opt/services/web/src
WORKDIR /opt/services/web/src

COPY . /opt/services/web/src

COPY utility/.bashrc /root/.bashrc

RUN apt update -yq && \
        apt install -yq nodejs npm

EXPOSE 80
