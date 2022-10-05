@echo off

setlocal
set da=%date: =0%
set ti=%time: =0%

cd %~dp0

docker-compose exec -T postgres-secrets pg_dump --username=metabase-db metabase > ./backup/backup_%da:~0,4%%da:~5,2%%da:~8,2%-%ti:~0,2%%ti:~3,2%%ti:~6,2%.sql
