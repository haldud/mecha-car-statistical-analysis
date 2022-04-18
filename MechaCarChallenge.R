# Deliverable 1: Linear Regression to Predict MPG
library(dplyr)

# import the MechaCar MPG data CSV into a data frame.
mecha_mpg_data <- read.csv('MechaCar_mpg.csv') 

# generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg_data)

# generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg_data))



# Deliverable 2: Create Visualizations for the Trip Analysis

# import the MechaCar suspension coil data CSV into a data frame.
mecha_coil_data <- read.csv('Suspension_Coil.csv') 

# get the mean, median, variance, and standard deviation for PSI
total_summary <- mecha_coil_data %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))

# get the mean, median, variance, and standard deviation for PSI grouped by manufacturing lot
lot_summary <- mecha_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))



# Deliverable 3: T-Tests on Suspension Coils

# determine if the PSI across all manufacturing lots is statistically different
# from the population mean of 1,500 pounds per square inch
t.test(mecha_coil_data$PSI, mu = 1500)

# three additional tests with different subsets of manufacturing lots
t.test(subset(mecha_coil_data, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
t.test(subset(mecha_coil_data, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
t.test(subset(mecha_coil_data, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
