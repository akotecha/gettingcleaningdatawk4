
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Activity = activity of volunteer, includes WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS
, SITTING
, STANDING
, LAYING

SubjectID = volunteer nr: 1:30

==================================================================

Variables in aggregate_total data set:

 [1] "SubjectID" = volunteer nr: 1:30                
 [2] "Activity" = activity of volunteer, includes WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS
, SITTING
, STANDING
, LAYING
                
 [3] "tBodyAcc-mean()-X" = mean of accelerator sensor x direction         
 [4] "tBodyAcc-mean()-Y" = mean of accelerator sensor y direction             
 [5] "tBodyAcc-mean()-Z" = mean of accelerator sensor z direction             
 [6] "tBodyAcc-std()-X" = std of accelerator sensor x direction            
 [7] "tBodyAcc-std()-Y" = std of accelerator sensor y direction              
 [8] "tBodyAcc-std()-Z" = std of accelerator sensor z direction              
 [9] "tGravityAcc-mean()-X" = mean of accelerator sensor x direction         
[10] "tGravityAcc-mean()-Y" = mean of accelerator sensor y direction           
[11] "tGravityAcc-mean()-Z" = mean of accelerator sensor z direction           
[12] "tGravityAcc-std()-X" = std of accelerator sensor x direction            
[13] "tGravityAcc-std()-Y" = std of accelerator sensor y direction            
[14] "tGravityAcc-std()-Z" = std of accelerator sensor z direction            
[15] "tBodyAccJerk-mean()-X" = mean of accelerator sensor x direction       
[16] "tBodyAccJerk-mean()-Y" = mean of accelerator sensor y direction       
[17] "tBodyAccJerk-mean()-Z" = mean of accelerator sensor z direction       
[18] "tBodyAccJerk-std()-X" = std of accelerator sensor x direction        
[19] "tBodyAccJerk-std()-Y" = std of accelerator sensor y direction        
[20] "tBodyAccJerk-std()-Z" = std of accelerator sensor z direction        
[21] "tBodyGyro-mean()-X" = mean of gyro sensor x direction          
[22] "tBodyGyro-mean()-Y" = mean of gyro sensor y direction          
[23] "tBodyGyro-mean()-Z" = mean of gyro sensor z direction          
[24] "tBodyGyro-std()-X" = std of gyro sensor x direction           
[25] "tBodyGyro-std()-Y" = std of gyro sensor y direction           
[26] "tBodyGyro-std()-Z" = std of gyro sensor z direction           
[27] "tBodyGyroJerk-mean()-X" = mean of gyro sensor x direction      
[28] "tBodyGyroJerk-mean()-Y" = mean of gyro sensor y direction      
[29] "tBodyGyroJerk-mean()-Z" = mean of gyro sensor z direction      
[30] "tBodyGyroJerk-std()-X" = std of gyro sensor x direction       
[31] "tBodyGyroJerk-std()-Y" = std of gyro sensor y direction       
[32] "tBodyGyroJerk-std()-Z" = std of gyro sensor z direction       
[33] "tBodyAccMag-mean()" = mean of accelerator sensor        
[34] "tBodyAccMag-std()" = std of accelerator sensor        
[35] "tGravityAccMag-mean()" = mean of accelerator sensor      
[36] "tGravityAccMag-std()" = std of accelerator sensor     
[37] "tBodyAccJerkMag-mean()" = mean of accelerator sensor      
[38] "tBodyAccJerkMag-std()" = std of accelerator sensor       
[39] "tBodyGyroMag-mean()" = mean of gyro sensor   
[40] "tBodyGyroMag-std()" = std of gyro sensor   
[41] "tBodyGyroJerkMag-mean()" = mean of gyro sensor 
[42] "tBodyGyroJerkMag-std()" = std of gyro sensor 
[43] "fBodyAcc-mean()-X" = mean of accelerator sensor x direction           
[44] "fBodyAcc-mean()-Y" = mean of accelerator sensor y direction           
[45] "fBodyAcc-mean()-Z" = mean of accelerator sensor z direction           
[46] "fBodyAcc-std()-X" = std of accelerator sensor x direction            
[47] "fBodyAcc-std()-Y" = std of accelerator sensor y direction            
[48] "fBodyAcc-std()-Z" = std of accelerator sensor z direction            
[49] "fBodyAccJerk-mean()-X" = mean of accelerator sensor x direction       
[50] "fBodyAccJerk-mean()-Y" = mean of accelerator sensor y direction       
[51] "fBodyAccJerk-mean()-Z" = mean of accelerator sensor z direction       
[52] "fBodyAccJerk-std()-X" = std of accelerator sensor x direction        
[53] "fBodyAccJerk-std()-Y" = std of accelerator sensor y direction        
[54] "fBodyAccJerk-std()-Z" = std of accelerator sensor z direction        
[55] "fBodyGyro-mean()-X" = mean of gyro sensor x direction          
[56] "fBodyGyro-mean()-Y" = mean of gyro sensor y direction          
[57] "fBodyGyro-mean()-Z" = mean of gyro sensor z direction          
[58] "fBodyGyro-std()-X" = std of gyro sensor x direction           
[59] "fBodyGyro-std()-Y" = std of gyro sensor y direction           
[60] "fBodyGyro-std()-Z" = std of gyro sensor z direction           
[61] "fBodyAccMag-mean()" = mean of accelerator sensor         
[62] "fBodyAccMag-std()" = std of accelerator sensor       
[63] "fBodyBodyAccJerkMag-mean()" = mean of accelerator sensor 
[64] "fBodyBodyAccJerkMag-std()" = std of accelerator sensor 
[65] "fBodyBodyGyroMag-mean()" = mean of gyro sensor    
[66] "fBodyBodyGyroMag-std()" = std of gyro sensor    
[67] "fBodyBodyGyroJerkMag-mean()" = mean of gyro sensor 
[68] "fBodyBodyGyroJerkMag-std()" = std of gyro sensor 

==================================================================