#### Preamble ####
# Purpose: Downloads and saves the data from IPUMS
# Author: Sakura Noskor, Zeyi Cai, Mo (Molly) Zhou, Bingxu Li
# Date: October 3 2024
# License: MIT
# Pre-requisites: We first go to the IPUMS american data website and then we click 'get data' [https://usa.ipums.org/usa/](https://usa.ipums.org/usa/). Next we click SELECT SAMPLES then we deselect everything there. We then click ASC 2022 to get the 2022 data. Then we check which values we want so we go to Households and pick Geographic, where we select STATEICP. And we go to Person and click education where we click EDUC. Once we finished that we click view cart to see our dataset (click CREATE DATA EXTRACT). We change the data format to .dta and we change the sample size to 500 after we click CUSTOMISE SAMPLE SIZES. Then we give and an appropriate detail fo extract that includes today's date and what columns we are going to be looking at. Then we download it (after making an account) and add it to our repository to read. 


#### Workspace setup ####
library(haven)

#### Download data ####




#### Read data ####

ipums_extract <- read_dta("./data/01-raw_data/usa_00001.dta")
         
