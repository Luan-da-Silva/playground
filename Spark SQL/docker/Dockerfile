FROM postgres:11.17-alpine

EXPOSE 5432/tcp

# environment variables for the postgres image (super admin)
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD 1234

COPY gen_config_script.sh /tmp/
# environment variables for the shell script gen_config_script.sh

RUN sh /tmp/gen_config_script.sh
RUN rm /tmp/gen_config_script.sh

COPY docker-entrypoint-initdb.d/. /docker-entrypoint-initdb.d/
