Getting and Cleaning Data Course Project CodeBook.md
====================================================================================

## Variable selection from initial dataset
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Variable selection 
The features that contain both "mean" and "standard deviation" for the measurement from the features described above are selected. This does not include features that measure "meanFreq". 

## Naming convention 

The names of variables for the 66-feature vector are taken from the "features.txt" file. The "()" from the names have been substituted with blank spaces. 

For the activity and subject identifiers, the names "activity" and "subject" are picked. The activity labels character vector is named "activity_name". 

## Final tidy dataset contains 180 observations of 69 variables 

Below are the variables in the dataset along with their vector type

 $ activity                 : int  
 $ subject                  : int  
 $ tBodyAcc.mean.X          : num  
 $ tBodyAcc.mean.Y          : num  
 $ tBodyAcc.mean.Z          : num  
 $ tBodyAcc.std.X           : num  
 $ tBodyAcc.std.Y           : num  
 $ tBodyAcc.std.Z           : num  
 $ tGravityAcc.mean.X       : num  
 $ tGravityAcc.mean.Y       : num  
 $ tGravityAcc.mean.Z       : num  
 $ tGravityAcc.std.X        : num  
 $ tGravityAcc.std.Y        : num  
 $ tGravityAcc.std.Z        : num  
 $ tBodyAccJerk.mean.X      : num  
 $ tBodyAccJerk.mean.Y      : num  
 $ tBodyAccJerk.mean.Z      : num  
 $ tBodyAccJerk.std.X       : num  
 $ tBodyAccJerk.std.Y       : num  
 $ tBodyAccJerk.std.Z       : num  
 $ tBodyGyro.mean.X         : num  
 $ tBodyGyro.mean.Y         : num  
 $ tBodyGyro.mean.Z         : num   
 $ tBodyGyro.std.X          : num   
 $ tBodyGyro.std.Y          : num  
 $ tBodyGyro.std.Z          : num  
 $ tBodyGyroJerk.mean.X     : num  
 $ tBodyGyroJerk.mean.Y     : num  
 $ tBodyGyroJerk.mean.Z     : num  
 $ tBodyGyroJerk.std.X      : num  
 $ tBodyGyroJerk.std.Y      : num  
 $ tBodyGyroJerk.std.Z      : num  
 $ tBodyAccMag.mean         : num  
 $ tBodyAccMag.std          : num  
 $ tGravityAccMag.mean      : num  
 $ tGravityAccMag.std       : num  
 $ tBodyAccJerkMag.mean     : num  
 $ tBodyAccJerkMag.std      : num  
 $ tBodyGyroMag.mean        : num  
 $ tBodyGyroMag.std         : num   
 $ tBodyGyroJerkMag.mean    : num  
 $ tBodyGyroJerkMag.std     : num  
 $ fBodyAcc.mean.X          : num  
 $ fBodyAcc.mean.Y          : num   
 $ fBodyAcc.mean.Z          : num  
 $ fBodyAcc.std.X           : num  
 $ fBodyAcc.std.Y           : num  
 $ fBodyAcc.std.Z           : num  
 $ fBodyAccJerk.mean.X      : num  
 $ fBodyAccJerk.mean.Y      : num  
 $ fBodyAccJerk.mean.Z      : num  
 $ fBodyAccJerk.std.X       : num  
 $ fBodyAccJerk.std.Y       : num  
 $ fBodyAccJerk.std.Z       : num  
 $ fBodyGyro.mean.X         : num  
 $ fBodyGyro.mean.Y         : num  
 $ fBodyGyro.mean.Z         : num  
 $ fBodyGyro.std.X          : num  
 $ fBodyGyro.std.Y          : num  
 $ fBodyGyro.std.Z          : num  
 $ fBodyAccMag.mean         : num  
 $ fBodyAccMag.std          : num  
 $ fBodyBodyAccJerkMag.mean : num  
 $ fBodyBodyAccJerkMag.std  : num  
 $ fBodyBodyGyroMag.mean    : num  
 $ fBodyBodyGyroMag.std     : num  
 $ fBodyBodyGyroJerkMag.mean: num  
 $ fBodyBodyGyroJerkMag.std : num  
 $ activity_name            : chr  
 




