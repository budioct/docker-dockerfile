# instruksi FROM (dijalankan untuk pull image yang ada di docker hub di proses build image)
FROM alpine:3

# instruksi RUN (dijalankan hanya di proses build image)
RUN mkdir hello
RUN echo "Hello World" > "hello/world.txt"

# instruksi COMMAND/CMD (dijalankan saat container running)
CMD  cat "hello/world.txt"

