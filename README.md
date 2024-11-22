# Ratio Estimators

## Overview
We estimate the total number of respondants to the survey based on an estimate, where we assume that all states have the same doctorate to total ratio. This is done by calculating the ratio for california and applying that to all states. We see in most cases that the estimate is lower than the actual number, which implies that the california has a higher number of people who hold doctorates. This is important as we want to analyse which state has the most number of doctorates.

## Pre- requisite
We first go to the IPUMS american data website and then we click 'get data' [https://usa.ipums.org/usa/](https://usa.ipums.org/usa/). Next we click SELECT SAMPLES then we deselect everything there. We then click ASC 2022 to get the 2022 data. Then we check which values we want so we go to Households and pick Geographic, where we select STATEICP. And we go to Person and click education where we click EDUC. Once we finished that we click view cart to see our dataset (click CREATE DATA EXTRACT). We change the data format to .dta and we change the sample size to 500 after we click CUSTOMISE SAMPLE SIZES. Then we give and an appropriate detail fo extract that includes today's date and what columns we are going to be looking at. Then we download it (after making an account) and add it to our repository to read. 

## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from X.
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `other` contains details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.


## Statement on LLM usage

Aspects of the code were written with the help of ChatGPT. The entire chat history is available in inputs/llms/usage.txt.
