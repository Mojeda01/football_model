
# Initiate the dataset
data16 <- season2016
data17 <- season2017
data18 <- season2018
data19 <- season2019
data20 <- season2020
data21 <- season2021
data22 <- season2022
data23 <- season2023

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
arbitrage16 <- apply(data16, 1, function(x) check_arbitrage(x['B365H'], x['B365D'], x['B365A'], 
                                                               x['BWH'], x['BWD'], x['BWA'], x['IWH'], x['IWD'], x['IWA'], 
                                                               x['LBH'], x['LBD'], x['LBA'], x['PSH'], x['PSD'], x['PSA'], 
                                                               x['WHH'], x['WHD'], x['WHA'], x['VCH'], x['VCD'], x['VCA']))

arbitrage17 <- apply(data17, 1, function(x) check_arbitrage(x['B365H'], x['B365D'], x['B365A'], 
                                                            x['BWH'], x['BWD'], x['BWA'], x['IWH'], x['IWD'], x['IWA'], 
                                                            x['LBH'], x['LBD'], x['LBA'], x['PSH'], x['PSD'], x['PSA'], 
                                                            x['WHH'], x['WHD'], x['WHA'], x['VCH'], x['VCD'], x['VCA']))

arbitrage18 <- apply(data18, 1, function(x) check_arbitrage(x['B365H'], x['B365D'], x['B365A'], 
                                                            x['BWH'], x['BWD'], x['BWA'], x['IWH'], x['IWD'], x['IWA'], 
                                                            x['LBH'], x['LBD'], x['LBA'], x['PSH'], x['PSD'], x['PSA'], 
                                                            x['WHH'], x['WHD'], x['WHA'], x['VCH'], x['VCD'], x['VCA']))

arbitrage19 <- apply(data19, 1, function(x) check_arbitrage(x['B365H'], x['B365D'], x['B365A'], 
                                                            x['BWH'], x['BWD'], x['BWA'], x['IWH'], x['IWD'], x['IWA'], 
                                                            x['LBH'], x['LBD'], x['LBA'], x['PSH'], x['PSD'], x['PSA'], 
                                                            x['WHH'], x['WHD'], x['WHA'], x['VCH'], x['VCD'], x['VCA']))

arbitrage20 <- apply(data20, 1, function(x) check_arbitrage(x['B365H'], x['B365D'], x['B365A'], 
                                                            x['BWH'], x['BWD'], x['BWA'], x['IWH'], x['IWD'], x['IWA'], 
                                                            x['LBH'], x['LBD'], x['LBA'], x['PSH'], x['PSD'], x['PSA'], 
                                                            x['WHH'], x['WHD'], x['WHA'], x['VCH'], x['VCD'], x['VCA']))

arbitrage21 <- apply(data21, 1, function(x) check_arbitrage(x['B365H'], x['B365D'], x['B365A'], 
                                                            x['BWH'], x['BWD'], x['BWA'], x['IWH'], x['IWD'], x['IWA'], 
                                                            x['LBH'], x['LBD'], x['LBA'], x['PSH'], x['PSD'], x['PSA'], 
                                                            x['WHH'], x['WHD'], x['WHA'], x['VCH'], x['VCD'], x['VCA']))

arbitrage22 <- apply(data22, 1, function(x) check_arbitrage(x['B365H'], x['B365D'], x['B365A'], 
                                                            x['BWH'], x['BWD'], x['BWA'], x['IWH'], x['IWD'], x['IWA'], 
                                                            x['LBH'], x['LBD'], x['LBA'], x['PSH'], x['PSD'], x['PSA'], 
                                                            x['WHH'], x['WHD'], x['WHA'], x['VCH'], x['VCD'], x['VCA']))

arbitrage23 <- apply(data23, 1, function(x) check_arbitrage(x['B365H'], x['B365D'], x['B365A'], 
                                                            x['BWH'], x['BWD'], x['BWA'], x['IWH'], x['IWD'], x['IWA'], 
                                                            x['LBH'], x['LBD'], x['LBA'], x['PSH'], x['PSD'], x['PSA'], 
                                                            x['WHH'], x['WHD'], x['WHA'], x['VCH'], x['VCD'], x['VCA']))

arbitragedataframe1621 <- data.frame(arbitrage16, arbitrage17, arbitrage18, arbitrage19, arbitrage20, arbitrage21)
arbitragedataframe2223 <- data.frame(arbitrage22, arbitrage23)
