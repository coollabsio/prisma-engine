FROM rust:1.63-alpine3.16 as prisma
WORKDIR /prisma
ENV RUSTFLAGS="-C target-feature=-crt-static"
RUN apk --no-cache add openssl direnv git musl-dev openssl-dev build-base perl protoc
RUN git clone --depth=1 --branch=4.2.0 https://github.com/prisma/prisma-engines.git /prisma 
RUN cargo build --release

FROM alpine:3.16
WORKDIR /prisma-engines
COPY --from=prisma /prisma/target/release/query-engine /prisma/target/release/migration-engine /prisma/target/release/introspection-engine /prisma/target/release/prisma-fmt /prisma-engines/
