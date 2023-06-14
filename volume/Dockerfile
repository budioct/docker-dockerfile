# instruksi FROM (dijalankan untuk pull image yang ada di docker hub di proses build image)
FROM golang:1.18-alpine

# instruksi ENV (environment)
ENV APP_PORT=8080
ENV APP_DATA=/logs

# instruksi RUN (dijalankan hanya di proses build image)
RUN mkdir ${APP_DATA}
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
EXPOSE ${APP_PORT}

# intruksi VOLUME(digunakan untuk membuat volume secara otomatis ketika kita membuat Docker Container)
# Semua file yang terdapat di volume secara otomatis akan otomatis di copy ke Docker Volume, walaupun kita tidak membuat Docker Volume ketika membuat Docker Container nya
# ● VOLUME /lokasi/folder
# ● VOLUME /lokasi/folder1 /lokasi/folder2 …
# ● VOLUME [“/lokasi/folder1”, “/lokasi/folder2”, “...”]
VOLUME ${APP_DATA}

# instruksi COMMAND/CMD (dijalankan saat container running)
CMD go run app/main.go