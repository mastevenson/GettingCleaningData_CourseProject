## Course 3 Assignment
## mastevenson
## 4/26/2015

## Uncomment below two lines to install required packages if not already installed
#install.packages("readr")
#install.packages("reshape2")

## Loading required pacakges
library(readr)
library(reshape2)

## Initially we'll read in the features text; file is not fixed width
## or delimited, so we'll take a tiered approach varying the widths (e.g. rows 1-9, 10-99, 100+)
first <- read.fwf(
        file="UCI HAR Dataset/features.txt",
        col.names=c('#','name'),
        nrows=9,
        strip.white=TRUE,
        widths=c(1,75))

second <- read.fwf(
        file="UCI HAR Dataset/features.txt",
        col.names=c('#','name'),
        skip=9,
        nrows=90,
        strip.white=TRUE,
        widths=c(2,75))

third <- read.fwf(
        file="UCI HAR Dataset/features.txt",
        col.names=c('#','name'),
        skip=99,
        strip.white=TRUE,
        widths=c(3,75))

## After reading in the three sets of features we'll rbind them into a master feature list
master_columns<-rbind(first,second,third)

## Some clean up
rm(first, second,third)

## Let's extract the second columen (i.e. the feature names)
## and store in a vector for later use with the data imports
feature_titles <- as.vector(master_columns[,2])

## Let's read in the train activity and set column names
## Note using read.fwf as files are small
train_activity <- read.fwf(
        file="UCI HAR Dataset/train/y_train.txt",
        col.names=c('Activity'),
        strip.white=TRUE,
        widths=c(1))

## Let's read in the train participant ID and set column name
## Note using read.fwf as files are small
train_participant <- read.fwf(
        file="UCI HAR Dataset/train/subject_train.txt",
        col.names=c('Participant_ID'),
        strip.white=TRUE,
        widths=c(2))

## Let's read in the train data. 
## The file has 561 columns at 16 fixed width, so we use 16 repeated 561 times.
## Note we're using the vector of feature titles created on line #43 above
## Note using read_fwf from readr package as files are large
train_data <- read_fwf(
        file="UCI HAR Dataset/train/X_train.txt",
        widths<- fwf_widths(rep(16,561), col_names = feature_titles),
        col_types=NULL,
        na="NA",
        skip=0,
        progress=interactive())

## Control check; as data is so large traditional View() won't work, and
## calling utils::View() will allow all columns to be shown
#utils::View(train_data)

## Now performing the same for the test activity
## Let's read in the test activity and set column names
## Note using read.fwf as files are small
test_activity <- read.fwf(
        file="UCI HAR Dataset/test/y_test.txt",
        col.names=c('Activity'),
        strip.white=TRUE,
        widths=c(1))

## Let's read in the train participant ID and set column name
## Note using read.fwf as files are small
test_participant <- read.fwf(
        file="UCI HAR Dataset/test/subject_test.txt",
        col.names=c('Participant_ID'),
        strip.white=TRUE,
        widths=c(2))

## Let's read in the test data. 
## The file has 561 columns at 16 fixed width, so we use 16 repeated 561 times.
## Note we're using the vector of feature titles created on line #43 above
## Note using read_fwf from readr package as files are large
test_data <- read_fwf(
        file="UCI HAR Dataset/test/X_test.txt",
        widths<- fwf_widths(rep(16,561), col_names = feature_titles),
        col_types=NULL,
        na="NA",
        skip=0,
        progress=interactive())

## I would like ordering to be ID#, Activity, and then measurement columns
## Ordering of observations in test and train correspond to all test and train files respectively 
## We'll then use CBIND in that order to create a data frame for both test and train
train_master <- cbind(train_participant, train_activity, train_data)
test_master <- cbind(test_participant, test_activity, test_data)

## We have our two masters with exact column ordering, so let'
## combine into one master file of both train and test through rbind
master <- rbind(train_master, test_master)

## Some clean up
rm(train_participant, train_activity, train_data, master_columns,
   test_participant, test_activity, test_data, train_master, test_master, widths, feature_titles)

## Per the assignment step 3 we need to add in descriptive activity labels
## Referring to the activity_labels.txt file we have the key for updating
## the numeric values to the descriptive text.
## There are many ways to do this and I chose to perform through a nested if statement
master$Descriptive_Acitivity <- 
        ifelse(master$Activity==1,'WALKING',
                ifelse(master$Activity==2,'WALKING_UPSTAIRS',
                        ifelse(master$Activity==3,'WALKING_DOWNSTAIRS',
                                ifelse(master$Activity==4,'SITTING',
                                        ifelse(master$Activity==5,'STANDING',
                                                ifelse(master$Activity==6,'LAYING','NA'))))))

## Since we have two columns for activity 
## (e.g. one for the numeric representation and one with text)
## Let's extract select columns, reorder, and rename to a new master file
temp<-master[,c(1,564)]
master<-cbind(temp[,1],temp[,2],master[,c(-1,-2,-564)])
colnames(master)[1] <- "participant_id"
colnames(master)[2] <- "activity"

## Some cleanup
rm(temp)

## Per the assignment steps 4 my interpretation is that we need to only extract
## fields of the mean or st.d measurement. Reviewing the features.txt I noticed
## the fields contained the mean() and std() text in the title and will use these
## to identify the column position of the identified fields 

## Setting up initial grep pattern for mean ()
pattern1='mean()'

## Performing the search for column indices of columns containing 'mean()'
sub1=grep(pattern1,names(master),perl=T)

## Setting up second grep pattern for std()
pattern2='std()'

## Performing the search for column indices of columns containing 'std()'
sub2=grep(pattern2,names(master),perl=T)

## Now that we have two vectors of column positions with names containing mean() or std()
## Let's make a new master list, including column index 1 and 2 for ID and activity
master_list <- c(1,2,sub1,sub2)

## Subsetting the data frame for columns with mean() or std() including ID and activity
## into a new data frame which results in 81 total columns
master<-master[,master_list]

## Per assignment step 4 we need to label the column names descriptively
## Subsetting the names into a new vector to start changing column names
temp<-names(master)

## Per Week 4, lecture 1 names of variables should be:
## -all lower case
## -descriptive
## -not repeated
## -not contain non-alphabetic characters or numbers

## Due to the long size of the titles I have decided to include
## underscores to help the readability of the column names

## After reading the features_info.txt identified the prefixes used to denote attributes
## (e.g. t for time)
## To aid in description I opted to use the entire length of the attributes
## Below I have implemented regular expressions to rename the columns programmatically
names_mod<-gsub("^t","time_",temp)
names_mod<-gsub("^f","frequency_",names_mod)
names_mod<-gsub("-X","x_dimension",names_mod)
names_mod<-gsub("-Y","y_dimension",names_mod)
names_mod<-gsub("-Z","z_dimension",names_mod)
names_mod<-gsub("-mean[(][)]","mean_",names_mod)
names_mod<-gsub("-std[(][)]","standard_deviation_",names_mod)
names_mod<-gsub("-meanFreq[(][)]","mean_frequency_",names_mod)
names_mod<-gsub("Body","body_",names_mod)
names_mod<-gsub("Mag","magnitude_",names_mod)
names_mod<-gsub("Acc","acceleration_",names_mod)
names_mod<-gsub("Gyro","gyroscopic_",names_mod)
names_mod<-gsub("Jerk","jerk_",names_mod)
names_mod<-gsub("Gravity","gravity_",names_mod)
names_mod<-gsub("_body_body_","_body_",names_mod)
names_mod<-gsub("[_]+$","",names_mod)

## Applying the new column names
names(master)<-names_mod

## Some clean up
rm(master_list,names_mod,pattern1,pattern2,sub1,sub2,temp)

## Per assignment step 5 we are to create an average of each variable 
## for each activity and each subject

## The data frame is currently in wide form and I would like to transpose to long form
## Using melt from the reshape2 package to perform this. Note Participant_ID and activity
## are the unique identifying columns
new_master <- melt(master, id.vars=c("participant_id","activity"))

## Now we want the average of each variable for each activity and each subject
## We'll dcast to the mean using the established unique identifying variables
## This will transpose back to wide form
new_master2 <- dcast(new_master, participant_id + activity ~ variable, fun.aggregate=mean)

## Melt back to long form as that is my preference
master <- melt(new_master2, id.vars=c("participant_id","activity"))

## Ensuring step 4 is completed to provide descriptive variable names; including the mean in 
## the column title
names(master)[4]<-'mean'

## Some clean up
rm(new_master, new_master2)

## Control check to view output
#utils::View(master)

## Ordering data frame by id, activity, and then variable, and removing row.names
master <- master[with(master,order(participant_id, activity, variable)),]
row.names(master) <- NULL

## Per question 1 of assignment export via write.table() to .txt fiel w/ row.names=FALSE
## Added seperator comma to file is easily accessed via read.table() 
write.table(master,"tidy_data_set.txt",row.names = FALSE, sep = ",")

## To read in data file, assuming "tidy_data_set.txt" is in your working directory
## Run the following command:

# tidy_data<-read.table(
#         file="tidy_data_set.txt",
#         header=TRUE,
#         sep=",")
