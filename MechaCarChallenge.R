library(dplyr)
mecha_car <- read.csv('Resources/MechaCar_mpg.csv', check.names= F, stringsAsFactors= F)
head(mecha_car)

mecha_regres <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, mecha_car)
mecha_regres
multi_mecha_regres <- summary(mecha_regres)

sus_coil <- read.csv('Resources/Suspension_Coil.csv')
total_summary <- summarise(sus_coil, Mean=mean(sus_coil$PSI), Median=median(sus_coil$PSI),
                           Variance=var(sus_coil$PSI), SD=sd(sus_coil$PSI))
total_summary
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>%
  summarise(Mean=mean(PSI), Median=median(PSI),
            Variance=var(PSI), SD=sd(PSI))
lot_summary

t.test(sus_coil$PSI, mu=1500)
lot1 <- subset(sus_coil, Manufacturing_Lot == 'Lot1')
lot2 <- subset(sus_coil, Manufacturing_Lot == 'Lot2')
lot3 <- subset(sus_coil, Manufacturing_Lot == 'Lot3')
t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)



