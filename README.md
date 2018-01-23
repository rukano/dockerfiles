# Docker images

## supercollider

### Status
- sclang working
- sclang is not allowed for rt scheduling
- scsynth should work in NRT
- scsynth is not connectin to jack

### Build

+ If you are not in the `supercollider` folder:

`cd supercollider`

+ Then build the image:

`docker build -t rukano/supercollider .`

+ If you have built too much dangling images:

`docker rmi $(docker images -qa -f 'dangling=true')`

### Run

#### Latest (simple sclang + scsynth)

The 'latest' tag is a simple image with sclang and scsynth working. To use the interactive sclang shell in our container you could run the container as:

`docker run -it rukano/supercollider sclang`

You will have sclang prompt. And finish by sending an EOF signal (Ctrl+D)

#### Real-Time synthesis

This is not yet tested and supportet, but the idea is to get jack packaged in the image so you can just start a process connected to it.

+ Run container with shell (not working)

`docker run -it --rm --privileged=true --device=/dev/snd:/dev/snd rukano/supercollider /bin/bash`

+ Run sclang directly interactively (not working)

`docker run -it --rm --privileged=true --device=/dev/snd:/dev/snd rukano/supercollider sclang`

+ Run sclang and pass command file (and eventually synts)

*TODO*

+ NOTE: you can use `0.exit` in sclang to finish a script with a graceful exit.

## jack

*TODO*

## icecast

*TODO*
