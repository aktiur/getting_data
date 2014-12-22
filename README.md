Human Activity Recognition using smartphones
============================================

Study Design
------------

This tidy dataset uses raw data obtained from an experiment conducted on 30 volunteers
by Smart lab - Non Linear Complex Systems Laboratory, DITEN - Université degli Studi di Genova, Genoa I-16145, Italy. 

[The original data set may be found here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

From this dataset, we kept only the mean and standard values of the features. We then summarized the data set and kept
only one averaged value for every combination Activity/Subject.

This data processing can be reproduced by running run_analysis.R with the original dataset in your working directory.

Code Book
---------

#### General remarks

All of the numerical variables have both a mean and a standard deviation column. They have been all normalized and
are thus _unitless_.

The numerical variables are named according to this convention:

    {d}{name}.{mode}[.{axis}]

Explanations for the different components:

- d: the variable starts with a *t* if it is in the temporal domain and with an *f* if it is in the frequency domain
- name: the name of the physical quantity measured by the variable
- mode: either *mean* or *std* for the mean or the standard deviation
- axis: if the quantity is a vector, the axis components will be either *X*, *Y* or *Z*

### Subject

Indicates the subject that practices the activity. This qualitative variable can take values from 1 to 30.

### Activity

Indicates the practiced activity. This categorical variable can take the 6 following values:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

### tBodyAcc

The tBodyAcc variables measure the body acceleration of the subject across the three space coordinates, X, Y and Z.
The variable names are:

- tBodyAcc.mean.X
- tBodyAcc.mean.Y
- tBodyAcc.mean.Z
- tBodyAcc.std.X
- tBodyAcc.std.Y
- tBodyAcc.std.Z

### tGravityAcc

The tGravityAcc variables measure the Gravity acceleration as perceived by the sensors across the three space coordinates.
The variable names are:

- tGravityAcc.mean.X
- tGravityAcc.mean.Y
- tGravityAcc.mean.Z
- tGravityAcc.std.X
- tGravityAcc.std.Y
- tGravityAcc.std.Z

### tBodyAccJerk

The tBodyAccJerk variables measure the jerk of the body acceleration, i.e. the rate of change of the body acceleration, across the three space coordinates.
The variable names are:

- tBodyAccJerk.mean.X
- tBodyAccJerk.mean.Y
- tBodyAccJerk.mean.Z
- tBodyAccJerk.std.X
- tBodyAccJerk.std.Y
- tBodyAccJerk.std.Z

### tBodyGyro  

The tBodyGyro variables measure the rotation as perceived by the phone's gyroscope, over the three coordinates.
The variable names are:

- tBodyGyro.mean.X
- tBodyGyro.mean.Y
- tBodyGyro.mean.Z
- tBodyGyro.std.X
- tBodyGyro.std.Y
- tBodyGyro.std.Z

### tBodyGyroJerk

The tBodyGyroJerk variables measure the jerk of the rotation, i.e. the rate of change of the rotation as perceived by the gyroscope,
across the three space coordinates.
The variable names are:

- tBodyGyroJerk.mean.X
- tBodyGyroJerk.mean.Y
- tBodyGyroJerk.mean.Z
- tBodyGyroJerk.std.X
- tBodyGyroJerk.std.Y
- tBodyGyroJerk.std.Z

### tBodyAccMag

The magnitude of the tBodyAcc quantity. The variable names are:

- tBodyAccMag.mean
- tBodyAccMag.std

### tGravityAcc

The magnitude of the tGravityAcc quantity. The variable names are:

- tGravityAccMag.mean
- tGravityAccMag.std

### tBodyAccJerkMag

The magnitude of the tBodyAccJerkMag quantity. The variable names are:

- tBodyAccJerkMag.mean
- tBodyAccJerkMag.std

### tBodyGyroMag 

The magnitude of the tBodyGyroMag quantity. The variable names are:

- tBodyGyroMag.mean
- tBodyGyroMag.std

### tBodyGyroJerkMag

The magnitude of the tBodyGyroJerkMag quantity. The variable names are:

- tBodyGyroJerkMag.mean
- tBodyGyroJerkMag.std

### fBodyAcc

The Fast Fourier Transform (FFT) of the tBodyAcc quantity. The variable names are:

- fBodyAcc.mean.X
- fBodyAcc.mean.Y
- fBodyAcc.mean.Z
- fBodyAcc.std.X
- fBodyAcc.std.Y
- fBodyAcc.std.Z

### fBodyAccJerk

The FFT of the tBodyAccJerk quantity. The variable names are:

- fBodyAccJerk.mean.X
- fBodyAccJerk.mean.Y
- fBodyAccJerk.mean.Z
- fBodyAccJerk.std.X
- fBodyAccJerk.std.Y
- fBodyAccJerk.std.Z

### fBodyGyro

The FFT of the tBodyGyro quantity. The variable names are:

- fBodyGyro.mean.X
- fBodyGyro.mean.Y
- fBodyGyro.mean.Z
- fBodyGyro.std.X
- fBodyGyro.std.Y
- fBodyGyro.std.Z

### fBodyAccMag

The FFT of the tBodyAccMag quantity. The variable names are:

- fBodyAccMag.mean
- fBodyAccMag.std

### fBodyBodyAccJerkMag

The FFT of the tBodyBodyAccJerkMag quantity. The variable names are:

- fBodyBodyAccJerkMag.mean
- fBodyBodyAccJerkMag.std

### fBodyBodyGyroMag

The FFT of the tBodyBodyGyroMag quantity. The variable names are:

- fBodyBodyGyroMag.mean
- fBodyBodyGyroMag.std

### fBodyBodyGyroJerkMag

The FFT of the tBodyBodyGyroJerkMag quantity. The variable names are:

- fBodyBodyGyroJerkMag.mean
- fBodyBodyGyroJerkMag.std
