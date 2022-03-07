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
total_summary <- s$uspension_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# create lot summary
lot_summary <- suspension_coil_data%>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))



# Deliverable Three

# Lot1
t.test(subset(suspension_coil_data,Manufacturing_Lot == "Lot1")$PSI, mu=mean(suspension_coil_data$PSI))
# Lot2
t.test(subset(suspension_coil_data,Manufacturing_Lot == "Lot2")$PSI, mu=mean(suspension_coil_data$PSI))
# Lot3
t.test(subset(suspension_coil_data,Manufacturing_Lot == "Lot3")$PSI, mu=mean(suspension_coil_data$PSI))
