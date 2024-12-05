local_folder=/Users/lxqfwg/Documents/fwg/docker_folder/ubuntu22
docker run -it --privileged=true  --net=host \
  --env="DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  -v ${local_folder}:/data \
  --name cv_v1 cv:latest /bin/bash