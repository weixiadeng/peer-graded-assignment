library(dplyr)

# Function "t2df" read "filename.txt" in "foldername",
# Return a data frame object to global environment,
# and assign filename to the data frame.

t2df <- function(foldername, filename){
    tmp <- read.table(paste(foldername, filename, sep = ""))
    assign(sub(".txt", "", filename), tmp, envir = .GlobalEnv)
    remove(tmp)
}

# Assign data folder path in the working directory

dataset <- "./UCI HAR Dataset/"
test  <- "./UCI HAR Dataset/test/"
train <- "./UCI HAR Dataset/train/"

###############################################################################

# Read, clean, and combine raw data in the train folder.
# All temporary data frames are removed.
# All data in the train folder saved as data frame X_train

t2df(dataset, "activity_labels.txt")
colnames(activity_labels) <- c("activity_code", "activity_labels")

t2df(dataset, "features.txt")
t2df(train, "X_train.txt")
colnames(X_train) <- features[,2]
X_train <- select(X_train, contains(c("mean()", "std()")))

t2df(train, "y_train.txt")
colnames(y_train) <- "y_train"

t2df(train, "subject_train.txt")
colnames(subject_train) <- "subject_id"

X_train <- cbind(subject_train, y_train, X_train)
X_train <- merge(activity_labels, X_train,
                 by.x = "activity_code", by.y = "y_train")

train_test_labels <- data.frame(train_test_labels = "train")
X_train <- merge(train_test_labels, X_train)

remove(activity_labels, features, subject_train, y_train, train_test_labels)

###############################################################################

# Read, clean, and combine raw data in the test folder.
# All temporary data frames are removed.
# All data in the test folder saved as data frame X_test

t2df(dataset, "activity_labels.txt")
colnames(activity_labels) <- c("activity_code", "activity_labels")

t2df(dataset, "features.txt")
t2df(test, "X_test.txt")
colnames(X_test) <- features[,2]
X_test <- select(X_test, contains(c("mean()", "std()")))

t2df(test, "y_test.txt")
colnames(y_test) <- "y_test"

t2df(test, "subject_test.txt")
colnames(subject_test) <- "subject_id"

X_test <- cbind(subject_test, y_test, X_test)
X_test <- merge(activity_labels, X_test,
                by.x = "activity_code", by.y = "y_test")

train_test_labels <- data.frame(train_test_labels = "test")
X_test <- merge(train_test_labels, X_test)

remove(activity_labels, features, subject_test, y_test, train_test_labels)

###############################################################################

# Merges the training "X_train" and the test sets "X_test",
# to create one data set "finaldf"
# All temporary data frames are removed.

finaldf <- rbind(X_train, X_test)
finaldf$train_test_labels <- as.factor(finaldf$train_test_labels)
finaldf$activity_labels <- as.factor(finaldf$activity_labels)
remove(X_train, X_test)

write.table(finaldf, "final_data_set.txt", row.name = FALSE)

###############################################################################

# Creates a second, independent tidy data set with the average of  
# each variable for each activity and each subject based on "finaldf"
# Save the results as "seconddf"

seconddf <- finaldf %>%
    group_by(train_test_labels, subject_id, activity_code, activity_labels) %>%
    summarise(across("tBodyAcc-mean()-X":"fBodyBodyGyroJerkMag-std()", mean))

write.table(seconddf, "second_data_set.txt", row.name = FALSE)

################################ End of Program ###############################
