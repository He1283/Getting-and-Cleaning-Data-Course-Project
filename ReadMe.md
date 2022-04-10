Coursera Getting and Cleaning Data course project

In this project, data was collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone and the collected data was merged, cleaned and a final data-set was created.

This repository contains the following files:

1. README.md, 

2. tidy_data.txt, which contains the data set. 

3. CodeBook.md, twhich describes the contents of the data set (data, variables and transformations ). 

4. run_analysis.R, the R script that was used to create the data set 

   

The source data-set to this project describes how the data was initially collected as follows:

*The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.*

*The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.* 

**Transformation**

Training and test data were merged together to create one data set, then the measurements on the mean and standard deviation were extracted for each measurement (79 variables extracted from the original 561), and then the measurements were averaged for each subject and activity, resulting in the final data set.

**Creating the data set**

The R script run_analysis.R can be used to create the data set. It retrieves the source data set and transforms it to produce the final data set by implementing the following steps: 

Download and unzip source data if it doesn't exist. 

Read data. 

Merge the training and the test sets to create one data set. 

Extract only the measurements on the mean and standard deviation for each measurement. 

Use descriptive activity names to name the activities in the data set. 

Appropriately label the data set with descriptive variable names. 

Create a data set with the average of each variable for each activity and each subject. Write the data set to the tidy_data.txt file. 