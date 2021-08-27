# PopCat Echo - Deploy Scripts

The deploy scripts for popcat-echo(<https://github.com/supersonictw/popcat-echo>).

## Installation

```shell
docker-compose up -d
docker exec echo initialize_db.sh
# "echo" is the name of the docker container, which is running the "echo" process.
```

> Powered by [docker-compose](https://docs.docker.com/compose/)
