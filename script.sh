# FROM instruction
# penamaan image prefix sesuai profile akun docker hub
# docker build -t namaimage dirdockerfile
docker build -t budioct/from from

# melihat list image yang sudah di install
docker image ls
docker images


# RUN instruction
docker build -t budioct/run run

# RUN instruction dengan display out dan no cache
docker build -t budioct/run run --progress=plan --no-cache


# COMMAND/CMD instruction
docker build -t budioct/command command

# melihat detail image dengan key inspect
docker image inspect budioct/command

docker container create --name command budioct/command

docker container start command

# melihat container berjalan/langsung di tutup
#docker container ls -a | grep namacontainer
#docker container ls -a | grep command
docker container ls -a | Select-String command

docker container logs command


# LABEL instruction
docker build -t budioct/label label

# melihat detail image dengan key inspect
docker image inspect budioct/label


# ADD instruction
docker build -t budioct/add add

docker container create --name add budioct/add

docker container start add

docker container logs add


# COPY instruction
docker build -t budioct/copy copy

docker container create --name copy budioct/copy

docker container start copy

docker container logs copy


# Ignore instruction
docker build -t budioct/ignore ignore

docker container create --name ignore budioct/ignore

docker container start ignore

docker container logs ignore


# Expose instruction
docker build -t budioct/expose expose

docker image inspect budioct/expose

docker container create --name expose -p 8080:8080 budioct/expose

docker container start expose

# cek ke browser dengan link --> http://localhost:8080/


# ENV (Enviroment) instruction
docker build -t budioct/environment environment

docker image inspect budioct/environment

docker container create --name environment --env APP_PORT=8080 -p 8080:8080 budioct/environment

docker container start environment

docker container logs environment


# VOLUME instruction
docker build -t budioct/volume volume

docker image inspect budioct/volume

docker container create --name volume --env APP_PORT=8080 -p 8080:8080 budioct/volume

docker container start volume

docker container logs volume

# mencari hash volume, untuk di cari apakah docker volume dibuat otomatis
docker container inspect volume

# mengecek hasil hash volume dari container volume
docker volume ls


# WORKDIR instruction
docker build -t budioct/workdir workingdirectory

docker image inspect budioct/workdir

docker container create --name workdir -p 8080:8080 budioct/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

# USER instruction
docker build -t budioct/user user

docker image inspect budioct/user

docker container create --name user -p 8080:8080 budioct/user

docker container start user

docker container exec -i -t user /bin/sh

whoami

# ARG (Argument instuction)
docker build -t budioct/argument argument

docker image inspect budioct/argument

docker container create --name argument -p 8080:8080 budioct/argument

docker container start argument

docker container logs argument

#Kenapa Error?
#● Hal ini dikarenakan ARG hanya bisa diakses pada waktu build time, sedangkan CMD itu dijalankan pada saat runtime
#● Jadi jika kita ingin menggunakan ARG pada CMD, maka kita perlu memasukkan data ARG tersebut ke ENV


# HEALTHCHECK intruction
docker build -t budioct/healthcheck healthcheck

docker container create --name healthcheck -p 8080:8080 budioct/healthcheck

docker container start healthcheck

docker container ls
# nanti ada keterangan NAMES

docker container inspect healthcheck

docker container stop healthcheck


# ENTRYPOINT intruction
docker build -t budioct/entrypoint entrypoint

docker image inspect budioct/entrypoint

docker container create --name entrypoint -p 8080:8080 budioct/entrypoint

docker container start entrypoint

docker container logs entrypoint

docker container exec -i -t entrypoint /bin/sh

# MULTI STAGE BUILDER instruction
docker build -t budioct/multistagebuild multistagebuild

docker image inspect budioct/multistagebuild

docker container create --name multi -p 8080:8080 budioct/multistagebuild

docker container start multi

docker container logs multi

docker container exec -i -t multi /bin/sh

#saat di dalam aplikasi container. ==> ps aux

# Docker Hub Registry
# ● Setelah kita selesai membuat Image, selanjutnya hal yang biasa dilakukan adalah mengupload Image tersebut ke Docker Registry
# login akun kita
docker login -u budioct
# masukan password :
#Login Succeeded

#Logging in with your password grants your terminal complete access to your account.
#For better security, log in with a limited-privilege personal access token. Learn more at https://docs.docker.com/go/access-tokens/

# mendorong docker image kita ke repository docker hub akun kita
docker push budioct/multistagebuild



