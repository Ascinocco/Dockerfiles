# Dockerfiles
### Author: Anthony Scinocco
#### Contains: Dockerfiles, shell scripts and conf's for development and production environments
#### Dockerhub: anthonyscinocco
#### Quay.io ascinocco
#### Each image and container has it's own folder containing:
1. example-image-or-sub-image
  1. Dockerfile
  2. Prod-Dockerfile
  3. scripts
    1. build.sh - builds container
    2. run.sh - runs container
    3. configure.sh - configures image
  4. conf-files
    1. apache or nginx conf file
    2. ubuntu conf file(s)
    3. env variables file

### Deployement:
1. All images deployed to AWS EC2

### Base Images:
1. Base Image Apache: Ubuntu, Apache
2. Base Image Nginx: Ubuntu, Nginx

### Parent Dockerfiles:
1. Base Image Apache: Configures Ubuntu, Env variables, apache conf, permissions
2. Base Image Nginx: Configures Ubuntu, Env variables, Nginx conf, permissions

### Child Dockerfiles:
1. MERN Stack - Is its's own server
2. Laravel - LAMP (PHP)
3. Django - LNMP(Python)(nginx)
4. Rails - LNMR (Ruby)(nginx)
