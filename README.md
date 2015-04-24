
Repository
===========
Current rpository created to meet requirments of Course Project 
for Getting and Cleaning Data Course.

The repository includes the following files:

* "Readme.md" - current file, describing repository and how all of the scripts work
* "tidy_data.txt" - final tidy data set 
* "GaCD_Course_project_script" - R script which was used to create final tidy data set 
* "Codebook.md" -  code book describing each variable and its values in the final tidy data set 

Schematics for script
===========
1. loads all libraries required. Those are utils and dplyr libraries
2. creates directory to store original raw data
3. downloads file throuhg link delivered in project description, extracts zip into created dir
4. reads into separate R data.frames 8 txt-files with training/test data sets and ids/labels for those sets.
5. merges 6 sets with data in a single data.frame consisting of 2 columns with subject and activity ids and 561 columns with features for each observation. 
6. using labels dictionary for features and activities(created at step 4) changes activity numeric ids to the corresponding descriptive char names and feature col names to the corresponding descriptive ones
7. at this step we have full test/training data set with descriptive names requested in the task description. Next step is to leave in the set only measurements on the mean and standard deviation and 2 cols with subj. id nad activity names. to do this through dplyr select function i remove all columns with duplicated names(there was a lot of duplicated feature names in the original features.txt file, for example "fBodyAcc-bandsEnergy()-9,16" field has 3 duplicates). as soon as duplicated cols are not used for the project i may delete those freely. so the data has only unique col now, and next step is to imply "select" function with "contains" parameter to select only columns containing "std()" and "mean()" in colnames strings. the reason why "std()" used instead of plain "std", for example, is that in case with plain "std" s.deviation was used rather as parameter for other kinds of measuremnts (like parameter for "angle" measurement, etc), but not as measurement itself.
8. at this step we have data with 68 columns(id subj, activity name, 66 mean/sd features) and 10299 rows. next, to aid readability we replace some symbols in feature column names, particulary it removes "()" and replace "-" with "_". i am aware that according to lecture notes all letter should be lower case and more cleraly describe the variables, but in this case i consider partially uppercase and cryptic names more suitable otherwise it could be not readable.
9. as the next step script provides grouping by subject and activity, then summarises features numeric data for each of 66 col by its mean. as the result of the step 9 we have tidy data.frame consisted of 180 rows(observations) and 68 columns(66 feature measurments and 2 descriptive variables identifying subjects and activity). the final tidy data meets all the principles to be considered as tidy: Each variable should be in one column, Each different observation of that variable should be in a different row, There should be one table for each "kind" of variable
10. finally script writes tidy data.frame to the txt file. one can read the file back to R by running following code: 
```
address <- ""
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE) 
View(data)
```  
