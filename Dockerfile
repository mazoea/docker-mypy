FROM python:alpine

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir mypy && \
    rm -rf /root/.cache

WORKDIR /opt/src/
RUN adduser -D maz
USER maz

ENTRYPOINT [ "mypy" ]
CMD [ "--version" ]
