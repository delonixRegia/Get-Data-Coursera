Getting and Cleaning Data Course Project README.md
====================================================================================

# How the run_analysis.R script works

The following points specify the details of the working of run_analysis.R script. 

- The script reads the required data from the textfiles from the "test" and "train" folders from the downloaded zip folder 
  and stores them into dataframes named "x_test", "y_test", "x_train", "y_train", "subject_test", "subject_train".

- Then, we combine the "x_train" and "x_test" dataframes vertically. 

- Similarly, we combine, the "subject_train", "subject_test" dataframes and  "y_train", "y_test" dataframes vertically and 
  change the column names for both the combined data frames. 

- Then, we extract only the measurements on the mean and SD for each measurement by pattern matching with grep().
  And, we get the column names of the combined dataframe from the features text file and change the column names.

- We merge the 3 dataframes vertically to get a "data_merge" dataframe.

- We then melt the dataframe using id variables "activity" and "subject" in melt() [from reshape2 package].

- Then, we get the average of each variable for each activity and each subject i.e. summary of the data using dcast() [from reshape2 package].

- We use descriptive activity names to appropriately name the activities in the data set. This is our final tidy dataset.



# For each record in our tidy dataset it is provided:

- Activity identifier 
- An identifier of the subject who carried out the experiment.
- A 66-feature vector with time and frequency domain variables. 
- Its activity label. 


