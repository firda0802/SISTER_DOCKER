 #From Instruction
 docker build -t firda/from from

 docker image ls

 #Run Instruction
 docker build -t firda/run run  
 docker build -t firda/run run --progress=plain --no-cache

 #Command Instruction
 docker build -t firda/command command  
 docker image inspect firda/command
 docker container create --name command firda/command
 docker container start command 
 docker container logs command

 #Label Instruction
 docker build -t firda/label label
 docker image inspect firda/label

#Add Instruction
docker build -t firda/add add
 docker container create --name add firda/add
 docker container start add
 docker container logs add

#Copy Instruction
docker build -t firda/copy copy

#Ignore Instruction
docker build -t firda/ignore ignore
docker container create --name ignore firda/ignore
docker container start ignore 
docker container logs ignore

#Expose Instruction
docker build -t firda/expose exposee
docker image inspect firda/exposee
docker container create --name exposee -p 8080:8080 firda/exposee
docker container start exposee
docker container ls

#Environment variable Instruction
docker build -t firda/env env
docker image inspect firda/env
docker container create --name env --env APP_PORT=8080 -p 8080:8080 firda/env
docker container start env
docker container logs env

#Volume Instruction
docker build -t firda/volume volume
docker image inspect firda/volume
docker container create --name volume --env APP_PORT=8080 -p 8080:8080 firda/volume
docker container start volume
docker container logs volume
docker container inspect volume
docker volume ls

#Working Direction Instruction
docker build -t firda/workdir workdir
docker container create --name workdir -p 8080:8080 firda/workdir
docker container start workdir
docker container exec -i -t workdir /bin/sh

#User Instruction
docker build -t firda/user user
docker container create --name user -p 8080:8080 firda/user
docker container start user
docker container exec -i -t user /bin/sh
