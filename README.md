# MechaCar Statistical Analysis
In this module, we were introduced to the R programming language. We learned techniques and specific R functions to analyze our R data sets and to help us make conclusions.

## Challenge
For our challenge, we worked with two data sets provided as part of working for a hypothetical car manufacturer. The code for the deliverables can be found in the following R script: [MechaCarChallenge.R](MechaCarChallenge.R)

## Linear Regression to Predict MPG
![summary](deliverable1SummaryStatsMultLinRegModel.png)

Vehicle length (p-value 2.60e-12) and ground clearance (p-value 5.21e-08) look to provide a non-random amount of variance to MPG in the dataset. The other variables (vehicle weight, spoiler angel, and all-wheel drive) look to have a more random variance. The p-value for the model is 5.35e-11 and suggests that the slope for our model is not zero. With our R-squared value being 0.7149, one can conclude that the five variables that we have available to us can predict MPG fairly accurately. Being above 70% in the automotive sector for predicting MPG is probably acceptable, but it would be advantageous to collect additional sample values to improve the model.

## Summary Statistics on Suspension Coils

In your README, create a subheading ## Summary Statistics on Suspension Coils, and write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


## T-Tests on Suspension Coils

then briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
