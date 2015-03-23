# Code Book for `HAR_tidy.txt`

## Summary

The data set has 68 variables and 180 observations.

## View in R

You can view the content of `HAR_tidy.txt` in R by copying the file into your R working directory and running the following code:
```R
df <- read.table("HAR_tidy.txt", header = TRUE)
View(df)
```

## Variables

* `subject`: ID for subjects. An integer between 1 and 30.
* `activity`: activity that a subject does. Could be `WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, or `LAYING`.

The remaining 66 variables are named in the format `prefix.[mean|std][.X|Y|Z].avg`.

The prefixes are
* `tBodyAcc`, `tGravityAcc`: body and gravity acceleration signals
* `tBodyAccJerk`: body acceleration jerk signals 
* `tBodyGyro`: body gyroscope signals
* `tBodyGyroJerk`: body gyroscope jerk signals
* `tBodyAccMag`, `tGravityAccMag`, `tBodyAccJerkMag`, `tBodyGyroMag`, `tBodyGyroJerkMag`: magnitude of the corresponding three-dimensional signal calculated using the Euclidean norm
* `fBodyAcc`, `fBodyAccJerk`, `fBodyGyro`, `fBodyAccJerkMag`, `fBodyGyroMag`, `fBodyGyroJerkMag`: Fast Fourier Transform (FFT) applied to corresponding signals (the 'f', as oppose to the 't', indicates frequency domain signals)

For a detailed description, please refer to the `feature_info.txt` file in the original UCI HAR Dataset.

`mean` (`std`) indicates that a variable corresponds to the mean (standard deviation) of some measurement.

`X`, `Y`, or `Z` denotes that a variable corresponds to a 3-axial measurement in the X, Y, or Z direction.

The `.avg` suffix means that all the 66 variables are averages by subject and activity of a statistic of some measurement. 

Below is a complete list of all the remaining 66 variable names: 
* `tBodyAcc.mean.X.avg`
* `tBodyAcc.mean.Y.avg` 
* `tBodyAcc.mean.Z.avg` 
* `tBodyAcc.std.X.avg`
* `tBodyAcc.std.Y.avg`
* `tBodyAcc.std.Z.avg`
* `tGravityAcc.mean.X.avg`
* `tGravityAcc.mean.Y.avg`
* `tGravityAcc.mean.Z.avg`
* `tGravityAcc.std.X.avg`
* `tGravityAcc.std.Y.avg`
* `tGravityAcc.std.Z.avg`
* `tBodyAccJerk.mean.X.avg`
* `tBodyAccJerk.mean.Y.avg`
* `tBodyAccJerk.mean.Z.avg`
* `tBodyAccJerk.std.X.avg`
* `tBodyAccJerk.std.Y.avg`
* `tBodyAccJerk.std.Z.avg`
* `tBodyGyro.mean.X.avg`
* `tBodyGyro.mean.Y.avg`
* `tBodyGyro.mean.Z.avg`
* `tBodyGyro.std.X.avg`
* `tBodyGyro.std.Y.avg`
* `tBodyGyro.std.Z.avg`
* `tBodyGyroJerk.mean.X.avg`
* `tBodyGyroJerk.mean.Y.avg`
* `tBodyGyroJerk.mean.Z.avg`
* `tBodyGyroJerk.std.X.avg`
* `tBodyGyroJerk.std.Y.avg`
* `tBodyGyroJerk.std.Z.avg`
* `tBodyAccMag.mean.avg`
* `tBodyAccMag.std.avg`
* `tGravityAccMag.mean.avg`
* `tGravityAccMag.std.avg`
* `tBodyAccJerkMag.mean.avg`
* `tBodyAccJerkMag.std.avg`
* `tBodyGyroMag.mean.avg`
* `tBodyGyroMag.std.avg`
* `tBodyGyroJerkMag.mean.avg`
* `tBodyGyroJerkMag.std.avg`
* `fBodyAcc.mean.X.avg`
* `fBodyAcc.mean.Y.avg`
* `fBodyAcc.mean.Z.avg`
* `fBodyAcc.std.X.avg`
* `fBodyAcc.std.Y.avg`
* `fBodyAcc.std.Z.avg`
* `fBodyAccJerk.mean.X.avg`
* `fBodyAccJerk.mean.Y.avg`
* `fBodyAccJerk.mean.Z.avg`
* `fBodyAccJerk.std.X.avg`
* `fBodyAccJerk.std.Y.avg`
* `fBodyAccJerk.std.Z.avg`
* `fBodyGyro.mean.X.avg`
* `fBodyGyro.mean.Y.avg`
* `fBodyGyro.mean.Z.avg`
* `fBodyGyro.std.X.avg`
* `fBodyGyro.std.Y.avg`
* `fBodyGyro.std.Z.avg`
* `fBodyAccMag.mean.avg`
* `fBodyAccMag.std.avg`
* `fBodyBodyAccJerkMag.mean.avg`
* `fBodyBodyAccJerkMag.std.avg`
* `fBodyBodyGyroMag.mean.avg`
* `fBodyBodyGyroMag.std.avg`
* `fBodyBodyGyroJerkMag.mean.avg`
* `fBodyBodyGyroJerkMag.std.avg`