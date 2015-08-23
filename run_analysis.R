library(plyr)

#Creating files URL & reading data
data_dir <- "UCI HAR Dataset"
xTrain <- read.table(paste(data_dir, "/train/X_train.txt", sep = ""))
subjectTrain <- read.table(paste(data_dir, "/train/subject_train.txt", sep = ""))
yTrain <- read.table(paste(data_dir, "/train/y_train.txt", sep = ""))
subjectTest <- read.table(paste(data_dir, "/test/subject_test.txt", sep = ""))
xTest <- read.table(paste(data_dir, "/test/X_test.txt", sep = ""))
yTest <- read.table(paste(data_dir, "/test/y_test.txt", sep = ""))

features <- read.table(paste(data_dir, "/features.txt", sep = ""), colClasses = c("character"))
activityLabels <- read.table(paste(data_dir, "/activity_labels.txt", sep = ""), col.names = c("ActivityId", "Activity"))

#Combining training data
trainingData <- cbind(cbind(xTrain, subjectTrain), yTrain)
#Combining test data
testData <- cbind(cbind(xTest, subjectTest), yTest)
#Merging test with training data
combinedData <- rbind(trainingData, testData)

#Setting col labels
colLabels <- rbind(rbind(features, c(562, "Subject")), c(563, "ActivityId"))[,2]
names(combinedData) <- colLabels

#Extracts only the measurements on the mean and standard deviation for each measurement.
filteredData <- combinedData[,grepl("mean|std|Subject|ActivityId", names(combinedData))]

#Use descriptive activity names to name the activities in the data set
sensorDataMeanStd <- join(filteredData, activityLabels, by = "ActivityId", match = "first")
sensorDataMeanStd <- sensorDataMeanStd[,-1]

#Appropriately labels the data set with descriptive names
#Removing parentheses & syntactically invalid names
names(sensorDataMeanStd) <- gsub('\\(|\\)',"",names(sensorDataMeanStd))
names(sensorDataMeanStd) <- make.names(names(sensorDataMeanStd))
#Make clearer names
names(sensorDataMeanStd) <- gsub('Acc',"Acceleration",names(sensorDataMeanStd))
names(sensorDataMeanStd) <- gsub('Gyro',"AngularSpeed",names(sensorDataMeanStd))
names(sensorDataMeanStd) <- gsub('GyroJerk',"AngularAcceleration",names(sensorDataMeanStd))
names(sensorDataMeanStd) <- gsub('Mag',"Magnitude",names(sensorDataMeanStd))

names(sensorDataMeanStd) <- gsub('^t',"TimeDomain.",names(sensorDataMeanStd))
names(sensorDataMeanStd) <- gsub('^f',"FrequencyDomain.",names(sensorDataMeanStd))
names(sensorDataMeanStd) <- gsub('\\.mean',".Mean",names(sensorDataMeanStd))
names(sensorDataMeanStd) <- gsub('\\.std',".StandardDeviation",names(sensorDataMeanStd))
names(sensorDataMeanStd) <- gsub('Freq\\.',"Frequency.",names(sensorDataMeanStd))
names(sensorDataMeanStd) <- gsub('Freq$',"Frequency",names(sensorDataMeanStd))

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
dataAvgActivityAndSubject <- ddply(sensorDataMeanStd, c("Subject","Activity"), numcolwise(mean))
write.table(dataAvgActivityAndSubject, file = "avg_by_activity_subject.txt", row.names=FALSE)