FROM gcc:latest as builder
WORKDIR /root/
COPY spectre.c .
COPY Makefile .
RUN make
RUN make install

FROM scratch
WORKDIR /root/
COPY --from=builder /root/spectre .
CMD ["./spectre"]
