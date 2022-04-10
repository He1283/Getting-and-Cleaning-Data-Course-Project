
################################################################################
# Read data
################################################################################
library(readr)
library(data.table)

features <- fread("UCI HAR Dataset/features.txt", col.names = c("n","feature"))
activities <- fread("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
subj_train <- fread("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
subj_test <- fread("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_train <- fread("./UCI HAR Dataset/train/X_train.txt", col.names = features$feature)
y_train <- fread("./UCI HAR Dataset/train/y_train.txt", col.names = "code")
y_test <- fread("./UCI HAR Dataset/test/y_test.txt", col.names = "code")

x_test <- fread("./UCI HAR Dataset/test/X_test.txt", col.names = features$feature)
################################################################################
# 1. Merges the training and the test sets to create one data set.
################################################################################
library(dplyr)
y_train2 <- y_train %>% left_join(activities, by="code")
y_test2 <- y_test %>% left_join(activities, by="code")

x_train2 <- cbind(subj_train,y_train2, x_train)
x_test2 <- cbind(subj_test,y_test2, x_test)

x <- rbind(x_train2, x_test2)
# check merge
table(x$activity,x$subject)

# > table(x$activity,x$subject)
# 
#                     1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
# LAYING             50 48 62 54 52 57 52 54 50 58 57 60 62 51 72 70 71 65 83 68 90 72 72 72 73 76 74 80 69 70
# SITTING            47 46 52 50 44 55 48 46 50 54 53 51 49 54 59 69 64 57 73 66 85 62 68 68 65 78 70 72 60 62
# STANDING           53 54 61 56 56 57 53 54 45 44 47 61 57 60 53 78 78 73 73 73 89 63 68 69 74 74 80 79 65 59
# WALKING            95 59 58 60 56 57 57 48 52 53 59 50 57 59 54 51 61 56 52 51 52 46 59 58 74 59 57 54 53 65
# WALKING_DOWNSTAIRS 49 47 49 45 47 48 47 38 42 38 46 46 47 45 42 47 46 55 39 45 45 36 54 55 58 50 44 46 48 62
# WALKING_UPSTAIRS   53 48 59 52 47 51 51 41 49 47 54 52 55 54 48 51 48 58 40 51 47 42 51 59 65 55 51 51 49 65



################################################################################
# 2 .Extracts only the measurements on the mean and standard deviation for each measurement. 
################################################################################ 
library(dplyr)
?grep

x_names <- names(x)
g <- grep("mean|std", x_names)
g
x_names[g]
x %>% select(subject, activity, x_names[g])


################################################################################
# 3. Uses descriptive activity names to name the activities in the data set
################################################################################
# activity names is added under 1. merge
table(x$activity,x$subject)

################################################################################
# 4. Appropriately labels the data set with descriptive variable names. 
################################################################################
names(x)
x_names[g]

names(x) <- gsub("^t", "Time", names(x))
names(x) <- gsub("^f", "Frequency", names(x))
names(x) <- gsub("\\(\\)", "", names(x))
names(x) <- gsub("BodyBody", "Body", names(x))
head(x,2)

# data to q5
x_names <- names(x)
g <- grep("mean|std", x_names)
g
x_names[g]
x %>% select(subject, activity, x_names[g])

x2 <- x %>% select(subject, activity, x_names[g])
names(x2)
dim(x2)


################################################################################
# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
################################################################################

x2_output <- aggregate(. ~subject + activity, x2, mean)
x2_output
dim(x2_output)
table(x2_output$activity,x2_output$subject)
# check
# > table(x2_output$activity,x2_output$subject)
# 
#                    1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
# LAYING             1 1 1 1 1 1 1 1 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
# SITTING            1 1 1 1 1 1 1 1 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
# STANDING           1 1 1 1 1 1 1 1 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
# WALKING            1 1 1 1 1 1 1 1 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
# WALKING_DOWNSTAIRS 1 1 1 1 1 1 1 1 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
# WALKING_UPSTAIRS   1 1 1 1 1 1 1 1 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
# > 
################################################################################
# output - write data to  file
################################################################################
write.table(x2_output, file = "tidydata.txt",row.name=FALSE)

################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################