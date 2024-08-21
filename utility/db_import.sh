docker container exec -i $(docker-compose ps -q db) pg_restore -U db_role -d db < $1
