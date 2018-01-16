docker create --name sc-generator --rm rukano/supercollider:nrt
docker cp code/sound.scd sc-generator:/supercollider/code/
docker start sc-generator
# docker run -it --name sc-generator --rm rukano/supercollider:nrt /bin/bash
