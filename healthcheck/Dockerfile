# instruksi FROM (dijalankan untuk pull image yang ada di docker hub di proses build image)
FROM golang:1.18-alpine

RUN apk --no-cache add curl

# instruksi RUN (dijalankan hanya di proses build image)
RUN mkdir app

# intruksi COPY (dijalankan untuk menambahkan file dari source ke dalam folder destination di Docker Image)
# menambahkan file world.txt ke folder hello

# menambahkan semua file .txt ke folder hello
COPY main.go app

# intruksi EXPOSE (cointainer akan listen port pada nomor dan protocol tententu),
# Instruksi EXPOSE tidak akan mempublish port apapun sebenarnya, Instruksi EXPOSE hanya
# digunakan sebagai dokumentasi untuk memberitahu yang membuat Docker Container, bahwa
# Docker Image ini akan menggunakan port tertentu ketika dijalankan menjadi Docker Container
# ● EXPOSE port # default nya menggunakan TCP
# ● EXPOSE port/tcp
# ● EXPOSE port/udp
EXPOSE 8080

# instruksi HEALTHCHECK (digunakan untuk memberi tahu docker bagaimana untuk mengecek apakah container masih berjalan dengan baik atau tidak)
# secara otomatis Container akan memili status health, dari awalnya bernilai starting, jika sukses maka bernilai healthy, jika gagal akan bernilai unhealty
# ● HEALTHCHECK NONE # artinya disabled health check
# ● HEALTHCHECK [OPTIONS] CMD command
# ● OPTIONS :
# ○ --interval=DURATION (default: 30s)
# ○ --timeout=DURATION (default: 30s)
# ○ --start-period=DURATION (default: 0s)
# ○ --retries=N (default: 3)
HEALTHCHECK --interval=5s --start-period=5s CMD curl -f http://localhost:8080/health

# instruksi COMMAND/CMD (dijalankan saat container running)
CMD go run app/main.go