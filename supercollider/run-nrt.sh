#docker create --name sc-generator --rm rukano/supercollider:nrt
#docker cp code/sound.scd sc-generator:/supercollider/code/
#docker start sc-generator
echo "Starting container and exeguting generate shell command"
docker run -it --name sc-generator --rm rukano/supercollider:nrt /supercollider/generate.sh
