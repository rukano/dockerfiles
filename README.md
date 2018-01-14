# Docker images

## supercollider

### Status
- sclang working
- sclang is not allowed for rt scheduling
- scsynth should work in NRT
- scsynth is not connectin to jack

### Build

- If you are not in the `supercollider` folder:
`cd supercollider`

- Then build the image:
`docker build -t rukano/supercollider .`

- If you have built too much dangling images:
`docker rmi $(docker images -qa -f 'dangling=true')`

### Run

As jack is not yet working, the `--device` micht not be needed

- Run and get shell
`docker run -it --rm --privileged=true --device=/dev/snd:/dev/snd rukano/supercollider /bin/bash`

- Run scland interactively
`docker run -it --rm --privileged=true --device=/dev/snd:/dev/snd rukano/supercollider sclang`

- Run sclang and pass command file (and eventually synts)
*TODO*

## jack
*TODO*

## icecast
*TODO*