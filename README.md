---
title: "README.md"
author: "Mark Stevenson"
date: "Sunday, April 26, 2015"
output: html_document
---

**Purpose:**

- Provide an overview and purpose of the analysis
- Provide requisites to re-perform the analysis
- Provide an overview of files in the assignment submission

__*Overview*__

The data used in this analysis is comprised of observations from accelerometers and gyroscopes of wearable computing devices from 30 participants whom performed six activities each. These data points were contained in 2 sets of data known as training and test sets. The attached script entitled 'run_analysis.R' joins the 2 different training and test data sets comprised of 3 files each into a master data set. Then only the columns pertaining to mean or standard deviation are extracted. Next the script programmatically renames the columns to descriptive form. Subsequently the script creates a tidy data set with the average of each variable for each activity and each subject.

Note the code is thoroughly commented. The below outlines (at a high level) steps performed:

1- Initially a features text file describing the columns of the test and training test sets is imported, extracted, and vectorized.

2- Each training and test data set is comprised of three files each; participant identification, activity performed, and data for each activity. These are joined and created into a master data frame of both test and train data sets with column names added.

3- Next the columns are re-ordered to participant identification, activity, and then data points to ensure readablity.

4- Next, per requisite 3 in the assignment, the activity value which is currently numeric is renamed to text descriptions per the 'activity_labels.txt'. The columns are realigned to ensure readability.

5- Next, per requisite 2 in the assignment, only the  measurements on the mean and standard deviation for each measurement are extracted. This was interpretted to mean only fields containing the mean() and std() text were selected. These columns were subsetted into a new data frame which resulted in 81 total columns.

6- Next, per requisite 4 in the assignment, the labels/columns names in the data set were appropriately labled through regular expressions with descriptive variable names. The descriptive variable names were derived from guidance provided in the features_info.txt file. Per Week 4, lecture 1 names of variables should be:

- all lower case
- descriptive
- not repeated
- not contain non-alphabetic characters or numbers

Due to the long size of the column names, underscores were used to increase readability between descriptive attributes in the column names.

7- Next, per requisite 5, a tidy data set with the average of each variable for each activity and each subject was created. Note the data set is sorted by Participant ID, then Activity, and then Variable. The long form data set was used and the following tidy prinicples were incorporated:

- Each variable you measure should be in one column
- Each different observation of that variable should be in a different row
- There should be one table for each "kind" of variable
- If you have multiple tables, they should include a column in the table that allows them to be linked (i.e. key field)

Note the last two principles were deemed not applicable as the result only required one table.

8- Finally the data set was exported to a .txt file using write.table() with row.names=FALSE. Note additionally a comma seperator variable was added to ensure ease of future readability. Note the resulting text file, 'tidy_data_set.txt', may be read in, assuming it is located in your working directory by executing the following command:

```
tidy_data<-read.table(
        file="tidy_data_set.txt",
        header=TRUE,
        sep=",")
```


__*Requisties to Reperform Analysis*__

To reperform the analysis two items should be configured:

1- The data archive entitled 'getdata_projectfiles_UCI HAR Dataset.zip' should be extracted. The resulting directory entitled 'UCI HAR Dataset' should be placed in your working directory of R. To clarify, the contents of the 'UCI HAR Dataset' directory should include the following:
        
- A directory entitled 'train' (with other files in it)
- A directory entitled 'test' (with other files in it)
- A file named README.txt
- A file named features_info.txt
- A file named features.txt
- A file named activity_labels.txt

2- The script uses the following R packages:

- readr
- reshape2

If you do not have these packages installed please uncomment lines 6 and 7 to install them when executing the code. If you do have the packages installed you do not need to uncomment them.

__*Overview of Assignment Submission Files*__

The following files are included in this repository:

- README.md: This file. Used to provide overview information on objective, steps performed, and requirements to re-perform the analysis

- CodeBook.md: A file describing the variables in each of the columns of the data set

- run_analysis.R: The R script to execute to re-perform the analysis