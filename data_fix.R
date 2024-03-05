# Load the necessary library
library(dplyr)

# Assuming all the season data frames are already loaded in your R environment
# We will create a list of all data frames
season_list <- list(season2016, season2017, season2018, season2019, 
                    season2020, season2021, season2022, season2023)

# Combine all data frames into one
combined_seasons <- bind_rows(season_list)

# View the structure of the combined data frame
str(combined_seasons)

# If needed, you can now proceed with data analysis on the combined data frame
