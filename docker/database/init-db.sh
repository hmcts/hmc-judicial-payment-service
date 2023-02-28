#!/usr/bin/env bash

 set -e

 if [ -z "$JUDICIAL_PAYMENT_SERVICE_DB_USERNAME" ] || [ -z "$JUDICIAL_PAYMENT_SERVICE_DB_PASSWORD" ]; then
   echo "ERROR: Missing environment variable. Set value for both 'CFT_HEARING_SERVICE_DB_USERNAME' and 'CFT_HEARING_SERVICE_DB_PASSWORD'."
   exit 1
 fi

 # Create role and database
 psql -v ON_ERROR_STOP=1 --username postgres --set USERNAME=$JUDICIAL_PAYMENT_SERVICE_DB_USERNAME --set PASSWORD=$JUDICIAL_PAYMENT_SERVICE_DB_PASSWORD <<-EOSQL
   CREATE USER :USERNAME WITH PASSWORD ':PASSWORD';
   CREATE DATABASE hmc_judicial-payment-service
     WITH OWNER = :USERNAME
     ENCODING = 'UTF-8'
     CONNECTION LIMIT = -1;
   ALTER SCHEMA public OWNER TO :USERNAME;
 EOSQL