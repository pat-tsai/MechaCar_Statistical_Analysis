# deliverable 1 -- Linear regression to predict mpg
library(dplyr) # loading in packages

mechacar_mpg <- read.csv('MechaCar_mpg.csv') #import dataset

summary(lm(mpg ~ vehicle_length + vehicle_weight+ spoiler_angle + ground_clearance + AWD, data=mechacar_mpg))



# deliverable 2 -- Visualizations for trip analysis
suspension_coils <- read.csv('Suspension_Coil.csv') #import dataset

# creating PSI summary dataframe
total_summary <- suspension_coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='drop')

# creating PSI summary grouped by manufacturing lot number
lot_summary <- suspension_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='drop')



# deliverable 3 -- T-tests
t.test(suspension_coils$PSI, mu=1500) # t-test for all 3 manufacturing lots, assumed true mean = 1,500 PSI
# since the p value is greater than significance level of 0.05, we fail to reject the null hypothesis

# t-tests based on subsets of manufacturing lots (1, 2, or 3)
lot_1_data <- suspension_coils %>% subset(Manufacturing_Lot=='Lot1')
t.test(lot_1_data$PSI, mu=1500)

lot_2_data <- suspension_coils %>% subset(Manufacturing_Lot=='Lot2')
t.test(lot_2_data$PSI, mu=1500)

lot_3_data <- suspension_coils %>% subset(Manufacturing_Lot=='Lot2')
t.test(lot_3_data$PSI, mu=1500)
