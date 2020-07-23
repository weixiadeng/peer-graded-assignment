# CodeBook

================================================================================

##File name:
final_data_set.txt

##File description: 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set.

##Number of obs:
10299

##Number of variables:
70

##Variable Description:
$ train_test_labels          : Factor w/ 2 levels
                               test, train
                               
$ activity_code              : int
                               1: WALKING
                               2: WALKING_UPSTAIRS
                               3: WALKING_DOWNSTAIRS
                               4: SITTING
                               5: STANDING
                               6: LAYING
                               
$ activity_labels            : Factor w/ 6 levels
                               LAYING, SITTING, STANDING, WALKING,
                               WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
                               
$ subject_id                 : int
                               ID of 30 volunteers, range is from 1 to 30.
                               
$ tBodyAcc-mean()-X          : num  
$ tBodyAcc-mean()-Y          : num  
$ tBodyAcc-mean()-Z          : num  
$ tGravityAcc-mean()-X       : num  
$ tGravityAcc-mean()-Y       : num  
$ tGravityAcc-mean()-Z       : num  
$ tBodyAccJerk-mean()-X      : num  
$ tBodyAccJerk-mean()-Y      : num  
$ tBodyAccJerk-mean()-Z      : num  
$ tBodyGyro-mean()-X         : num 
$ tBodyGyro-mean()-Y         : num  
$ tBodyGyro-mean()-Z         : num 
$ tBodyGyroJerk-mean()-X     : num  
$ tBodyGyroJerk-mean()-Y     : num  
$ tBodyGyroJerk-mean()-Z     : num  
$ tBodyAccMag-mean()         : num 
$ tGravityAccMag-mean()      : num 
$ tBodyAccJerkMag-mean()     : num  
$ tBodyGyroMag-mean()        : num  
$ tBodyGyroJerkMag-mean()    : num 
$ fBodyAcc-mean()-X          : num 
$ fBodyAcc-mean()-Y          : num  
$ fBodyAcc-mean()-Z          : num 
$ fBodyAccJerk-mean()-X      : num  
$ fBodyAccJerk-mean()-Y      : num 
$ fBodyAccJerk-mean()-Z      : num 
$ fBodyGyro-mean()-X         : num  
$ fBodyGyro-mean()-Y         : num  
$ fBodyGyro-mean()-Z         : num 
$ fBodyAccMag-mean()         : num  
$ fBodyBodyAccJerkMag-mean() : num  
$ fBodyBodyGyroMag-mean()    : num 
$ fBodyBodyGyroJerkMag-mean(): num  
$ tBodyAcc-std()-X           : num  
$ tBodyAcc-std()-Y           : num  
$ tBodyAcc-std()-Z           : num  
$ tGravityAcc-std()-X        : num  
$ tGravityAcc-std()-Y        : num  
$ tGravityAcc-std()-Z        : num  
$ tBodyAccJerk-std()-X       : num 
$ tBodyAccJerk-std()-Y       : num  
$ tBodyAccJerk-std()-Z       : num  
$ tBodyGyro-std()-X          : num  
$ tBodyGyro-std()-Y          : num 
$ tBodyGyro-std()-Z          : num  
$ tBodyGyroJerk-std()-X      : num 
$ tBodyGyroJerk-std()-Y      : num  
$ tBodyGyroJerk-std()-Z      : num  
$ tBodyAccMag-std()          : num  
$ tGravityAccMag-std()       : num  
$ tBodyAccJerkMag-std()      : num  
$ tBodyGyroMag-std()         : num  
$ tBodyGyroJerkMag-std()     : num  
$ fBodyAcc-std()-X           : num  
$ fBodyAcc-std()-Y           : num  
$ fBodyAcc-std()-Z           : num  
$ fBodyAccJerk-std()-X       : num  
$ fBodyAccJerk-std()-Y       : num  
$ fBodyAccJerk-std()-Z       : num  
$ fBodyGyro-std()-X          : num  
$ fBodyGyro-std()-Y          : num  
$ fBodyGyro-std()-Z          : num  
$ fBodyAccMag-std()          : num 
$ fBodyBodyAccJerkMag-std()  : num  
$ fBodyBodyGyroMag-std()     : num  
$ fBodyBodyGyroJerkMag-std() : num 

##Note:
Measurements are normalized and bounded within [-1,1].

================================================================================

##File name:
second_data_set.txt

##File description: 
To the previous final_data_set.txt, summarize the average of each variable for
each activity and each subject.

##Number of obs:
180

##Number of variables:
70

##Variable Description:
$ train_test_labels          : Factor w/ 2 levels
                               test, train
                               
$ subject_id                 : int
                               ID of 30 volunteers, range is from 1 to 30.
                               
$ activity_code              : int
                               1: WALKING
                               2: WALKING_UPSTAIRS
                               3: WALKING_DOWNSTAIRS
                               4: SITTING
                               5: STANDING
                               6: LAYING
                               
$ activity_labels            : Factor w/ 6 levels
                               LAYING, SITTING, STANDING, WALKING,
                               WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
                               
$ tBodyAcc-mean()-X          : num  
$ tBodyAcc-mean()-Y          : num  
$ tBodyAcc-mean()-Z          : num  
$ tGravityAcc-mean()-X       : num  
$ tGravityAcc-mean()-Y       : num  
$ tGravityAcc-mean()-Z       : num  
$ tBodyAccJerk-mean()-X      : num  
$ tBodyAccJerk-mean()-Y      : num  
$ tBodyAccJerk-mean()-Z      : num  
$ tBodyGyro-mean()-X         : num 
$ tBodyGyro-mean()-Y         : num  
$ tBodyGyro-mean()-Z         : num 
$ tBodyGyroJerk-mean()-X     : num  
$ tBodyGyroJerk-mean()-Y     : num  
$ tBodyGyroJerk-mean()-Z     : num  
$ tBodyAccMag-mean()         : num 
$ tGravityAccMag-mean()      : num 
$ tBodyAccJerkMag-mean()     : num  
$ tBodyGyroMag-mean()        : num  
$ tBodyGyroJerkMag-mean()    : num 
$ fBodyAcc-mean()-X          : num 
$ fBodyAcc-mean()-Y          : num  
$ fBodyAcc-mean()-Z          : num 
$ fBodyAccJerk-mean()-X      : num  
$ fBodyAccJerk-mean()-Y      : num 
$ fBodyAccJerk-mean()-Z      : num 
$ fBodyGyro-mean()-X         : num  
$ fBodyGyro-mean()-Y         : num  
$ fBodyGyro-mean()-Z         : num 
$ fBodyAccMag-mean()         : num  
$ fBodyBodyAccJerkMag-mean() : num  
$ fBodyBodyGyroMag-mean()    : num 
$ fBodyBodyGyroJerkMag-mean(): num  
$ tBodyAcc-std()-X           : num  
$ tBodyAcc-std()-Y           : num  
$ tBodyAcc-std()-Z           : num  
$ tGravityAcc-std()-X        : num  
$ tGravityAcc-std()-Y        : num  
$ tGravityAcc-std()-Z        : num  
$ tBodyAccJerk-std()-X       : num 
$ tBodyAccJerk-std()-Y       : num  
$ tBodyAccJerk-std()-Z       : num  
$ tBodyGyro-std()-X          : num  
$ tBodyGyro-std()-Y          : num 
$ tBodyGyro-std()-Z          : num  
$ tBodyGyroJerk-std()-X      : num 
$ tBodyGyroJerk-std()-Y      : num  
$ tBodyGyroJerk-std()-Z      : num  
$ tBodyAccMag-std()          : num  
$ tGravityAccMag-std()       : num  
$ tBodyAccJerkMag-std()      : num  
$ tBodyGyroMag-std()         : num  
$ tBodyGyroJerkMag-std()     : num  
$ fBodyAcc-std()-X           : num  
$ fBodyAcc-std()-Y           : num  
$ fBodyAcc-std()-Z           : num  
$ fBodyAccJerk-std()-X       : num  
$ fBodyAccJerk-std()-Y       : num  
$ fBodyAccJerk-std()-Z       : num  
$ fBodyGyro-std()-X          : num  
$ fBodyGyro-std()-Y          : num  
$ fBodyGyro-std()-Z          : num  
$ fBodyAccMag-std()          : num 
$ fBodyBodyAccJerkMag-std()  : num  
$ fBodyBodyGyroMag-std()     : num  
$ fBodyBodyGyroJerkMag-std() : num 

##Note:
Measurements are normalized and bounded within [-1,1].