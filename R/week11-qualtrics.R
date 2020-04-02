#Note: I did not have a qualtrics account prior to this assignment, so I just created a dummy survey.

# R Studio API Code
library(rstudioapi)
setwd(dirname(getActiveDocumentContext()$path))

# Libraries
library(tidyverse)
library(qualtRics)
library(lubridate)

# Data Import and Cleaning
registerOptions(api_token="<RamYqUITT1cNuIPR89a9bnkc6L7ludHNxdVTQxiB>", root_url="<https://umn.ca1.qualtrics.com/Q/MyProjectsSection>")

qualtrics_api_credentials(api_key = "apikeygoeshere", 
                          base_url = "https://umn.ca1.qualtrics.com",
                          install = TRUE)
surveys <- all_surveys() %>% 
  mutate(creationDate = ymd_hms(creationDate))

# Analysis


# Visualization
ggplot(surveys, aes(creationDate)) + 
  geom_bar() +
  labs(x = "Creation Date of Survey", y = "Count")
