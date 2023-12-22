#!/usr/bin/sh


OUTPUT_SCRIPT="/docker-entrypoint-initdb.d/db_config.sql"


cat > ${OUTPUT_SCRIPT} <<- END
--
-- creating the database dvdrental
CREATE DATABASE dvdrental;

END

