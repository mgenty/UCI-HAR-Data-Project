Codebook: UCI HAR Mean Std Average Dataset
==========================================

- Coursera:     Data Sciences => Getting And Cleaning Data Course Project
- Author:       Marc Genty
- Last Updated: 12Dec14

==========================================

Dataset Production Method: 

- run_analysis.R

Dataset Origin:

- UCI Machine Learning Repository:
  - Human Activity Recognition Using Smartphones Data Set
  - URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

UCI HAR Master Dataset Information:

- The Experiments Have Been Carried Out With A Group Of 30 Volunteers 
  Within An Age Bracket Of 19-48 Years. Each Person Performed Six 
  Activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, 
  STANDING, LAYING) Wearing A Smartphone (Samsung Galaxy S II) On The 
  Waist. Using Its Embedded Accelerometer And Gyroscope, We Captured 
  3-Axial Linear Acceleration And 3-Axial Angular Velocity At A Constant 
  Rate Of 50Hz. The Experiments Have Been Video-recorded To Label The Data 
  Manually. The Obtained Dataset Has Been Randomly Partitioned Into Two Sets, 
  Where 70% Of The Volunteers Was Selected For Generating The Training Data 
  And 30% The Test Data. 

- Attribute Information:

  For Each Record In The Dataset It Is Provided: 
  - Triaxial Acceleration From The Accelerometer (total Acceleration) 
    And The Estimated Body Acceleration. 
  - Triaxial Angular Velocity From The Gyroscope. 
  - A 561-Feature Vector With Time And Frequency Domain Variables. 
  - Its Activity Label. 
  - An Identifier Of The Subject Who Carried Out The Experiment.

Summary Dataset Production Method: 

- run_analysis.R

  - Output: UCI-HAR-Mean-Std-Averages.txt

  - Description:  

    - The Code Processes The UCI HAR Dataset Into A Summary
      Dataset Of Averages For The Mean And Standard Deviation 
      Variables In The UCI HAR Dataset. The Summary Data Frame 
      Is Comprised Of Observations For 30 Subjects Performing 
      6 Activities Across 66 Motion Means And Standard Deviations 
      Of Interest.
    - The Summary Data Set Is Comprised Of 11,880 Observations
      (30 x 6 x 66 = 11,880) Of Four Variables:
      Subject, Activity, Motion, Average.

