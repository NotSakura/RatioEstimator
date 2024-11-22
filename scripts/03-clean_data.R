#### Preamble ####
# Purpose: clean data to filter for doctorate in california
# Author: Sakura Noskor, Zeyi Cai, Mo (Molly) Zhou, Bingxu Li
# Date: October 3 2024
# License: MIT

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
ipums_extract <- read_dta("../data/01-raw_data/usa_00001.dta")

raw_data <- read_csv("inputs/data/plane_data.csv")
california_data <- ipums_extract %>% filter(stateicp == 71)

# Step 2: Total number of respondents in California
total_respondents_california <- nrow(california_data)

# Step 3: Number of respondents with doctoral degrees in California
doctoral_respondents_california <- california_data %>%
  filter(educd == 116) %>%  # Ensure 116 corresponds to doctoral degrees
  nrow()

#### Save data ####
write_csv(doctoral_respondents_california, "data/02-analysis_data/cleaned_data.csv")
