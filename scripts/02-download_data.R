#### Preamble ####
# Purpose: Downloads and saves the data from IPUMS
# Author: Sakura Noskor
# Date: October 3 2024
# Contact: sakura.noskor@mail.utoronto.ca
# License: MIT
# Pre-requisites: download data from IPMUS


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
# [...UPDATE THIS...]

#### Download data ####
# [...ADD CODE HERE TO DOWNLOAD...]



#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         
