# powersoftau2019
powers of tau setup + run for 2019 ceremony

```
sudo docker run --name powersoftau -d --rm rust:latest tail -f /dev/null

sudo docker exec -it powersoftau bash

cd /tmp

git clone https://github.com/kobigurk/phase2-bn254.git --branch ppot_ceremony && \
cd phase2-bn254/powersoftau && \
cargo build --release

# get challenge file

mv challenge_nnnn challenge


```