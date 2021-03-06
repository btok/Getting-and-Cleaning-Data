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

The features:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag




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

Data transformation:

1. Merging the trainging and testing datasets: 
Test and training data, subject ids and activity ids are merged to obtain a single data set. 
Variables are labelled with the names assigned by the original conduct in the file 'features.txt'.

2. Extracting mean and standard deviation variables:
Filtering the merged data to have only the values of estimated mean (variables that contain "mean") and standard deviation (variables that contain "std").

3. Using descriptive names:
A new column is added with the activity description. The use of Activity id column is to look up descriptions in activity_labels file
Also the original labels were changed in order to obtain valid R names (without parentheses, dashes and commas to obtain more descriptive labels).

4. Creating tidy dataset:
From the resulted data set I created a tidy data set where I avereged all numeric values according to activity and subject.
The result dataset stracture is:
--* Activity: 'WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'SITTING', 'STANDING', 'LAYING'
--* subject identifier (numeric): 1, 3, 5...
--* A 79-feature vector with time and frequency variables (numeric)

5. Evetually the resulted dataset is written to the file 'avg_by_activity_subject.txt'

References
<a name="uci-har"/>Human Activity Recognition Using Smartphones Data Set. URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
