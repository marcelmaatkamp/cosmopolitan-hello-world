FROM alpine as alpine
ADD \
 https://raw.githubusercontent.com/marcelmaatkamp/cosmopolitan/main/binaries/dist/examples/hello.com.dbg \
 /hello.com
RUN \
 chmod +x /hello.com

FROM scratch
COPY --from=alpine /hello.com /hello.com
ENTRYPOINT ["/hello.com"]
