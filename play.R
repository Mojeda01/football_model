library(ggplot2)

# Assuming 'df' is your dataframe

# Total number of matches won by home vs. away teams
wins <- data.frame(Team = c('Home Wins', 'Away Wins', 'Draws'),
                   Count = c(sum(df$FTR == 'H'), sum(df$FTR == 'A'), sum(df$FTR == 'D')))

ggplot(wins, aes(x = Team, y = Count, fill = Team)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Total Number of Matches Won by Home vs. Away Teams", y = "Number of Matches")

# Distribution of full-time home and away goals
# Home Goals
ggplot(df, aes(x = FTHG)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  geom_vline(aes(xintercept = mean(FTHG), color = "Mean"), linetype = "dashed", size = 1) +
  geom_vline(aes(xintercept = median(FTHG), color = "Median"), linetype = "dotted", size = 1) +
  scale_color_manual(values = c("Mean" = "red", "Median" = "green")) +
  theme_minimal() +
  labs(title = "Distribution of Full-Time Home Goals", x = "Full-Time Home Goals", y = "Frequency")

# Away Goals
ggplot(df, aes(x = FTAG)) +
  geom_histogram(binwidth = 1, fill = "orange", color = "black") +
  geom_vline(aes(xintercept = mean(FTAG), color = "Mean"), linetype = "dashed", size = 1) +
  geom_vline(aes(xintercept = median(FTAG), color = "Median"), linetype = "dotted", size = 1) +
  scale_color_manual(values = c("Mean" = "red", "Median" = "green")) +
  theme_minimal() +
  labs(title = "Distribution of Full-Time Away Goals", x = "Full-Time Away Goals", y = "Frequency")
