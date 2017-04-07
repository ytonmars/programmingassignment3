
runanalysis <- function(directory){
    df <- loaddata(directory)
    df <- extractmeasurements(df)
    df <- renameactivities(df)
    df <- tidydata(df)
    writedata(df)
    return(df)
}

#load all training data and testing data and merge them together
#it also assigns feature names to column names
#directory is where you store your dataset
#returns a dataframe containing both testing data and training data
loaddata <- function(directory){
    #set current working directory to where you store your dataset
    setwd(directory)
  
    #read all 561 feature names 
    featurenames <- read.table("features.txt", colClasses = "character")
    featurenames <- featurenames[[2]] #first column are all indices
    
    #read all training data
    xtrain <- read.table("./train/X_train.txt")
    ytrain <- read.table("./train/y_train.txt")
    subtrain <- read.table("./train/subject_train.txt")
    
    #merge 3 tables to 1 
    train <- cbind(subtrain, xtrain)
    train <- cbind(train, ytrain)
    
    #read all testing data
    xtest <- read.table("./test/X_test.txt")
    ytest <- read.table("./test/y_test.txt")
    subtest <- read.table("./test/subject_test.txt")
    
    #merge 3 tables to 1 
    test <- cbind(subtest, xtest)
    test <- cbind(test, ytest)
    
    df <- rbind(train, test)
    names(df) <- c("subjectid", featurenames, "activity")
    return(df)
}

#extract all the measurements containing mean and std
extractmeasurements <- function(data) {
    colindicies <- grep("mean|std", names(data))
    colindicies <- c(1, colindicies, length(names(data))) #combine subjectid and activity label
    df <- data[colindicies]
    return(df)
}

#Uses descriptive activity names to name the activities in the data set
renameactivities <- function(data) {
    activitynames <- read.table("activity_labels.txt")
    activitynames <- activitynames[[2]]
    data$activity <- sapply(data$activity, function(x) activitynames[x])
    return(data)
}

#creates an independent tidy data set with the average of each variable for each activity and each subject
tidydata <- function(df){
    #aggregates the data based on subjectid and activity type
    tidydf <- aggregate(df[2:(length(names(df))-1)], list(subjectid = df$subjectid, activity = df$activity), mean)
    
    lastindex <- length(names(tidydf))
    
    #add average to the variable name
    names(tidydf)[3:lastindex] <- sub("^t","tAvg", names(tidydf)[3:lastindex])
    names(tidydf)[3:lastindex] <- sub("^f","fAvg", names(tidydf)[3:lastindex])
    
    return(tidydf)
}

#write data out to a text file
writedata <- function(df) {
  write.table(df, file="tidydata.txt", row.names = FALSE)
}