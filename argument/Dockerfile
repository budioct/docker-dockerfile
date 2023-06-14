# instruksi FROM (dijalankan untuk pull image yang ada di docker hub di proses build image)
FROM golang:1.18-alpine

# instruksi ENV (environment)
# ENV yang digunakan ketika berjalan dalam Docker Container
ENV APP_PORT=8080

# instruksi ARG (Argument) // digunakan untuk mendefinisikan variable yang bisa digunakan oleh pengguna untuk dikirim ketika melakukan proses docker build menggunakan
# perintah --build-arg key=value
# ● ARG hanya digunakan pada saat proses build time, artinya ketika berjalan dalam Docker Container,
#   ARG tidak akan digunakan, berbeda dengan ENV yang digunakan ketika berjalan dalam Docker Container.
# ● Cara mengakses variable dari ARG sama seperti mengakses variable dari ENV, menggunakan ${variable_name}
# ● ARG key # membuat argument variable
# ● ARG key=defaultvalue # membuat argument variable dengan default value jika tidak diisi
ARG app=main

# instruksi RUN (dijalankan hanya di proses build image)
RUN mkdir app

# intruksi COPY (dijalankan untuk menambahkan file dari source ke dalam folder destination di Docker Image)
# menambahkan file world.txt ke folder hello

# menambahkan semua file .txt ke folder hello
COPY main.go app

RUN mv app/main.go app/${app}.go

# intruksi EXPOSE (cointainer akan listen port pada nomor dan protocol tententu),
# Instruksi EXPOSE tidak akan mempublish port apapun sebenarnya, Instruksi EXPOSE hanya
# digunakan sebagai dokumentasi untuk memberitahu yang membuat Docker Container, bahwa
# Docker Image ini akan menggunakan port tertentu ketika dijalankan menjadi Docker Container
# ● EXPOSE port # default nya menggunakan TCP
# ● EXPOSE port/tcp
# ● EXPOSE port/udp
EXPOSE ${APP_PORT}

# supaya intruksi argument bisa dijlankan di container kita perlu embed argument ke environment
ENV app=${app}
# instruksi COMMAND/CMD (dijalankan saat container running)
CMD go run app/${app}.go