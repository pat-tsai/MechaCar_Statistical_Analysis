# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
![ScreenShots](/resources/mpg_lin_reg.PNG)

Based on the results of the linear regression, the relationship between vehicle mileage per gallon on vehicle length and ground clearance is statistically significant. This is shown by the p values that are much lower than the standard p-value of 0.05

- Is the slope of the linear model considered to be zero? Why or why not?
The `summarise()` function reveals the coefficients of our linear regression, and in this case the slopes are not 0

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The summary analysis reveals an adjusted R-squared correlation value of 0.68, which indicates good correlation among the values with statistically significant p-values (vehicle length and ground clearance)



## Summary Statistics on Suspension
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
![ScreenShots](/resources/unnamed1.png)
![ScreenShots](/resources/unnamed.png)
The above 2 screenshots are summary statistics for the complete vehicle dataset, and filtered dataset based on manufacturer lot number respectively. In the complete summary table, variance is 76.23. However, by further examining variance based on manufacturer lot groupings, we can clearly observe that lot 1 and 2 have variance levels far below the MechaCar standard (100 lbs per square inch), whereas lot 3 has variance of 220 which greatly skews the data. In conclusion, the manufacturing data reveals that the company standard is upheld in 2 out of 3 manufacturing lots.
