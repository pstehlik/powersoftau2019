#!/bin/bash
docker run --name powersoftau -d --rm rust:latest tail -f /dev/null

docker exec -d powersoftau git clone https://github.com/kobigurk/phase2-bn254.git --branch ppot_ceremony && \
cd phase2-bn254/powersoftau && \
cargo build --release