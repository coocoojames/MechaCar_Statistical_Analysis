# MechaCar Statistical Analysis

## Linear Regression MPG Prediction
&emsp; Only two out of variances provided sufficient p-value to reject the null hypothesis: vehicle_length and ground_clearance. With a y-intercept of 1.08, it is not a slope of 0. This model, however, does not effectively predict the mpg because an r-squared of 71% is not good enough.

## Summary Statistics on Suspension Coils
&emsp; ![Total Summary]('Resources/total_summary.png')<br /> The variance for Lot1 and 2 are well under the 100 psi specification requirement. However, Lot3 is 70 over the 100 limit of 170. The total variance across them all is, however, under 100 being 62.29.<br />
![Log Summary]('Resources/lot_summary.png')

## T-Tests on Suspension Coils
&emsp; With a p-value of 0.06 we fail to reject the null pythothesis stating that there is NO statistical difference between the sample and population means.<br />
![Total T-Test]('Resources/total_ttest.png)<br />
&emsp; Lot 1 has a 1 for its p-value, indicating incredibly similar means.
![Lot1 T-Test]('Resources/lot1_ttest.png)<br />
&emsp; Lot 2 has a 0.60 for its p-value indicating that there is still difference the means but nevertheless it fails to reject the null hypothesis stating there is no statistical difference between the two means.<br />
![Lot2 T-Test]('Resources/lot2_ttest.png)<br />
&emsp; Lot 3 has a p-value of 0.04 which is 1% below the desired 0.05, which means we reject the null hypothesis and recognize that Lot 3 has a statistically signicant difference between its mean and the population mean of 1500.<br />
![Lot3 T-Test]('Resources/lot3_ttest.png)<br />

## Study Design: MechaCar vs Competition
&emsp; There are several ways to compare MechaCar data to competitor data. One of which is comparing the maintenance cost of a vehicel versus its horsepower. Typically, a vehicle with a combustion engine that possesses higher horsepower means it has more components to the engine and other parts of the vehicle which usually requires more cost to maintain.<br />
&emsp; To compare the relationship between maintenance cost and horsepower, we would need maintenance cost data from multiple vehicle in multiple horsepower classes and preferrably five years worth of data. We would also need miles driven to average the cost of maintenance per mile. The null hypothesis would be state that: Based on the horsepower of the vehicle, the maintenance cost is random. We would do a linear regression model paired with the correlation coefficient to determine if we can reject the null hypothesis with correlation coefficient of more than 0.5 and prove that there is a relationship between the cost of maintenance and the horsepower a vehicle possesses. Then we use that to compare with what competitors' costs would be under the same horsepower classes.
