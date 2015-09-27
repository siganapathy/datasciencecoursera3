#load all required libraries

library(dplyr)
library(plyr)

# read training data
activity_labels <- read.csv("activity_labels.txt",sep=" ",header = FALSE)
names(activity_labels) <- c("activity_code","activity_name")
training_set<-read.table("./train/X_train.txt")
training_labels <- read.table("./train/y_train.txt",header=FALSE)
training_labels <- training_labels$V1
subjects <- read.table("./train/subject_train.txt",header=FALSE)
subjects <- subjects$V1
features <- read.table("./features.txt",sep=" ",header=FALSE)
names(features) <- c("measure_code","measure_name")
names(training_set) <- features$measure_name
training_set$activity <- training_labels
training_set$subject <- subjects
print("loaded training data successfully")
# read test data

test_set<-read.table("./test/X_test.txt")
test_labels <- read.table("./test/y_test.txt",header=FALSE)
test_labels <- test_labels$V1
test_subjects <- read.table("./test/subject_test.txt",header=FALSE)
test_subjects <- test_subjects$V1
names(test_set) <- features$measure_name
test_set$activity <- test_labels
test_set$subject <- test_subjects
print("loaded test data successfully")

#merge train and test data
smartphone_readings <- rbind(training_set,test_set)
print("merged training and test data successfully")

#extract mean and sd
sm_cols <- colnames(smartphone_readings)
sm_cols <- gsub(" ","",sm_cols)
colnames(smartphone_readings) <- sm_cols 
sm_readings_mean <- smartphone_readings[grepl("mean",colnames(smartphone_readings))]
sm_readings_sd <- smartphone_readings[grepl("std",colnames(smartphone_readings))]
sm_readings_meansd <- cbind(sm_readings_mean,sm_readings_sd)
sm_readings_meansd <- cbind(sm_readings_meansd,smartphone_readings$activity,smartphone_readings$subject)
sm_readings_meansd <- rename(sm_readings_meansd,c("smartphone_readings$activity"="activity","smartphone_readings$subject"="subject"))
print("extracted mean and sd from measurements successfully")

#use descriptive activity names
sm_readings_meansd <- merge(sm_readings_meansd,activity_labels,by.x="activity",by.y="activity_code",all=TRUE)

#tidy data set
sm_readings_grps <- group_by(sm_readings_meansd,subject,activity_name)
sm_readings_summary <- summarise_each(sm_readings_grps,funs(mean))
print("created avg measurements successfully")

#provide readable variable names
sm_cols <- colnames(sm_readings_summary)
sm_cols <- gsub("[:():]","",sm_cols)
sm_cols <- gsub("Acc","Acceleration",sm_cols)
sm_cols <- gsub("Mag","Magnitude",sm_cols)
sm_cols <- gsub("std","meanOfSD",sm_cols)
colnames(sm_readings_summary) <- sm_cols
print("label names made more descriptive successfully")

#write tidy output to a file
write.table(sm_readings_summary,file="./tidy_data.txt",row.names = FALSE)
print("tidy data set written to output file tidy_data successfully")




