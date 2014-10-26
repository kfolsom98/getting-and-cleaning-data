##Codebsook

This a codebook that describes the variables, the data, and any transformations used to produce a tidy dataset from the Human Activity Recognition Using Smartphones Dataset (UCI HAR Dataset).
The data source
The data collected in the UCI HAR Dataset represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Data used for this project are found here: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

###Dataset Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record the following is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Files included in the UCI HAR Dataset
•	'README.txt'
•	'features_info.txt': Shows information about the variables used on the feature vector.
•	'features.txt': List of all features.
•	'activity_labels.txt': Links the class labels with their activity name.
•	'train/X_train.txt': Training set.
•	'train/y_train.txt': Training labels.
•	'test/X_test.txt': Test set.
•	'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

__Inertial datasets provided in the Samsung data were not included as part of this analysis.__

###Variables

The variables below represent the 81 variables captured in the final tidy UCI HAR dataset at the completion of the analysis.  
The raw UCI HAR dataset contained 561 variables with 10,299 observations for the training and test dataset.   
Any of the 561 variables not relating to measurements on the mean and standard deviation for each measurement where not included in the final analysis.   
No units of measurement are included.

###Tidy UCI Dataset Variables

* subject                                             
* activityLabel
* tBody_Acc_Mean_X
* tBody_Acc_Mean_Y
* tBody_Acc_Mean_Z
* tBody_Acc_Std_X
* tBody_Acc_Std_Y
* tBody_Acc_Std_Z
* tGravity_Acc_Mean_X
* tGravity_Acc_Mean_Y
* tGravity_Acc_Mean_Z
* tGravity_Acc_Std_X
* tGravity_Acc_Std_Y
* tGravity_Acc_Std_Z
* tBody_AccJerk_Mean_X
* tBody_AccJerk_Mean_Y
* tBody_AccJerk_Mean_Z
* tBody_AccJerk_Std_X
* tBody_AccJerk_Std_Y
* tBody_AccJerk_Std_Z
* tBody_Gyro_Mean_X
* tBody_Gyro_Mean_Y
* tBody_Gyro_Mean_Z
* tBody_Gyro_Std_X
* tBody_Gyro_Std_Y
* tBody_Gyro_Std_Z
* tBody_GyroJerk_Mean_X
* tBody_GyroJerk_Mean_Y
* tBody_GyroJerk_Mean_Z
* tBody_GyroJerk_Std_X
* tBody_GyroJerk_Std_Y
* tBody_GyroJerk_Std_Z
* tBody_AccMag_Mean
* tBody_AccMag_Std
* tGravity_AccMag_Mean
* tGravity_AccMag_Std
* tBody_AccJerkMag_Mean
* tBody_AccJerkMag_Std
* tBody_GyroMag_Mean
* tBody_GyroMag_Std
* tBody_GyroJerkMag_Mean
* tBody_GyroJerkMag_Std
* fBody_Acc_Mean_X
* fBody_Acc_Mean_Y
* fBody_Acc_Mean_Z
* fBody_Acc_Std_X
* fBody_Acc_Std_Y
* fBody_Acc_Std_Z
* fBody_Acc_MeanFreq_X
* fBody_Acc_MeanFreq_Y
* fBody_Acc_MeanFreq_Z
* fBody_AccJerk_Mean_X
* fBody_AccJerk_Mean_Y
* fBody_AccJerk_Mean_Z
* fBody_AccJerk_Std_X
* fBody_AccJerk_Std_Y
* fBody_AccJerk_Std_Z
* fBody_AccJerk_MeanFreq_X
* fBody_AccJerk_MeanFreq_Y
* fBody_AccJerk_MeanFreq_Z
* fBody_Gyro_Mean_X
* fBody_Gyro_Mean_Y
* fBody_Gyro_Mean_Z
* fBody_Gyro_Std_X
* fBody_Gyro_Std_Y
* fBody_Gyro_Std_Z
* fBody_Gyro_MeanFreq_X
* fBody_Gyro_MeanFreq_Y
* fBody_Gyro_MeanFreq_Z
* fBody_AccMag_Mean
* fBody_AccMag_Std
* fBody_AccMag_MeanFreq
* fBody_BodyAccJerkMag_Mean
* fBody_BodyAccJerkMag_Std
* fBody_BodyAccJerkMag_MeanFreq
* fBody_BodyGyroMag_Mean
* fBody_BodyGyroMag_Std
* fBody_BodyGyroMag_MeanFreq
* fBody_BodyGyroJerkMag_Mean
* fBody_BodyGyroJerkMag_Std
* fBody_BodyGyroJerkMag_MeanFreq

* Subject = A value between 1 and 30 representing the observations for subjects 1 - 30.
* activityLabel = one of 6 activities recorded for each subject
	        (laying, sitting, standing, walking, walking_downstairs, walking_upstairs)


Specifics on the remaining variables above:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

__Only Mean and Standard Deviation Measurements were included in the final analysis and tidy dataset produced.__

### Transformation details

5 Parts in the transformation

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###How run_analysis.R implements the above steps:

* Requires dplyr library
* Loads both test and train data
* Loads the features and activity labels.
* Adds the subject and activity names to the training and test datasets.
* Merges the raw training and test datasets.
* Extracts the mean and standard deviation column names and data.
* Renames the mean and standard deviation columns appropriately.
* Creates an summarized final tidy dataset which is aggregated to 180 observations 
   ** 30 subjects with 6 activities each and 79 variables with standard deviation and mean measurements
