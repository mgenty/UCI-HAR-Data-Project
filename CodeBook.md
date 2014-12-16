Codebook: UCI HAR Mean Std Average Dataset
==========================================

- Coursera:     Data Sciences => Getting And Cleaning Data Course Project
- Author:       Marc Genty
- Last Updated: 16Dec14

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
      Variables In The UCI HAR Dataset. 
    - The Summary Data Frame Is Comprised Of Observations For 
      30 Subjects Performing 6 Activities Across 66 Motion 
      Means And Standard Deviations Of Interest.
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

    - There Were 6 Activities Performed By The Subjects In The Study.

      - 1) walking
      - 2) walking_upstairs
      - 3) walking_downstairs
      - 4) sitting
      - 5) standing
      - 6) laying

  - motion : The mean And std Measurements Of Interest For Each
             Activity Performed By Each Subject.

    - Of The 561 Variables, Only The 66 That Had -mean() Or std() 
      In Their Names In The Original Dataset Were Selected For The 
      Summary Dataset. Please Note That The Variables Are Listed In 
      Alphabetical Order. Note Also That All Of These Variables Have 
      Been Normalized Into A -1 To 1 Range And Therefore Have No 
      Units Associated With Them. (Thanks To David Hood, Community TA 
      For That Information!) Detailed Information About The Nature And 
      Meaning Of These Variables Can Be Found At The UCI Web Site And 
      The README.txt And features_info.txt Files That Come With The 
      HAR Dataset Zip File From The Aforementioned  Web Site. 

      - freqBodyAccMeanX
        - The Mean Of The Linear Acceleration Of The
          Motion Along The X-Axis In The Frequency Domain
      - freqBodyAccMeanY
        - The Mean Of The Linear Acceleration Of The
          Motion Along The Y-Axis In The Frequency Domain
      - freqBodyAccMeanZ
        - The Mean Of The Linear Acceleration Of The
          Motion Along The Z-Axis In The Frequency Domain
      - freqBodyAccStdX
        - The Standard Deviation Of The Linear Acceleration Of The
          Motion Along The X-Axis In The Frequency Domain
      - freqBodyAccStdY
        - The Standard Deviation Of The Linear Acceleration Of The
          Motion Along The Y-Axis In The Frequency Domain
      - freqBodyAccStdZ
        - The Standard Deviation Of The Linear Acceleration Of The
          Motion Along The Z-Axis In The Frequency Domain
      - freqBodyAccJerkMeanX
        - The Mean Of The Linear Acceleration Of The Jerk
          Motion Along The X-Axis In The Frequency Domain
      - freqBodyAccJerkMeanY
        - The Mean Of The Linear Acceleration Of The Jerk
          Motion Along The Y-Axis In The Frequency Domain
      - freqBodyAccJerkMeanZ
        - The Mean Of The Linear Acceleration Of The Jerk
          Motion Along The Z-Axis In The Frequency Domain
      - freqBodyAccJerkStdX
        - The Standard Deviation Of The Linear Acceleration Of 
          The Jerk Motion Along The X-Axis In The Frequency Domain
      - freqBodyAccJerkStdY
        - The Standard Deviation Of The Linear Acceleration Of 
          The Jerk Motion Along The Y-Axis In The Frequency Domain
      - freqBodyAccJerkStdZ
        - The Standard Deviation Of The Linear Acceleration Of 
          The Jerk Motion Along The Z-Axis In The Frequency Domain
      - freqBodyAccMagMean
        - The Mean Of The Linear Acceleration Of The Motion With
          Fast Fourier Transform (FFT) Applied In The Frequency Domain
      - freqBodyAccMagStd
        - The Standard Deviation Of The Linear Acceleration Of The 
          Motion With Fast Fourier Transform (FFT) Applied In The 
          Frequency Domain
      - freqBodyBodyAccJerkMagMean
        - The Mean Of The Linear Acceleration Of The Jerk Motion With
          Fast Fourier Transform (FFT) Applied In The Frequency Domain
      - freqBodyBodyAccJerkMagStd
        - The Standard Deviation Of The Linear Acceleration Of The 
          Jerk Motion With Fast Fourier Transform (FFT) Applied In 
          The Frequency Domain
      - freqBodyBodyGyroJerkMagMean
        - The Mean Of The Angular Velocity Of The Jerk Motion With
          Fast Fourier Transform (FFT) Applied In The Frequency Domain
      - freqBodyBodyGyroJerkMagStd
        - The Standard Deviation Of The Angular Velocity  Of The 
          Jerk Motion With Fast Fourier Transform (FFT) Applied In 
          The Frequency Domain
      - freqBodyBodyGyroMagMean
        - The Mean Of The Angular Velocity Of The Euclidean 
          Normalized Motion With Fast Fourier Transform (FFT) 
          Applied In The Frequency Domain
      - freqBodyBodyGyroMagStd
        - The Standard Deviation Of The Angular Velocity Of 
          The Euclidean Normalized Motion With Fast Fourier 
          Transform (FFT) Applied In The Frequency Domain
      - freqBodyGyroMeanX
        - The Mean Of The Angular Velocity Of The
          Motion Along The X-Axis In The Frequency Domain
      - freqBodyGyroMeanY
        - The Mean Of The Angular Velocity Of The
          Motion Along The Y-Axis In The Frequency Domain
      - freqBodyGyroMeanZ
        - The Mean Of The Angular Velocity Of The
          Motion Along The Z-Axis In The Frequency Domain
      - freqBodyGyroStdX
        - The Standard Deviation Of The Angular Velocity Of 
          The Motion Along The X-Axis In The Frequency Domain
      - freqBodyGyroStdY
        - The Standard Deviation Of The Angular Velocity Of 
          The Motion Along The Y-Axis In The Frequency Domain
      - freqBodyGyroStdZ
        - The Standard Deviation Of The Angular Velocity Of 
          The Motion Along The Z-Axis In The Frequency Domain
      - timeBodyAccMeanX
        - The Mean Of The Linear Acceleration Of The
          Motion Along The X-Axis In The Time Domain
      - timeBodyAccMeanY
        - The Mean Of The Linear Acceleration Of The
          Motion Along The Y-Axis In The Time Domain
      - timeBodyAccMeanZ
        - The Mean Of The Linear Acceleration Of The
          Motion Along The Z-Axis In The Time Domain
      - timeBodyAccStdX
        - The Standard Deviation Of The Linear Acceleration 
          Of The Motion Along The X-Axis In The Time Domain
      - timeBodyAccStdY
        - The Standard Deviation Of The Linear Acceleration 
          Of The Motion Along The Y-Axis In The Time Domain
      - timeBodyAccStdZ
        - The Standard Deviation Of The Linear Acceleration 
          Of The Motion Along The Z-Axis In The Time Domain
      - timeBodyAccJerkMeanX
        - The Mean Of The Linear Acceleration Of The
          Jerk Motion Along The X-Axis In The Time Domain
      - timeBodyAccJerkMeanY
        - The Mean Of The Linear Acceleration Of The
          Jerk Motion Along The Y-Axis In The Time Domain
      - timeBodyAccJerkMeanZ
        - The Mean Of The Linear Acceleration Of The
          Jerk Motion Along The Z-Axis In The Time Domain
      - timeBodyAccJerkStdX
        - The Standard Deviation Of The Linear Acceleration 
          Of The Jerk Motion Along The X-Axis In The Time Domain
      - timeBodyAccJerkStdY
        - The Standard Deviation Of The Linear Acceleration 
          Of The Jerk Motion Along The Y-Axis In The Time Domain
      - timeBodyAccJerkStdZ
        - The Standard Deviation Of The Linear Acceleration 
          Of The Jerk Motion Along The Z-Axis In The Time Domain
      - timeBodyAccJerkMagMean
        - The Mean Of The Linear Acceleration Of The Motion With
          Fast Fourier Transform (FFT) Applied In The Time Domain
      - timeBodyAccJerkMagStd
        - The Standard Deviation Of The Linear Acceleration Of The 
          Jerk Motion With Fast Fourier Transform (FFT) Applied In 
          The Time Domain
      - timeBodyAccMagMean
        - The Mean Of The Linear Acceleration Of The Motion With
          Fast Fourier Transform (FFT) Applied In The Time Domain
      - timeBodyAccMagStd
        - The Standard Deviation Of The Linear Acceleration Of The 
          Motion With Fast Fourier Transform (FFT) Applied In The 
          Time Domain
      - timeBodyGyroMeanX
        - The Mean Of The Angular Velocity Of The
          Motion Along The X-Axis In The Time Domain
      - timeBodyGyroMeanY
        - The Mean Of The Angular Velocity Of The
          Motion Along The Y-Axis In The Time Domain
      - timeBodyGyroMeanZ
        - The Mean Of The Angular Velocity Of The
          Motion Along The Z-Axis In The Time Domain
      - timeBodyGyroStdX
        - The Standard Deviation Of The Angular Velocity 
          Of The Motion Along The X-Axis In The Time Domain
      - timeBodyGyroStdY
        - The Standard Deviation Of The Angular Velocity 
          Of The Motion Along The Y-Axis In The Time Domain
      - timeBodyGyroStdZ
        - The Standard Deviation Of The Angular Velocity 
          Of The Motion Along The Z-Axis In The Time Domain
      - timeBodyGyroJerkMeanX
        - The Mean Of The Angular Velocity Of The Jerk
          Motion Along The X-Axis In The Time Domain
      - timeBodyGyroJerkMeanY
        - The Mean Of The Angular Velocity Of The Jerk
          Motion Along The Y-Axis In The Time Domain
      - timeBodyGyroJerkMeanZ
        - The Mean Of The Angular Velocity Of The Jerk
          Motion Along The Z-Axis In The Time Domain
      - timeBodyGyroJerkStdX
        - The Standard Deviation Of The Angular Velocity Of 
          The Jerk Motion Along The X-Axis In The Time Domain
      - timeBodyGyroJerkStdY
        - The Standard Deviation Of The Angular Velocity Of 
          The Jerk Motion Along The Y-Axis In The Time Domain
      - timeBodyGyroJerkStdZ
        - The Standard Deviation Of The Angular Velocity Of 
          The Jerk Motion Along The Z-Axis In The Time Domain
      - timeBodyGyroJerkMagMean
        - The Mean Of The Angular Velocity Of The Jerk Motion With
          Fast Fourier Transform (FFT) Applied In The Time Domain
      - timeBodyGyroJerkMagStd
        - The Standard Deviation Of The Angular Velocity Of The 
          Jerk Motion With Fast Fourier Transform (FFT) Applied 
          In The Time Domain
      - timeBodyGyroMagMean
        - The Mean Of The Angular Velocity Of The Motion With
          Fast Fourier Transform (FFT) Applied In The Time Domain
      - timeBodyGyroMagStd
        - The Standard Deviation Of The Angular Velocity Of The 
          Motion With Fast Fourier Transform (FFT) Applied 
          In The Time Domain
      - timeGravityAccMeanX
        - The Mean Of The Linear Acceleration Due To
          Gravity Along The X-Axis In The Time Domain
      - timeGravityAccMeanY
        - The Mean Of The Linear Acceleration Due To
          Gravity Along The Y-Axis In The Time Domain
      - timeGravityAccMeanZ
        - The Mean Of The Linear Acceleration Due To
          Gravity Along The Z-Axis In The Time Domain
      - timeGravityAccStdX
        - The Standard Deviation Of The Linear Acceleration 
          Due To Gravity Along The X-Axis In The Time Domain
      - timeGravityAccStdY
        - The Standard Deviation Of The Linear Acceleration 
          Due To Gravity Along The Y-Axis In The Time Domain
      - timeGravityAccStdZ
        - The Standard Deviation Of The Linear Acceleration 
          Due To Gravity Along The Z-Axis In The Time Domain
      - timeGravityAccMagMean
        - The Mean Of The Linear Acceleration Of The Euclidean 
          Normalized Gravitational Component With Fast Fourier 
          Transform (FFT) Applied In The Time Domain
      - timeGravityAccMagStd
        - The Standard Deviation  Of The Linear Acceleration Of 
          The Euclidean Normalized Gravitational Component With 
          Fast Fourier Transform (FFT) Applied In The Time Domain

  - average : The Average Of The Particular Motion For The Particular
              Activity For The Particular Subject Represented In This
              Particular Observation.

UCI HAR Dataset License:
========================

Use of UCI HAR Dataset in publications must be acknowledged by 
referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and 
    Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones 
    using a Multiclass Hardware-Friendly Support Vector Machine. 
    International Workshop of Ambient Assisted Living (IWAAL 2012). 
    Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit 
can be addressed to the authors or their institutions for its use or misuse. 
Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. 
November 2012.
