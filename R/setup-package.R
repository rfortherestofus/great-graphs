library(tidyverse)
library(here)
library(janitor)

# This file brings in assets (data, setup.Rmd and CSS) from the assets repo (https://github.com/rfortherestofus/assets).

# Get Data ----------------------------------------------------------------

download.file("https://github.com/rfortherestofus/assets/raw/master/data/nhanes.csv",
              destfile = here("nhanes.csv")) 

nhanes <- read_csv(here("nhanes.csv")) %>% 
  clean_names() %>% 
  write_csv(here("nhanes.csv"))

# Get CSS -----------------------------------------------------------------

download.file("https://raw.githubusercontent.com/rfortherestofus/course-assets/master/style/style.css",
              destfile = here("style.css"))