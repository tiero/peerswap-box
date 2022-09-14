# peerswap docker box

**Requirements**

- Docker
- Docker Compose

* Run the box

```sh
docker-compose up -d
```

* Check logs

```sh
docker logs peerswap
```

* Try use pscli

```sh
docker exec -it peerswap pscli lbtc-getaddress
```

* Tear down

```sh
docker-compose down -v
```