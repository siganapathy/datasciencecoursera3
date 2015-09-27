This code book details the variables of the cleaned data obtained from smartphone wearable recorded data and the various cleanup and transformations performed on the same inorder to obtain average values of various measurements for 6 activities performed by 30 volunteers.

The source measurements were taken from the accelerometer and gyroscope 3-axial signals

Description of Variables.

subject
	id of the subject who performed the various physical activities
	Integer - 1....30

activity_name
	Activity for which the measurements have been calculated
	String - LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, 		WALKING_UPSTAIRS

Each of the following variables are average values of measurements taken while performing one of the 6 activities by one of the 30 voluteers

tBodyAcceleration-mean-X, tBodyAcceleration-mean-Y, tBodyAcceleration-mean-Z
	- body acceleration signal in the X,Y,Z axes respectively
	- numeric - 0.22...0.35 (X)	
	- numeric - -0.04...-0.01 (Y)
	- numeric - -0.15...-0.075 (Z)

tGravityAcceleration-mean-X, tGravityAcceleration-mean-Y, tGravityAcceleration-mean-Z
	- gravity acceleration signal in the X,Y,Z axes respectively
	- numeric - -0.6800....  0.9745(X)
	- numeric - -0.4799....  0.95660(Y)
	- numeric - -0.4951....  0.95790(Z)

tBodyAccelerationJerk-mean-X, tBodyAccelerationJerk-mean-Y, tBodyAccelerationJerk-mean-Z
	- jerk signal derived in time from body linear acceleration signals
	- numeric - 0.04269....0.13020(X)
	- numeric - -0.03869...0.05682(Y)
	- numeric - -0.06746...0.038050(Z)

tBodyGyro-mean-X, tBodyGyro-mean-Y, tBodyGyro-mean-Z
	- body angular velocity in the X,Y,Z axes respectivele
	- numeric - -0.2058...0.1927 (X)
	- numeric - -0.2042...0.02747(Y)
	- numeric - -0.07245...0.17910(Z)

tBodyGyroJerk-mean-X, tBodyGyroJerk-mean-Y, tBodyGyroJerk-mean-Z
	- jerk signal derived from body angular velocity in the X,Y,Z axes 
	  respectively

	- numeric - -0.15720....-0.02209 (X)
	- numeric - -0.07681...-0.01320 (Y)
	- numeric - -0.092500...-0.006941 (Z)

tBodyAccelerationMagnitude-mean
	- magnitude of body acceleration signal
	- numeric - -0.9865...0.6446

tGravityAccelerationMagnitude-mean
	- magnitude of gravity acceleration signal
	- numeric - -0.9865...0.6446 

tBodyAccelerationJerkMagnitude-mean
	- magnitude of jerk signal derived from body acceleration signal
	- numeric - -0.9928...0.4345

tBodyGyroMagnitude-mean
	- magnitude of body angular velocity signal
	- numeric - -0.9807...0.4180

tBodyGyroJerkMagnitude-mean
	- magnitude of jerk signal derived from body angular velocity signal
	- numeric - -0.99730...0.08758

fBodyAcceleration-mean-X, fBodyAcceleration-mean-Y, fBodyAcceleration-mean-Z
	- FFT applied to body acceleration signal in X,Y,Z axes respectively
	- numeric - -0.9952...0.5370 (X)
	- numeric - -0.98900..0.52420 (Y)
	- numeric - -0.9895...0.2807 (Z)

fBodyAcceleration-meanFreq-X, fBodyAcceleration-meanFreq-Y, fBodyAcceleration-meanFreq-Z
	- mean frequency obtained by FFT of body acceleration signal in X,Y,Z axes respectively
	- numeric - -0.63590....0.15910 (X)
	- numeric - -0.379500...0.466500 (Y)
	- numeric - -0.52010...0.40250 (Z)

fBodyAccelerationJerk-mean-X, fBodyAccelerationJerk-mean-Y, fBodyAccelerationJerk-mean-Z
	- mean frequency obtained by FFT of jerk signal in X,Y,Z axes respectively
	- numeric - -0.9946...0.4743 (X)
	- numeric - -0.9894...0.2767 (Y)
	- numeric - -0.9920...0.1578 (Z)

fBodyAccelerationJerk-meanFreq-X, fBodyAccelerationJerk-meanFreq-Y, fBodyAccelerationJerk-meanFreq-Z
	- mean frequency of jerk signal derived from body acceleration signal in X,Y,Z axes respectively
	- numeric - -0.57600...0.33140 (X)
	- numeric - -0.6020....0.19570 (Y)
	- numeric - -0.62760...0.23010 (Z)

fBodyGyro-mean-X, fBodyGyro-mean-Y, fBodyGyro-mean-Z
	- FFT applied to body angular velocity signal in X,Y,Z axes respectively
	- numeric - -0.9931...0.4750 (X)
	- numeric - -0.9940...0.3288 (Y)
	- numeric - -0.9860...0.4924 (Z)

fBodyGyro-meanFreq-X, fBodyGyro-meanFreq-Y, fBodyGyro-meanFreq-Z
	- mean frequency obtained from FFT of body angular velocity signal in X,Y,Z axes respectively
	- numeric - -0.39580...0.2492 (X)
	- numeric - -0.6668....0.2731 (Y)
	- numeric - -0.5075...0.3771 (Z)

fBodyAccelerationMagnitude-mean
	- magnitude of FFT applied to body linear acceleration signal
	- numeric - -0.9868....0.5866

fBodyAccelerationMagnitude-meanFreq
	- magnitude of mean frequency of FFT applied to body linear acceleration signal
	- numeric - -0.3123....0.4358

fBodyBodyAccelerationJerkMagnitude-mean
	- magnitude of jerk signal derived from FFT of body linear acceleration signal
	- numeric - -0.9940.....0.5384

fBodyBodyAccelerationJerkMagnitude-meanFreq
	- mean frequency of FFT applied to magnitude of jerk signals
	- numeric - -0.1252....0.4881


fBodyBodyGyroMagnitude-mean
	- FFT applied to magnitude of jerk signal derived from body angular velocity signal
	- numeric - -0.9865.....0.2040

fBodyBodyGyroMagnitude-meanFreq
	- mean frequency of FFT applied to magnitude of body angular velocity signal
	- numeric - -0.4566.....0.4095


tBodyAcceleration-meanOfSD-X, tBodyAcceleration-meanOfSD-Y, tBodyAcceleration-meanOfSD-Z

	- mean of standard deviation of body linear acceleration signal in X,Y,Z axes respectively
	- numeric - -0.9961.....0.6269(X)
	- numeric - -0.9902.....0.6169(Y)
	- numeric - -0.9877.....0.6090(Z)

tGravityAcceleration-meanOfSD-X, tGravityAcceleration-meanOfSD-Y, tGravityAcceleration-meanOfSD-Z
	- mean of standard deviation of gravity acceleration signal in X,Y,Z axes respectively
	- numeric - -0.9968....-0.8296 (X)
	- numeric - -0.9942....-0.6436 (Y)
	- numeric - -0.9910....-0.6102 (Z)


tBodyAccelerationJerk-meanOfSD-X, tBodyAccelerationJerk-meanOfSD-Y, tBodyAccelerationJerk-meanOfSD-Z
	- mean of standard deviation of jerk signal derived from body linear acceleration signal in X,Y,Z axes respectively.
	- numeric - -0.9946....0.5443 (X)
	- numeric - -0.9895....0.3553 (Y)
	- numeric - -0.9933....0.0310 (Z)

tBodyGyro-meanOfSD-X, tBodyGyro-meanOfSD-Y, tBodyGyro-meanOfSD-Z
	- mean of standard deviation of body angular velocity signal in X,Y,Z axes respectively
	- numeric - -0.9943....0.2677 (X)
	- numeric - -0.9942....0.4765 (Y)
	- numeric - -0.9855....0.5649 (Z)

tBodyGyroJerk-meanOfSD-X, tBodyGyroJerk-meanOfSD-Y, tBodyGyroJerk-meanOfSD-Z
	- mean of standard deviation of jerk signal derived from body angular velocity signal in X,Y,Z axes respectively
	- numeric - -0.9965.....0.1791 (X)
	- numeric - -0.9971.....0.2959 (Y)
	- numeric - -0.9954.....0.1932 (Z)

fBodyAcceleration-meanOfSD-X, fBodyAcceleration-meanOfSD-Y, fBodyAcceleration-meanOfSD-Z
	- mean of standard deviation of FFT applied to body linear acceleration signal in X,Y,Z axes respectively
	- numeric - -0.9966....0.6585
	- numeric - -0.9907....0.5602
	- numeric - -0.9872....0.6871

fBodyAccelerationJerk-meanOfSD-X, fBodyAccelerationJerk-meanOfSD-Y, fBodyAccelerationJerk-meanOfSD-Z
	- mean of standard deviation of jerk signal obtained from FFT applied to body linear acceleration signal in X,Y,Z axes respectively
	- numeric - -0.9951....0.4768 (X)
	- numeric - -0.9905....0.3498 (Y)
	- numeric - -0.9931....-0.006236 (Z)


Transformations performed on the input data set:

Input:
	smartphone recordings split into training and test sets each of which contains the following.
	1. X_train.txt - training measurement data
	2. y_train.txt - activity for which each measurement observation was taken
	3. subject_train.txt - subject who executed the activity during which the measurement observation was taken
        
	features.txt - feature vector containing 561 feature variables
	activity_labels.txt - activity metadata containing descriptive names for
	activities.

Output:
	tabular data containing average measurement for each subject and each activity

Transformations performed on the input to get the output:
	1. Read training data and test data
	2. merged training and test data
	3. extracted mean and standard deviation from the dataset
	   a. removed the whitespaces in between column names of the dataset
	   b. using grepl, selected only those columns which has mean and std
	      in their names
	   c. combined the mean and std columns along with subject and activity 	      columns
	   d. merged the combined measurement data with activity metadata so as
	      to map the measurements against descriptive activity names
	4. created an independent tidy data set by grouping the measurements
	   per activity per subject
	5. calculated average of each measurement for each activity and each 	        subject
	6. provided descriptive label names to the dataset
	   a. removed "()" from the variable names
	   b. replaced "Acc" with "Acceleration" in containing variable names 
	   c. replaced "Mag" with "Magnitude" in containing variable names
	   d. replaced "std" with "meanOfSD" in containing variable names
	7. wrote the output to a file named "tidy_output.txt"
	















	







