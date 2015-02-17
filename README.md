# Get-data-course-project #This code is about the Coursera get data course
project. 
#The project is about get data from a website and manipulate this data
to gain a tidy form of data. 
#This data represents experiement that measure
cartesian and angular acceleration using the Samsung Galaxy S smartphone.
#A full description of the experiment is available in the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#The original data is availabe in the following link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#My code starts with downloading the data from the above link and unzip it so
any individual when run my code can get the data from A-Z without further
processing i.e Creating folder etc.., 
#During the process the code changes directories so no further errors exist. 
# The data has two major folders : train and test folders contain the experiment 
result data , the train data executed by21 individuals and the test data 
executed by other 9 individuals.
# My code ignores results came from "Inertial signals" as it is not selected in 
the assignment.
# Train folder contains:
featers.txt <- include measeurments which represents the experiment results and 
contain 556 measuments.
sunbject_train.txt <- include the ID's of individulas (21)  who ran  the train
experiment.

 