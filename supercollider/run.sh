docker run -d --rm --name sc --volume $PWD/code:/tmp/code -p 57120:57120/udp -p 57110:57110/udp rukano/supercollider sclang $1
