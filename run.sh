local_folder=/home/wai-f/Projects/ubuntu22_files
docker run -it --privileged=true  --net=host \
  --env="DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  -v ${local_folder}:/data \
  --name cv_v1 cv:latest /bin/bash

xhost +