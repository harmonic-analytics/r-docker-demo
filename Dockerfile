# Specify R version
FROM rocker/tidyverse:3.6.3

# Set working directory in Docker container
WORKDIR /home/rstudio/06-rstudio

# Install dependencies
ADD DESCRIPTION .
ADD install_packages.R .
RUN Rscript install_packages.R
