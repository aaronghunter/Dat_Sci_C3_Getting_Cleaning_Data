run_analysis <- function(){
      #Download the complete dataset
      if(!file.exists("./UCI_HAR_Dataset")){
            dir.create("./UCI_HAR_Dataset")
      }
      fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      download.file(fileUrl, destfile = "./UCI_HAR_Dataset/UCI_HAR_Dataset.zip")
            #Written on Windows, add method = "curl" for OSX
      dateDownloaded <- date()
      
      #Unpack the dataset
      unzip("./UCI_HAR_Dataset/UCI_HAR_Dataset.zip", exdir = "./UCI_HAR_Dataset/Data")
      
      #Load the files into R
      x_test <- read.table("./UCI_HAR_Dataset/Data/UCI HAR Dataset/test/X_test.txt")
      y_test <- read.table("./UCI_HAR_Dataset/Data/UCI HAR Dataset/test/y_test.txt")
      subject_test <- read.table("./UCI_HAR_Dataset/Data/UCI HAR Dataset/test/subject_test.txt")
      x_train <- read.table("./UCI_HAR_Dataset/Data/UCI HAR Dataset/train/X_train.txt")
      y_train <- read.table("./UCI_HAR_Dataset/Data/UCI HAR Dataset/train/y_train.txt")
      subject_train <- read.table("./UCI_HAR_Dataset/Data/UCI HAR Dataset/train/subject_train.txt")
      features <- read.table("./UCI_HAR_Dataset/Data/UCI HAR Dataset/features.txt")
      activity <- read.table("./UCI_HAR_Dataset/Data/UCI HAR Dataset/activity_labels.txt")
      
      #Bind initial datasets together
      RawData <- rbind(x_test, x_train)
      ActivityID <- rbind(y_test, y_train)
      SubjectID <- rbind(subject_test, subject_train)
      FeatureSet <- grep("-mean\\(\\)|-std\\(\\)", features[,2])
      colnames(SubjectID) <- "SubjectID"
      
      #Merge labels into "y"
      library(plyr)
      Activity_1 <- join(ActivityID, activity)
      Activity_2 <- Activity_1[,2]
      Activity_3 <- data.frame(Activity_2)
      colnames(Activity_3) <- "Activity_Label"
      
      #Attach labels to "RawData" 
      RawData <- RawData[,FeatureSet]
      names(RawData) <- gsub("\\(|\\)","",features$V2[FeatureSet])
      
      #Create and rename complete data
      CompleteData <- cbind(SubjectID,RawData,Activity_3)
      names(CompleteData) <- gsub("Acc", "Accelerator", names(CompleteData))
      names(CompleteData) <- gsub("Mag", "Magnitude", names(CompleteData))
      names(CompleteData) <- gsub("Gyro", "Gyroscope", names(CompleteData))
      names(CompleteData) <- gsub("^t", "time_", names(CompleteData))
      names(CompleteData) <- gsub("^f", "frequency_", names(CompleteData))
      write.table(CompleteData, "Complete_Data.txt")
      
      #Create tidy data with mean and standard deviation
      library(data.table)
      TidyData <- data.table(CompleteData)
      CalculatedData <- TidyData[,lapply(.SD, mean), by=c("SubjectID","Activity_Label")]
      write.table(CalculatedData, "Calculated_Tidy_Data.txt", row.names = FALSE)
}