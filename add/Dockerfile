# instruksi FROM (dijalankan untuk pull image yang ada di docker hub di proses build image)
FROM alpine:3

# instruksi RUN (dijalankan hanya di proses build image)
RUN mkdir hello

# intruksi ADD (dijalankan untuk menambahkan file dari source ke dalam folder destination di Docker Image)
# ADD selain melakukan copy, dia bisa mendwonload source dari URL dan otomatis melakukan extract file kompres
# menambahkan file world.txt ke folder hello
ADD text/world.txt hello

# menambahkan semua file .txt ke folder hello
ADD text/*.txt hello

# instruksi COMMAND/CMD (dijalankan saat container running)
CMD cat "hello/world.txt"
