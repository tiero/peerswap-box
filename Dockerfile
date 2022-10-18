FROM golang:1.18-buster as builder

WORKDIR /app

ARG TAG=v0.2.97

RUN set -ex \
	&& git clone https://github.com/ElementsProject/peerswap \
  && cd peerswap \
  && git fetch --tags \
  && git checkout ${TAG} -b latest \
	&& make -j$(nproc) bins

FROM debian:buster-slim

USER root

COPY --from=builder /app/peerswap/out/* /usr/local/bin/

ENTRYPOINT [ "peerswapd" ]


