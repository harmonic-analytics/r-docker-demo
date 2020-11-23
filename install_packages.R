# Set date for package versioning
# This is optional for r-ver, rstudio, tidyverse as they have fixed repo
# rocker/shiny DOES NOT have fixed repo, so will need to set

# options(repos = 'https://mran.microsoft.com/snapshot/2019-04-01')

# Install remotes package if needed
if(!require(remotes, quietly = TRUE)) utils::install.packages('remotes')

# Install dependencies as specified in the DESCRIPTION file
remotes::install_deps()
