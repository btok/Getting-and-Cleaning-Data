---
title: "ReadMe"
author: "B"
---

The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone and raw data are obtained from UCI Machine Learning repository.

The data
The dataset includes the following files:
1. 'README.txt'
2. '/features_info.txt': Shows information about the variables used on the feature vector.
3. '/features.txt': List of all features.
4. '/activity_labels.txt': Links the class labels with their activity name.
5. '/train/X_train.txt': Training set.
6. '/train/y_train.txt': Training labels.
7. '/test/X_test.txt': Test set.
8. '/test/y_test.txt': Test labels.

How to run the script:
1. Download and unzip the data into your working directory.
2. Install the package plyr.
3. Run the file 'run_analysis.R'.
4. The txt file of task 5 will be created in your working directory under the name 'avg_by_activity_subject.txt'.


Transformation task is devided into 5 tasks:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

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