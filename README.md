# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

From looking at the linear regression we conducted, we can see that there are two variables/coefficients that provided a non-random amount of variance to the mpg values. They are vehicle length and ground clearance. The p-values for these variables are 2.60x10^-12 for vehicle length and 5.21x10^-8 and since they are smaller than 0.05, they are statistically significant. The linear slope is not considered to be zero since the p-value is 5.35x10^-11, which would be considered very low and means that the relationship between miles per gallon (MPG) and our variables are more random and do not have much correlation. We would also need to reject the null hypothesis because the p-value is so small. We can predict the effectiveness of the MechaCar prototypes by looking at the R-sqaured value. For this analysis it is 0.7149 or 71.49%. This number shows us that the prototypes are 71% effective, meaning MechaCar may want to take the prototype back to the drawing board and tweak it some more.

## Summary Statistics on Suspension Coils

For the design specifications for the MechaCar suspension coils, they can not be over 100 pounds per sqaure inch (PSI). From looking only at the total summary shown above, the variance for the suspension coil is 62.29 PSI, putting the MEchaCar coils under the goal. Although, if were were to break the individual lots apart, shown in the lot summary, we can see there is a large difference between Lot 1 & 2 and Lot 3. Lot 3 has exceeded the design specifications by 70 PSI. Once again showing MechaCar needs to take their prototype back the drawing board.

## T-Tests on Suspension Coils

For the first t-test, it shows all the suspension coils from all the lots. This test indicates that there was not much of a difference across all the lots because the mean is shown to be 1498.78, which is very close to the mean population of 1500. The p-value for this test is 0.06028 meaning the null hypothesis cannot be rejected because it is not less than 0.05.

For the second t-test, it shows the suspension coils just from Lot 1. There is no difference in the mean since it is exactly 1500, but the p-value is very high at 1. This again means we have to reject the null hypothesis since it is too high.

For the third t-test, it shows the suspension coils for just Lot 2. There is no significant difference in the mean sice it is 1500.2. Although, the p-value is still too high to rehect the null hypothesis since it is at 0.6072.

For the fourth t-test, it shows the suspension coil for just Lot 3. Keeping in mind the previous analysis we had done on Lot 3, we saw that the suspension coil was far over the accepted amount at 170 PSI. This t-test shows the mean is slightly lower than the population mean at 1496.14 and the p-value is low at 0.04168. The p-value indicates that we can reject the null hypothesis, but due to the previous anlysis, this data may not be reliable.
