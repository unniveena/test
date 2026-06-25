FROM mysterysd/wzmlx:v3

WORKDIR /usr/src/app

COPY test.txt .
RUN uv pip install --python /wzvenv/bin/python --no-cache-dir -r test.txt

COPY . .

ENTRYPOINT ["bash", "start.sh"]
