
Raw data 
===========
Source for the data was delivered in Course Project description as URL link: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
(This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been 
randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled 
in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, 
which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a 
filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating 
variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

The dataset includes the following files:

* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in 
standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the
'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 


Following files were selected for further processing and study design:

1. \UCI HAR Dataset\test\subject_test.txt 
2. \UCI HAR Dataset\test\X.txt
3. \UCI HAR Dataset\test\y.txt
4. \UCI HAR Dataset\train\subject_test.txt
5. \UCI HAR Dataset\train\X.txt
6. \UCI HAR Dataset\train\y.txt
7. \UCI HAR Dataset\activity_labels.txt
8. \UCI HAR Dataset\features.txt

Check the details at URL cited.


Study design
===========
Check README.md for details on the matter 


Codebook
===========
Following is related to varibales 3:68 of the Codebook:

1. '-XYZ' marks to variable name is used to denote 3-axial signals in the X, Y and Z directions.
2. prefix 't' to denote time, prefix 'f' to denote Frequency
3. prefix 'std' marks standart deviation estimates, 'mean' - mean estimates 
4. each variable was aggregated by "id_subject" and "name_activity", and summarized by mean function

|#|	NAME | Description |Binning|TYPE | R Type  |
|:---:|:---|:-----------:|:---:|:---:|:---:|
|1|  id_subject | ID of a subject | 1..30  | Continious  |  INT |
|2|  name_activity | name of activity | -  |  Categorical | FACTOR  | 
||||WALKING|
||||WALKING_DOWNSTAIRS|
||||WALKING_UPSTAIRS|
||||LAYING|
||||SITTING|
||||STANDING|
|3|  tBodyAcc_std_X | body acceleration |  -1..1 | Continious  | NUM  | |
|4| tBodyAcc_std_Y  | body acceleration  |  -1..1 | Continious  | NUM  | |
|5| tBodyAcc_std_Z  | body acceleration  |  -1..1 | Continious  | NUM  | |
|6|  tGravityAcc_std_X | gravity acceleration  |  -1..1 | Continious  | NUM  | |
|7| tGravityAcc_std_Y  |  gravity acceleration |  -1..1 | Continious  | NUM  | |
|8| tGravityAcc_std_Z  |   gravity acceleration |  -1..1 | Continious  | NUM  | |
|9| tBodyAccJerk_std_X  | Jerk signals for body acceleration  |  -1..1 | Continious  | NUM  | |
|10| tBodyAccJerk_std_Y  |  Jerk signals for body acceleration |  -1..1 | Continious  | NUM  | |
|11|  tBodyAccJerk_std_Z | Jerk signals for body acceleration  |  -1..1 | Continious  | NUM  | |
|12| tBodyGyro_std_X  |  gyroscope signal |  -1..1 | Continious  | NUM  | |
|13|  tBodyGyro_std_Y |  gyroscope signal  |  -1..1 | Continious  | NUM  | |
|14|  tBodyGyro_std_Z |   gyroscope signal |  -1..1 | Continious  | NUM  | |
|15| tBodyGyroJerk_std_X  |  Jerk signals for gravity acceleration |  -1..1 | Continious  | NUM  | |
|16| tBodyGyroJerk_std_Y  |  Jerk signals for gravity acceleration  |  -1..1 | Continious  | NUM  | |
|17| tBodyGyroJerk_std_Z  | Jerk signals for gravity acceleration   |  -1..1 | Continious  | NUM  | |
|18|  tBodyAccMag_std | magnitude for body acceleration signal  |  -1..1 | Continious  | NUM  | |
|19|  tGravityAccMag_std |  magnitude for gravity acceleration Jerk signal  |  -1..1 | Continious  | NUM  | |
|20| tBodyAccJerkMag_std  | magnitude for body acceleration Jerk signal  |  -1..1 | Continious  | NUM  | |
|21| tBodyGyroMag_std  | magnitude for gyroscope signal |  -1..1 | Continious  | NUM  | |
|22| tBodyGyroJerkMag_std  |  magnitude for gyroscope Jerk signal |  -1..1 | Continious  | NUM  | |
|23| fBodyAcc_std_X  |   Fast Fourier Transform for body acceleration |  -1..1 | Continious  | NUM  | |
|24| fBodyAcc_std_Y  |  Fast Fourier Transform for body acceleration |  -1..1 | Continious  | NUM  | |
|25|  fBodyAcc_std_Z |  Fast Fourier Transform for body acceleration |  -1..1 | Continious  | NUM  | |
|26| fBodyAccJerk_std_X  | Fast Fourier Transform for body acceleration  |  -1..1 | Continious  | NUM  | |
|27|  fBodyAccJerk_std_Y | Jerk signals of Fast Fourier Transform for body acceleration  |  -1..1 | Continious  | NUM  | |
|28|  fBodyGyro_std_X | Fast Fourier gyroscope signal  |  -1..1 | Continious  | NUM  | |
|29|  fBodyGyro_std_Y |  Fast Fourier gyroscope signal |  -1..1 | Continious  | NUM  | |
|30|  fBodyGyro_std_Z | Fast Fourier gyroscope signal  |  -1..1 | Continious  | NUM  | |
|31| fBodyAccMag_std  | magnitude of Fast Fourier gyroscope signal |  -1..1 | Continious  | NUM  | |
|32|  fBodyBodyAccJerkMag_std | Fast Fourier Transform of magnitude for body acceleration Jerk signal  |  -1..1 | Continious  | NUM  | |
|33| fBodyBodyGyroMag_std  | magnitude of  Fast Fourier gyroscope signal |  -1..1 | Continious  | NUM  | |
|34| fBodyBodyGyroJerkMag_std  | magnitude of  Fast Fourier gyroscope Jerk signal  |  -1..1 | Continious  | NUM  | |
|35| tBodyAcc_mean_X  |  body acceleration |  -1..1 | Continious  | NUM  | |
|36|  tBodyAcc_mean_Y |  body acceleration |  -1..1 | Continious  | NUM  | |
|37|  tBodyAcc_mean_Z |  body acceleration |  -1..1 | Continious  | NUM  | |
|38| tGravityAcc_mean_X  |  gravity acceleration |  -1..1 | Continious  | NUM  | |
|39| tGravityAcc_mean_Y  |  gravity acceleration |  -1..1 | Continious  | NUM  | |
|40| tGravityAcc_mean_Z  | gravity acceleration  |  -1..1 | Continious  | NUM  | |
|41| tBodyAccJerk_mean_X  | Jerk signals for body acceleration  |  -1..1 | Continious  | NUM  | |
|42|  tBodyAccJerk_mean_Y |  Jerk signals for body acceleration |  -1..1 | Continious  | NUM  | |
|43|  tBodyAccJerk_mean_Z |  Jerk signals for body acceleration |  -1..1 | Continious  | NUM  | |
|44| tBodyGyro_mean_X  |  gyroscope signal  |  -1..1 | Continious  | NUM  | |
|45|  tBodyGyro_mean_Y |  gyroscope signal  |  -1..1 | Continious  | NUM  | |
|46|  tBodyGyro_mean_Z |   gyroscope signal |  -1..1 | Continious  | NUM  | |
|47| tBodyGyroJerk_mean_X  | Jerk signals for gravity acceleration  |  -1..1 | Continious  | NUM  | |
|48| tBodyGyroJerk_mean_Y  |  Jerk signals for gravity acceleration |  -1..1 | Continious  | NUM  | |
|49|  tBodyGyroJerk_mean_Z | Jerk signals for gravity acceleration  |  -1..1 | Continious  | NUM  | |
|50|  tBodyAccMag_mean |  magnitude for body acceleration signal  |  -1..1 | Continious  | NUM  | |
|51|  tGravityAccMag_mean |  magnitude for gravity acceleration Jerk signal |  -1..1 | Continious  | NUM  | |
|52| tBodyAccJerkMag_mean  |  magnitude for body acceleration Jerk signal |  -1..1 | Continious  | NUM  | |
|53|  tBodyGyroMag_mean |  magnitude for gyroscope signal  |  -1..1 | Continious  | NUM  | |
|54| tBodyGyroJerkMag_mean  |  magnitude for gyroscope Jerk signal |  -1..1 | Continious  | NUM  | |
|55|  fBodyAcc_mean_X |  Fast Fourier Transform for body acceleration |  -1..1 | Continious  | NUM  | |
|56| fBodyAcc_mean_Y  |  Fast Fourier Transform for body acceleration |  -1..1 | Continious  | NUM  | |
|57| fBodyAcc_mean_Z  |  Fast Fourier Transform for body acceleration |  -1..1 | Continious  | NUM  | |
|58| fBodyAccJerk_mean_X  | Jerk signals of Fast Fourier Transform for body acceleration  |  -1..1 | Continious  | NUM  | |
|59| fBodyAccJerk_mean_Y  |  Jerk signals of Fast Fourier Transform for body acceleration |  -1..1 | Continious  | NUM  | |
|60|  fBodyAccJerk_mean_Z |  Jerk signals of Fast Fourier Transform for body acceleration |  -1..1 | Continious  | NUM  | |
|61| fBodyGyro_mean_X  |  Fast Fourier gyroscope signal  |  -1..1 | Continious  | NUM  | |
|62|  fBodyGyro_mean_Y |  Fast Fourier gyroscope signal  |  -1..1 | Continious  | NUM  | |
|63|  fBodyGyro_mean_Z |   Fast Fourier gyroscope signal |  -1..1 | Continious  | NUM  | |
|64| fBodyAccMag_mean  | magnitude of Fast Fourier gyroscope signal  |  -1..1 | Continious  | NUM  | |
|65| fBodyBodyAccJerkMag_mean  |  Fast Fourier Transform of magnitude for body acceleration Jerk signal |  -1..1 | Continious  | NUM  | |
|66| fBodyBodyGyroMag_mean  |  magnitude of  Fast Fourier gyroscope signal |  -1..1 | Continious  | NUM  | |
|67|  fBodyBodyGyroJerkMag_mean |  magnitude of  Fast Fourier gyroscope Jerk signal |  -1..1 | Continious  | NUM  | |
|68|  fBodyAccJerk_std_Z |  Jerk signals of Fast Fourier Transform for body acceleration |  -1..1 | Continious  | NUM  | |
