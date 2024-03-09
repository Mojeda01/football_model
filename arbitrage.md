# Arbitrage in betting markets

Arbitrage in betting involves placing bets on all possible outcomes of an event with different bookmakers, taking advantage of the variation in odds to guarantee a profit regardless of the event's outcome. This is possible because bookmakers set their odds independently and may have different views or information about the profitability of an outcome, leading to price discrepancies that can be exploited. Here's a simplified a simplified explanation of how it works:

1.  **Identifying an Arbitrage Opportunity:** First, you need to find two or more bookmakers offering sufficiently divergent odds on the same event. The discrepancy in odds is what creates the arbitrage opportunity.
2.  **Calculating arbitrage:** Once an opportunity is identified, you calculate the amount of money to bet with each bookmaker to ensure a guaranteed profit. This involves some mathematics, typically using an arbitrage calculator available online. The goal is two distribute your total investment in a way that ensures the same return regardless of the outcome.
3.  **Placing the bets:** After calculating the optimal bets, you place your bets on each outcome with the respective bookmaker. It's crucial to place these place simultaneously or within a short time frame to avoid odds changes that could erase the arbitrage opportunity.
4.  **Collecting the Profits:** Once the event concludes, one of your bets will win, and because of the way you've distributed your bets, you will collect more money than your total invested amount. The profit is the difference between the total payout and your total investment.

# Arbitrage Example

Let's consider a simplified example of an arbitrage opportunity in a football match between Team A and Team B. We'll find two bookmakers offering different odds for each team winning, as well as for a draw. Here's how it could look:

-   **Bookmaker 1 offers:**

    -   Odds for Team A winning: 2.0

    -   Odds for a draw: 3.5

    -   Odds for Team B winning: 4.0

-   **Bookmaker 2 offers:**

    -   Odds for Team A winning: 2.2

    -   Odds for a draw: 3.0

    -   Odds for Team B winning: 3.8

In this example, an arbitrage opportunity exists if we can bet in such a way that regardless of the outcome, we make a profit. To identify if a real arbitrage opportunity exists, we calculate the inverse of the odds for each possible outcome across both bookmakers and sum them up. The sum of the inverse indicates whether an arbitrage opportunity exists (the sum must be less than 1 for an opportunity to exist).

The formula for calculating the sum of the inverse is:

$$
\text{Sum of Inverses}=\frac{1}{\text{Odds for outcome 1}}+\frac{1}{\text{Odds for outcome 2}}+\frac{1}{\text{Odds for outcome 3}}
$$

Let's calculate the sum of the inverses for the best odds available across both bookmakers for each outcome.

-   Best odds for Team A winning: 2.2 (Bookmaker 2)

-   Best odds for a draw: 3.5 (bookmaker 1)

-   Best for odds for Team B winning: 4.0 (Bookmaker 1)

Applying the formula, we get:

$$
\text{Sum of Inverses}=\frac{1}{2.2}+\frac{1}{3.5}+\frac{1}{4.0}
$$

```{python}
# Calculating the sum of the inverses for the given odds
odds_team_a_winning = 2.2
odds_draw = 3.5
odds_team_b_winning = 4.0

sum_of_inverses = 1/odds_team_a_winning + 1/odds_draw + 1/odds_team_b_winning
print(sum_of_inverses)
# Result: 0.9902597402597402
```

The sum of the inverses is approximately 0.9903. Since this sum is less than 1, an arbitrage opportunity exists.

To exploit this opportunity, you would calculate how much to bet on each outcome to ensure a profit. This involves distributing your total investment based on the odds to equalize the return from each outcome. Let's say you have \$1000 to invest. The distribution would ensure that regardless of weather Team A wins, the match ends in a draw, or Team B wins, you make a profit.

The amount to bet on each outcome can be calculated using the formula:

$$
\text{Bet on outcome}=\frac{\text{Total Investment}\times\frac{1}{\text{Odds for outcome}}}{\text{Sum of Inverses}}
$$

By applying this formula, you'd calculate how much of the \$1000 to bet on each outcome to guarantee a profit. This strategy exploits the discrepancy in odds offered by different bookmakers to secure a risk-free return.

Let's calculate the bet amounts for each outcome using the odds and the sum of inverses we've already determined. To exploit the arbitrage opportunity, you should distribute your \$1000 bet as follows:

-   Bet approximately \$459.02 on Team A winning.

-   Bet approximately \$288.52 on the match resulting in a draw.

-   Bet approximately \$252.46 on Team B winning.

```{python}
total_investment = 1000  # Total amount available to bet

# Calculating the bet amounts for each outcome
bet_on_team_a = (total_investment * (1/odds_team_a_winning)) / sum_of_inverses
bet_on_draw = (total_investment * (1/odds_draw)) / sum_of_inverses
bet_on_team_b = (total_investment * (1/odds_team_b_winning)) / sum_of_inverses

bet_on_team_a, bet_on_draw, bet_on_team_b

# Result:
# 459.0163934426229,
# 288.5245901639345,
# 252.45901639344265
```

By placing these bets, you ensure a guaranteed profit regardless of the match's outcome, given the calculated distribution aligns with the best available odds and accounts for the total investment using the arbitrage formula.

To calculate the guaranteed profit regardless of the match outcome, we'll use the bets we've placed and the odds for each outcome. The formula to calculate the return for each outcome is:

$$
\text{Return for Outcome}=\text{Bet on Outcome}\times\text{Odds for Outcome}
$$

The Profit (or net gain) from each outcome would be the return minus the total investment. Since we're ensuring an equal return for all outcomes, calculating the return for any one of the outcomes and subtracting the total investment will give us the profit.

Let's calculate the return and profit for betting on Team A (though the return should be the same for any outcome due to the arbitrage strategy), and then we'll determine the guaranteed profit.

```{python}
# Calculating the return for betting on Team A winning
return_for_team_a = bet_on_team_a * odds_team_a_winning

# Since the return should be the same for any outcome, we calculate the profit
profit = return_for_team_a - total_investment

return_for_team_a, profit
```

By exploiting the arbitrage opportunity and distributing your bets as calculated, you would achieve a return of approximately \$1009.84 on your \$1000 investment, resulting in a guaranteed profit of about \$9.84, regardless of the match's outcome. This demonstrates how arbitrage works in betting markets by leveraging discrepancies in odds across different bookmakers to secure a risk-free profit.

# Generalized Arbitrage Mathematics

To formalize the arbitrage betting strategy, we can define a set of mathematical formulas along with a component and variable definition list. This formalization will help understand the calculations required to identify an arbitrage opportunity and determine the bet amounts for each outcome to guarantee a profit.

## Arbitrage Opportunity Identification

**Sum of Inverses Calculation:**

$$
S=\sum^n_{i=1}\frac{1}{O_i}
$$

-   Where $S$ is the sum of the inverses of the odds.

-   $O_i$ represents the odds for the $i$-th outcome.

-   $n$ is the number of possible outcomes for the event.

An arbitrage opportunity exists if $S<1$.

## Bet Distribution

**Bet Amount Calculation:**

$$
B_i=\frac{T\times\frac{1}{O_i}}{S}
$$

-   Where $B_i$ is the amount to bet on the $i$-th outcome.

-   $T$ is the total amount available to bet.

-   $O_i,S,$ and $n$ are defined as above.

## Profit Calculation

**Guaranteed Profit:**

$$
P=B_i\times O_i - T
$$

-   Where $P$ is the profit (which will be the same for any $i$-th outcome due to the arbitrage strategy).

-   $B_i$, $O_i$, and $T$ are defined as above.

-   Note: Since $P$ is calculated for a specific outcome, due to the arbitrage strategy ensuring equal return for any outcome, calculating $P$ using any $B_i\times O_i$ pair yields the same result.

## Component/Variable Definition List

-   S: sum of the inverses of the odds across all outcomes.

-   $O_i$: Odds offered for the $i$-th outcome.

-   $n$: Total number of outcomes offered for the event.

-   $B_i$: Amount to bet on the $i$-th outcome.

-   $T$: Total investment or total amount available to bet.

-   $P$: Profit guaranteed from the arbitrage betting strategy.

These formulas provide a structured approach to identifying arbitrage opportunities in betting markets, calculating how to distribute bets across different outcomes, and determining the guaranteed profit from these bets.
