# Docker image for neovim as a development environment

- [Docker Hub](https://hub.docker.com/r/allibubba/neovim)
- [Git Hub](https://github.com/allibubba/docker_neovim)


## Build the Image
`docker image build -t my_neovim:latest .`

## Run a container
docker run --rm \
-it \
-v ~/project/directory:/projects/target_directory /my_neovim:latest

### Sample Docker Compose file
```
version: "3.9"
services:
  neovim_dev:
    container_name: neovim_dev
    build:
      context: directory_of_Dockerfile
      target: local
    volumes:
      - local_project_a:/projects/local_project_a
      - local_project_b:/projects/local_project_b
```

### use this image in your project
`docker pull allibubba/neovim`
