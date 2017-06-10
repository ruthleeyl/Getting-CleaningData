#Getting & Cleaning the Data Week 4 Assignment

getwd()
setwd(dir = "/Users/User/Documents/data")

#Step1: Reading and Merging the Training and Test Data Sets to create One Data Set
train<-read.table("X_train.txt", header=FALSE,na.strings="Not Available", stringsAsFactors = FALSE)
str(train)
subtrain<-read.table("subject_train.txt") 
names(subtrain)<-"SubjectID"
activitytrain<-read.table("y_train.txt")
str(activitytrain)
dim(activitytrain)
names(activitytrain)<-"ActivityID"
features<-read.table("features.txt")
names(train)<-features$V2
traindata<-cbind(subtrain,activitytrain,train)
dim(traindata)


test<-read.table("X_test.txt", header=FALSE,na.strings="Not Available", stringsAsFactors = FALSE)
str(test)
subtest<-read.table("subject_test.txt") 
names(subtest)<-"SubjectID"

activitytest<-read.table("y_test.txt")
names(activitytest)<-"ActivityID"
names(test)<-features$V2
testdata<-cbind(subtest,activitytest,test)
dim(testdata)

#Get data values from the respective Training and Test Data Set
#to serve as checks for the subsequent mergedData
unique(subtest)
unique(subtrain)
table(subtest)
table(subtrain)
table(activitytest)
table(activitytrain)

#Merging the Training and Test Data sets
mergedData<-rbind(traindata,testdata)
dim(mergedData)

##Step 2: Extracting only the Measurements on the Mean and Standard Deviation for Each Measurement
library(dplyr)
#Exploring the variable names
#df<-grep ("mean()",names(mergedData),value=TRUE)
#meanindex<-table(grep ("mean()",names(mergedData)))
#sdindex<-table(grep ("std()",names(mergedData)))
#meanindexID<-names(meanindex)
#sdindexID<-names(sdindex)
#length(meanindexID)
#length(sdindexID)

subset<-mergedData[ , grepl("SubjectID|ActivityID|mean|std", names(mergedData))]
sort<-arrange(subset,SubjectID,ActivityID)
dim(sort)


##Step 3: Using descriptive activity names to name the activities in the data set
activityname<-read.table("activity_labels.txt") 

x <-sort$ActivityID 
z<-activityname$V2
y<-activityname$V1

sort$ActivityID<-z[match(x, y)]

##Step 4: Labeling the Data Set with Descriptive Variable Names
Descriptive<-gsub("Acc","Accelerometer",names(sort))
Descriptive<-gsub("Gyro","Gyroscope",Descriptive)
Descriptive<-gsub("Jerk","JerkSignals",Descriptive)
Descriptive<-gsub("Mag","Magnitude",Descriptive)
Descriptive<-gsub("BodyBody","Body",Descriptive)
Descriptive<-gsub("^t","timedomain", Descriptive)
Descriptive<-gsub("^f","frequencydomain",Descriptive)
Descriptive<-gsub("-","_",Descriptive)
Descriptive
names(sort)<-Descriptive
names(sort)

#Alternative method
#library(qdap)
#Example of using multisub is as follows:
#Descriptive<-multigsub(c("Acc", "Gyro"), c("Accelerometer", "Gyroscope"), names(sort))

##Step 5: Creating a Tidy Data Set with the Average of Each Variable for Each Activity and Each Subject 

#Check if the data set contains any NA/Inf values in some column before calculating the average of each variable
check<-apply(sort, 2, function(x) any(is.na(x)|is.infinite(x)))
table(check)
ave<-aggregate(. ~ SubjectID+ActivityID, data = sort, FUN = function(x) c(average = mean(x) ) )
dataset<-arrange(ave,SubjectID,ActivityID)
dim(dataset)
str(dataset)
names(dataset)

#write.csv(dataset, "/Users/User/Documents/data/tidydata.csv")
write.table(dataset,"/Users/User/Documents/data/tidydata.txt")
