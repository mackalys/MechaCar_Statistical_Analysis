## Deliverable 1: Linear Regression to Predict MPG

# Use the library() function to load the dplyr package.
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
mechacar_mpg_df <- read.csv(file='./MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mechacar_mpg_df)

# Perform linear regression using the lm() function.
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df))

## Deliverable 2: Create Visualization for the Trip Analysis

# Import and read in the Suspension_Coil.csv file as a table.
suspension_coil_df <- read.csv(file='./Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(suspension_coil_df)

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
total_summary <- suspension_coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

## Deliverable 3: Running T-Test for Suspension Coils

# Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil_df$PSI, mu=1500)

# Write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(suspension_coil_df$PSI, suspension_coil_df$Manufacturing_Lot=="Lot1"), mu=1500)
t.test(subset(suspension_coil_df$PSI, suspension_coil_df$Manufacturing_Lot=="Lot2"), mu=1500)
t.test(subset(suspension_coil_df$PSI, suspension_coil_df$Manufacturing_Lot=="Lot3"), mu=1500)