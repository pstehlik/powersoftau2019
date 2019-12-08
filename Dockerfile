FROM rust:latest

RUN git clone https://github.com/kobigurk/phase2-bn254.git --branch ppot_ceremony /tmp/ppot_ceremony && \
cd /tmp/ppot_ceremony && \
cargo build --release --manifest-path=/tmp/ppot_ceremony/powersoftau/Cargo.toml
RUN echo "Compiled {`ls /tmp/ppot_ceremony/powersoftau/target/release`}"

CMD ["tail", "-f", "/dev/null"]