# get-data-course-project 
-This code is about the Coursera get data course project. 
-The project is about get data from a website and manipulate this data to gain a tidy form of data. 
-This data represents experiment that measure
Cartesian and angular acceleration using the Samsung galaxy s smart-phone.
-A full description of the experiment is available in the following link:
http://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones
-The original data is available in the following link:
https://d396qusza40orc.cloudfront.net/getdata%2fprojectfiles%2fuci%20har%20dataset.zip
-My code starts with downloading the data from the above link and unzip it so any individual when run my code can get the data from a-z without further processing . 
-During the process the code changes directories so no further errors exist. 
-The data has two major folders : train and test folders contain the experiment result data , the train data executed by21 individuals and the test data executed by other 9 individuals.
-My code ignores results came from "inertial signals" as it is not selected in the assignment.
-Train folder contains:
featers.txt <- include measurements which represents the experiment results and contain 561 measurements.
sunbject_train.txt <- include the id's of individuals (21)  who ran  the train experiment.
X_train.txt <- include the readings of 561 feature for 21 individuals.
y_train.txt <- include the activities carried out in the experiment, this activities are 6 activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,SITTING
,STANDING, LAYING coded with numbers from 1 to 6 respectively
-The same is for test folder:
subject_test.txt <- include the id's of individuals (9)  who ran  the test experiment.
X_test.txt <- include the readings of 561 feature for 9 individuals.
y_test.txt <- include the activities carried out in the experiment.
My code read and combined X_train and y_train in data frame, the same done for the X_test and y_test.
-The code made the column names for X_test and X_train with the names found in the features.txt file, then combined the train and test data frames into single data frame with object name “alldaset”.
-The code selecting the columns which include the mean() and std() functions into an extracted data frame with the “subject_ID” column and “activity_label” columns forming “alldasetm” data frame which
includes 10299 rows and 81 columns.
Renaming the “activity_label” column with descriptive names as found in the activity_labels.txt file.To get the mean of each measurements to the combined subject_ID and activity_label ; I used the (plyr) package to able to split the rows according to subject_ID column and  apply the mean function to the measurements resulting in tidy data frame includes 81 column and 180 rows called “alldasetti”.
Note: I considered the measurments which includes meanFreq() as a mean function according to its definition in the file “features_info.txt”.

