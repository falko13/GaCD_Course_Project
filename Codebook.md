
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
|	NAME | Description |Binning|TYPE | R Type  | Units  | 
|---|---|---|---|---|---|
|  id_subject | ID of a subject | 1..30  | Continious  |  INT |ID |
|  name_activity | name of activity | -  |  Categorical | FACTOR  | - |
|||WALKING|
|||WALKING_DOWNSTAIRS|
|||WALKING_UPSTAIRS|
|||LAYING|
|||SITTING|
|||STANDING|
|  tBodyAcc_std_X |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |
|   |   |  -1..1 | Continious  | NUM  | |

It's very similar to a Statistical Analysis Plan, actually.

Setup, there is a dogwalking business. It wants to analyze its work.

Raw data is: name of dog, address of owner, time walked, date walked, size of dog (small, medium, or large), health of dog (well or sick) on that date and time, comments, and pay.

The business wants to assign ID# to the dogs, and codewords to the address to make this data anonymous. There isn't anything to do to the comments--since free text is all over the place.

Codebook: The dog's name was transformed into an IDNumber (unique) (1-50), the address was transformed into a factor, OwnerName (levels Alice, Bob, Charlie, Deborah, Ernest and Fred), time and date walked were counted to make WalksPerWeek1, WalksPerWeek2, and WalksPerWeek3. Week1 begins at 00:01UTC on July1, 2014, Week2 begins at 00:01UTC on July8, 2014, Week3 begins at 00:01UTC on July15, 2014. Health was summarized as HealthWeek1, HealthWeek2, and HealthWeek3. It is a factor with two levels, Well and Sick. If the dog was sick at any walk during that week, dog was marked sick, else dog was marked well. Dog Size was converted into a factor: Large, Medium and Small are the levels. Comments are dropped. Pay is transformed into PayWeek1, PayWeek2, PayWeek3, which is a factor that has two levels (Yes, and No) for correct pay paid during that week.
