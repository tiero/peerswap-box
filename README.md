# peerswap docker box

**Requirements**

- Docker
- Docker Compose


**How to use**

* Run the box

```sh
docker-compose up -d
```

* Check logs of Core LN

```sh
docker logs cln
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