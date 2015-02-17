## Download the  zipped folder from the web.
fileUrl <-  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dir.create("Get data project")
projectZip <- download.file(fileUrl, destfile = "./Get data project/UCI HAR Dataset.zip")

## Extract files from the zip folder.
unzip("UCI HAR Dataset.zip")
## Change working directory to "train" folder.
setwd("./UCI HAR Dataset")
featr<- read.csv("features.txt", sep = "", header = FALSE)
setwd("./train")
## Reading and combining "X_train", "Y_train" and "subject_train" files.
xtr <- read.csv("X_train.txt", sep = "", header = FALSE)
colnames(xtr) <- featr$V2
ytr <- read.csv("Y_train.txt", sep = "", header = FALSE)
colnames(ytr) <- "activity_label"
sutr <- read.csv("subject_train.txt", sep = "", header = FALSE)
colnames(sutr) <- "subject_ID"
trdaset <- cbind(sutr, ytr, xtr)
## Change working directory to "test" folder.
setwd("../")
setwd("./test")
## Set working directory to "UCI HAR Dataset" folder.
setwd("../")
featre<- read.csv("features.txt", sep = "", header = FALSE)
## Set working directory to "test" folder.
## Reading and combining "X_test", "Y_test" and "subject_test" files.
setwd("./test")
xte <- read.csv("X_test.txt", sep = "", header = FALSE)
colnames(xte) <- featre$V2
yte <- read.csv("Y_test.txt", sep = "", header = FALSE)
colnames(yte) <- paste("activity_label")
sute <- read.csv("subject_test.txt", sep = "", header = FALSE)
colnames(sute) <- "subject_ID"
tedaset <- cbind(sute,yte, xte)
## Combing the "train" and "test" datasets.
alldaset <- rbind(trdaset, tedaset)
## Select columns which have the mean and standrd deviation from the dataset
allmean <- grep("mean()", colnames(alldaset))
allstd <- grep("std()", colnames(alldaset))
## Extract the columns from the data set for mean and std values.
alldasetm <- alldaset[ , c(1, 2, allmean, allstd)]
## Rename "activity_label" column names with a descriptive names.
alldasetm$activity_label[alldasetm$activity_label == 1] <- "WALKING"
alldasetm$activity_label[alldasetm$activity_label == 2] <- "WALKING_UPSTAIRS"
alldasetm$activity_label[alldasetm$activity_label == 3] <- "WALKING_DOWNSTAIRS"
alldasetm$activity_label[alldasetm$activity_label == 4] <- "SITTING"
alldasetm$activity_label[alldasetm$activity_label == 5] <- "STANDING"
alldasetm$activity_label[alldasetm$activity_label == 6] <- "LAYING"
## Attaching "plyr" package to R 
library(plyr)
## Create a tidy data contains the mean of each variable to the combination
## of subject_ID and activity_label.
alldasetti <- ddply(alldasetm, .(subject_ID, activity_label), function (x)colMeans(x[,3:81]))