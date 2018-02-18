setwd("C:/Users/amar_/Documents/Coursera/Getting and Cleaning Data/Week 4/Assignment")

##download data

library(data.table)
fileurl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./UCI HAR Dataset.zip')){
  download.file(fileurl,'./UCI HAR Dataset.zip', mode = 'wb')
  unzip("UCI HAR Dataset.zip", exdir = getwd())
}

##test

XTest<- read.table("UCI HAR Dataset/test/X_test.txt")
YTest<- read.table("UCI HAR Dataset/test/Y_test.txt")
SubjectTest <-read.table("UCI HAR Dataset/test/subject_test.txt")

##train

XTrain<- read.table("UCI HAR Dataset/train/X_train.txt")
YTrain<- read.table("UCI HAR Dataset/train/Y_train.txt")
SubjectTrain <-read.table("UCI HAR Dataset/train/subject_train.txt")

##feature/activity

features<-read.table("UCI HAR Dataset/features.txt")
activity<-read.table("UCI HAR Dataset/activity_labels.txt")

##merge

X<-rbind(XTest, XTrain)
Y<-rbind(YTest, YTrain)
Subject<-rbind(SubjectTest, SubjectTrain)

##mean/sd subset

index<-grep("mean\\(\\)|std\\(\\)", features[,2])
X<-X[,index]

##activity names

Y[,1]<-activity[Y[,1],2]

##descriptive names

names<-features[index,2]
names(X)<-names
names(Subject)<-"SubjectID"
names(Y)<-"Activity"
CleanedData<-cbind(Subject, Y, X)

##tidy data

CleanedData<-data.table(CleanedData)
TidyData <- CleanedData[, lapply(.SD, mean), by = 'SubjectID,Activity']
write.table(TidyData, file = "Tidy.txt", row.names = FALSE)
