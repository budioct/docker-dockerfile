# instruksi FROM (dijalankan untuk pull image yang ada di docker hub di proses build image)
FROM golang:1.18-alpine

# intruksi WORKDIR (untuk menentukan direktory/folder untuk menjalankan instruksi RUN, CMD, ENTRYPOINT, COPY, dan ADD)
# ● Jika lokasi WORKDIR adalah relative path, maka secara otomatis dia akan masuk ke direktori dari WORKDIR sebelumnya
# ● WORKDIR juga bisa digunakan sebagai path untuk lokasi pertama kali ketika kita masuk ke dalam Docker Container
# ● WORKDIR /app # artinya working directory nya adalah /app
# ● WORKDIR docker # sekarang working directory nya adalah /app/docker
# ● WORKDIR /home/app # sekarang working directory nya adalah /home/app
WORKDIR /app


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
CMD go run main.go