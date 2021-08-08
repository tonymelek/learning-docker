# Docker Essential Training
## Create new container
##### NGINX server
`docker container run -it --publish 80:80 nginx`  // it flag >> interactive - means you will be seeing logs when server runs, publish flag to publish , 80(local-you can change if you like):80(NGINIXserver-should use default for this erver) is the port
`docker container run -d -p 8080:80 nginx`
// d flag or --detach >> means the server will be runnibg in the background
##### Apache server
`docker container run -d -p 8081:80 --name myappache httpd`
##### MySQL server
`docker container run -d -p 3366:3306 --name mySQL --env MYSQL_ROOT_PASSWORD=root   mysql`

## To see active containers
`docker container ls` *you may add flag -a to the command*

## Delete (remove) container
`docker container rm <First 3 chars of the container ID>`

## Delete All containers
*-f > force flag*
`docker rm -f $(docker ps -a -q)` 

## See Docker images
`docker images`

## Bash into Container
`docker container exec -it  <ContainerName/ID> bash`

## Mapping the container to local machine to be able to edit files
`docker container run -it --publish 8080:80 -v $(pwd):/usr/share/nginx/html  --name myNginx nginx`

*On windows- you many need to use* 
`docker container run -it --publish 8080:80 -v /$(pwd):/usr/share/nginx/html  --name myNginx nginx`

<span style="color:red;font-weight:bold;">The Dockerfile should be name exactly as such with no extension and should match the case</span>



## Build Image and push to your Docker Hub Account
 - *my username:tonynabil21 - builds the image*
`docker image build -t <username>/nginx-website .`

- *pushes to your docker hub account to be accessible anywhere*
`docker push <username>/<image-name>` 
## Make container from your Image
 `docker container run -d -p 8082:80 --name myNewNginx tonynabil21/nginx-website`

 ## To get more about Docker find the MEVN Chat Application repo
 `git clone https://github.com/tonymelek/MEVN_ChatApp.git`