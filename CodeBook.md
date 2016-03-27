### Getting & Cleaning Data Assignment: Code Book

### Source Data

The source data was collected from the UCI Machine Learning Repository to complete an assignment for a Coursera course named Getting and Cleaning Data instructed by Jeff Leek. The assignment involved working with the data set and producing tidy data representation of the source data. Below is a list of the operations done to achieve the outputs.

### Transformation Overview

1. Downloaded the source data
2. Unzipped the source data into the working directory
3. Loaded test and training data sets, source variable names, and activity labels
4. Combined test and training data frames using rbind
5. Selected only mean and standard deviation variables for later binding
6. Replaced activity IDs with activity labels
7. Combined the feature labels with the raw data
8. Created a complete data set with the subjects, activities and data
9. Renamed variables for readability
10. Wrote out the complete data as "Complete_Data.txt"
11. Created a calculated tidy data set with mean and standard deviation
12. Wrote out the calculated tidy data set as "Calculated_Tidy_Data.txt"

### Variables

SubjectId: An individual participant in the study, value from 1 to 30
Activity_Label: The activity the subject was involved in at time of measurement
tBodyAccelerator-mean-X
tBodyAccelerator-mean-Y
tBodyAccelerator-mean-Z
tBodyAccelerator-std-X
tBodyAccelerator-std-Y
tBodyAccelerator-std-Z
tGravityAccelerator-mean-X
tGravityAccelerator-mean-Y
tGravityAccelerator-mean-Z
tGravityAccelerator-std-X
tGravityAccelerator-std-Y
tGravityAccelerator-std-Z
tBodyAcceleratorJerk-mean-X
tBodyAcceleratorJerk-mean-Y
tBodyAcceleratorJerk-mean-Z
tBodyAcceleratorJerk-std-X
tBodyAcceleratorJerk-std-Y
tBodyAcceleratorJerk-std-Z
tBodyGyroscope-mean-X
tBodyGyroscope-mean-Y
tBodyGyroscope-mean-Z
tBodyGyroscope-std-X
tBodyGyroscope-std-Y
tBodyGyroscope-std-Z
tBodyGyroscopeJerk-mean-X
tBodyGyroscopeJerk-mean-Y
tBodyGyroscopeJerk-mean-Z
tBodyGyroscopeJerk-std-X
tBodyGyroscopeJerk-std-Y
tBodyGyroscopeJerk-std-Z
tBodyAcceleratorMagnitude-mean
tBodyAcceleratorMagnitude-std
tGravityAcceleratorMagnitude-mean
tGravityAcceleratorMagnitude-std
tBodyAcceleratorJerkMagnitude-mean
tBodyAcceleratorJerkMagnitude-std
tBodyGyroscopeMagnitude-mean
tBodyGyroscopeMagnitude-std
tBodyGyroscopeJerkMagnitude-mean
tBodyGyroscopeJerkMagnitude-std
fBodyAccelerator-mean-X
fBodyAccelerator-mean-Y
fBodyAccelerator-mean-Z
fBodyAccelerator-std-X
fBodyAccelerator-std-Y
fBodyAccelerator-std-Z
fBodyAcceleratorJerk-mean-X
fBodyAcceleratorJerk-mean-Y
fBodyAcceleratorJerk-mean-Z
fBodyAcceleratorJerk-std-X
fBodyAcceleratorJerk-std-Y
fBodyAcceleratorJerk-std-Z
fBodyGyroscope-mean-X
fBodyGyroscope-mean-Y
fBodyGyroscope-mean-Z
fBodyGyroscope-std-X
fBodyGyroscope-std-Y
fBodyGyroscope-std-Z
fBodyAcceleratorMagnitude-mean
fBodyAcceleratorMagnitude-std
fBodyBodyAcceleratorJerkMagnitude-mean
fBodyBodyAcceleratorJerkMagnitude-std
fBodyBodyGyroscopeMagnitude-mean
fBodyBodyGyroscopeMagnitude-std
fBodyBodyGyroscopeJerkMagnitude-mean
fBodyBodyGyroscopeJerkMagnitude-std