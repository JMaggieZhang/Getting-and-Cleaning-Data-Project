---
title: "Getting and Cleaning Data Project Codebook"
author: "Jie Zhang"
date: "March 12, 2016"
output: html_document
---

###Instructions for project 
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The project requires to submit:   
1 A tidy data set as described below  
2 A link to a Github repository with your script for performing the analysis  
3 A code book that describes the variables, the data, and any transformations or work that I performed to clean up the data called CodeBook.md  
4 A README.md in the repo with scripts. This repo explains how all of the scripts work and how they are connected.   

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


###Description of the DATA  

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix ‘t’ to denote time) were captured at a constant rate of 50 Hz. and the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) – both using a low pass Butterworth filter.  

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the ‘f’ to indicate frequency domain signals).  

####Description of abbreviations of measurements
1.	leading t or f is based on time or frequency measurements  
2.	Body = related to body movement  
3.	Gravity = acceleration of gravity  
4.	Acc = accelerometer measurement  
5.	Gyro = gyroscopic measurements  
6.	Jerk = sudden movement acceleration  
7.	Mag = magnitude of movement  
8.	mean and SD are calculated for each subject for each activity for each mean and SD measurements.  

The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.
These signals were used to estimate variables of the feature vector for each pattern:  
‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions. They total 33 measurements including the 3 dimensions - the X,Y, and Z axes.
•	tBodyAcc-XYZ  
•	tGravityAcc-XYZ  
•	tBodyAccJerk-XYZ  
•	tBodyGyro-XYZ  
•	tBodyGyroJerk-XYZ  
•	tBodyAccMag  
•	tGravityAccMag  
•	tBodyAccJerkMag  
•	tBodyGyroMag  
•	tBodyGyroJerkMag  
•	fBodyAcc-XYZ  
•	fBodyAccJerk-XYZ  
•	fBodyGyro-XYZ  
•	fBodyAccMag  
•	fBodyAccJerkMag  
•	fBodyGyroMag  
•	fBodyGyroJerkMag  


The set of variables that were estimated from these signals are:  
•	mean(): Mean value  
•	std(): Standard deviation      



###Data Set Information    

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###Attribute Information  

For each record in the dataset it is provided:  

Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
Triaxial Angular velocity from the gyroscope.
A 561-feature vector with time and frequency domain variables.
Its activity label.
An identifier of the subject who carried out the experiment.

