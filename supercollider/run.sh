docker run -d --rm --name sc --network generator-osc --volume $PWD/code:/tmp/code --volume generated:/tmp/out -p 57120:57120/udp -p 57110:57110/udp rukano/supercollider sclang $1
