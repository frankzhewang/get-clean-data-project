# get-clean-data-project

This repo is for the course project of _Getting and Cleaning Data_ on Coursera.

## Files

* `README.md`: This file.
* `run_analysis.R`: R script that merges the original test and training data sets and creates the tidy data set.
* `HAR_tidy.txt`: Tidy data set output as a txt file. 
* `CodeBook.md`: Code book that describes each variable. 


## Reproducing the analysis

You can reproduce the analysis to get the tidy data set as follows:

1. Download the raw data set;
2. Unzip the downloaded file into your R working directory; the files should be under a folder named "UCI HAR Dataset";
3. Run the following code in R:
```R
source("run_analysis.R")
```

The next section discusses how to view `HAR_tidy.txt` in R.

## View the tidy data set in R

You can copy `HAR_tidy.txt` into your R working directory and use the following code 
read the tidy data set into R and view it:
```R
df <- read.table("HAR_tidy.txt", header = TRUE)
View(df)
```