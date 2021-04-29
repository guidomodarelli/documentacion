# PostgreSQL Backups

## Backup
```bash
$ docker exec -t db pg_dump -U postgres | gzip -9 > dump.gz
```

## Restore
```bash
$ gunzip < dump.gz | docker exec -i db psql -U postgres
```
