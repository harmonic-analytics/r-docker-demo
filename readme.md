# README

This is an example of how to set up a reproducible R environment using Docker.

The approach is to use docker to set up an RStudio Server. This docker container
controls the operating system and R version.

The DESCRIPTION file (used to specify R package dependencies) is used for 
package management.

The package versions are reproducible, as the docker image has a fixed CRAN 
repository date (MRAN).

Authentication has been disabled, since it is intended that this be used on the
local development machine (rather than hosted on a server).

The project folder is mounted to the Docker container when running, so any
changes made in RStudio Server persist on disk.

## System requirements

  * Docker and Docker Compose
  * Git (If you want to push/pull your work, you probably need to do it outside
RStudio Server)

## Setting up the environment

Navigate to the project folder and run the following:

```
docker-compose up
```

To rebuild the environment, use:
```
docker-compose up --build
```

## Acessing the environment

Visit localhost:8787 in your browser.

### Congifuration

  * The R version can be changed in line 2 of `Dockerfile`
  * Packages required to be installed are specified in the `DESCRIPTION` file.
  * Change the name of the docker image and the port mapping in
`docker-compose.yml`
  
## Other things you can do

Run arbitrary code (e.g. check versions)
```
docker run -v "$(pwd)/.:/home/rstudio/r-docker-demo" rstudiodev Rscript scripts/print_session_info.R
```

Generate artifacts (to your disk)
```
docker run -v "$(pwd)/.:/home/rstudio/r-docker-demo" rstudiodev Rscript scripts/save_data.R
```

Launch Shiny app (visit localhost:3838) in your browser.
```
docker run -p 3838:3838 -v "$(pwd)/.:/home/rstudio/r-docker-demo" rstudiodev Rscript scripts/launch_shiny_app.R
```

