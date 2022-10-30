# Sphere Server

*URL:* [Project url](https://wiki.spherecommunity.net/index.php?title=Main_Page)
*GitHub:* [Source code](https://github.com/Sphereserver/Source)

*Description:* One of the oldest homebrew servers available. The server is open-source an can be extended through 
 the use of script files.

## Tips on installation

As with most homebrew servers, it is required to have an updated version of the official client, in order to access to 
 MUL files required.

## How-to run in docker

1. Select the flavour of your server (version X is WIP) and create the docker image with the associated script.
2. Set the next environment variables:
   1. HOSTNAME=your machine name or IP 
   2. ULTIMA_MUL_PATH=path in your host machine when original files of Ultima Online are.
3. Run docker compose in terminal mode: `docker-compose run sphereserver`

The folders `save` and `accounts` are under git ignore and won't be accessed.