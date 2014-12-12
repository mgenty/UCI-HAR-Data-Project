Codebook: UCI HAR Mean Std Average Dataset
==========================================

Coursera:     Data Sciences => Getting And Cleaning Data Course Project
Author:       Marc Genty
Last Updated: 12Dec14

Dataset Production Method: 

- run_analysis.R

Dataset Origin:

- UCI Machine Learning Repository:
- Human Activity Recognition Using Smartphones Data Set
- URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

UCI HAR Master Dataset Information:

- The experiments have been carried out with a group of 30 volunteers 
  within an age bracket of 19-48 years. Each person performed six 
  activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, 
  STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the 
  waist. Using its embedded accelerometer and gyroscope, we captured 
  3-axial linear acceleration and 3-axial angular velocity at a constant 
  rate of 50Hz. The experiments have been video-recorded to label the data 
  manually. The obtained dataset has been randomly partitioned into two sets, 
  where 70% of the volunteers was selected for generating the training data 
  and 30% the test data. 

- Attribute Information:

  For each record in the dataset it is provided: 
  - Triaxial acceleration from the accelerometer (total acceleration) 
    and the estimated body acceleration. 
  - Triaxial Angular velocity from the gyroscope. 
  - A 561-feature vector with time and frequency domain variables. 
  - Its activity label. 
  - An identifier of the subject who carried out the experiment.

Description:  

- Code To Process The UCI HAR Dataset Into A Summary
  Data Frame Of Averages For The Mean And Standard
  Deviation Variables In The UCI HAR Dataset. The
  Summary Data Frame Is Comprised Of Observations
  For 30 Subjects Performing 6 Activities Across 66
  Motion Means And Standard Deviations of Interst.
              The Summary Data Set Contains 11,880 Observations
              (30 x 6 x 66 = 11,880) Of Four Variables:
              Subject, Activity, Motion, Average.

