## start with image diamol/ch03-lab
## Run container interactively
docker container run -it --name ch03-lab diamol/ch03-lab

## Execute command to update text file on container (docker container exec)
echo -e "Susan" >> ch03.txt

## create new image from containers changes (docker container commit)
docker container commit ch03-lab ch03-lab:v3
docker container run -it --name ch03-lab-3 ch03-lab:v3
cat ch03.txt

