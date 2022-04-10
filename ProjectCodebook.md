### Codebook

Code book for Coursera Getting and Cleaning Data course project

The initial source data for this project is available here:

 [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI HAR Dataset.zip)  

The structure of the data set is described in the Data section and its variables are listed in the Variables section.

#### Data

The *tidy_data.txt* data file is a text file, containing space-separated values.

The data file represent a  experiment that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone  on the waist. Using its embedded accelerometer and gyroscope made it possible to captured 3-axial linear acceleration and 3-axial angular velocity. 

The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables.

#### Variables

Each row contains, for a given subject and activity, 79 averaged signal measurements.

**Subject** identifier, integer, ranges from 1 to 30.

**Activity** identifier, string with 6 possible values  (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

**Averaged signal measurements**

All measurements are floating-point values, normalised and bounded within [-1,1].

The measurements are classified in two domains:

Time-domain signals (variables prefixed by time), resulting from the capture of accelerometer and gyroscope raw signals.

Frequency-domain signals (variables prefixed by frequency)

**Variables list**

[1] "subject"                           "activity"                          "TimeBodyAcc-mean-X"               
 [4] "TimeBodyAcc-mean-Y"                "TimeBodyAcc-mean-Z"                "TimeBodyAcc-std-X"                
 [7] "TimeBodyAcc-std-Y"                 "TimeBodyAcc-std-Z"                 "TimeGravityAcc-mean-X"            
[10] "TimeGravityAcc-mean-Y"             "TimeGravityAcc-mean-Z"             "TimeGravityAcc-std-X"             
[13] "TimeGravityAcc-std-Y"              "TimeGravityAcc-std-Z"              "TimeBodyAccJerk-mean-X"           
[16] "TimeBodyAccJerk-mean-Y"            "TimeBodyAccJerk-mean-Z"            "TimeBodyAccJerk-std-X"            
[19] "TimeBodyAccJerk-std-Y"             "TimeBodyAccJerk-std-Z"             "TimeBodyGyro-mean-X"              
[22] "TimeBodyGyro-mean-Y"               "TimeBodyGyro-mean-Z"               "TimeBodyGyro-std-X"               
[25] "TimeBodyGyro-std-Y"                "TimeBodyGyro-std-Z"                "TimeBodyGyroJerk-mean-X"          
[28] "TimeBodyGyroJerk-mean-Y"           "TimeBodyGyroJerk-mean-Z"           "TimeBodyGyroJerk-std-X"           
[31] "TimeBodyGyroJerk-std-Y"            "TimeBodyGyroJerk-std-Z"            "TimeBodyAccMag-mean"              
[34] "TimeBodyAccMag-std"                "TimeGravityAccMag-mean"            "TimeGravityAccMag-std"            
[37] "TimeBodyAccJerkMag-mean"           "TimeBodyAccJerkMag-std"            "TimeBodyGyroMag-mean"             
[40] "TimeBodyGyroMag-std"               "TimeBodyGyroJerkMag-mean"          "TimeBodyGyroJerkMag-std"          
[43] "FrequencyBodyAcc-mean-X"           "FrequencyBodyAcc-mean-Y"           "FrequencyBodyAcc-mean-Z"          
[46] "FrequencyBodyAcc-std-X"            "FrequencyBodyAcc-std-Y"            "FrequencyBodyAcc-std-Z"           
[49] "FrequencyBodyAcc-meanFreq-X"       "FrequencyBodyAcc-meanFreq-Y"       "FrequencyBodyAcc-meanFreq-Z"      
[52] "FrequencyBodyAccJerk-mean-X"       "FrequencyBodyAccJerk-mean-Y"       "FrequencyBodyAccJerk-mean-Z"      
[55] "FrequencyBodyAccJerk-std-X"        "FrequencyBodyAccJerk-std-Y"        "FrequencyBodyAccJerk-std-Z"       
[58] "FrequencyBodyAccJerk-meanFreq-X"   "FrequencyBodyAccJerk-meanFreq-Y"   "FrequencyBodyAccJerk-meanFreq-Z"  
[61] "FrequencyBodyGyro-mean-X"          "FrequencyBodyGyro-mean-Y"          "FrequencyBodyGyro-mean-Z"         
[64] "FrequencyBodyGyro-std-X"           "FrequencyBodyGyro-std-Y"           "FrequencyBodyGyro-std-Z"          
[67] "FrequencyBodyGyro-meanFreq-X"      "FrequencyBodyGyro-meanFreq-Y"      "FrequencyBodyGyro-meanFreq-Z"     
[70] "FrequencyBodyAccMag-mean"          "FrequencyBodyAccMag-std"           "FrequencyBodyAccMag-meanFreq"     
[73] "FrequencyBodyAccJerkMag-mean"      "FrequencyBodyAccJerkMag-std"       "FrequencyBodyAccJerkMag-meanFreq" 
[76] "FrequencyBodyGyroMag-mean"         "FrequencyBodyGyroMag-std"          "FrequencyBodyGyroMag-meanFreq"    
[79] "FrequencyBodyGyroJerkMag-mean"     "FrequencyBodyGyroJerkMag-std"      "FrequencyBodyGyroJerkMag-meanFreq"

#### Transformations

The following transformations were applied to the source data:

1. The training and test sets were merged to create one data set.

2. The measurements on the mean and standard deviation (field-name containing the strings mean and std) were extracted for each measurement, and the others variables were discarded.

3. The activity integer-identifiers  were replaced with descriptive activity names .

4. The measurement variable names were modified.

5. The final data set was created with the average of each variable for each subject and each activity.

   