
# model
model1 <- lm(football_odds$HomeWinOdds ~ football_odds$DrawOdds + football_odds$AwayWinOdds + 
              football_odds$Over2_5GoalsOdds + football_odds$Under2_5GoalsOdds + 
              football_odds$HandicapHomeWinOdds + football_odds$HandicapDrawOdds + 
              football_odds$HandicapAwayWinOdds)
summary(model1)

model2 <- lm(football_odds$HomeWinOdds ~ football_odds$DrawOdds + football_odds$AwayWinOdds)
summary(model2)

# 1.  Residuals: These values show the differences between the observed values and the values
#     predicted by the model for each observation. In your model, they vary quite a bit, with 
#     some being positive and others being negative, which is expected in a regression
#     analysis.
#
# 2.  Coefficients:
#       * Estimate: This column provides the estimated effect of each predictor variable on 
#                   the dependent variable. For example, "football_odds$AwayWinOdds" has an
#                   estimate of 0.4471, meaning each unit increase in "AwayWinOdds", the 
#                   dependent variable is expected to increase by 0.4771 units, holding all 
#                   other variables constant.
#
#       * Std. Error: The standard error of the estimate shows the average amount that the coefficients
#                     estimates vary from the actual average value of our response variable For instance
#                     "football_odds$HandicapDrawOdds" has a standard error of 8.0009, which is 
#                     relatively large compared to its estimate, suggesting less precision in the 
#                     estimate.
#
#       * t value:  This is the test statistic for the hypothesis test that the coefficient is different
#                   from 0 (no effect). A higher value absolute value of the t statistic indicates a more 
#                   significant effect of the predictor.
#
#       * Pr(>|t|): This is the p-value associated with the t-test of the hypothesis that the 
#                   coefficient is equal to zero. High p-values (generally, greater than 0.05) 
#                   suggest that the predictor is not statistically significant.
#
# 3.  Residual standard error:  This is the estimate of the standard deviation of the error term,
#                               and it's 0.4834 for your model. It's a measure of the quality of 
#                               the linear regression fit.
#
# 4.  Degrees of Freedom: There are 2 degrees of freedom left for the residuals. Which is very low and 
#                         indicates that your model may be overfitted since there are not enough
#                         degrees of freedom to estimate the parameters reliably. This is a potential
#                         issue because it suggests that the model has nearly as amny or as many
#                         predictors as data points.
#
# 5.  Multiple R-squared: This value, 0.9169, indicates that approximately 91.69% of the variance in 
#                         the dependent variable can be explained by the independent variables in the
#                         model. This is a high value, but with low degrees of freedom for residuals,
#                         it could be misleading.
#
# 6.  Adjusted R-squared: This adjusts the R-squared value based on the number of predictors and the 
#                         sample size, which is more accurate for multiple linear regression. The 
#                         value here is 0.6261, indicating that after adjusting for the number of 
#                         predictors, the models explains 62.61% of the variance. This is considerably 
#                         lower than the Multiple R-squared, suggesting that some of the predictors
#                         may not be contributing significantly to the model.
#
# 7.  F-statistic:  An F-test is used to test the overall significance of the model. Here, the 
#                   F-statistic is 3.153 on 7 and 2 degrees of freedom.
#
# 8.  P-value:  The p-value of the F-test is 0.2618, which is greater than 0.05, suggesting that the
#               model is not statistically significant at the 5% significance level.
#
# ** Interpretation and Concerns
#       - Your model has a very high R-squared but a high p-value for the F-statistic, which is
#         contradictory. It could indicate overfitting, especially since you have very few degrees of
#         freedom left.
#
#       - None of the predictors have a p-value below 0.05, meaning none are statistically significant
#         at the 5% level. This further suggests that the model might not be a good fit or that the 
#         data does not provide enough evidence of these predictors affecting the dependent variable.
#
#       - The large discrepancy between the Multiple R-squared and the Adjusted R-squared suggests
#         that some predictors may not be necessary.
#
#   In summary, while the model appears to explain a large portion of the variance in the 
#   dependent variable, the lack of statistical significance suggests that the results should
#   be interpreted with caution. It would be wise to evaluate the model further, possibly with
#   additionally data, fewer predictors, or different modeling techniques.