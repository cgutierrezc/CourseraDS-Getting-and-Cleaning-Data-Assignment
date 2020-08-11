# CourseraDS-Getting-and-Cleaning-Data-Assignment
This repositorie contains the assignment work described in the Course Getting and Cleaning Data week 4 from the John Hopkings Data Science Specialization


###Project Objectives
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.


### Data Set Information:
The data set is related with experiments that have been carried out by collecting information of human activities using smartphones from  a group of 30 volunteers within an age between 19 and 48 years.

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

### Code description
The run_analysis.R does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The file must be unzip where the run_analysis.R be executed. ("Unzip here"). It creates a directory named UCI HAR Dataset with all the text files.

A tidydata.txt is created at the end.