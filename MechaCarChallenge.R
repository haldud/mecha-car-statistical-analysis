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
