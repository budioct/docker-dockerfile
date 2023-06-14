# instruksi FROM (dijalankan untuk pull image yang ada di docker hub di proses build image)
FROM golang:1.18-alpine

# instruksi RUN (dijalankan hanya di proses build image)
RUN mkdir /app

RUN addgroup -S anakomamatgroup
RUN adduser -S -D -h /app anakomamatuser anakomamatgroup
RUN chown -R anakomamatuser:anakomamatgroup /app

# instruksi USER (untuk mengubah user atau user group ketika Docker Image dijalankan)
# ● Secara default, Docker akan menggunakan user root, namun pada beberapa kasus, mungkin ada
#   aplikasi yang tidak ingin jalan dalam user root, maka kita bisa mengubah user nya menggunakan instruksi USER.
# ● USER <user> # mengubah user
# ● USER <user>:<group> # mengubah user dan user group
USER anakomamatuser

# intruksi COPY (dijalankan untuk menambahkan file dari source ke dalam folder destination di Docker Image)
# menambahkan file world.txt ke folder hello

# menambahkan semua file .txt ke folder hello
COPY main.go /app

# intruksi EXPOSE (cointainer akan listen port pada nomor dan protocol tententu),
# Instruksi EXPOSE tidak akan mempublish port apapun sebenarnya, Instruksi EXPOSE hanya
# digunakan sebagai dokumentasi untuk memberitahu yang membuat Docker Container, bahwa
# Docker Image ini akan menggunakan port tertentu ketika dijalankan menjadi Docker Container
# ● EXPOSE port # default nya menggunakan TCP
# ● EXPOSE port/tcp
# ● EXPOSE port/udp
EXPOSE 8080

# instruksi COMMAND/CMD (dijalankan saat container running)
CMD go run /app/main.go