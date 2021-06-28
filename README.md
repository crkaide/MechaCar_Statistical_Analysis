# MechaCar Statistical Analysis

# **Deliverable 1**

## Linear Regression to Predict MPG

![del_1a_lin_reg.png](https://github.com/crkaide/MechaCar_Statistical_Analysis/blob/main/images/del_1a_lin_reg.png?raw=true)
  
![del_1b_lin_reg_sum.png](https://github.com/crkaide/MechaCar_Statistical_Analysis/blob/main/images/del_1b_lin_reg_sum.png?raw=true)

### 1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
_Values in the columns vehicle_length and ground_clearance provide non-random amounts of variance to the mpg values in the dataset._

### 2. Is the slope of the linear model considered to be zero? Why or why not?
_No, the slope of the linear model is not considered to be 0.  There is a significant linear relationship between mpg and vehicle_length/ground_clearance._

### 3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
_Yes, this model predicts the mpg effectively.  The multiple r-squared value is 0.72 (strong>=0.7) and the p-value is low, leading us to fail to reject the null hypothesis._


# **Deliverable 2**

## Summary Statistics on Suspension Coils

![del_2a_total_summary.png](https://github.com/crkaide/MechaCar_Statistical_Analysis/blob/main/images/del_2a_total_summary.png?raw=true)
  
![del_2b_lot_summary.png](https://github.com/crkaide/MechaCar_Statistical_Analysis/blob/main/images/del_2b_lot_summary.png?raw=true)

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
_The data does meet this specification for the lots in total.  Lot1 and Lot2 individually meet this design specification.  Lot3 does not; its variance is 170 PSI._


# **Deliverable 3**

## T-Tests on Suspension Coils

### Briefly summarize your interpretation and findings for the t-test results.
_Assuming a significance level of 0.05 percent, p-value>significance in all cases.  That is, we must fail to reject the null hypothesis with regard to the PSI across all manufacturing lots vs. the population mean, as well as for each lot vs. the population mean.  The first output screenshot below (del_3_1.png) addresses all lots vs. pop mean; the remaining three screenshots address individual lots in order (1, 2, 3)._

![del_3_1.png](https://github.com/crkaide/MechaCar_Statistical_Analysis/blob/main/images/del_3_1.png?raw=true)

![del_3_2_a.png](https://github.com/crkaide/MechaCar_Statistical_Analysis/blob/main/images/del_3_2_a.png?raw=true)

![del_3_2_b.png](https://github.com/crkaide/MechaCar_Statistical_Analysis/blob/main/images/del_3_2_b.png?raw=true)

![del_3_2_c.png](https://github.com/crkaide/MechaCar_Statistical_Analysis/blob/main/images/del_3_2_c.png?raw=true)


# **Deliverable 4**

## Study Design: MechaCar vs Competition

### Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

#### 1. What metric or metrics are you going to test?
_MechaCar would like to look at two metrics--mpg city and mpg highway--as they relate to regional temperature.  That is, does the average local temperature in the area of the United States in which a vehicle is bought impact fuel efficiency?  If so, to what degree?

#### 2. What is the null hypothesis or alternative hypothesis?
_H0: Temperature in region of purchase does not impact fuel efficiency_
_H1: Temperature in region of purchase impacts fuel efficiency_

#### 3. What statistical test would you use to test the hypothesis? And why?
_I would begin with two-sample t-tests.  I would create data subsets by average temperature (5-degree buckets) and t-test mean mpg for city and highway between those temperatures.  The two-sample t-test is used to determine whether there is a statistically significant disparity between the means of two samples, and so would be a good starting point in this case.

#### 4. What data is needed to run the statistical test?
_In addition to the data already included in the dataset, we would need temperature data for all lots/locations._
