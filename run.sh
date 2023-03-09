#!/bin/bash

echo "backing up postgres database to s3"

pg_dump -d "$DATABASE_URL" > /dump/backup.sql
# aws s3 cp /dump/backup.sql s3://mybucket/backup.sql

echo "done"