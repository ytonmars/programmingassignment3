==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

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
- 'Codebook.md'
- 'run_analysis.R' contains all methods to analyze the original dataset and generate the new dataset in R
- 'tidydata.txt' data tidied by running 'run_analysis.R'
- 'README.md' how the methods in 'run_analysis.R' works and how to use them

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

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
mad(): Median absolute deviation   
max(): Largest value in array  
min(): Smallest value in array  
sma(): Signal magnitude area  
energy(): Energy measure. Sum of the squares divided by the number of values.   
iqr(): Interquartile range   
entropy(): Signal entropy  
arCoeff(): Autorregresion coefficients with Burg order equal to 4  
correlation(): correlation coefficient between two signals  
maxInds(): index of the frequency component with largest magnitude  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
skewness(): skewness of the frequency domain signal   
kurtosis(): kurtosis of the frequency domain signal   
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
angle(): Angle between to vectors.  

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  

All the mean and standard deviation variables are extracted out and the average of such variables are also calculated based on subjectid and activity type. This results in a new dataset which contains all the features described in the following "Features" section

subjectid 
=========
Subjectid is a numerical value range from 1 to 30

activity 
========
Activity consists of 6 different categories

WALKING  
WALKING_UPSTAIRS  
WALKING_DOWNSTAIRS  
SITTING  
STANDING  
LAYING  

Features 
========
1 subjectid  
2 activity  
3 tAvgBodyAcc-mean()-X  
4 tAvgBodyAcc-mean()-Y  
5 tAvgBodyAcc-mean()-Z  
6 tAvgBodyAcc-std()-X  
7 tAvgBodyAcc-std()-Y  
8 tAvgBodyAcc-std()-Z  
9 tAvgGravityAcc-mean()-X  
10 tAvgGravityAcc-mean()-Y  
11 tAvgGravityAcc-mean()-Z  
12 tAvgGravityAcc-std()-X  
13 tAvgGravityAcc-std()-Y  
14 tAvgGravityAcc-std()-Z  
15 tAvgBodyAccJerk-mean()-X  
16 tAvgBodyAccJerk-mean()-Y  
17 tAvgBodyAccJerk-mean()-Z  
18 tAvgBodyAccJerk-std()-X  
19 tAvgBodyAccJerk-std()-Y  
20 tAvgBodyAccJerk-std()-Z  
21 tAvgBodyGyro-mean()-X  
22 tAvgBodyGyro-mean()-Y  
23 tAvgBodyGyro-mean()-Z  
24 tAvgBodyGyro-std()-X  
25 tAvgBodyGyro-std()-Y  
26 tAvgBodyGyro-std()-Z  
27 tAvgBodyGyroJerk-mean()-X  
28 tAvgBodyGyroJerk-mean()-Y  
29 tAvgBodyGyroJerk-mean()-Z  
30 tAvgBodyGyroJerk-std()-X  
31 tAvgBodyGyroJerk-std()-Y  
32 tAvgBodyGyroJerk-std()-Z  
33 tAvgBodyAccMag-mean()  
34 tAvgBodyAccMag-std()  
35 tAvgGravityAccMag-mean()  
36 tAvgGravityAccMag-std()  
37 tAvgBodyAccJerkMag-mean()  
38 tAvgBodyAccJerkMag-std()  
39 tAvgBodyGyroMag-mean()  
40 tAvgBodyGyroMag-std()  
41 tAvgBodyGyroJerkMag-mean()  
42 tAvgBodyGyroJerkMag-std()  
43 fAvgBodyAcc-mean()-X  
44 fAvgBodyAcc-mean()-Y  
45 fAvgBodyAcc-mean()-Z  
46 fAvgBodyAcc-std()-X  
47 fAvgBodyAcc-std()-Y  
48 fAvgBodyAcc-std()-Z  
49 fAvgBodyAcc-meanFreq()-X  
50 fAvgBodyAcc-meanFreq()-Y  
51 fAvgBodyAcc-meanFreq()-Z  
52 fAvgBodyAccJerk-mean()-X  
53 fAvgBodyAccJerk-mean()-Y  
54 fAvgBodyAccJerk-mean()-Z  
55 fAvgBodyAccJerk-std()-X  
56 fAvgBodyAccJerk-std()-Y  
57 fAvgBodyAccJerk-std()-Z  
58 fAvgBodyAccJerk-meanFreq()-X  
59 fAvgBodyAccJerk-meanFreq()-Y  
60 fAvgBodyAccJerk-meanFreq()-Z  
61 fAvgBodyGyro-mean()-X  
62 fAvgBodyGyro-mean()-Y  
63 fAvgBodyGyro-mean()-Z  
64 fAvgBodyGyro-std()-X  
65 fAvgBodyGyro-std()-Y  
66 fAvgBodyGyro-std()-Z  
67 fAvgBodyGyro-meanFreq()-X  
68 fAvgBodyGyro-meanFreq()-Y  
69 fAvgBodyGyro-meanFreq()-Z  
70 fAvgBodyAccMag-mean()  
71 fAvgBodyAccMag-std()  
72 fAvgBodyAccMag-meanFreq()  
73 fAvgBodyBodyAccJerkMag-mean()  
74 fAvgBodyBodyAccJerkMag-std()  
75 fAvgBodyBodyAccJerkMag-meanFreq()  
76 fAvgBodyBodyGyroMag-mean()  
77 fAvgBodyBodyGyroMag-std()  
78 fAvgBodyBodyGyroMag-meanFreq()  
79 fAvgBodyBodyGyroJerkMag-mean()  
80 fAvgBodyBodyGyroJerkMag-std()  
81 fAvgBodyBodyGyroJerkMag-meanFreq()  

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
