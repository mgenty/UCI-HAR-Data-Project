README: Coursera Johns Hopkins UCI HAR Data Project
=============================================================================

- Coursera:     Data Sciences => Getting And Cleaning Data Course Project
- Author:       Marc Genty
- Last Updated: 14Dec14

=============================================================================

This Repository Consists Of The Following Files And Directories:

- README.md : The Readme File For The Repository That Outlines
              The Data Production Method And The Algorithmic
              Steps Incorporated Into The run_analysis.R File.

- CodeBook.md : The Codebook For The Final Summary Dataset.
                This File Gives Information About The Source 
                Of The Data, A High Level View Of The Data 
                Production Method, And A Detailed Description
                Of The Final Dataset Produced Along With
                Pointers Of Where To Find Additional Information.

- projdata/UCI-HAR-Mean-Std-Averages.csv : The Summary Dataset (CSV Format).

- projdata/UCI-HAR-Mean-Std-Averages.txt : The Summary Dataset (TXT Format).

- run_analysis.R : The Code That Is Used To Produce The Summary Dataset.

- NOTE: There Is Some Duplication Of Information In The 
        README.md, CodeBook.md, And run_analysis.R Files.
        This Is Intentional So As To Provide Enough Context
        Such That Each Of These Files Is Able To Stand Alone
        Without Necessary Reference To The Other Files.
        
=============================================================================

Dataset Production Method: 

- run_analysis.R

Dataset Origin:

- UCI Machine Learning Repository:
  - Human Activity Recognition Using Smartphones Data Set
  - URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

UCI HAR Master Dataset Information:

- Information About The Experiments And Attributes Of The Master Dataset
  Can Be Found In The CodeBook.md File In This Repository.

Overview Of The Summary Dataset Production Method: 

- run_analysis.R

  - Outputs: 
    - UCI-HAR-Mean-Std-Averages.txt
    - UCI-HAR-Mean-Std-Averages.csv

  - Description:  

    - The Code Processes The UCI HAR Dataset Into A Summary
      Dataset Of Averages For The Mean And Standard Deviation 
      Variables In The UCI HAR Dataset. 
    - The Summary Data Frame Is Comprised Of Observations 
      For 30 Subjects Performing 6 Activities Across 66 Motion 
      Means And Standard Deviations Of Interest.  
    - The Summary Dataset Is Comprised Of 11,880 Observations
      (30 x 6 x 66 = 11,880) Of Four Variables:
      Subject, Activity, Motion, Average.

Detailed run_analysis.R Algorithm Description:

  - Create A ./projdata Directory If It Does Not Already Exist.
  - Download And Unzip The Master ZIP File From The UCI Web Site.
  - Read In The features.txt And activity_labels.txt Files.
  - Read In The ./test Files: subject_test.txt, y_test.txt, X_test.txt
  - Combine These Files Into An Intermediate Test Data Frame.
  - Read In The ./train Files: subject_train.txt, y_train.txt, X_train.txt
  - Combine These Files Into An Intermediate Train Data Frame.
  - Combine The Test And Train Data Frames Into A Single Master Data Frame.
  - Subset The Master Data Frame To Just The Motion Attibutes Of Interest.
    - i.e., Those Attributes With -mean() Or -std() In Their Names.
  - Melt The New Data Frame On The Motion Variable.
  - Group The Resulting Data Frame By Subject, Activity, & Motion.
  - Compute The Average For Each Subject / Activity / Motion Combination.
  - Ungroup The Final tbl_df Back To A Normal Data Frame.
  - Use write.table To Output The Dataset In .txt And .csv Files. 

For Additional Detailed Information, Please See The Comments Within
The run_analysis.R File Itself.

UCI HAR Dataset License:
=============================================================================

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
