---
title: "CodeBook"
author: "B"
---

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


Attribute Information:
For each record in the dataset it is provided: 
--* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
--* Triaxial Angular velocity from the gyroscope. 
--* A 561-feature vector with time and frequency domain variables. 
--* Its activity label. 
--* An identifier of the subject who carried out the experiment.


Variable list that were collected:

1. mean(): Mean value

2. std(): Standard deviation

3. mad(): Median absolute deviation

4. max(): Largest value in array

5. min(): Smallest value in array

6. sma(): Signal magnitude area

7. energy(): Energy measure. Sum of the squares divided by the number of values.

8. iqr(): Interquartile range

9. entropy(): Signal entropy

10. arCoeff(): Autoregression coefficients with Burg order equal to 4

11. correlation(): Correlation coefficient between two signals

12. maxInds(): Index of the frequency component with largest magnitude

13. meanFreq(): Weighted average of the frequency components to obtain a mean frequency

14. skewness(): Skewness of the frequency domain signal

15. kurtosis(): Kurtosis of the frequency domain signal

16. bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window

17. angle(): Angle between some vectors