# Deliverable 1: Linear Regression to Predict MPG

# 1. Download the MechaCar_mpg.csv file, and place it in the active directory for your R session.

# 2. Create a new RScript in your R source pane, name it MechaCarChallenge.RScript, and save it to your active directory.
# NOTE: Using extension .RScript problematic; extension .R necessary.

# 3. Use the library() function to load the dplyr package.
library(dplyr)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
mechacar_mpg_df <- data.frame(read.csv(file="/Users/crkaide/OneDrive - IL State University/Vanderbilt/Vanderbilt/Assignments/15_Statistics_and_R/MechaCar_Statistical_Analysis/MechaCar_mpg.csv",check.names=F,stringsAsFactors=F))
# mechacar_mpg_df #check dataframe

# 5. Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
# head(mechacar_mpg_df) #check column names
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg_df)

# 6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg_df))

# 7. Save your MechaCarChallenge.RScript file to your GitHub repository.

#-----------------------------------------------------------#

# Deliverable 2: Create Visualizations for the Trip Analysis

# 1. Download the Suspension_Coil.csv file, and place it in the active directory for your R session.

# 2. In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
suspension_coil_tbl <- read.csv(file="/Users/crkaide/OneDrive - IL State University/Vanderbilt/Vanderbilt/Assignments/15_Statistics_and_R/MechaCar_Statistical_Analysis/Suspension_Coil.csv",check.names=F,stringsAsFactors=F)
head(suspension_coil_tbl)

# 3. Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary_data <- suspension_coil_tbl %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep') #create summary table with multiple columns
total_summary_data
total_summary <- data.frame(total_summary_data)
total_summary

# 4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary_tib <- suspension_coil_tbl %>%  group_by(Manufacturing_Lot)  %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep') #create summary table with multiple columns
lot_summary <- data.frame(lot_summary_tib)
lot_summary

# 5. Save your MechaCarChallenge.RScript file to your GitHub repository.

#-----------------------------------------------------------#










