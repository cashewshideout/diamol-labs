# Create image from Dockerfile
 docker image build -t todo:v1 ./todo-list-v3

# Run container to view existing tasks
 docker container run -d -p 8081:80 todo:v1

# Docker Volume for where empty database will be created
 docker volume create ch06-lab


 configSource="$(pwd)/config" # config file location on local machine
 configTarget="/app/config" # expected config file location on container
 dataTarget='/todo-db' # volume where the new database will be created and referenced in the local config file

 docker container run -d -p 8016:80 --mount type=bind,source=$configSource,target=$configTarget,readonly --volume ch06-lab:$dataTarget todo:v2