## Getting and Cleaning Data Project
## Jie Zhang
## March, 2016


## This file is going to do:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average 
##    of each variable for each activity and each subject.

## Set working directory
setwd("~/Documents/Cleaning data")
 
## 1. Merges the training and the test sets to create one data set.

## load all the data sets.
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

## Combine both parts of the corresponding data sets.
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

## Check the results.
nrow(x_data) == (nrow(x_train) + nrow(x_test))
nrow(y_data) == (nrow(y_train) + nrow(y_test))
## All returned "TRUE".


##2. Extracts only the measurements on the mean and standard deviation for each measurement.

## Load features and extract mean and standard deviation
features <- read.table("UCI HAR Dataset/features.txt")
featuresmst <- grep("-(mean|std)\\(\\)", features[, 2])
x_data <- x_data[, featuresmst]
names(x_data) <- features[featuresmst, 2]

## Check
names(x_data)



## 3. Uses descriptive activity names to name the activities in the data set

##load the activity labels
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

## update values with correct activity names
y_data[, 1] <- activities[y_data[, 1], 2]

## correct column name
names(y_data) <- "activity"

## 4. Appropriately labels the data set with descriptive variable names.
## correct column name
names(subject_data) <- "subject"


## 5. From the data set in step 4, creates a second, independent tidy data set with the average 
install.packages("plyr")
library("plyr")
## bind all the data in a single data set
Data <- cbind(x_data, y_data, subject_data)
avedata <- ddply(Data, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(avedata, "avedata.txt", row.name=FALSE)
