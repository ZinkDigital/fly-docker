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

For some local network configuration the above will be enough in order for the fly client software to discover and 
use the fly server running in the docker image.
 
However in some cases it will be necessary to configure the FlyFactory in the client with the IP address of the 
running docker container. 

```
> docker-machine ls
```

And find the address of the running docker container 

```
NAME      ACTIVE   DRIVER       STATE     URL                         SWARM
default   *        virtualbox   Running   tcp://192.168.99.100:2376   
```

In this case this is 192.168.99.100. Which would result in the following configuration of the FlyFactory in the client code.

```
Fly fly = FlyFactory.makeFly("192.168.99.100");
```



