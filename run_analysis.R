## Coursera: Getting and Cleaning Data 
## Course Project
## toelik, 6/5/2018
## run_analysis.R

## Create a Tidy Data Set
## See README.md for description of the analysis files
## See CodeBook.md for descriptions of variables and files

## Download Data Files, if not already downloaded
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file <- "UCI HAR Dataset.zip"

if (!file.exists(file)) {
      download.file(fileurl, destfile="c:/Users/Elizabeth/Documents/Data Science/Getting and Cleaning Data/UCI HAR Dataset.zip", mode = "wb")
}

# unzip zip file containing data if data directory doesn't already exist
if (!file.exists("UCI HAR Dataset")) {
      unzip(file)
}

## Set location of Training files
train_dir <- "C:/Users/Elizabeth/Documents/Data Science/Getting and Cleaning Data/Week 4/UCI HAR Dataset/train/"
x_train_loc <- "C:/Users/Elizabeth/Documents/Data Science/Getting and Cleaning Data/Week 4/UCI HAR Dataset/train/X_train.txt"
y_train_loc <- "C:/Users/Elizabeth/Documents/Data Science/Getting and Cleaning Data/Week 4/UCI HAR Dataset/train/y_train.txt"
subject_train_loc  <- "C:/Users/Elizabeth/Documents/Data Science/Getting and Cleaning Data/Week 4/UCI HAR Dataset/train/subject_train.txt"

## Read in Training Files and update column names
train <- read.table(x_train_loc, header=FALSE)
train_label <- read.table(y_train_loc, header=FALSE)
colnames(train_label) <- "activity"
subject_train <- read.table(subject_train_loc, header=FALSE)
colnames(subject_train) <- "subject"

## Set location of Test Files
test_dir <- "C:/Users/Elizabeth/Documents/Data Science/Getting and Cleaning Data/Week 4/UCI HAR Dataset/test"
x_test_loc <- "C:/Users/Elizabeth/Documents/Data Science/Getting and Cleaning Data/Week 4/UCI HAR Dataset/test/X_test.txt"
y_test_loc <- "C:/Users/Elizabeth/Documents/Data Science/Getting and Cleaning Data/Week 4/UCI HAR Dataset/test/y_test.txt"
subject_test_loc <- "C:/Users/Elizabeth/Documents/Data Science/Getting and Cleaning Data/Week 4/UCI HAR Dataset/test/subject_test.txt"

## Read in Test Files and update column names
test <- read.table(x_test_loc, header=FALSE)
test_label <- read.table(y_test_loc, header=FALSE)
colnames(test_label) <- "activity"
subject_test <- read.table(subject_test_loc, header=FALSE)
colnames(subject_test) <- "subject"

## Read in Features.Txt which contains the column names
names = readLines("C:/Users/Elizabeth/Documents/Data Science/Getting and Cleaning Data/Week 4/UCI HAR Dataset/features.txt")

##Clean up variable names before applying it to the files 
names2 <- gsub("[0-9]","",names)                ## remove numbers
names2 <- gsub("^ t", "time.", names2)          ## replace beginning "t" with "time."
names2 <- gsub("^ f", "freq.", names2)          ## replace beginning "f" with "freq."
names2 <- gsub("-",".", names2)                 ## remove -
names2 <- gsub("\\()","",names2)                ## remove ()
names2 <- gsub("Acc","acceleration",names2)     ## spell out Acc
names2 <- gsub("Mag","magnitude",names2)        ## spell out Mag
names2 <- gsub("Gyro","gyroscope", names2)      ## spell out Gyro
names2 <- gsub("Jerk", "jerk", names2)          ## change case
names2 <- gsub("Body","body.",names2)           ## change case, use . for readability
names2 <- gsub("Gravity", "gravity.",names2)    ## change case, use . for readability
names2 <- gsub("meanFreq","meanfreq",names2)    ## change case for meanFreq
names2 <- gsub("X","x",names2)
names2 <- gsub("Y","y",names2)
names2 <- gsub("Z","z",names2)

## Apply column names to the Train and Test files
colnames(train) <- names2
colnames(test) <- names2

## Add activity and subject columns to the Train and Test files
train2 <- cbind(train,train_label, subject_train)
test2 <- cbind(test,test_label, subject_test)

## Concatenate the Test and Train Files
alldata <- rbind(train2,test2)

## Keep only Activity, Subject, and columns that contain a mean or standard deviation
columns_alldata <- grepl("mean()|std()|activity|subject", colnames(alldata))
all_selectvars <- alldata[, columns_alldata]

## Apply Activity Labels to File
activity_labels <- read.table("C:/Users/Elizabeth/Documents/Data Science/Getting and Cleaning Data/Week 4/UCI HAR Dataset/activity_labels.txt")
colnames(activity_labels) <- c("id","activity")
all_selectvars$activity <- factor(all_selectvars$activity, levels=activity_labels[,1], labels=activity_labels[,2])

## Calculate average for each variable, each activity, and each subject
## 6 activities, 30 subjects = 180 observations for each variable
all_selectvars_sort <- all_selectvars %>% group_by(subject,activity)
summarized_tidydata <- summarize_all(all_selectvars_sort, funs(mean))

## Ouput tidy_data.txt with these averages
write.table(summarized_tidydata, "tidy_data.txt", row.names=FALSE, quote=FALSE)