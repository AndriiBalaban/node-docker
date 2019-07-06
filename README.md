## Overview
MEAN stack environment.
What is the MEAN stack?
- M - MongoDB
- E - Express
- A - Angular
- N - Node.JS

Below you will find instructions to start developing a project.
## Requrements
docker & docker-compose installed on your dev machine
## Installation
**Note: You should already have docker and docker-compose installed**
1. Clone repository and switch to **MEAN** branch or download and unpack zip from **MEAN** branch
2. In the ***./src*** folder, create a file called ***project*** or create a link to your project.
    ```bash
    mkdir path/to/docker/folder/src/project
    ```
    or
    ```bash
    ln -s path/to/your/project/ path/to/your/docker/src/project
    ```
3.  Now you build environment. In the docker root directory run command:
    ```bash
    docker-compose up --build
    ```
    or
    ```bash
    ./shell/build.sh
    ```
4. if you haven't existing project, you need creat it. 
    1. 
        ```bash
        ./shell/init-project.sh
        ```
    or 
    1. Enter to the container
        ```bash
        docker exec -ti node bash
        ```
    2. Then install express project skeleton
        ```bash
        express
        ```
    3. Then install npm dependencies
        ```bash
        npm install
        ```
5. Stop containers
6. Comment next line in services/node/Dockerfile
    - before
    ```Dockerfile
    ENTRYPOINT ["tail", "-f", "/dev/null"]
    ```
    - after
    ```Dockerfile
    #ENTRYPOINT ["tail", "-f", "/dev/null"]
    ```
7. Rebuild project
 5. Enter the url address [localhost:3000](http://localhost:3000) (depend on your app.js settings) into your browser       


## Shell helpers
- build.sh - build docker containers (only first time needed)
- init-project.sh - initialize empty project (if you haven't existing project)
- npm.sh - нou can run npm commands inside the container using this script.
- restart.sh - restart containers
- start.sh - start containers
- stop.sh - stop containers

## Folders structure
- logs
    - node-logs - npm logs
- services
    - node - node container setup files folder
        - Dockerfile - Dockerfile for node container
- shell - shell helpers
- src
    - project - project directory