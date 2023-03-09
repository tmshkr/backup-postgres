#!/bin/bash
set -e

echo "backing up database to s3://$S3_BUCKET"
ts=$(date +"%Y-%m-%dT%H:%M:%S%z")

pg_dump -d "$DATABASE_URL" > /$ts.sql
zip $ts.zip /$ts.sql
aws s3 cp $ts.zip s3://$S3_BUCKET/$ts.zip
rm $ts.zip
rm $ts.sql

echo "done"