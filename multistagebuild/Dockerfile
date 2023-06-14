# instruksi MULTI STAGE BUILDER
# ● Saat kita membuat Dockerfile dari base image yang besar, secara otomatis ukuran Image nya pun akan menjadi besar juga
# ● Oleh karena itu, usahakan selalu gunakan base image yang memang kita butuhkan saja, jangan terlalu banyak menginstall fitur di Image padahal tidak kita gunakan

# Contoh Solusi Dengan Image Size Besar
# ● Sebelumnya kita menggunakan bahasa pemrograman Go-Lang untuk membuat web sederhana.
# ● Sebenarnya, Go-Lang memiliki fitur untuk melakukan kompilasi kode program Go-Lang menjadi
#   binary file, sehingga tidak membutuhkan Image Go-Lang lagi
# ● Kita bisa melakukan proses kompilasi di laptop kita, lalu file binary nya yang kita simpan di Image,
#   dan cukup gunakan base image Linux Alpine misal nya
# ● Namun pada kasus Go-Lang, kita di rekomendasikan melakukan kompilasi file binary di sistem
#   operasi yang sama, pada kasus ini saya menggunakan Mac, sedangkan ingin menggunakan Image
#   Alpine, jadi tidak bisa saya lakukan

# Multi Stage Build
# ● Docker memiliki fitur Multi Stage Build, dimana dalam Dockerfile, kita bisa membuat beberapa Build Stage atau tahapan build
# ● Seperti kita tahu, bahwa di awal build, biasanya kita menggunakan instruksi FROM, dan di dalam
#   Dockerfile, kita bisa menggunakan beberapa instruksi FROM
# ● Setiap Instruksi FROM, artinya itu adalah build stage
# ● Hal build stage terakhir adalah build stage yang akan dijadikan sebagai Image
# ● Artinya, kita bisa memanfaatkan Docker build stage ini untuk melakukan proses kompilasi kode program Go-Lang kita

# instruksi FROM (dijalankan untuk pull image yang ada di docker hub di proses build image)
FROM golang:1.18-alpine as builder

# intruksi WORKDIR (untuk menentukan direktory/folder untuk menjalankan instruksi RUN, CMD, ENTRYPOINT, COPY, dan ADD)
# ● Jika lokasi WORKDIR adalah relative path, maka secara otomatis dia akan masuk ke direktori dari WORKDIR sebelumnya
# ● WORKDIR juga bisa digunakan sebagai path untuk lokasi pertama kali ketika kita masuk ke dalam Docker Container
# ● WORKDIR /app # artinya working directory nya adalah /app
# ● WORKDIR docker # sekarang working directory nya adalah /app/docker
# ● WORKDIR /home/app # sekarang working directory nya adalah /home/app
WORKDIR /app/


# intruksi COPY (dijalankan untuk menambahkan file dari source ke dalam folder destination di Docker Image)
# menambahkan file world.txt ke folder hello

# menambahkan semua file .txt ke folder hello
COPY main.go /app/

# instruksi RUN (dijalankan hanya di proses build image)
RUN go build -o /app/main /app/main.go


FROM alpine:3
WORKDIR /app/
COPY --from=builder /app/main /app/

# instruksi COMMAND/CMD (dijalankan saat container running)
CMD /app/main