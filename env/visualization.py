import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

# Load your DataFrame here if needed
df = pd.read_csv('../season2016-2023.csv')

# Set the aesthetic style of the plots
sns.set_style("whitegrid")

# Calculate the number of wins for home and away teams
home_wins = df[df['FTR'] == 'H'].shape[0]
away_wins = df[df['FTR'] == 'A'].shape[0]
draws = df[df['FTR'] == 'D'].shape[0]

# Plot the total number of matches won by home vs. away teams
plt.figure(figsize=(10, 6))
sns.barplot(x=['Home Wins', 'Away Wins', 'Draws'], y=[home_wins, away_wins, draws])
plt.title('Total Number of Matches Won by Home vs. Away Teams')
plt.ylabel('Number of Matches')
plt.show()

# Plot the distribution of full-time home goals (FTHG) and away goals (FTAG)
plt.figure(figsize=(14, 6))

plt.subplot(1, 2, 1)
sns.histplot(df['FTHG'], kde=True, bins=range(0, df['FTHG'].max() + 1))
plt.title('Distribution of Full-Time Home Goals')
plt.xlabel('Full-Time Home Goals')
plt.ylabel('Frequency')

plt.subplot(1, 2, 2)
sns.histplot(df['FTAG'], kde=True, bins=range(0, df['FTAG'].max() + 1), color='orange')
plt.title('Distribution of Full-Time Away Goals')
plt.xlabel('Full-Time Away Goals')

plt.tight_layout()
plt.show()
