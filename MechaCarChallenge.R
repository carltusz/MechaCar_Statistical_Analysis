# Deliverable One

#import dplyr
library(dplyr)

#import mechacar_mpg.csv
MechaCar_data <- read.csv("MechaCar_mpg.csv")

#linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCar_data)

#linear model summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,MechaCar_data))



# Deliverable Two

#get data from CSV
suspension_coil_data = read.csv("Suspension_Coil.csv")

# create summary table
total_summary <- suspension_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# create lot summary
lot_summary <- suspension_coil_data%>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))



# Deliverable Three

# All Lots
t.test(suspension_coil_data$PSI,mu=1500)

# Lot1
t.test(subset(suspension_coil_data,Manufacturing_Lot == "Lot1")$PSI, mu=1500)
# Lot2
t.test(subset(suspension_coil_data,Manufacturing_Lot == "Lot2")$PSI, mu=1500)
# Lot3
t.test(subset(suspension_coil_data,Manufacturing_Lot == "Lot3")$PSI, mu=1500)

