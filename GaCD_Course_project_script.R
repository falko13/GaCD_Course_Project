## Getting and Cleaning Data Course Project 1

##--->>PREPARATION STAGE<<----------------------------------------------------------------------------------------
#load libraries needed for the project
library(utils)
library(dplyr)

#cread data dir, download and unzip data
if(!file.exists("./data")){dir.create("./data")}
url_file<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url_file,"./data/asnt1_set.zip")
unzip("./data/asnt1_set.zip",exdir = "./data")
list.files('./data/UCI HAR Dataset/')

##--->>STAGE 1<<---------------------------------------------------------------------------------------------------------
##--->>1. "Merges the training and the test sets to create one data set"
#read tst/train data and its labels/ids into separated data.frames
s_tst<-read.table("./data/UCI HAR Dataset/test/subject_test.txt",col.names = "id_subject")       #test subjects id
s_train<-read.table("./data/UCI HAR Dataset/train/subject_train.txt",col.names = "id_subject")   #training subjects id
y_tst<-read.table("./data/UCI HAR Dataset/test/y_test.txt",col.names = "id_activity")            #test activities id
y_train<-read.table("./data/UCI HAR Dataset/train/y_train.txt",col.names = "id_activity")        #training activities id
x_tst<-read.table("./data/UCI HAR Dataset/test/X_test.txt")             #test set
x_train<-read.table("./data/UCI HAR Dataset/train/X_train.txt")         #training set
feature_name<-read.table("./data/UCI HAR Dataset/features.txt")         #feature names(labels)
activity_name<-read.table("./data/UCI HAR Dataset/activity_labels.txt") #activity names(labels)

#create test and draining data sets with both types of id(subject and activity), then join those in a single set
tst <- bind_cols(s_tst,y_tst,x_tst)
train <- bind_cols(s_train,y_train,x_train)
full_data <- bind_rows(tst,train)

##--->>STAGES 3 AND 4<<----------------------------------------------------------------------------------------------------
##--->>3."Uses descriptive activity names to name the activities in the data set"
##--->>4."Appropriately labels the data set with descriptive variable names"

#change id_activity field from ids to its corresponding names, change name of the field to "name_activity"
full_data <- full_data %>% mutate(id_activity = activity_name[id_activity,2]) %>% rename(name_activity = id_activity)

#set names for feature variables
colnames(full_data)[3:length(colnames(full_data))] <- as.character(feature_name[,2])


##--->>STAGE 2<<----------------------------------------------------------------------------------------------------
##--->>2. Extracts only the measurements on the mean and standard deviation for each measurement. 

#check if there are duplicated column names in data set and delete duplicates if those not needed
#(inittal file features.txt in fact includes duplicates, for example "fBodyAcc-bandsEnergy()-9,16" has 3 duplicates)
colnames(full_data)[duplicated(colnames(full_data))]

# (all duplicated columns are not used by the project, so we can delete those)
full_data <- full_data[,!duplicated(names(full_data))]
tidy_data <- select(full_data, one_of(c("id_subject", "name_activity")),contains("std()"),contains("mean()"))


##--->>STAGE 5<<----------------------------------------------------------------------------------------------------
##--->>5. "From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."

#select only feature that measures std() and mean(), remove prohibited symbols in col_names
#then calculate mean for each feature grouped by activity and subject
colnames(tidy_data)<- gsub("\\()","",colnames(tidy_data))
colnames(tidy_data)<- gsub("\\-","_",colnames(tidy_data))
tidy_data <- tidy_data %>% group_by(id_subject, name_activity) %>% summarise_each(funs(mean))

##write data.frame to txt-file
write.table(tidy_data,  file = "./data/tidy_data.txt",row.names = FALSE)


tt<-read.table("./data/tidy_data.txt",header = TRUE)
names(tt)

?gsub
as.data.frame(colnames(tidy_data))

id_subject
