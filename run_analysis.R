##1. Merges the training and the test sets to create one data set.
library(dplyr)

# reading the train data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
Sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# reading the test data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
Sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# reading the data description
variable_names <- read.table("./UCI HAR Dataset/features.txt")

# reading the activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Merging the train and test data sets 
X_merged <- rbind(X_train, X_test)
Y_merged <- rbind(Y_train, Y_test)
Sub_merged <- rbind(Sub_train, Sub_test)

##2. Extracts only the measurements on the mean and standard deviation for each measurement.
measured_vars <- variable_names[grep("mean\\(\\)|std\\(\\)",variable_names[,2]),]
X_merged <- X_merged[,measured_vars[,1]]

##3. Uses descriptive activity names to name the activities in the data set
colnames(Y_merged) <- "activity"
Y_merged$activitylabel <- factor(Y_merged$activity, labels = as.character(activity_labels[,2]))
activitylabel <- Y_merged[,-1]

##4. Appropriately labels the data set with descriptive variable names.
colnames(X_merged) <- variable_names[measured_vars[,1],2]

##5. From the data set in step 4, creates a second, independent tidy data set
##with the average of each variable for each activity and each subject.
colnames(Sub_merged) <- "subject"
data <- cbind(X_merged, activitylabel, Sub_merged)
data_mean <- data %>% group_by(activitylabel, subject) %>% summarize_each(funs(mean))
write.table(data_mean, file = "./tidydata.txt", row.names = FALSE, col.names = TRUE)
