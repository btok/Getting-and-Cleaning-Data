---
title: "ReadMe"
author: "B"
---
The Task:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive activity names.

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The data:

The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone and raw data are obtained from UCI Machine Learning repository.

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
1. Download and unzip the data into your working directory (keep the folder name as 'UCI HAR Dataset').

2. Install the package plyr.

3. Run the file 'run_analysis.R'.

4. The txt file of task 5 will be created in your working directory under the name 'avg_by_activity_subject.txt'.