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

Summary Dataset Variables:

- The Four Variables In The Summary Dataset Are As Follows:

  - subject : The Subject Who Performed The Motion 
              Of The Activity.

    - There Were 30 Subjects In The Study Numbered 1 Through 30.

  - activity : The Activity To Which The Motion 
               Relates Performed By The Subject.

    - There Were 6 Activities Performed By The Subjects In The Study:

      - walking
      - walking_upstairs
      - walking_downstairs
      - sitting
      - standing
      - laying

  - motion : The mean And std Measurements Of Interest For Each
             Activity Performed By Each Subject.

    - Of The 561 Variables, Only The 66 That Ended With mean() Or
      std() In The Original Dataset Were Selected For The Summary 
      Dataset (In Alphabetical Order):

      - fBodyAcc-mean-X
      - fBodyAcc-mean-Y
      - fBodyAcc-mean-Z
      - fBodyAcc-std-X
      - fBodyAcc-std-Y
      - fBodyAcc-std-Z
      - fBodyAccJerk-mean-X
      - fBodyAccJerk-mean-Y
      - fBodyAccJerk-mean-Z
      - fBodyAccJerk-std-X
      - fBodyAccJerk-std-Y
      - fBodyAccJerk-std-Z
      - fBodyAccMag-mean
      - fBodyAccMag-std
      - fBodyBodyAccJerkMag-mean
      - fBodyBodyAccJerkMag-std
      - fBodyBodyGyroJerkMag-mean
      - fBodyBodyGyroJerkMag-std
      - fBodyBodyGyroMag-mean
      - fBodyBodyGyroMag-std
      - fBodyGyro-mean-X
      - fBodyGyro-mean-Y
      - fBodyGyro-mean-Z
      - fBodyGyro-std-X
      - fBodyGyro-std-Y
      - fBodyGyro-std-Z
      - tBodyAcc-mean-X
      - tBodyAcc-mean-Y
      - tBodyAcc-mean-Z
      - tBodyAcc-std-X
      - tBodyAcc-std-Y
      - tBodyAcc-std-Z
      - tBodyAccJerk-mean-X
      - tBodyAccJerk-mean-Y
      - tBodyAccJerk-mean-Z
      - tBodyAccJerk-std-X
      - tBodyAccJerk-std-Y
      - tBodyAccJerk-std-Z
      - tBodyAccJerkMag-mean
      - tBodyAccJerkMag-std
      - tBodyAccMag-mean
      - tBodyAccMag-std
      - tBodyGyro-mean-X
      - tBodyGyro-mean-Y
      - tBodyGyro-mean-Z
      - tBodyGyro-std-X
      - tBodyGyro-std-Y
      - tBodyGyro-std-Z
      - tBodyGyroJerk-mean-X
      - tBodyGyroJerk-mean-Y
      - tBodyGyroJerk-mean-Z
      - tBodyGyroJerk-std-X
      - tBodyGyroJerk-std-Y
      - tBodyGyroJerk-std-Z
      - tBodyGyroJerkMag-mean
      - tBodyGyroJerkMag-std
      - tBodyGyroMag-mean
      - tBodyGyroMag-std
      - tGravityAcc-mean-X
      - tGravityAcc-mean-Y
      - tGravityAcc-mean-Z
      - tGravityAcc-std-X
      - tGravityAcc-std-Y
      - tGravityAcc-std-Z
      - tGravityAccMag-mean
      - tGravityAccMag-std

  - average : The Average Of The Particular Motion For The Particular
              Activity For The Particular Subject Represented In This
              Particular Observation.
