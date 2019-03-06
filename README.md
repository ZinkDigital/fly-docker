# fly-docker

A runnable docker image that contains the Fly Object Space.

There are two ways to configure your local network when running the Fly image.
 
```
> docker run --net="host" zink/fly
```

This way allows the Fly server to access the host network stack which avoids a layer of virtualisation 
which means that the system as a whole will run faster.

However if you want the container to be isolated for security or other separation concerns then you can 
run the fly image in this way.
 
```
> docker run -p 4396:4396 zink/fly
```

### Fly Server Discovery

For some local network configurations the above will be enough in order for the fly client software to discover and 
use the fly server running in the docker image, using multicast discovery.
 
However in some cases it will be necessary to configure the FlyFactory in the client with the IP address of the 
running docker container. e.g. 

```
Fly fly = FlyFactory.makeFly("192.168.99.100");
```

For more recent versions of docker this will be the current network address of the host machine which gets redirected 
through the default bridge (bridge0) to the running container(s).




