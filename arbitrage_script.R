
# Initiate the dataset
data <- season2016
data2 <- season2016_2023

# Modified function to check for arbitrage opportunities
check_arbitrage <- function(B365H, B365D, B365A, BWH, BWD, BWA, IWH, IWD, IWA, LBH, LBD, LBA, PSH, PSD, PSA, WHH, WHD, WHA, VCH, VCD, VCA) {
  
  # Convert arguments to numeric and handle NA values
  numeric_args <- lapply(list(B365H, B365D, B365A, BWH, BWD, BWA, IWH, IWD, IWA, LBH, LBD, LBA, PSH, PSD, PSA, WHH, WHD, WHA, VCH, VCD, VCA), function(x) {
    as.numeric(as.character(x))
  })
  
  # Filter out any list elements that contain NA after conversion
  numeric_args <- lapply(numeric_args, function(x) {
    if (all(is.na(x))) {
      return(NA)
    } else {
      return(x[!is.na(x)])
    }
  })
  
  # Calculate the inverse of the odds, excluding NA values
  inv_odds <- sapply(numeric_args, function(x) if (!is.na(x)) 1/mean(x, na.rm = TRUE) else NA)
  
  # Check if the sum of the inverse odds is less than 1
  arbitrage_exists <- sum(inv_odds, na.rm = TRUE) < 1
  
  return(as.integer(arbitrage_exists))
}

# Apply the function to each row in the dataset
arbitrage_vector <- apply(data, 1, function(x) check_arbitrage(x['B365H'], x['B365D'], x['B365A'], 
                                                               x['BWH'], x['BWD'], x['BWA'], x['IWH'], x['IWD'], x['IWA'], 
                                                               x['LBH'], x['LBD'], x['LBA'], x['PSH'], x['PSD'], x['PSA'], 
                                                               x['WHH'], x['WHD'], x['WHA'], x['VCH'], x['VCD'], x['VCA']))
# Print the result
print(arbitrage_vector)

# Put it in dataframe
arbitrageDF <- data.frame(arbitrage_vector)
