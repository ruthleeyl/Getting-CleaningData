# Getting-CleaningData
Project to Clean a Data Set

(1) My first step is to understand the dataset - the purpose it is collected for, the definition of the variables, its various dimensions and characteristics.

This understanding helps me to 

(a) Prepare the Training and Test data sets for merging. For instance, I have added the SubjectID, ActivityID and variable names (from the subject_train/test.txt, y_train/test.txt and features.txt respectively) so that the Training and Test data sets are complete for merging; and

(b) Check whether the Merged Data Set is merged correctly, given information on the dimension and characteristics of the Training and Test Data Sets.

I then proceed to merge the Training and Test Data Sets and do the necessary checks.

(2) Before I extract the measurements on the mean and standard deviation for each measurement, I find it is important to explore what the variable names are. This is to ensure that I do not miss out the measurements to be extracted.

"Grepl" function is used to extract the measurements on the mean and standard deviation.
The dataset is also sorted according to SubjectID, followed by ActivityID.

(3) The activity_labels.txt file is used to name the activities in the dataset.

(4) "Gsub" function is used to replace the acronyms with descriptives. There is an alternative method of using multigsub in the qdap package to make multiple replacements. I have highlighted an example for reference.

(5) "Aggregate" function is used to create a dataset with the average of each variable for each Subject and Activity.

The dataset is arranged by SubjectID, followed by Activity.

The dataset is then exported as a csv file, using write.csv. I find that a csv file is more readable for datasets and hence decided against exporting it as a text file.

Before I conclude, I must say that this Assignment is a good exercise to apply what we have learnt from this Course.
