#
# Program:      run_analysis.R
#
# Description:
#
#               The Code Processes The UCI HAR Dataset Into A Summary
#               Dataset Of Averages For The Mean And Standard Deviation
#               Variables In The UCI HAR Dataset. The Summary Data Frame
#               Is Comprised Of Observations For 30 Subjects Performing
#               6 Activities Across 66 Motion Means And Standard Deviations
#               Of Interest.
#
#               The Summary Data Set Is Comprised Of 11,880 Observations
#               (30 x 6 x 66 = 11,880) Of Four Variables:
#               Subject, Activity, Motion, Average.
#
# Coursera:     Data Sciences => Getting And Cleaning Data Course Project
# Author:       Marc Genty
# Last Updated: 16Dec14
#

# Load Required Packages:
install.packages("dplyr")
library(dplyr)
install.packages("reshape2")
library(reshape2)

# Create The Working Directory If It Does Not Already Exist:
if (!file.exists("projdata")) {
    dir.create("projdata")
}

# Switch Into The Working Directory:
setwd("./projdata/")

# Download The Data Set:
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="projdata.zip", method="curl")

# Unzip The Files:
unzip("projdata.zip")

# Remove ZIP File If Unzip Completed Successfully:
if (file.exists("UCI HAR Dataset")) {
    file.remove("projdata.zip")
}

# Set stringsAsFactors Option Globally:
options(stringsAsFactors=FALSE)

# ==========================================================================
# Process Files From Top Level UCI HAR Dataset Directory:
# ==========================================================================

# Read Features And Activity Labels:
featuresDF <- read.table("UCI HAR Dataset/features.txt")
names(featuresDF) <- c("f.id", "feature")

activitiesDF <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activitiesDF) <- c("a.id", "activity")

# ==========================================================================
# Process Files From The test Subdirectory:
# ==========================================================================

# Read The Test Data:
SubTestDF <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(SubTestDF) <- c("subject")

YTestDF <- read.table("UCI HAR Dataset/test/y_test.txt")
names(YTestDF) <- c("a.id")

XTestDF <- read.table("UCI HAR Dataset/test/X_test.txt")

# Add Activity Labels To YTestDF Data Frame:
activityName <- function(x) {activitiesDF$activity[x]}
YTestDF <- as.data.frame(sapply(YTestDF, activityName))
names(YTestDF) <- c("activity")

# Add Row Names (Feature Names) To XTestDF Data Frame:
names(XTestDF) <- featuresDF$feature

# Build Full Test Data Frame:
TestDF <- SubTestDF
TestDF <- cbind(TestDF, activity = YTestDF$activity)
TestDF <- cbind(TestDF, XTestDF)

# ==========================================================================
# Process Files From The train Subdirectory:
# ==========================================================================

# Read The Train Data:
SubTrainDF <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(SubTrainDF) <- c("subject")

YTrainDF <- read.table("UCI HAR Dataset/train/y_train.txt")
names(YTrainDF) <- c("a.id")

XTrainDF <- read.table("UCI HAR Dataset/train/X_train.txt")

# Add Activity Labels To YTrainDF Data Frame:
activityName <- function(x) {activitiesDF$activity[x]}
YTrainDF <- as.data.frame(sapply(YTrainDF, activityName))
names(YTrainDF) <- c("activity")

# Add Row Names (Feature Names) To XTrainDF Data Frame:
names(XTrainDF) <- featuresDF$feature

# Build Full Train Data Frame:
TrainDF <- SubTrainDF
TrainDF <- cbind(TrainDF, activity = YTrainDF$activity)
TrainDF <- cbind(TrainDF, XTrainDF)

# ==========================================================================
# Join Everything Together Into Final Full Data Frame:
# ==========================================================================

# Combine Test & Train Into Single Data Frame:
UciHarDF <- TestDF
UciHarDF <- rbind(UciHarDF, TrainDF)

# Get Rid Of Working Variables To Save Memory:
rm("TestDF", "TrainDF", "XTestDF", "XTrainDF", "YTestDF", "YTrainDF")
rm("SubTestDF", "SubTrainDF", "activitiesDF", "featuresDF")

# Create Vector Of Indexes For The Mean And STD Columns In The X Files:
XCols <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 
           240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 
           529:530, 542:543)

# Offset The XCols Values To Account For Subject & Activity Columns (+2):
Offset <- 2
XCols <- XCols + Offset

# Create Final Vector With All Columns Of Interest:
ColsOfInterest <- c(1, 2, XCols)

# Subset The Full Data Frame Into Just The Columns Of Interest:
MeanStdDF <- UciHarDF[, ColsOfInterest]

# Clean Up The Column Names:
names(MeanStdDF) <- gsub("-",     "",      names(MeanStdDF))
names(MeanStdDF) <- sub("[(][)]", "",      names(MeanStdDF))
names(MeanStdDF) <- sub("^t",     "time",  names(MeanStdDF))
names(MeanStdDF) <- sub("^f",     "freq",  names(MeanStdDF))
names(MeanStdDF) <- sub("std",    "Std",   names(MeanStdDF))
names(MeanStdDF) <- sub("mean",   "Mean",  names(MeanStdDF))

# Convert Activities To Lower Case:
MeanStdDF$activity <- tolower(MeanStdDF$activity)

# ==========================================================================
# Tidy The Data Frame And Compute The Averages:
# ==========================================================================

# Melt The Data Frame:
meltedMeanStdDF <- melt(MeanStdDF, id=c("subject", "activity"), 
                        variable.name="motion", value.name="value")

# Convert Data Frame Into A tbl_df Grouped By Subject & Activity:
MeanStdTbDF <- group_by(meltedMeanStdDF, subject, activity, motion)

# Compute The Averages:
AvgMeanStdTbDF <- summarise(MeanStdTbDF, average=mean(value))

# Save Back Into A Normal Data Frame:
tidyAvgMeanStdDF <- ungroup(AvgMeanStdTbDF)

# ==========================================================================
# Output The Final Processed UCI HAR Dataset:
# ==========================================================================

# Write Out The Final Dataset:
write.csv(tidyAvgMeanStdDF, file="UCI-HAR-Mean-Std-Averages.csv", row.names=FALSE)
write.table(tidyAvgMeanStdDF, file="UCI-HAR-Mean-Std-Averages.txt", row.name=FALSE)

# That's It!
