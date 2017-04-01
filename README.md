# Getting and Cleaning Data Course Project

This course project/assignment is to read Human Activity Recognition Using Smartphones Datasets, extract all mean and standard deviation data and create a tidy data set containing the average mean and standard deviation for each activity and each subject.

This dataset was provided by:

`=======================================================================`
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws

www.smartlab.ws

`=======================================================================`

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years with each person performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.

The data set contains the following files:

1. README.txt - Describes the datasets and its components
2. features_info.txt - Describes information about the variables used on the feature vector.
3. features.txt - List of all the features for which the measurements were taken.
4. activity_labels.txt - Lists all the activity names for activity ids.
5. train/X_train.txt: Training data for all the features specified in features.txt. Each row contains training data for one subject and one activity. There are 7352 rows with data for 561 features.
6. train/y_train.txt: Training activity ids that corresponds to the activity names in activity_labels.txt. Each row corresponds to one activity performed by the subject specifed in subject_train.txt. There are 7352 rows with activity ids only
7. train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. Each row corresponds to one subject that performed the activity specified in y_train.txt. There are 7352 rows with subject ids only.
8. test/X_test.txt: Test data for all the features specified in features.txt. Each row contains test data for one subject and one activity. There are 2947 rows with data for 561 features.
9. test/y_test.txt: Test activity ids that corresponds to the activity names in activity_labels.txt. Each row corresponds to one activity performed by the subject specifed in subject_test.txt. There are 2947 rows with activity ids only
10. test/subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. Each row corresponds to one subject that performed the activity specified in y_test.txt. There are 2947 rows with subject ids only.

Note: The dataset also contains Inertial Signals data which are not used by the program.

The tidy dataset is created by running the run_analysis.R program.

The following steps must be performed before running the program.

1. Download the dataset from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Create a directory with name data in R current working directory and extract the zip file contents in it.

3. This R function requires dplyr package installed in the R environment.

Once the above steps are completed, source the R file and run it without any parameters

The output from this function is tidy_data.txt created in the current R working directory.

The input dataset variables and their definitions are available in README.txt, features.txt, features_info.txt and activity_labels.txt files extracted from the zip file.

The output dataset variables and definitions are available in CodeBook.md
