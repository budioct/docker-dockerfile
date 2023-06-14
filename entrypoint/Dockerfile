# instruksi FROM (dijalankan untuk pull image yang ada di docker hub di proses build image)
FROM golang:1.18-alpine

# instruksi RUN (dijalankan hanya di proses build image)
RUN mkdir /app/

# intruksi COPY (dijalankan untuk menambahkan file dari source ke dalam folder destination di Docker Image)
# menambahkan file world.txt ke folder hello

# menambahkan semua file .txt ke folder hello
COPY main.go /app/

# intruksi EXPOSE (cointainer akan listen port pada nomor dan protocol tententu),
# Instruksi EXPOSE tidak akan mempublish port apapun sebenarnya, Instruksi EXPOSE hanya
# digunakan sebagai dokumentasi untuk memberitahu yang membuat Docker Container, bahwa
# Docker Image ini akan menggunakan port tertentu ketika dijalankan menjadi Docker Container
# ● EXPOSE port # default nya menggunakan TCP
# ● EXPOSE port/tcp
# ● EXPOSE port/udp
EXPOSE 8080

# intruksi ENTRYPOINT (untuk menentukan executable file yang akan dijalankan oleh container)
# ● Biasanya ENTRYPOINT itu erat kaitannya dengan instruksi CMD
# ● Saat kita membuat instruksi CMD tanpa executable file, secara otomatis CMD akan menggunakan
# ● ENTRYPOINT [“executable”, “param1”, “param2”]
# ● ENTRYPOINT executable param1 param2
# ● Saat menggunakan CMD [“param1”, “param2”], maka param tersebut akan dikirim ke
ENTRYPOINT ["go", "run"]

# instruksi COMMAND/CMD (dijalankan saat container running)
#CMD go run app/main.go
CMD ["/app/main.go"]