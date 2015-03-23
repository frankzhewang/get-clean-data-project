# get-clean-data-project

This repo is for the course project of _Getting and Cleaning Data_ on Coursera.

## Files

* `README.md`: This file.
* `run_analysis.R`: R script that merges the original test and training data sets and creates the tidy data set.
* `HAR_tidy.txt`: Tidy data set output as a `.txt` file. 
* `CodeBook.md`: Code book that describes each variable. 


## Reproducing the analysis

You can reproduce the analysis to get the tidy data set as follows:

1. Download the raw data set [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip);
2. Unzip the downloaded file into your R working directory; the files should be under a folder named "UCI HAR Dataset";
3. Run the following code in R (`dplyr` package is required):
```R
source("run_analysis.R")
```

A file named `HAR_tidy.txt` will be generated in your R working directory.

For data processing details, please refer to the commented and self-explanatory R script [`run_analysis.R`](run_analysis.R).

## View the tidy data set in R

You can copy `HAR_tidy.txt` into your R working directory and use the following code to read the tidy data set into R and view it:
```R
df <- read.table("HAR_tidy.txt", header = TRUE)
View(df)
```