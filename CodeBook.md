# Get data project Code Book.
-This code book descripes the variables used in the script (run_analysis.R)
-The script is used to manipulate and create a tidy data table from raw data, 
please look at README.md for further information.
## Data set variables:
-The final data set contains 81 columns and 180 rows
- Varibles (81 variable) can be descriped as follows:
*subject_ID : represents the individuals who run the experiment and values ranges 
from 1:30.
*activity_label: represents the activities measeured in the experiement and has 
the following values:
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and, LAYING
these values could be found in the activity_label.txt file.
* Number of 79 varibles represents the mean of the measurments carried out 
during the experiment:
tBodyAcc-mean()-X  : "t" represents time, "BodyAcc" represents body acceleration 
, "mean()" represents the mean value of the inertial signals found in the "Inertial
signals" folder , "X" represents the x-axis direction.
The same applies for the varibles : tBodyAcc-mean()-Y, tBodyAcc-mean()-Z.
but in the y-axis and z-axis directions respectively.
tGravityAcc-mean()-X  : "t" represents time, "GravityAcc" represents the 
gravitiaonal acceleration measeured, "mean(), represents the inertial signals as
mentioned above, "X" represents the x-axis direction.
The same applies for the varibles : tGravityAcc-mean()-Y  ,tGravityAcc-mean()-Z 
but in the y-axis and z-axis directions respectively.
tBodyAccJerk-mean()-X: "tBodyAcc" same as above , Jerk represents the signals
obtained from derivation of time for velocity in the x-axis direction.
"mean()-X" are as mentioned above.
The same applies for the varibles: tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z 
tBodyGyro-mean()-X : "tBody" as mentioned earlier, Gyro represents the angular
acceleration measured, "mean()-X" are as mentioned above.
The same applies for the variables: tBodyGyroJerk-mean()-Y , tBodyGyroJerk-mean()-Z
tBodyAccMag-mean() : "Mag" represents the magnitude of the 3-dimensions signals.
The variables :
 tBodyGyroMag-mean() 
 tBodyGyroJerkMag-mean() 
 could be defined as mentioned above.
 fBodyAcc-mean()-X: "f" represents the frequency of the measuments and the remaining 
 could be defined as mentioned above.
 The variables:
 fBodyAcc-mean()-Y 
fBodyAcc-mean()-Z
fBodyAccJerk-mean()-X 
fBodyAccJerk-mean()-Y 
fBodyAccJerk-mean()-Z
fBodyGyro-mean()-X 
fBodyGyro-mean()-Y 
fBodyGyro-mean()-Z 
fBodyAccMag-mean()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyGyroMag-mean()
fBodyBodyGyroJerkMag-mean() 
could be defined as mentioned above.
fBodyAcc-meanFreq()-X  : "meanFreq()" represents Weighted average of the frequency 
components to obtain a mean frequency.
The variables :
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z  
fBodyAccJerk-meanFreq()-X  
fBodyAccJerk-meanFreq()-Y 
fBodyAccJerk-meanFreq()-Z
fBodyGyro-meanFreq()-X 
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-meanFreq()
fBodyBodyGyroMag-meanFreq()
fBodyBodyAccJerkMag-meanFreq() 
fBodyBodyGyroJerkMag-meanFreq()
could be defined as mentioned above.
tBodyAcc-std()-X  : "std()" represents the standard deviation value for the 
measurments.
The variables:
tBodyAcc-std()-Y 
tBodyAcc-std()-Z 
tGravityAcc-std()-X
tGravityAcc-std()-Y 
tGravityAcc-std()-Z
tBodyAccJerk-std()-X 
tBodyAccJerk-std()-Y 
tBodyAccJerk-std()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z       
tBodyGyroJerk-std()-X          
tBodyGyroJerk-std()-Y          
tBodyGyroJerk-std()-Z          
tBodyAccMag-std()              
tGravityAccMag-std()           
tBodyAccJerkMag-std()          
tBodyGyroMag-std()             
tBodyGyroJerkMag-std()         
fBodyAcc-std()-X               
fBodyAcc-std()-Y               
fBodyAcc-std()-Z               
fBodyAccJerk-std()-X           
fBodyAccJerk-std()-Y           
fBodyAccJerk-std()-Z       
fBodyGyro-std()-X              
fBodyGyro-std()-Y              
fBodyGyro-std()-Z              
fBodyAccMag-std()              
fBodyBodyAccJerkMag-std()      
fBodyBodyGyroMag-std()         
fBodyBodyGyroJerkMag-std()
could be defined as mentioned above.
This information is extracted from the file "features_info.txt" downloaded from
the data website.