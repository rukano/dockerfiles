#docker create --name sc-generator --rm rukano/supercollider:nrt
#docker cp code/sound.scd sc-generator:/supercollider/code/
#docker start sc-generator

# This just starts the container and executes the generate.sh script
echo "Starting container and executing generate shell command"
docker run -it --name sc-generator --rm rukano/supercollider:nrt /supercollider/generate.sh

# TODO ##################################################################
# GOAL of the script
# Start container, copy the code folder (generator and synths)
# Execute the generate script (generate .osc file, and render to wav)
# Copy or return the resulting file
#########################################################################
