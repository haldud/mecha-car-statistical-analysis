library(dplyr)

# Deliverable 1: Linear Regression to Predict MPG
# import the MechaCar MPG data CSV into a data frame.
mecha_data <- read.csv('MechaCar_mpg.csv') 

# generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_data)

# generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_data))
