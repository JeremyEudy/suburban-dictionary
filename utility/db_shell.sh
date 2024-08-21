docker container exec -it $(docker-compose ps -q db) psql -U db_role -d db 
