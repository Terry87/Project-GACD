processSamsungData <- function() {

    ## This function processes the supplied sensor data collected from Samsung Galaxy S
    ## smartphones of 30 subjects performing 6 activities. It performs the following:
    ##
    ## 1. Merges the training and test data sets to create one data set.
    ## 2. Extracts only the measurements on the mean and standard deviation for
    ##    each measurement.
    ## 3. Uses descriptive activity names to name the activities in the data set.
    ## 4. Appropriately labels the data set with descriptive variable names.
    ## 5. Creates a second, independent tidy data set with the average of each
    ##    variable for each activity and each subject.
    ##
    ## The function assumes that the data has been downloaded, unzipped and placed
    ## in the R working directory.
    ##
    ## Author: Terry87
    ## Date:   20/06/2014
    
    library(reshape2)   # required for melt and dcast functions
    
    ## Read in the activity labels and variable names
    activities <- read.table("Project/UCI HAR Dataset/activity_labels.txt")
    features <- read.table("Project/UCI HAR Dataset/features.txt")

    ## Read in the X training and test data and merge
    X_train <- read.table("Project/UCI HAR Dataset/train/X_train.txt")
    X_test <- read.table("Project/UCI HAR Dataset/test/X_test.txt")
    X_all <- rbind(X_train, X_test)
    rm(X_train)   # delete to free up memory
    rm(X_test)    # delete to free up memory
    
    ## Read in the y training and test data and merge
    y_train <- read.table("Project/UCI HAR Dataset/train/y_train.txt")
    y_test <- read.table("Project/UCI HAR Dataset/test/y_test.txt")
    y_all <- rbind(y_train, y_test)
    rm(y_train)   # delete to free up memory
    rm(y_test)    # delete to free up memory
    
    ## Read in the Subject training and test data and merge
    subject_train <- read.table("Project/UCI HAR Dataset/train/subject_train.txt")
    subject_test <- read.table("Project/UCI HAR Dataset/test/subject_test.txt")
    subject_all <- rbind(subject_train, subject_test)
    rm(subject_train)   # delete to free up memory
    rm(subject_test)    # delete to free up memory
    
    ## Use the activity labels to define factors 
    y_all[,1] <- factor(y_all[,1], levels = activities[,1], labels = activities[,2])
    
    ## Merge all of the data into a single data frame and set names for columns
    data_all <- cbind(subject_all, y_all, X_all)
    data_all <- setNames(data_all, c("Subject", "Activity", as.character(features[,2])))
    rm(subject_all)   # delete to free up memory
    rm(y_all)         # delete to free up memory
    rm(X_all)         # delete to free up memory
    
    ## Extract Subject and Activity columns + columns containing means or standard deviations
    cols_to_extract <- grep("Subject|Activity|-mean\\(|-std\\(", as.character(names(data_all)))
    data_ext <- data_all[,cols_to_extract]

    ## Reshape the extracted data to give one value per row and then calculate means
    data_melt <- melt(data_ext, id=c("Subject","Activity"), measure.vars=as.character(names(data_ext[3:ncol(data_ext)])))
    data_means <- dcast(data_melt, Subject + Activity ~ variable,mean)
    
    ## Output tidy data set to disk file
    write.table(data_means, file = "har_means.txt", row.names=FALSE, col.names=TRUE, sep=" ", quote=TRUE)
}
