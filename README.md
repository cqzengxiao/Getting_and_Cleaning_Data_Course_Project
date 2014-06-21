Getting_and_Cleaning_Data_Course_Project
========================================

Data Processing:
================
1. Upload all neccessary data sets from the original data package, including data and labels.

2. Merge all uploaded data into one big data frame using both "rbind()" and "cbind()" and properly label them.

3. Extract neccessary columns regarding measurements on the mean and standard deviation from the data frame created in last step to a new data frame.

4. Translate numeric values in the "activity" column into understandable descriptive activity names.

5. Reshapped the data frame to display variables based on "activity" and "subject".

6. Aggregat the data frame to list the mean for each variable, activity, and subject.


Assumptions:
============
1. Rows in the X, y, and subject are organized in the same order.
2. Columns in the test, train, and features data sets are organized in the same order.

why I did things a certain way:
===============================
In the assignment, some labels are added in the later steps, but I did the structure and labelling in the first step, because it is easier to determine how all the information should be pieced together when no change has been done to the data sets.

Reference and links to original data info:
==========================================
Source: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
        Smartlab - Non Linear Complex Systems Laboratory

Link to the Website: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Link to the original data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip