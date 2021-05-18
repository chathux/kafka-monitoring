# Configuration

`docker-compose build`
`docker-compose up`

## Create test topic 

connect to the container

`docker exec -it <container_id> /bin/bash`

`/usr/local/confluent/bin//kafka-topics --create --topic test-topic --bootstrap-server localhost:9092`

## Publish with curl

`curl -X POST -H "Content-Type: application/vnd.kafka.json.v2+json"       --data '{"records":[{"value":{"foo":"bar"}}]}' "http://localhost:8082/topics/test-topic"`

## Sample Docker Commands

### connect to container shell
`docker exec -it ch-node1 /bin/bash`

### build from docker file
`docker build -t ch-node1 -f ch-node1.dockerfile .`

### run container
`docker run -d --name clickhouse-node1 clickhouse-node1`

`docker run -i -t --add-host ch-node1:192.168.1.10 ch-node1 `

### remove all containers
`docker container prune`

### docker compose build
`docker-compose build`

### docker compose run
`docker-compose run --use-aliases ch-node-1`

### docker compose up
`docker-compose up`
`docker-compose up -d`
`docker-compose up --build`

### attach to a container 
`docker attach ch-node1`