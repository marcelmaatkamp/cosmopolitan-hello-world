FROM gcc:11 as gcc
WORKDIR /build
RUN \
 wget https://justine.lol/cosmopolitan/cosmopolitan-amalgamation-1.0.zip &&\
 unzip cosmopolitan-amalgamation-1.0.zip &&\
 printf 'main() { printf("hello world\\n"); }\n' >hello.c &&\
 mkdir -p dist &&\
 gcc -g -Os -static -nostdlib -nostdinc -fno-pie -no-pie -mno-red-zone \
  -fno-omit-frame-pointer -pg -mnop-mcount \
  -o hello-world.com.dbg hello.c -fuse-ld=bfd -Wl,-T,ape.lds \
  -include cosmopolitan.h crt.o ape.o cosmopolitan.a &&\
 objcopy -S -O binary hello-world.com.dbg dist/hello-world.com

FROM alpine
WORKDIR /application
COPY \
 --from=gcc \
  /build/dist/hello-world.com \
  /application/hello-world.com
ENTRYPOINT /application/hello-world.com
