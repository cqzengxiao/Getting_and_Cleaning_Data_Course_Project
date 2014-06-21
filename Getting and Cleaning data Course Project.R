X_test <- read.table("~/UCI HAR Dataset/test/X_test.txt", quote="\"")
y_test <- read.table("~/UCI HAR Dataset/test/y_test.txt", quote="\"")
subject_test <- read.table("~/UCI HAR Dataset/test/subject_test.txt", quote="\"")
test <- cbind(X_test, y_test, subject_test)

X_train <- read.table("~/UCI HAR Dataset/train/X_train.txt", quote="\"")
y_train <- read.table("~/UCI HAR Dataset/train/y_train.txt", quote="\"")
subject_train <- read.table("~/UCI HAR Dataset/train/subject_train.txt", quote="\"")
train <- cbind(X_train, y_train, subject_train)

master.data <- rbind(test, train)
features <- read.table("~/UCI HAR Dataset/features.txt", quote="\"")
names(master.data) <- features$V2
colnames(master.data)[562] <- "activity"
colnames(master.data)[563] <- "subject"

data <- master.data[,grep("mean|std|activity|subject", colnames(master.data))]

data$activity[data$activity == 1] <- "WALKING"
data$activity[data$activity == 2] <- "WALKING_UPSTAIRS"
data$activity[data$activity == 3] <- "WALKING_DOWNSTAIRS"
data$activity[data$activity == 4] <- "SITTING"
data$activity[data$activity == 5] <- "STANDING"
data$activity[data$activity == 6] <- "LAYING"

library(reshape2)
meltData <- melt(data, id=c("activity", "subject"))

library(plyr)
result <- ddply(meltData,.(activity,subject,variable),summarise,average=mean(value))

write.csv(result, "Cleaned_Smartphone_Dataset.csv")