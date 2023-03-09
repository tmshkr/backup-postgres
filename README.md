# backup-postgres

A simple script to backup a Postgres database to AWS S3.

To run it locally, copy `.env.example` to provide your own values:

```
cp .env.example .env
```

Then run the script with Docker Compose:

```
docker compose up
```

## Automated backups

You can use [ECS](https://aws.amazon.com/ecs/) to run this script on a schedule. Just provide the environment variables in the task definition:

`DATABASE_URL` the url of the database to backup, starting with `postgres://`

`S3_BUCKET` the bucket where the backup will be uploaded

The image is available to use on Docker Hub: [tmshkr/backup-postgres](https://hub.docker.com/r/tmshkr/backup-postgres)
