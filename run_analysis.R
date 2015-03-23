## This R script merges the UCI Human Activity Recognition test and training 
## data sets, and creates a tidy data set with averages by subject and activity
## for each mean and standard deviation measurement.

# requires dplyr package (tested under version 0.4.1)
library(dplyr)


## 1. Merge the training and the test sets to create one data set

# read test data
X.test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y.test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject.test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# read train data
X.train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y.train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject.train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# merge X, y, and subject data
test <- cbind(X.test, subject.test, y.test)
train <- cbind(X.train, subject.train, y.train)

# merge test and training data into a single data frame
data.all <- rbind(test, train)

# 561 features in total
# rename column 562 and 563 as "subject" and "activity"
names(data.all)[562] <- "subject"
names(data.all)[563] <- "activity"

## 2. Extracts only the measurements on the mean and standard deviation 
##    for each measurement.

# read feature names (561 features in total)
features <- read.table("./UCI HAR Dataset/features.txt")

# extract columns with a name including "mean()" or "std()"
features.mean.std <- filter(features, 
                            grepl("mean[(][)]", V2) | grepl("std[(][)]", V2))
data.mean.std <- select(data.all, c(features.mean.std$V1, 562, 563))


## 3. Use descriptive activity names to name the activities in the data set

# read activity labels
activity.labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# replace activity levels with activity names
data.mean.std$activity <- factor(data.mean.std$activity, 
                                 activity.labels$V1, 
                                 activity.labels$V2)


## 4. Label the data set with descriptive variable names 

# create feature names by replacing "-" with "." and "()" with ""
feature.names <- gsub("-", ".", features.mean.std$V2)
feature.names <- gsub("[(][)]", "", feature.names)

# rename columns for features
names(data.mean.std)[1:66] <- feature.names


## 5. Create a second, independent tidy data set with the average of each 
##    variable for each activity and each subject.

# create a summary data set by subject and activity
avg.mean.std <- data.mean.std %>% 
                group_by(subject, activity) %>% # group by subject, activity
                summarise_each(funs(mean)) # compute average for each group

# append ".avg" to the end of each feature varible name
# note that now the first two columns are subject and activity
names(avg.mean.std)[3:68] <- paste0(names(avg.mean.std)[3:68],".avg")

# write the tidy data set to a txt file
write.table(avg.mean.std, file = "HAR_tidy.txt", row.name = FALSE)