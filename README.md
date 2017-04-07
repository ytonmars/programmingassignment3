
#How to use this analysis file?

This dataset contains a "run_analysis.R" file. In order to run this analysis you need to first download data from this [URL](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Unzip this file and it should create a local folder named "UCI HAR Dataset". Now run the following code in your R command line or RStudio

```
source('(PATH TO FOLDER CONTAINING run_analysis.R)/run_analysis.R')
runanalysis('PATH TO YOUR DATA FOLDER')
```

This should generate a 'tidydata.txt' file in your data folder which contains the dataset tidied by this analysis.

#Methods 

##runanalysis
This method takes the input of the path where dataset is stored. It also automatically load the data and run the subsequent analysis steps to produce a tidied dataset and saved it in a file called "tidydata.txt". This method executes all the following steps in sequence and thereby produce a new set of tidy data. 

##loaddata
What this method does is as following:
1.Loads all training feature data
2.Loads all training activity data
3.Loads all training subject ID 
4.Merge them by column and form a training data table
5.Do 1~4 to testing data and form a testing data table
6.Combine results from 4 and 5 to form a single table
7.Assign "subjectid", all feature names, "activity" to the variable names for the table in 6 

last but not least return the data frame

##extractmeasurements
This method extracts the columns whose name contains either "std" or "mean"


##tidydata
This method creates an independant dataset with the average of each variable for each activity and each subject. In addition, it also insert string "Avg" in the names of the columns to indicate such transform.

##writedata
This method simply writes the dataframe to a local file on your hard drive.