# PHP7 Docker Image #

This provides a simple container based on (minideb)[https://github.com/bitnami/minideb] with PHP 7.0.x packages installed. This is mostly useful as the base for another container that requires PHP.


## Basic targets and capabilities

You can build the container with standard targets like container, push, clean, version:

```
make 
make test
make container
make push
make VERSION=0.3.0 container
make VERSION=0.3.0 push
make version
make clean
```
