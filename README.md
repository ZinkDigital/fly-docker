# fly-docker

A runnable docker image that contains the Fly Object Space.

There are two ways to configure your local network when running the Fly image.
 
```bash
docker run --net="host" zink/fly-object-space
```

This way allows the Fly server to access the host network stack this has two advantages in that 
it allows fly clients to find the server by default i.e. you dont need to configure any netwrok addresses
in your client.

It also avoids a layer of virtualisation in thenetwork stack which maesn that the system as a whole will run faster.

However if you want the continer to be isolated for security or other seperation concerns then you can start the container 
 in this way.
 
```bash
docker run -p 4396:4396 zink/fly-object-space
```

