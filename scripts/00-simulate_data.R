#### Preamble ####
# Purpose: Simulates and saves the data from IPUMS
# Author: Sakura Noskor, Zeyi Cai, Mo (Molly) Zhou, Bingxu Li
# Date: October 3 2024
# License: MIT


#### Workspace setup ####
library(tidyverse)
set.seed(853)


#### Simulate data ####
n <- 10000  # Total number of respondents

# Simulate state codes (1-50 for simplicity)
state_codes <- sample(1:50, n, replace = TRUE)

# Simulate education levels (0 = no doctorate, 116 = doctoral degree)
education_levels <- sample(c(0, 116), n, replace = TRUE, prob = c(0.95, 0.05))

# Create the dataset
survey_data <- data.frame(
  stateicp = state_codes,
  educd = education_levels
)

# Step 2: Calculate the proportion of doctoral degree holders in California (state code 6)
california_data <- survey_data %>% filter(stateicp == 6)  # Assuming state code 6 is California
total_respondents_california <- nrow(california_data)
doctoral_respondents_california <- sum(california_data$educd == 116)
ratio_california <- doctoral_respondents_california / total_respondents_california

# Step 3: Estimate doctoral degree holders in each state based on California's ratio
estimated_data <- survey_data %>%
  group_by(stateicp) %>%
  summarize(
    actual_respondents = n(),
    doctoral_respondents = sum(educd == 116),
    .groups = 'drop'
  ) %>%
  mutate(
    estimated_total = (doctoral_respondents / ratio_california),
    ratio_difference = estimated_total - doctoral_respondents
  )

# Step 4: View results
print(estimated_data)

#### Save data ####
write_csv(estimated_data, "data/00-simulated_data/simulated_data.csv")
