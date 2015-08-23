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


Variable list
Variable name	Description
1. subject	ID the subject who performed the activity for each window sample.
2. activity	Activity name
3. featDomain	Feature: Time domain signal or frequency domain signal (Time or Freq)
4. featInstrument	Feature: Measuring instrument (Accelerometer or Gyroscope)
5. featAcceleration	Feature: Acceleration signal (Body or Gravity)
6. featVariable	Feature: Variable (Mean or SD)
7. featJerk	Feature: Jerk signal
8. featMagnitude	Feature: Magnitude of the signals calculated using the Euclidean norm
9. featAxis	Feature: 3-axial signals in the X, Y and Z directions (X, Y, or Z)
10.featCount	Feature: Count of data points used to compute average
11.featAverage	Feature: Average of each variable for each activity and each subject