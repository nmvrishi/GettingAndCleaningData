#This function merges X_train,Y_train, Subject_train, X_test, Y_test, Subject_test datasets,
#    provides descriptive names for each of the fields,
#    gets only fields that have "mean" and "std" characters in their names,
#    and creates a new tidy_data set that has the average of each mean or std variable for each activity and each
run_analysis <- function() {
      
      #dplyr package check
      if (!require('dplyr')) {
            stop("This function needs dplyr package!")
      }
      
      #Read X_train data set
      x_train <-
            read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE)
      
      #Read y_train data set
      y_train <-
            read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE)
      
      #Read subject_train data set
      subject_train <-
            read.table("./data/UCI HAR Dataset/train/subject_train.txt",
                       header = FALSE)
      
      #Read features data that has data field defintions of X_train data set
      features <-
            read.table("./data/UCI HAR Dataset/features.txt", header = FALSE)
      
      #4.1 Appropriately labels the data set with descriptive variable names.
      names(x_train) <-  features[, 2]
      
      #add activity header to Y_train data set
      names(y_train) <-  "activity"
      
      #add subject header to subject_train data set
      names(subject_train) <-  "subject_id"
      
      #Combine all train data
      train_data <- cbind(subject_train, y_train, x_train)
      
      #Read X_test data set
      x_test <-
            read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE)
      
      #Read Y_test data set
      y_test <-
            read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE)
      
      #Read Subject_test data set
      subject_test <-
            read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
      
      #4.2 Appropriately labels the data set with descriptive variable names.
      names(x_test) <-  features[, 2]
      
      #add activity header to Y_test data set
      names(y_test) <-  "activity"
      
      #add subject header to subject_test data set
      names(subject_test) <-  "subject_id"
      
      #Combine all test data
      test_data <- cbind(subject_test, y_test, x_test)
      
      #1. Merges the training and the test sets to create one data set.
      all_data <- rbind(train_data, test_data)
      
      #2. Extracts only the measurements on the mean and standard deviation for each measurement.
      all_data_extracted <-
            all_data[, c(1, 2, grep("mean|std", names(all_data), ignore.case = TRUE))]
      
      #Read activity labels
      activity_labels <-
            read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE)
      
      #Get activity label names
      activity_label_names <- activity_labels[, 2]
      
      #3. Use descriptive activity names to name the activities in the data set
      all_data_extracted$activity <-
            factor(all_data_extracted$activity, labels = activity_label_names)
      
      #5.1  independent tidy data set with the average of each variable for each activity and each
      new_all_data <-
            all_data_extracted %>% group_by(subject_id, activity) %>% summarise_each(funs(mean))
      
      #5.2 Create the tidy data set.
      write.table(new_all_data, "tidy_data.txt", row.names = FALSE)
      
}