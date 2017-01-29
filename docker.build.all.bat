docker rm socisa_worker
docker rmi socisaworkersdockercontainer_worker

docker rm redis_server
docker rmi redis:alpine

docker rm db_server
docker rmi mysql:5.7

docker-compose up