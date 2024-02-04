
# Explanatory data analysis (EDA)
summary(season2023) # - To get descriptive statistics
str(season2023) # - to understand the structure of your dataset
is.na(season2023)
dataset <- na.omit(season2023)

# Visualizations
boxplot(season2023$AvgH, season2023$AvgD, season2023$AvgA)

# Time series analysis
dates <- dataset$Date
dates <- as.Date(dates, format="%d/%m/%Y")
plot(dates, dataset$AvgH, type="l", frame.plot=FALSE, ylab="Bet365 Home Odds")

mean(dataset$B365H)
mean(dataset$BWH)
