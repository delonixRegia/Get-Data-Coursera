library(reshape2)
########## Get datasets 

##### Get testing data from text files 
setwd("C:/Users/roadrunner/Desktop/DS Specialization/getdata_pa/test");
subject_test <- read.table("subject_test.txt", sep="", header=FALSE);
x_test <- read.table("X_test.txt", sep="", header=FALSE, stringsAsFactors=FALSE);
y_test <- read.table("Y_test.txt", sep="", header=FALSE);

##### Get training data from text files
setwd("C:/Users/roadrunner/Desktop/DS Specialization/getdata_pa/train");
subject_train <- read.table("subject_train.txt", sep="", header=FALSE);
x_train <- read.table("X_train.txt", sep="", header=FALSE, stringsAsFactors=FALSE);
y_train <- read.table("Y_train.txt", sep="", header=FALSE);

##### Get features data and activity labels data from text files
setwd("C:/Users/roadrunner/Desktop/DS Specialization/getdata_pa");
features <- read.table("features.txt", sep="", header=FALSE, stringsAsFactors=FALSE);
activity_labels <- read.table("activity_labels.txt", sep="", header=FALSE, stringsAsFactors=FALSE);
colnames(activity_labels) <- c("activity", "activity_name");

########## Merge the datasets 

##### Merge the x_train and x_test tables
x <- rbind(x_train, x_test);

##### Merge the subject_train and subject_test tables and rename the column names of the data set 
subject <- rbind(subject_train, subject_test);
colnames(subject) <- c("subject");

##### Merge the y_train and y_test tables and rename the column names of the data set 
y <- rbind(y_train, y_test);
colnames(y) <- c("activity");

##### Extract only the measurements on the mean and SD for each measurement and then change the names of columns in the dataset
colnames(x) <- features$V2;
x <- x[, grep("-mean\\(\\)|-std\\(\\)", colnames(x))];
colnames(x) <- gsub("\\(\\)", "", colnames(x));

##### Merge all the three datasets 
data_merge <- data.frame(x, subject, y);

##### Melt the merged dataset on "activity" and "subject" using melt() 
melted_data <- melt(data_merge, id=c("activity", "subject"));

##### Create an independent tidy data set with the average of each variable for each activity and each subject
variable_means <- dcast(melted_data, activity+subject ~ variable, mean);
labeled_data <- merge.data.frame(variable_means, activity_labels, by="activity", all.x=TRUE);
tidy_dataset <- labeled_data;

##### Write the tidy dataset to a text file
setwd("C:/Users/roadrunner/Desktop/DS Specialization/getdata_pa");
write.table(tidy_dataset, file="get_data_PA1_result.txt", row.names=TRUE);

str(tidy_dataset)