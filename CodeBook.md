--
Title: "Codebook for Assignment 4"
Author: "Ruth Lee"
Date: "11 June 2017"
output:tidydata.txt
---

## Project Description
To create a tidy dataset for subsequent analysis

(A) Study design and data processing

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

(B) Collection of the raw data

The time domain raw signals from the accelerometer and gyroscope in 3-axial raw signals in the X, Y and Z directions were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signal. The magnitude of these three-dimensional signals were also calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals. These were recorded and indicated as frequency domain  signals. 

The set of variables that were estimated from these signals are: 

(C) Creating the tidy datafile

(i) Guide to create the tidy data file

Description on how to create the tidy data file:

Ensure that:
1.	Each variable forms a column
2.	Each observation forms a row
3.	Each table/file stores data about one kind of observation


(D) Cleaning of the data

Checks were done to ensure that each variable forms a column, each observation forms a row and that each table stores data about one kind observation. 

The Training and Test data sets are merged and labeled by their descriptive variable names, and each observation is labeled by its respective Subject ID (1 to 30) for each Activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 
As there are no NA/Infinity values, I proceed to find the average of each variable for each subject and each activity. 
Please refer to README.md for greater detail in the data clearning processs. 

(E) Description of the variables in the tidydata.txt file

(1) Dimensions:
(a)There are 180 observations (30 Subjects for each of the 6 Activities) 
(b)There are 81 columns: SubjectID , ActivityID and the 79 mean and standard deviation variables with details as follows:

 [1] "SubjectID"   -1 to 30, representing each of the 30 volunteers                                                   
 [2] "ActivityID"  -WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING                                            
 [3] "timedomainBodyAccelerometer_mean()_X" - mean of the time domain body accelerometer signals in the X direction                     
 [4] "timedomainBodyAccelerometer_mean()_Y" - mean of the time domain body accelerometer signals in the Y direction                     
 [5] "timedomainBodyAccelerometer_mean()_Z" - mean of the time domain body accelerometer signals in the Z direction                     
 [6] "timedomainBodyAccelerometer_std()_X"  - std of the time domain body accelerometer signals in the X direction                       
 [7] "timedomainBodyAccelerometer_std()_Y"  - std of the time domain body accelerometer signals in the Y direction                       
 [8] "timedomainBodyAccelerometer_std()_Z"  - std of the time domain body accelerometer signals in the X direction                       
 [9] "timedomainGravityAccelerometer_mean()_X"  - mean of the time domain gravity accelerometer signals in the X direction               
[10] "timedomainGravityAccelerometer_mean()_Y"  - mean of the time domain gravity accelerometer signals in the Y direction               
[11] "timedomainGravityAccelerometer_mean()_Z"  - mean of the time domain gravity accelerometer signals in the Z direction               
[12] "timedomainGravityAccelerometer_std()_X"  - std of the time domain gravity accelerometer signals in the X direction                 
[13] "timedomainGravityAccelerometer_std()_Y"  - std of the time domain gravity accelerometer signals in the Y direction                 
[14] "timedomainGravityAccelerometer_std()_Z"  - std of the time domain gravity accelerometer signals in the Z direction                 
[15] "timedomainBodyAccelerometerJerkSignals_mean()_X" - mean of the time domain body accelerometer jerk signals in the X direction     
[16] "timedomainBodyAccelerometerJerkSignals_mean()_Y" - mean of the time domain body accelerometer jerk signals in the Y direction     
[17] "timedomainBodyAccelerometerJerkSignals_mean()_Z" - mean of the time domain body accelerometer jerk signals in the Z direction     
[18] "timedomainBodyAccelerometerJerkSignals_std()_X"  - std of the time domain body accelerometer jerk signals in the X direction       
[19] "timedomainBodyAccelerometerJerkSignals_std()_Y"  - std of the time domain body accelerometer jerk signals in the Y direction       
[20] "timedomainBodyAccelerometerJerkSignals_std()_Z"  - std of the time domain body accelerometer jerk signals in the Z direction       
[21] "timedomainBodyGyroscope_mean()_X"    - mean of the time domain body gyroscope signals in the X direction                           
[22] "timedomainBodyGyroscope_mean()_Y"    - mean of the time domain body gyroscope signals in the Y direction                          
[23] "timedomainBodyGyroscope_mean()_Z"    - mean of the time domain body gyroscope signals in the Z direction                           
[24] "timedomainBodyGyroscope_std()_X"     - std of the time domain body gyroscope signals in the X direction                          
[25] "timedomainBodyGyroscope_std()_Y"     - std of the time domain body gyroscope signals in the Y direction                           
[26] "timedomainBodyGyroscope_std()_Z"     - std of the time domain body gyroscope signals in the Z direction                           
[27] "timedomainBodyGyroscopeJerkSignals_mean()_X" - mean of the time domain body gyroscope jerk signals in the X direction             
[28] "timedomainBodyGyroscopeJerkSignals_mean()_Y" - mean of the time domain body gyroscope jerk signals in the Y direction             
[29] "timedomainBodyGyroscopeJerkSignals_mean()_Z" - mean of the time domain body gyroscope jerk signals in the Z direction             
[30] "timedomainBodyGyroscopeJerkSignals_std()_X"  - std of the time domain body gyroscope jerk signals in the X direction               
[31] "timedomainBodyGyroscopeJerkSignals_std()_Y"  - std of the time domain body gyroscope jerk signals in the Y direction               
[32] "timedomainBodyGyroscopeJerkSignals_std()_Z"  - std of the time domain body gyroscope jerk signals in the Z direction               
[33] "timedomainBodyAccelerometerMagnitude_mean()" - mean of the magnitude time domain body accelerometer signals    
[34] "timedomainBodyAccelerometerMagnitude_std()"  - std of the magnitude time domain body accelerometer signals   
[35] "timedomainGravityAccelerometerMagnitude_mean()"- mean of the magnitude time domain gravity accelerometer signals                 
[36] "timedomainGravityAccelerometerMagnitude_std()" - std of the magnitude time domain gravity accelerometer signals               
[37] "timedomainBodyAccelerometerJerkSignalsMagnitude_mean()"  - mean of the magnitude time domain body accelerometer jerk signals       
[38] "timedomainBodyAccelerometerJerkSignalsMagnitude_std()"   - std of the magnitude time domain body accelerometer jerk signals       
[39] "timedomainBodyGyroscopeMagnitude_mean()"       - mean of the magnitude time domain body gyroscope signals                 
[40] "timedomainBodyGyroscopeMagnitude_std()"        - std of the magnitude time domain body gyroscope jerk signals                 
[41] "timedomainBodyGyroscopeJerkSignalsMagnitude_mean()"   - mean of the magnitude time domain body gyroscope jerk signals          
[42] "timedomainBodyGyroscopeJerkSignalsMagnitude_std()"    - std of the magnitude time domain body gyroscope jerk signals          
[43] "frequencydomainBodyAccelerometer_mean()_X"   - mean of the frequnecy domain body accelerometer signals in the X direction       
[44] "frequencydomainBodyAccelerometer_mean()_Y"   - mean of the frequnecy domain body accelerometer signals in the Y direction         
[45] "frequencydomainBodyAccelerometer_mean()_Z"   - mean of the frequnecy domain body accelerometer signals in the Z direction         
[46] "frequencydomainBodyAccelerometer_std()_X"    - std of the frequnecy domain body accelerometer signals in the X direction           
[47] "frequencydomainBodyAccelerometer_std()_Y"    - std of the frequnecy domain body accelerometer signals in the Y direction          
[48] "frequencydomainBodyAccelerometer_std()_Z"    - std of the frequnecy domain body accelerometer signals in the X direction           
[49] "frequencydomainBodyAccelerometer_meanFreq()_X"- mean frequency of frequnecy domain body accelerometer signals in the X direction   
[50] "frequencydomainBodyAccelerometer_meanFreq()_Y"- mean frequency of frequnecy domain body accelerometer signals in the Y direction   
[51] "frequencydomainBodyAccelerometer_meanFreq()_Z"- mean frequency of frequnecy domain body accelerometer signals in the Z direction   
[52] "frequencydomainBodyAccelerometerJerkSignals_mean()_X" - mean of frequnecy domain body accelerometer jerk signals in X direction
[53] "frequencydomainBodyAccelerometerJerkSignals_mean()_Y"- mean of frequnecy domain body accelerometer jerk signals in Y direction     
[54] "frequencydomainBodyAccelerometerJerkSignals_mean()_Z"- mean of frequnecy domain body accelerometer jerk signals in Z direction     
[55] "frequencydomainBodyAccelerometerJerkSignals_std()_X"- std of frequnecy domain body accelerometer jerk signals in X direction       
[56] "frequencydomainBodyAccelerometerJerkSignals_std()_Y" - std of frequnecy domain body accelerometer jerk signals in Y direction     
[57] "frequencydomainBodyAccelerometerJerkSignals_std()_Z" - std of frequnecy domain body accelerometer jerk signals in Z direction     
[58] "frequencydomainBodyAccelerometerJerkSignals_meanFreq()_X"- mean frequency of frequnecy domain body accelerometer jerk signals in X                                                                  direction       
[59] "frequencydomainBodyAccelerometerJerkSignals_meanFreq()_Y"- mean frequency of frequnecy domain body accelerometer jerk signals in Y                                                                  direction       
[60] "frequencydomainBodyAccelerometerJerkSignals_meanFreq()_Z"- mean frequency of frequnecy domain body accelerometer jerk signals in Z                                                                  direction       
[61] "frequencydomainBodyGyroscope_mean()_X" - mean of frequnecy domain body gyroscope signals in the X direction                      
[62] "frequencydomainBodyGyroscope_mean()_Y" - mean of frequnecy domain body gyroscope signals in the Y direction                       
[63] "frequencydomainBodyGyroscope_mean()_Z" - mean of frequnecy domain body gyroscope signals in the Z direction                       
[64] "frequencydomainBodyGyroscope_std()_X"  - std of frequnecy domain body gyroscope signals in the X direction                         
[65] "frequencydomainBodyGyroscope_std()_Y"  - std of frequnecy domain body gyroscope signals in the Y direction                         
[66] "frequencydomainBodyGyroscope_std()_Z"  - std of frequnecy domain body gyroscope signals in the Z direction                         
[67] "frequencydomainBodyGyroscope_meanFreq()_X" - mean frequency of frequnecy domain body gyroscope signals in the X direction         
[68] "frequencydomainBodyGyroscope_meanFreq()_Y"- mean frequency of frequnecy domain body gyroscope signals in the Y direction           
[69] "frequencydomainBodyGyroscope_meanFreq()_Z" - mean frequency of frequnecy domain body gyroscope signals in the Z direction         
[70] "frequencydomainBodyAccelerometerMagnitude_mean()"   - mean of the magnitude frequency domain body accelerometer signals  
[71] "frequencydomainBodyAccelerometerMagnitude_std()"    - std of the magnitude frequency domain body accelerometer signals            
[72] "frequencydomainBodyAccelerometerMagnitude_meanFreq()" - mean frequency of the magnitude frequency domain body accelerometer                                                                     signals          
[73] "frequencydomainBodyAccelerometerJerkSignalsMagnitude_mean()"  - mean of the magnitude frequency domain body accelerometer jerk                                                                           signals  
[74] "frequencydomainBodyAccelerometerJerkSignalsMagnitude_std()" - std of the magnitude frequency domain body accelerometer jerk                                                                           signals    
[75] "frequencydomainBodyAccelerometerJerkSignalsMagnitude_meanFreq()"- mean frequency of the magnitude frequency domain body                                                                                   accelerometer jerk signals
[76] "frequencydomainBodyGyroscopeMagnitude_mean()" - mean of the magnitude frequency domain body gyroscope signals                  
[77] "frequencydomainBodyGyroscopeMagnitude_std()"  - std of the magnitude frequency domain body gyroscope signals                  
[78] "frequencydomainBodyGyroscopeMagnitude_meanFreq()"  - mean frequency of the magnitude frequency domain body gyroscope signals       
[79] "frequencydomainBodyGyroscopeJerkSignalsMagnitude_mean()" - mean of the magnitude frequency domain body gyroscope jerk signals    
[80] "frequencydomainBodyGyroscopeJerkSignalsMagnitude_std()"  - std of the magnitude frequency domain body gyroscope jerk signals       
[81] "frequencydomainBodyGyroscopeJerkSignalsMagnitude_meanFreq()" - mean frequency of the magnitude frequency domain body gyroscope                                                                          jerk signals   

##Sources

Full description of the raw dataset:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
