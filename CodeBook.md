# Overview
The codebook describes input files used in this project, the function and its execution steps, the output file and the description of its variables.

The input files are extracted from zip file and stored in "data\UCI HAR Dataset" subdirectories of the current working directory.

The input data set is obtained as a zip file from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Note: This program did not use the Inertial Signals data.

# Input Files
These files should be available in data\UCI HAR Dataset of the current working directory.
1. README.txt - Contains information about the dataset and the data collection process.
2. features.txt - List of all features.
3. features_info.txt - Shows information about the variables used on the feature vector.
4. activity_labels.txt - Links the class labels with their activity name through Id.
5. train/subject_train.txt - Contains the subject who performed the activity for each window sample. Its range is from 1 to 30.
6. train/X_train.txt - Training set.
7. train/y_train.txt - Training labels.
8. test/subject_test.txt - Contains the subject who performed the activity for each window sample. Its range is from 1 to 30.
9. test/X_test.txt - Test set.
10. test/y_test.txt- Test labels.

# The R function Name that creates the output dataset
run_analysis.R

# Function execution steps
This function depends on the dplyr package.
1. Checks for the presence of dplyr package. If available loads it.
2. Reads training datasets
3. Reads features dataset and assigns the variable names as column names to X_train dataset.
4. Assigns activtity as column name to y_train dataset.
5. Assigns subject_id as column name to subject_train dataset.
6. Column Binds all train datasets.
7. Reads test datasets
8. Assigns features dataset variable names as column names to X_test dataset.
9. Assigns activtity as column name to y_test dataset.
10. Assigns subject_id as column name to subject_test dataset.
11. Column Binds all test datasets.
12. Row binds train and test datasets.
13. Creates a new data table that contains only the subject_id, activity and column names that have mean and std.
14. Assign Activity lables to the activity ids in new dataset.
15. Creates the final output dataset has the average values of the mean and standard deviation columns grouped by subject and activity.
16. Write the dataset as a text file to the current working directory.

# Output File name that will be available in the current working directory
tidy_data.txt

# Output File variables

### General
* **Name:** subject_id  **Definition:** Id to the subject. Its range is from 1 to 30
* **Name:** activity **Definition:** The name of activity performed

### Time domain body acceleration mean along X, Y, and Z
* **Name:** tBodyAcc-mean()-X
* **Name:** tBodyAcc-mean()-Y
* **Name:** tBodyAcc-mean()-Z

### Time domain body acceleration standard deviation along X, Y, and Z
* **Name:** tBodyAcc-std()-X
* **Name:** tBodyAcc-std()-Y
* **Name:** tBodyAcc-std()-Z

### Time domain gravity acceleration mean along X, Y, and Z
* **Name:** tGravityAcc-mean()-X
* **Name:** tGravityAcc-mean()-Y
* **Name:** tGravityAcc-mean()-Z

### Time domain gravity acceleration standard deviation along X, Y, and Z
* **Name:** tGravityAcc-std()-X
* **Name:** tGravityAcc-std()-Y
* **Name:** tGravityAcc-std()-Z

### Time domain body acceleration jerk mean along X, Y, and Z
* **Name:** tBodyAccJerk-mean()-X
* **Name:** tBodyAccJerk-mean()-Y
* **Name:** tBodyAccJerk-mean()-Z

### Time domain body acceleration jerk standard deviation along X, Y, and Z
* **Name:** tBodyAccJerk-std()-X
* **Name:** tBodyAccJerk-std()-Y
* **Name:** tBodyAccJerk-std()-Z

### Time domain body gyroscope mean along X, Y, and Z
* **Name:** tBodyGyro-mean()-X
* **Name:** tBodyGyro-mean()-Y
* **Name:** tBodyGyro-mean()-Z

### Time domain body gyroscope standard deviation along X, Y, and Z
* **Name:** tBodyGyro-std()-X
* **Name:** tBodyGyro-std()-Y
* **Name:** tBodyGyro-std()-Z

### Time domain body gyroscope jerk mean along X, Y, and Z
* **Name:** tBodyGyroJerk-mean()-X
* **Name:** tBodyGyroJerk-mean()-Y
* **Name:** tBodyGyroJerk-mean()-Z

### Time domain body gyroscope jerk standard deviation along X, Y, and Z
* **Name:** tBodyGyroJerk-std()-X
* **Name:** tBodyGyroJerk-std()-Y
* **Name:** tBodyGyroJerk-std()-Z

* **Name:** tBodyAccMag-mean() **Definition:** Time domain body acceleration magnitude mean
* **Name:** tBodyAccMag-std() **Definition:** Time domain body acceleration magnitude standard deviation
* **Name:** tGravityAccMag-mean() **Definition:** Time domain gravity acceleration magnitude mean
* **Name:** tGravityAccMag-std() **Definition:** Time domain gravity acceleration magnitude standard deviation
* **Name:** tBodyAccJerkMag-mean() **Definition:** Time domain body acceleration jerk magnitude mean
* **Name:** tBodyAccJerkMag-std() **Definition:** Time domain body acceleration jerk magnitude standard deviation
* **Name:** tBodyGyroMag-mean() **Definition:** Time domain gyroscope magnitude mean
* **Name:** tBodyGyroMag-std() **Definition:** Time domain gyroscope magnitude standard deviation
* **Name:** tBodyGyroJerkMag-mean() **Definition:** Time domain body gyroscope jerk magnitude mean
* **Name:** tBodyGyroJerkMag-std() **Definition:** Time domain body gyroscope jerk magnitude standard deviation

### Frequency domain body acceleration mean along X, Y, and Z
* **Name:** fBodyAcc-mean()-X
* **Name:** fBodyAcc-mean()-Y
* **Name:** fBodyAcc-mean()-Z

### Frequency domain body acceleration standard deviation along X, Y, and Z
* **Name:** fBodyAcc-std(<)-X
* **Name:** fBodyAcc-std(<)-Y
* **Name:** fBodyAcc-std(<)-Z

### Frequency domain body acceleration mean frequency along X, Y, and Z
* **Name:** fBodyAcc-meanFreq()-X
* **Name:** fBodyAcc-meanFreq()-Y
* **Name:** fBodyAcc-meanFreq()-Z

### Frequency domain body acceleration jerk mean along X, Y, and Z
* **Name:** fBodyAccJerk-mean()-X
* **Name:** fBodyAccJerk-mean()-Y
* **Name:** fBodyAccJerk-mean()-Z

### Frequency domain body acceleration jerk standard deviation along X, Y, and Z
* **Name:** fBodyAccJerk-std()-X
* **Name:** fBodyAccJerk-std()-Y
* **Name:** fBodyAccJerk-std()-Z

### Frequency domain body acceleration jerk mean frequency along X, Y, and Z
* **Name:** fBodyAccJerk-meanFreq()-X
* **Name:** fBodyAccJerk-meanFreq()-Y
* **Name:** fBodyAccJerk-meanFreq()-Z

### Frequency domain body gyroscope mean along X, Y, and Z
* **Name:** fBodyGyro-mean()-X
* **Name:** fBodyGyro-mean()-Y
* **Name:** fBodyGyro-mean()-Z

### Frequency domain body gyroscope standard deviation along X, Y, and Z
* **Name:** fBodyGyro-std()-X
* **Name:** fBodyGyro-std()-Y
* **Name:** fBodyGyro-std()-Z

### Frequency domain body gyroscope mean frequency along X, Y, and Z
* **Name:** fBodyGyro-meanFreq()-X
* **Name:** fBodyGyro-meanFreq()-Y
* **Name:** fBodyGyro-meanFreq()-Z

* **Name:** fBodyAccMag-mean() **Definition:** Frequency domain body acceleration magnitude mean.
* **Name:** fBodyAccMag-std() **Definition:** Frequency domain body acceleration magnitude standard deviation.
* **Name:** fBodyAccMag-meanFreq() **Definition:** Frequency domain body acceleration magnitude mean frequency.
* **Name:** fBodyBodyAccJerkMag-mean() **Definition:** Frequency domain body acceleration jerk magnitude mean.
* **Name:** fBodyBodyAccJerkMag-std() **Definition:** Frequency domain body acceleration jerk magnitude standard deviation.
* **Name:** fBodyBodyAccJerkMag-meanFreq() **Definition:** Frequency domain body acceleration jerk magnitude mean frequency.
* **Name:** fBodyBodyGyroMag-mean() **Definition:** Frequency domain body gyroscope magnitude mean.
* **Name:** fBodyBodyGyroMag-std() **Definition:** Frequency domain body gyroscope magnitude standard deviation.
* **Name:** fBodyBodyGyroMag-meanFreq() **Definition:** Frequency domain body gyroscope magnitude mean frequency.
* **Name:** fBodyBodyGyroJerkMag-mean() **Definition:** Frequency domain body gyroscope jerk magnitude mean.
* **Name:** fBodyBodyGyroJerkMag-std() **Definition:** Frequency domain body gyroscope jerk magnitude standard deviation.
* **Name:** fBodyBodyGyroJerkMag-meanFreq() **Definition:** Frequency domain body gyroscope jerk magnitude mean frequency.
* **Name:** angle(tBodyAccMean,gravity) **Definition:** Angle between time domain body accelaration mean and gravity.
* **Name:** angle(tBodyAccJerkMean),gravityMean) **Definition:** Angle between time domain body accelaration mean and gravity.
* **Name:** angle(tBodyGyroMean,gravityMean) **Definition:** Angle between time domain body accelaration mean and gravityMean.
* **Name:** angle(tBodyGyroJerkMean,gravityMean) **Definition:** Angle between time domain body gyroscope jerk mean and gravityMean.
* **Name:** angle(X,gravityMean) **Definition:** Angle between X and gravityMean.
* **Name:** angle(Y,gravityMean) **Definition:** Angle between Y and gravityMean.
* **Name:** angle(Z,gravityMean) **Definition:** Angle between Z and gravityMean.
