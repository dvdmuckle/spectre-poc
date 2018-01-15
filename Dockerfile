FROM gcc:latest as builder
WORKDIR /root/
COPY spectre.c .
COPY Makefile .
RUN make
RUN make install

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /root/spectre .
CMD ["./spectre"]
