## ReadMe for 'run_analysis.R' script
This document describes the *run_analysis.R* script, which performs the processing required for the project for the Coursera 'Getting and Cleaning Data' Data Science course.

The script consists of a single function, `processSamsungData()`, which reads and processes logged data from acceleromoter and gyroscope sensors embedded in Samsung Galaxy S smartphones. The data was collected from the phones of 30 subjects while they were performing the following six activities: walking, walking upstairs, walking downstairs, sitting, standing, laying. The data supplied consists of files containing both training and test data. The processing performs the following:

1. Merges the training and test data sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


The data for the project comes from the Human Activity Recognition (HAR) database, and was downloaded from the following Internet site:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Prior to processing, the data files were unzipped, preserving the original directory structure. The following eight files were used by the script:

* X_train.txt:
  * sensor data for the training set (7352 x 561)
* y_train.txt:
  *  corresponding activity data for the training set (7352 x 1)
* subject_train.txt:
 * corresponding subject IDs for the training set (7352 x 1)
* X_test.txt:
 * sensor data for the test set (2947 x 561)
* y_test.txt:
 * corresponding activity data for the test set (2947 x 1)
* subject_test.txt:
 * corresponding subject IDs for the test set (2947 x 1)
* activity_labels.txt:
 * text labels for the six activities
* features.txt:
 * text labels for the sensor variables (561)

It was noted that there was no missing data in any of the above files.

The processing performed by the script is described below.

1. The "reshape2" library is loaded. This library contains the `melt()` and `dcast()` functions that are used later in the processing. 
2. The text labels for the activities and the sensor variables are read in from the appropriate files.
3. The training and test sensor data are read in and merged into a single data frame.
4. The corresponding training and test activity data are read in and merged into a single data frame.
5. The corresponding training and test subject ID data are read in and merged into a single data frame.
6. Factors are defined for the activities using the activity labels. This allows text labels to be used instead of numeric codes.
7. All of the data is merged into a single data frame consisting of 10299 rows and 563 columns.
8. Names are assigned to all of the columns.
9. A new data frame is created containing the subject and activity columns and all columns containing means and standard deviations. (It was noted that there were 53 variables which had 'mean' or 'Mean' in the name, but only 33 of these appeared to be relevant and had corresponding standard deviations. The new data frame therefore has 68 columns (2+33+33).)
10. The extracted data is reshaped using the `melt()` function, to give one value per row.
11. The `dcast()` function is used to create a new data frame containing means for each activity for each subject. This has 180 rows.
12. The new data frame, which meets the requirements for a tidy data set, is saved to the the disk file "har_means.txt".

**Note:** The data frame is output to a file using the `write.table()` function. It can be read back into a data frame using the `read.table()` function:

`df <- read.table("har_means.txt", header=TRUE)`.
