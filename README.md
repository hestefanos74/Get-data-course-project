# get-data-course-project 
-this code is about the coursera get data course project. 
-the project is about get data from a website and manipulate this data
to gain a tidy form of data. 
-this data represents experiement that measure
cartesian and angular acceleration using the samsung galaxy s smartphone.
-a full description of the experiment is available in the following link:
http://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones
-the original data is availabe in the following link:
https://d396qusza40orc.cloudfront.net/getdata%2fprojectfiles%2fuci%20har%20dataset.zip
-my code starts with downloading the data from the above link and unzip it so
any individual when run my code can get the data from a-z without further
processing i.e creating folder etc.., 
-during the process the code changes directories so no further errors exist. 
-the data has two major folders : train and test folders contain the experiment 
result data , the train data executed by21 individuals and the test data 
executed by other 9 individuals.
-my code ignores results came from "inertial signals" as it is not selected in 
the assignment.
-train folder contains:
featers.txt <- include measeurments which represents the experiment results and 
contain 556 measuments.
sunbject_train.txt <- include the id's of individulas (21)  who ran  the train
experiment.

 