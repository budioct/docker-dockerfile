# instruksi FROM (dijalankan untuk pull image yang ada di docker hub di proses build image)
FROM alpine:3

# instruksi RUN (dijalankan hanya di proses build image)
RUN mkdir hello

# intruksi COPY (dijalankan untuk menambahkan file dari source ke dalam folder destination di Docker Image)
# menambahkan file world.txt ke folder hello
#COPY text/world.txt hello

# menambahkan semua file ke folder hello
COPY text/* hello

CMD ls -l hello