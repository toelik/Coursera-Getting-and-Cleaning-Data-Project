


# Coursera:  Getting and Cleaning Data - Course Project
## Objective: Demonstrate ability to collect, work with, and clean a data set
## 6/5/2018

This repository contains the following files:
* README.md (this file) - provides an overview of the project
* CodeBook.md - a code book that documents the variables on the output dataset
* run_analysis.R - script used to create the output data set
* tidy_data.txt - the output data set

The run_analysis.R script does the following:

### 1. Download the input data file UCI HAR Dataset.zip

	The source data for this project come from a Human Activity Recognition Using Smartphone Sensors experiment conducted by SmartLab at UC Irvine in 2012.
		
	The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
	Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
	Using its embedded accelerometer and gyroscope, they researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
	
	Additional information about the data and experiment can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
	
	Source Citation:
	========
	Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

	This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

	Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

### 2. Read the data

	The obtained dataset was randomly partitioned by the researchers into two sets, where 70% of the volunteers was selected for generating the training data (the "train" files below) and 30% the test data (the "test" files below).
	For this project the test and train files were to be concatenated and treated as one data set. 

	The following files were read in:
	* X_train.txt -  The training dataset containing the measured linear acceleration and angular velocity obtained from the experiment
	* y_train.txt -  Contains values for the six activities (1-6) for the training dataset
	* X_test.txt -  The test dataset containing the measured linear acceleration and angular velocity obtained from the experiment
	* y_test.txt -   Contains values for the six activities (1-6) for the test dataset
	* features.txt - Contains the variable names corresponding to the columns in the training and test datasets.
			After reading in the file, the variable names were cleaned up to remove numbers and special characters and change everything to lower case
			Variable names were also updated to spell out terms such as t for time, f for freq, etc.
	* subject_train.txt  - Contains the subject identifiers (1-30) for the training dataset
	* subject_text.txt  - Contains the subject identifiers (1-30) for the test dataset
	* activity_labels.txt - Contains the labels for the 6 activities (i.e. 1 Walking 2 Walking Upstairs, etc.)

	Other files found in the UCI HAR Dataset were not used for this project.

### 3. Compile and Merge the Test and Train data

	
	The 3 training files (x_train, y_train, and subject_train) were combined (horizontally).
	The 3 test files (x_test, y_test, and subject_test) were combined (horizontally).
	The the combined training file and the combined test files were concatenated (vertically).
	
### 4. Extract only the Measurements on the Mean and Standard Deviation
	
	Variables that reflected means and standard deviations along with the subject id and activity id were retained on the dataset.
	All other variables were dropped.

### 5. Update Variable Labels with Descriptive Names

	The activity values (1-6) were updated with readable, descriptive values (walking, walking_upstairs, walking_downstairs, sxitting, standing, laying)

### 6. Calculate the average of each variable for each activity and subject

	For each subject and activity the mean for each variable was calculated.

### 7. Ouput the resulting Tidy Dataset

	The resulting dataset was output to a file called tidy_data.txt
	See CodeBook.md for documentation of the variables and valid values on the file.# Coursera-Getting-and-Cleaning-Data-Project
