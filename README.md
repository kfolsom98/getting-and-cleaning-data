### Introduction
### Getting and Cleaning Data -- Course Project Samsung UCI HAR Dataset

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. In this particular project, the data being tidied are from the dataset 
from the Human Activity Recognition Using Smartphones Dataset (UCI HAR Dataset).
The goal of this project is to prepare tidy data that can be used for later analysis. 

This repo explains how all of the scripts work and how they are connected.  

### Approach

All data sourcing, processing, and transformations are run by using the run_analysis.R script. 

The script relies on base R features as well as the dplyr package for working with, manipulating, and aggregating data frames to produce the final dataset.
Regular expression using gsub and grepl have been used to identify and rename specific variables relating to mean and standard deviation whic are to be retained in the final analysis.
More specific information can be found in the comments embedded in the run_analysis.R script.

### Running the script

Executing the run_analysis.R script presupposes that the Samsung dataset is in your current working directory, is uncompressed, and is located in the folder "UCI HAR Dataset".
The run_analysis.R script sets the current working directory to "UCI HAR Dataset"

The Samsung data can be obtained here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in your working directory. The output should be the tidy data set you submitted for part 1. You should include a README.md in the repo describing how the script works and the code book describing the variables.

### Steps Performed in the Analysis

1.) Merge the UCI HAR data for the training and the test sets to create one data set including subjects and activity names associated with each observation
2.) Extract only the measurements on the mean and standard deviation for each measurement.
3.) Use descriptive activity names to name the activities in the data set
4.) Appropriately label the data set with descriptive activity names.
5.) Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Tidy Data Output

The final clean set of data is created in the file named uci_har_tidy.csv upon completion of the execution the run_analysis.R script.  
Further details about the contents of the resultant tidy dataset can be found in the CodeBook.md file, which is located in the main directory for this repository.
